if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")

1
library(ggpubr)

library(readxl)

wohc <- read_excel("wohc1.xlsx")

### UNPD is a factor 
## is their any effect of UNDP on site 
## UNDP effect on collobration 
## ordinary as factor (catagorical)
## box plots 

corres <- wohc$corresponding


# Shapiro-Wilk normality test for mpg
shapiro.test(wohc$corresponding) 
shapiro.test(wohc$site) 
shapiro.test(wohc$collobration)
shapiro.test(wohc$UNDP)

# visulize the normality 

ggqqplot(wohc$site, ylab = "Study Site")

ggqqplot(wohc$UNDP, ylab = "UNDP")

ggscatter(wohc, x = "UNDP", y = "site", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "spearman",
          xlab = "Study Sites", ylab = "UNDP")




ggqqplot(wohc$UNDP, ylab = "UNDP")

ggqqplot(wohc$corresponding, ylab = "corresponding authors")

ggscatter(wohc, x = "UNDP", y = "site", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "spearman",
          xlab = "Study Site", ylab = "UNDP")









res3 <-cor.test(wohc$site, wohc$UNDP,  method = "spearman")
res3

plot(site,UNDP, method = "spearman")

