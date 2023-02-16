library(ggplot2)
# Go here: https://www.parlgov.org/data/parlgov-development_csv-utf-8/view_election.csv 
# Right click and save page as "view_election.csv"

df <- read.csv("view_election.csv")

names(df) 

table(df$country_name) 

df <- df[df$country_name=="Switzerland",]

range(df$election_date)

x <- df[df$election_date >= "2019-01-01",] # nur die letzte Wahl

ggplot(x[x$seats>1,], aes(x=party_name_short, y=seats, fill=party_name_short)) + geom_col() +
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")

ggplot(x[x$seats>1,], aes(x=party_name_short, y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")

ggplot(x[x$seats>1,], aes(x=party_name_short, y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  scale_fill_manual(values = c("yellow","khaki1","royalblue","darkseagreen","chartreuse","orange","red","green4")) + 
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")


ggplot(x[x$seats>1,], aes(x=reorder(party_name_short, -seats), y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  scale_fill_manual(values = c("yellow","khaki1","royalblue","darkseagreen","chartreuse","orange","red","green4")) + 
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")
