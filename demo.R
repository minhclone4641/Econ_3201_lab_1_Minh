rm(list = ls())
library(ggplot2)
install.packages("ggplot2")
install.packages("dplyr")
library(ggplot2)
library(dplyr)
install.packages("dplyr")
library(dplyr)
avg_mpg <- mpg %>%
  group_by(class) %>%
  summarise(avg_hwy_mpg = mean(hwy, na.rm = TRUE))
ggplot(avg_mpg, aes(y=class, x=avg_hwy_mpg))+
  geom_col(fill="lightblue")+
  labs(title = "average Highway MPG by Vehicle class",
       y = "vehicle class",
       x = "average Highway MPG") +
  theme_minimal()
