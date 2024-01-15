library(tidyverse)

### Code for people, not machines #### 

xxx <- 10000
yyy <- 0.1
zzz <- 1:10

for (iii in zzz) {
  print(xxx*(1+yyy)^iii)
}

# Better:
investments <- 10000
yearly_return <- 0.1
years <- 1:10

for (year in years) {
  value <- investments*(1+yearly_return)^year
  print(paste(year, value, sep = ": "))
}

### Use the right names ####

currencyCon <- function(x, from = "USD", to = "EUR"){
  # assign values: 1 usd in each currency 
  values <- c(1.000000, 0.945799, 0.831797, 130.411928, 0.934267)
  # names attribute 
  names(values) <- c("USD", "EUR", "GBP", "YEN", "CHF")
  # calculate (convert from into USD, and divide to)
  values[to] / (values[from] / x)
}

# Testing 
currencyCon(1, "USD", "EUR")
currencyCon(1, "EUR", "EUR")
currencyCon(1, "GBP", "YEN")
currencyCon(100, "CHF", "USD")

dollar_to_euro <- function(x){
  x*0.945799
}

conv_rate <- 0.945799

usd_to_euro <- function(x){
  x*conv_rate
}

usd_to_euro(1)

### Use comments (& avoid unnecessary comments) ####

text <- c("Ha! let me see her; out, alas! She's cold:
          Her blood is settled, and her joints are stiff,
          Life and these lips have long been separated:
          Death lies on her like an untimely frost
          Upon the sweetest flower of all the field.")

f_words <- str_extract_all(text, "\\bf\\w+\\b")

l_words <- str_extract_all(text, "\\bl\\w+\\b")


# Find all words starting with letter 'f'
f_words <- str_extract_all(text, "\\bf\\w+\\b")
f_words

# Find all words starting with letter 'l'
l_words <- str_extract_all(text, "\\bl\\w+\\b")
l_words

investments <- 10000 # Your investments, change if needed
yearly_return <- 0.1 # Annual return (e.g., 0.1 --> 10%)
years <- 1:10 # Number of years to compound

# Go over each year
for (year in years) {
  # Calculate value of your investment in current year
  value <- investments*(1+yearly_return)^year
  # Print year and value of investment
  print(paste(year, value, sep = ": "))
}

### Don't repeat yourself (DRY) ####

print("Hello, world!")
print("Hello, world!")
print("Hello, world!")
print("Hello, world!")
print("Hello, world!")

for (i in 1:5) {
  print("Hello, world!")  
}


miles = 100
kilometers = miles * 1.60934

distance = 20 * 1.60934

print(kilometers)
print(distance)

miles_to_km <- function(miles){
  return(miles*1.60934)
}

miles = 100
miles_to_km(100)

distance <- miles_to_km(20)
print(distance)


