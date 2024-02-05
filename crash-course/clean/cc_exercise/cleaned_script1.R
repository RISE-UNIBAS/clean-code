###################################################################################################
## Make a histogram/bar plot of the seats in the Swiss national council after the 2019 elections ##
###################################################################################################

library(ggplot2)
#setwd(path/to/your/data)

#### 0. Setup ####
elections <- read.csv("view_election.csv")

names(elections)

table(elections$country_name)

#### 1. Subset elections to only include Switzerland ####
swiss <- elections[elections$country_name=="Switzerland",]

range(swiss$election_date)

#### 2. Subset swiss to only include most recent election ####
swiss_sub <- swiss[swiss$election_date >= "2019-01-01",]

#### 3. Visualize ####
ggplot(swiss_sub[swiss_sub$seats>1,], aes(x=reorder(party_name_short, -seats), y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  scale_fill_manual(values = c("yellow","khaki1","royalblue","darkseagreen","chartreuse","orange","red","green4")) + 
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")
