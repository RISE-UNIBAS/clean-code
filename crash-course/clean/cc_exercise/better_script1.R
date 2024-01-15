###################################################################################################
## Make a histogram/bar plot of the seats in the Swiss national council after the 2019 elections ##
###################################################################################################

library(ggplot2)
# Go here for the data: https://www.parlgov.org/data/parlgov-development_csv-utf-8/view_election.csv 
# Right click and save page as "view_election.csv"

elections <- read.csv("view_election.csv")

names(elections)

table(elections$country_name)

## Subset elections to only include Switzerland
swiss <- elections[elections$country_name=="Switzerland",]

range(swiss$election_date)

## Subset swiss to only include most recent election
swiss_sub <- swiss[swiss$election_date >= "2019-01-01",]

## Visualize
ggplot(swiss_sub[swiss_sub$seats>1,], aes(x=party_name_short, y=seats, fill=party_name_short)) + geom_col() +
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")
## looks a bit messy...

## Let's remove the legend and change the background from grey to white
ggplot(swiss_sub[swiss_sub$seats>1,], aes(x=party_name_short, y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")

## Change the colors to fit the parties...
ggplot(swiss_sub[swiss_sub$seats>1,], aes(x=party_name_short, y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  scale_fill_manual(values = c("yellow","khaki1","royalblue","darkseagreen","chartreuse","orange","red","green4")) + 
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")

#...and reorder the columns in descending order
ggplot(swiss_sub[swiss_sub$seats>1,], aes(x=reorder(party_name_short, -seats), y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  scale_fill_manual(values = c("yellow","khaki1","royalblue","darkseagreen","chartreuse","orange","red","green4")) + 
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")
# the color sequence is still referring to how the data appear in the dataset (alphabetically), not in the graph