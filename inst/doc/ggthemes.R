## ----header,echo=FALSE,results='hide'------------------------------------
library("knitr")
opts_chunk$set(fig.width = 5.25, fig.height = 3.75, cache=FALSE)

## ----dsamp---------------------------------------------------------------
library("ggplot2")
library("ggthemes")
dsamp <- diamonds[sample(nrow(diamonds), 1000), ]

## ----tufte-rangeframe----------------------------------------------------
(ggplot(mtcars, aes(wt, mpg))
  + geom_point() + geom_rangeframe()
  + theme_tufte())

## ----tufteboxplot--------------------------------------------------------
(ggplot(mtcars, aes(factor(cyl), mpg)) 
 + theme_tufte(ticks=FALSE)
 + geom_tufteboxplot())

## ----economist-----------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
 + theme_economist()
 + scale_colour_economist()
 + ggtitle("Diamonds Are Forever"))

## ----solarized-light-----------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
                             + theme_solarized()
                             + scale_colour_solarized("blue"))

## ----solarized-dark------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
                             + theme_solarized(light=FALSE)
                             + scale_colour_solarized("red"))

## ----solarized-alt-------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
                             + theme_solarized_2()
                             + scale_colour_solarized("blue"))

## ----stata---------------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
                             + theme_stata() 
                             + scale_colour_stata()
                             + ggtitle("Plot Title"))

## ----excel1--------------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
 + theme_excel() 
 + scale_colour_excel())


## ----excel2--------------------------------------------------------------
(ggplot(diamonds, aes(clarity, fill=cut)) 
 + geom_bar()
 + scale_fill_excel()
 + theme_excel())

## ----igray---------------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
 + theme_igray())

## ----fivethirtyeight-----------------------------------------------------
(qplot(hp, mpg, data= subset(mtcars, cyl != 5), geom="point", color = factor(cyl))
 + geom_smooth(method = "lm", se = FALSE)
 + scale_color_fivethirtyeight()
 + theme_fivethirtyeight())

## ----tableau-------------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
 + theme_igray()
 + scale_colour_tableau())

## ----tableau-colorbind10-------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
 + theme_igray()
 + scale_colour_tableau("colorblind10"))

## ----few-----------------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
 + theme_few()
 + scale_colour_few())

## ----wsj-----------------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=cut)
 + theme_wsj()
 + scale_colour_wsj("colors6", "")
 + ggtitle("Diamond Prices"))

## ----gdocs---------------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=clarity)
 + theme_gdocs()
 + ggtitle("Diamonds")
 + scale_color_gdocs())

## ----calc----------------------------------------------------------------
(qplot(carat, price, data=dsamp, colour=clarity)
 + theme_calc()
 + ggtitle("Diamonds")
 + scale_color_calc())

## ----pander-scatterplot--------------------------------------------------
(qplot(carat, price, data = dsamp, colour = clarity)
 + theme_pander()
 + scale_colour_pander())

## ----pander-barplot------------------------------------------------------
(ggplot(dsamp, aes(clarity, fill = cut)) + geom_bar()
  + theme_pander()
  + scale_fill_pander())

## ----hc-default----------------------------------------------------------
(qplot(carat, price, data = dsamp, colour = cut)
 + theme_hc()
 + scale_colour_hc()
 + ggtitle("Diamonds Are Forever"))

## ----hc-darkunica--------------------------------------------------------
(qplot(carat, price, data = dsamp, colour = cut)
 + theme_hc(bgcolor = "darkunica")
 + scale_colour_hc("darkunica")
 + ggtitle("Diamonds Are Forever"))

## ----dtemp---------------------------------------------------------------
dtemp <- data.frame(months = factor(rep(substr(month.name,1,3), 4), levels = substr(month.name,1,3)),
                    city = rep(c("Tokyo", "New York", "Berlin", "London"), each = 12),
                    temp = c(7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6,
                             -0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5,
                             -0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0,
                             3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8))

## ----hc-default-line-----------------------------------------------------
qplot(months, temp, data=dtemp, group=city, color=city, geom="line") +
  geom_point(size=1.1) + 
  ggtitle("Monthly Average Temperature") +
  theme_hc() +
  scale_colour_hc()

## ----hc-darkunica-line---------------------------------------------------
qplot(months, temp, data=dtemp, group=city, color=city, geom="line") +
  geom_point(size=1.1) + 
  ggtitle("Monthly Average Temperature") +
  theme_hc(bgcolor = "darkunica") +
  scale_fill_hc("darkunica")

