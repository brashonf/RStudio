> head(small_cities_data)
# A tibble: 6 × 5
X1    X2    X3    X4    X5
<dbl> <dbl> <dbl> <dbl> <dbl>
  1  8       78   284  9.10   109
2  9.30    68   433  8.70   144
3  7.5     70   739  7.20   113
4  8.90    96  1792  8.90    97
5 10.2     74   477  8.30   206
6  8.30   111   362 10.9    124
> summary(small_cities_data)
X1               X2              X3               X4        
Min.   : 3.600   Min.   : 60.0   Min.   : 190.0   Min.   : 7.200  
1st Qu.: 8.300   1st Qu.: 82.0   1st Qu.: 353.0   1st Qu.: 8.800  
Median : 9.400   Median :114.0   Median : 525.0   Median : 9.500  
Mean   : 9.306   Mean   :116.1   Mean   : 589.8   Mean   : 9.436  
3rd Qu.:10.300   3rd Qu.:134.0   3rd Qu.: 686.0   3rd Qu.:10.300  
Max.   :12.800   Max.   :238.0   Max.   :1792.0   Max.   :13.000  
X5       
Min.   : 35.0  
1st Qu.: 80.0  
Median :103.0  
Mean   :110.6  
3rd Qu.:129.0  
Max.   :292.0  
> lm(X1 ~ X2 , data = small_cities_data)

Call:
  lm(formula = X1 ~ X2, data = small_cities_data)

Coefficients:
  (Intercept)           X2  
8.71590      0.00508  

> lm(X1 ~ X3 , data = small_cities_data)

Call:
  lm(formula = X1 ~ X3, data = small_cities_data)

Coefficients:
  (Intercept)           X3  
8.9796442    0.0005528  

> lm(X1 ~ X4 , data = small_cities_data)

Call:
  lm(formula = X1 ~ X4, data = small_cities_data)

Coefficients:
  (Intercept)           X4  
11.8145      -0.2659  

> lm(X1 ~ X5 , data = small_cities_data)

Call:
  lm(formula = X1 ~ X5, data = small_cities_data)

Coefficients:
  (Intercept)           X5  
10.387997    -0.009782  

> cor(small_cities_data$X1 , small_cities_data$X2)
[1] 0.115765
> cor(small_cities_data$X1 , small_cities_data$X2)
[1] 0.115765
> cor(small_cities_data$X1 , small_cities_data$X3)
[1] 0.1105902
> cor(small_cities_data$X1 , small_cities_data$X4)
[1] -0.1719924
> cor(small_cities_data$X1 , small_cities_data$X5)
[1] -0.277607
> residuals.1 <- lm(X1 ~ X2 , data = small_cities_data) 
> residuals.2 <- lm(X1 ~ X3 , data = small_cities_data)
> residuals.3 <- lm(X1 ~ X4 , data = small_cities_data)
> residuals.4 <- lm(X1 ~ X5 , data = small_cities_data)
> plot(lm_model$fitted.values , residuals.1 , xlab = 'Fitter Values' , ylab = 'Residuals' , main = "Residuals vs Fitted")
Error: object 'lm_model' not found
> plot(small_cities_data$fitted.values , residuals.1 , xlab = 'Fitted Values', ylab = 'Residuals' , main = "Residuals vs Fitted")
Error in xy.coords(x, y, xlabel, ylabel, log) : 
  'x' and 'y' lengths differ
In addition: Warning message:
  Unknown or uninitialised column: `fitted.values`. 
> plot(lm_model$fitted.values, residuals.1 , xlab = "Fitted Values", ylab = "Residuals", main = "Residuals vs. Fitted")
Error: object 'lm_model' not found
> plot(small_cities_data$fitted.values, residuals.1, xlab = "Fitted Values", ylab = "Residuals", main = "Residuals vs. Fitted")
Error in xy.coords(x, y, xlabel, ylabel, log) : 
  'x' and 'y' lengths differ
In addition: Warning message:
  Unknown or uninitialised column: `fitted.values`. 
> plot(X1 ~ X2 , data = small_cities_data , residuals.1)
Error in plot.xy(xy, type, ...) : invalid plot type
> plot(residuals.1 , data = small_cities_data)
Hit <Return> to see next plot: 
  Error in if (datax) plot(y, x, main = main, xlab = ylab, ylab = xlab,  : 
                             the condition has length > 1
                           In addition: Warning messages:
                             1: In plot.window(...) : "data" is not a graphical parameter
                           2: In plot.xy(xy, type, ...) : "data" is not a graphical parameter
                           3: In axis(side = side, at = at, labels = labels, ...) :
                             "data" is not a graphical parameter
                           4: In axis(side = side, at = at, labels = labels, ...) :
                             "data" is not a graphical parameter
                           5: In box(...) : "data" is not a graphical parameter
                           6: In title(...) : "data" is not a graphical parameter
                           7: In plot.xy(xy.coords(x, y), type = type, ...) :
                             "data" is not a graphical parameter
                           8: In title(sub = sub.caption, ...) : "data" is not a graphical parameter
                           > plot(residuals.2 , data = small_cities_data)
                           Hit <Return> to see next plot: 
                             Error in if (datax) plot(y, x, main = main, xlab = ylab, ylab = xlab,  : 
                                                        the condition has length > 1
                                                      In addition: There were 48 warnings (use warnings() to see them)
                                                      > plot(residuals.3 , data = small_cities_data)
                                                      Hit <Return> to see next plot: 
                                                        Error in if (datax) plot(y, x, main = main, xlab = ylab, ylab = xlab,  : 
                                                                                   the condition has length > 1
                                                                                 In addition: There were 48 warnings (use warnings() to see them)
                                                                                 > save.image("~/Desktop/Ford.RData.Midterm.RData")
                                                                                 There were 16 warnings (use warnings() to see them)