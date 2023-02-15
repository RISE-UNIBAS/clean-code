""" Document, Text, and Tag dataclasses. """

from __future__ import annotations
from dataclasses import dataclass, InitVar
from lxml import etree
from typing import List, Optional
import re


@dataclass
class Document:
    """ A representation of a Transkribus PAGE XML document. """

    file_path: InitVar[str]
    tree: etree._Element = None

    def __post_init__(self, file_path):
        if self.tree is None:
            self.tree = etree.parse(file_path)

    def get_text_regions(self):
        """ Get all 'TextRegion' elements of the document. """

        return [Region(element=element) for element in
                self.tree.findall(".//{http://schema.primaresearch.org/PAGE/gts/pagecontent/2013-07-15}TextRegion")]

    def get_tags(self) -> List[Optional[Tag]]:
        """ Get all textual tags from the document. """

        tags = []
        for text_region in self.get_text_regions():
            for text_line in text_region.get_text_lines():
                for tag in text_line.get_tags():
                    try:
                        # continued tags come in pairs:
                        if "continued" in tags[-1].get_parameters().keys() and tag.tag_name == tags[-1].tag_name:
                            continued_tagged_string = tags[-1].get_tagged_string(
                                tags[-1].text_line_text) + " " + tag.get_tagged_string(text_line.get_text())
                            tags[-1].set_continued_tagged_string(continued_tagged_string)
                            continue  # skip second tag of such a pair
                    except IndexError:
                        pass
                    tag.tagged_string = tag.get_tagged_string(text_line.get_text())
                    tag.text_region_id = text_region.get_id()
                    tag.text_line_id = text_line.get_id()
                    tag.text_line_text = text_line.get_text()
                    tag.text_line_coords_points = text_line.get_coords_points()
                    tag.text_line_baseline_points = text_line.get_baseline_points()
                    tags.append(tag)

        return tags


@dataclass
class Text:
    """ A representation of a Transkribus PAGE XML 'Text*' element.  """

    element: etree._Element

    def get_id(self) -> str:
        """ Get 'id' attribute. """

        return self.element.attrib["id"]


@dataclass
class Region(Text):
    """ A representation of a Transkribus PAGE XML 'TextRegion' element. """

    def get_text_lines(self):
        """ Get all 'TextLine' elements of the document. """

        return [Line(element=element) for element in
                self.element.findall(".//{http://schema.primaresearch.org/PAGE/gts/pagecontent/2013-07-15}TextLine")]


@dataclass
class Line(Text):
    """ A representation of a Transkribus PAGE XML 'TextLine' element. """

    def get_custom(self) -> str:
        """ Get 'custom' attribute. """

        return self.element.attrib["custom"]

    def get_coords_points(self) -> str:
        """ Get 'points' attribute from 'Coords' subelement. """

        for subelement in self.element.findall(
                ".//{http://schema.primaresearch.org/PAGE/gts/pagecontent/2013-07-15}Coords"):
            return subelement.attrib["points"]

    def get_baseline_points(self) -> str:
        """ Get 'points' attribute from 'Baseline' subelement. """

        for subelement in self.element.findall(
                ".//{http://schema.primaresearch.org/PAGE/gts/pagecontent/2013-07-15}Baseline"):
            return subelement.attrib["points"]

    def get_text(self) -> str:
        """ Get text from 'Unicode' sub-subelement (subelement of 'TextEquiv'). """

        for subelement in self.element.findall(
                ".//{http://schema.primaresearch.org/PAGE/gts/pagecontent/2013-07-15}Unicode"):
            return subelement.text

    def get_reading_order(self) -> int:
        """ Get reading order. """

        return int(re.search(pattern="\d+",
                             string=self.get_custom().split(";}")[0] + ";}").group())

    def get_tags(self) -> List[Optional[Tag]]:
        """ Get textual tags. """

        return [Tag(item.strip() + "}") for item in self.get_custom().split(";}")][1:-1]


@dataclass
class Tag:
    """ A representation of a Transkribus textual tag. """

    raw: str
    tag_name: str = None
    tagged_string = None
    continued_tagged_string: str = None
    text_region_id: str = None
    text_line_id: str = None
    text_line_text: str = None
    text_line_coords_points: str = None
    text_line_baseline_points: str = None

    def __post_init__(self):
        if self.tag_name is None:
            self.tag_name = self.raw.split(" ")[0]

    def get_parameters(self) -> dict:
        """ Get dictionary of tag's parameters (offset, length, continued, and other custom ones). """

        return {item.strip().split(":")[0]: item.strip().split(":")[1] for item in
                self.raw.split(self.tag_name)[1].strip()[1:-1].split(";")}

    def get_tagged_string(self,
                          text: str) -> str:
        """ Get the tagged string.

        :param text: the text"""

        offset = int(self.get_parameters()["offset"])
        length = int(self.get_parameters()["length"])

        return text[offset:offset + length]

    def get_csv_row(self,
                    header: list[str]) -> list[str]:
        """ Get tag as CSV row serialization.

        :param header: the CSV header
        """

        row = []
        for attribute in header[:8]:
            try:
                row.append(self.__getattribute__(attribute))
            except AttributeError:
                raise

        for parameter in header[8:]:
            try:
                row.append(self.get_parameters()[parameter])
            except KeyError:
                row.append(None)

        return row

    def set_continued_tagged_string(self,
                                    continued_tagged_string: str):
        """ Set combined tagged string.

        A continued tagged string is the concatenation of two tagged strings if the tags have parameter
        'continued' both set to 'true' and are adjacent in the PAGE XML document.

        :param continued_tagged_string: the combined tagged string
        """

        self.continued_tagged_string = continued_tagged_string
