################################################################
## Scrape the New Year's speeches of Swiss federal presidents ##
################################################################
list.of.packages <- c("rvest", "tidyverse")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(rvest)
library(tidyverse)

#### 0. Setup ####

url <- "https://www.admin.ch/gov/de/start/dokumentation/reden/neujahrsansprachen.html"

announce_page <- read_html(url)
announce_page

#### 1. Collect URLs for speeches ####
announce_page_href <- html_nodes(announce_page,
                                 xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]/article/ul/li[*]/a') %>%
  html_attr('href') 
announce_page_href

#### 2. Go to each link and scrape text of speech ####
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

## Merge the two data frames just created
all_texts <- rbind(all_texts1, all_texts2)
View(all_texts)

#### 3. Clean the texts ####
# To be continued...