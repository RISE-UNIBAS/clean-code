""" Sample code. """

from json import load


def load_json(file_path: str) -> dict:
    """ Load a JSON object from file.

    :param file_path: path to file including extension
    """

    with open(file_path, encoding="utf-8") as file:
        return load(file)
