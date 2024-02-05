list.of.packages <- c("rvest", "tidyverse")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(rvest)
library(tidyverse)

## Note: this script is mostly for teaching purposes, so the commenting is a tad excessive
## For a cleaned script, take a look at cleaned_script2.R

# Let's scrape the New Year's speeches of Swiss federal presidents

url <- "https://www.admin.ch/gov/de/start/dokumentation/reden/neujahrsansprachen.html"
# This is the page with links to all the individual speeches (we'll call it announce_page)

announce_page <- read_html(url)
announce_page

# What we want to do: create a list of URLs for every speech
# This is the first scraping we will do

# /html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]/article/ul/li[1]/a
# Above is the XPath to the first speech
# Now we can collect them all 
announce_page_href <- html_nodes(announce_page,
                                 xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]/article/ul/li[*]/a') %>%
  html_attr('href') 
announce_page_href

# We will try to scrape the text of only the most recent speech first
url_one <- paste0("https://www.admin.ch", announce_page_href[1]) # create the URL
url_one

# Where is the text stored?
# /html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]
one_speech <- read_html(url_one) %>% 
  html_nodes(xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]') %>% 
  html_text()
one_speech

# We can see that it works, so we can do this for all the speeches
length(announce_page_href)

all_texts1 <- data.frame()
for (i in c(1:48)) {
  url_one <- paste0("https://www.admin.ch", announce_page_href[i])
  message(url_one)
  text <- read_html(url_one) %>%
    html_nodes(xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]') %>%
    html_text()
  tmp_df <- data.frame(url = announce_page_href[i], text = text)
  all_texts1 <- bind_rows(all_texts1, tmp_df)
}

# Did it work? 
View(all_texts1)

# Only for the first 9 speeches
# The text is stored in another place for the earlier speeches
# After checking where it is, we can scrape them too, but we'll need two loops

all_texts1 <- data.frame()
for (i in c(1:9)) {
  url_one <- paste0("https://www.admin.ch", announce_page_href[i])
  message(url_one)
  text <- read_html(url_one) %>%
    html_nodes(xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]') %>%
    html_text()
  tmp_df <- data.frame(url = announce_page_href[i], text = text)
  all_texts1 <- bind_rows(all_texts1, tmp_df)
}

all_texts2 <- data.frame()
for (i in c(10:48)) {
  url_one <- paste0("https://www.admin.ch", announce_page_href[i])
  message(url_one)
  text <- read_html(url_one) %>%
    html_nodes(xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[3]') %>%
    html_text()
  tmp_df <- data.frame(url = announce_page_href[i], text = text)
  all_texts2 <- bind_rows(all_texts2, tmp_df)
}

all_texts <- rbind(all_texts1, all_texts2)
View(all_texts)
