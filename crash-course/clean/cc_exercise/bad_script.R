library(ggplot2)

setwd("/Users/albert0003/Documents/GitHub/clean-code/course/clean_code_in_context/cc_exercise")

df <- read.csv("view_election.csv")

names(df) 

table(df$country_name) 

df <- df[df$country_name=="Switzerland",]

range(df$election_date)

x <- df[df$election_date >= "2019-01-01",] # nur die letzte Wahl

x <- x[,-2]
x <- x[,-c(11:14)]

x$Percent <- x$seats/x$seats_total

x$diff <- x$Percent-x$vote_share

x$Percent2 <- x$Percent*100

x$diff <- x$Percent2-x$vote_share

plot_final <- 
  ggplot(x[x$seats>1,], aes(x=party_name_short, y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")
plot_final

plot_final <- 
  ggplot(x[x$seats>1,], aes(x=party_name_short, y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  scale_fill_manual(values = c("yellow","khaki1","royalblue","darkseagreen","chartreuse","orange","red","green4")) + 
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")
plot_final


plot_final <- 
  ggplot(x[x$seats>1,], aes(x=reorder(party_name_short, -seats), y=seats, fill=party_name_short)) + geom_col(show.legend = F) + theme_minimal() +
  scale_fill_manual(values = c("yellow","khaki1","royalblue","darkseagreen","chartreuse","orange","red","green4")) + 
  labs(x="",
       y="Sitze im Parlament",
       title="Nationalratswahl 2019")
plot_final

# save this somewhere
