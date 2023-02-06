list.of.packages <- c("rvest", "tidyverse")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(rvest)
library(tidyverse)

url <- "https://www.admin.ch/gov/de/start/dokumentation/reden/neujahrsansprachen.html"

page <- read_html(url)
page

# /html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]/article/ul/li[1]/a
# Above is the XPath to the first speech
page_href <- html_nodes(page,
                        xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]/article/ul/li[*]/a') %>%
  html_attr('href') 
page_href


urlone <- paste0("https://www.admin.ch", page_href[1])
urlone

one_speech <- read_html(urlone) %>% 
  html_nodes(xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]') %>% 
  html_text()
one_speech

length(page_href)

df1 <- data.frame()
for (i in c(1:47)) {
  url_one <- paste0("https://www.admin.ch", page_href[i])
  message(url_one)
  text <- read_html(url_one) %>%
    html_nodes(xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]') %>%
    html_text()
  tmp_df <- data.frame(url = page_href[i], text = text)
  df1 <- bind_rows(df1, tmp_df)
}


View(df1)


df1 <- data.frame()
for (i in c(1:8)) {
  url_one <- paste0("https://www.admin.ch", page_href[i])
  message(url_one)
  text <- read_html(url_one) %>%
    html_nodes(xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[4]') %>%
    html_text()
  tmp_df <- data.frame(url = page_href[i], text = text)
  df1 <- bind_rows(df1, tmp_df)
}

df2 <- data.frame()
for (i in c(9:47)) {
  url_one <- paste0("https://www.admin.ch", page_href[i])
  message(url_one)
  text <- read_html(url_one) %>%
    html_nodes(xpath = '/html/body/div[2]/div[3]/div/div[2]/div/div[1]/div[3]') %>%
    html_text()
  tmp_df <- data.frame(url = page_href[i], text = text)
  df2 <- bind_rows(df2, tmp_df)
}

df <- rbind(df1, df2)
View(df)
