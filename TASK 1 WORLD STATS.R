getwd()
df <- read.csv("world_country_stats.csv")
view(df)
colnames(df)
summary(df)
dim(df)
summary(df$region)
summary(df$median_age)
summary(df$fertility_rate)
table(df$region)
table(df$median_age)
table(df$fertility_rate)

# Create a bar plot of Region , Fertility Rate 
#   & Median Age

library("tidyverse")
ggplot(df, aes(x = df$region)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Region", 
       x = "Region", y = "Count") 

ggplot(df, aes(x = df$fertility_rate)) + 
  geom_bar(fill = "red") + 
  labs(title = "Fertility Rate", 
       x = "Fertility Rate", y = "Count") 



ggplot(df, aes(x = df$median_age)) + 
  geom_bar(fill = "red") + 
  labs(title = "Median Age", 
       x = "Median Age", y = "Count") 
















# summary(df$Unit.Price)
# #ggplot(df, aes(x = df$Unit.Price)) + 
#   geom_bar(fill = "red") + 
#   labs(title = "Distribution of Profit of Sales", 
#        x = "Profit Data", y = "Count") 
# 
# 
# 
# 
# # Calculate the median of the Unit Price column 
# median_value <- median(df$Unit.Price,  
#                        na.rm = TRUE) 
# median_value
# summary(df$Unit.Price)
# 
# mean_value <- mean(df$Unit.Price,  
#                    na.rm = TRUE) 
# mean_value
# 
# # filling missing values 
# df$Unit.Price <- ifelse(is.na(df$Unit.Price), 
#                         mean_value, df$Unit.Price)
# summary(df$Unit.Price)
# 
# table(df$Ship.Mode)
# 
# dim(df)
# 
# df$Ship.Mode <- ifelse(is.na(df$Ship.Mode), 
#                        "Regular Air", df$Ship.Mode)
# table(df$Ship.Mode)
# 
# ggplot(df, aes(x = df$Ship.Mode)) + 
#   geom_bar(fill = "red") + 
#   labs(title = "Distribution of Ship Modes", 
#        x = "Ship Modes", y = "Count") 