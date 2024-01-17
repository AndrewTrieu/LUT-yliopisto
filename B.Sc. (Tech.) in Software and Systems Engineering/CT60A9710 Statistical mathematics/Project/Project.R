# Task 1


# b)
X <- 0:12
Y <- dgeom(X, p = 0.45)
plot(X, Y, type = "h", main = "Geometric distribution (p=0.45)", ylab = "P(X=k)")
points(X, Y, pch = 16)

# Task 2

# b)
X <- 0:30
Y <- dbinom(X, size = 30, prob = .6)
plot(X, Y, type = "h", main = "Binominal distribution (p=0.6)", ylab = "P(X=k)")
points(X, Y, pch = 16)

# Task 3

# 2)
X <- 0:40
Y <- dpois(X, lambda = 20)
plot(X, Y, type = "h", main = "Poisson distribution (lambda=20)", ylab = "P(X=k)")
points(X, Y, pch = 16)

# Task 4
library(readr)
data_set1 <- read_csv("data_set1.csv")
View(data_set1)

# 1) The name of the column is "Val".
# 2) There are 1029 rows.
# 3) Max = 109.379
max(data_set1)
# 4) Min = 4.193534
min(data_set1)
# 5) Mean = 50.49665
mean(data_set1$Val)
# 6) Median = 50.52415
median(data_set1$Val)
# 7) Variance = 218.7175
var(data_set1$Val)
# 8) Standard deviation = 14.7891
sd(data_set1$Val)

# Task 5
# 1)
library(readr)
data_set1 <- read_csv("data_set1.csv")
X <- 0:100
Y <- dnorm(X, mean = mean(data_set1$Val), sd = sd(data_set1$Val))
plot(X, Y, type = "l", ylim = c(0, 0.03), main = "Data set vs normal distribution")
# 2)
d <- density(data_set1$Val, bw = 3)
# 3)
points(d, col = "red", type = "l")
# 4)
abline(v = mean(data_set1$Val), col = "green")

# Task 6
# 4 variables most correlated with hp: mpg, cyl, disp, carb
cars <- mtcars
round(cor(cars), digits = 2)

# Task 7
# 1)
model <- lm(hp ~ cyl + disp + carb + mpg, data = mtcars)
# 2)
hp_hat <- predict(model)
# 3)
residuals <- mtcars$hp - hp_hat
# 4)
hpplot <- density(residuals)
plot(hpplot, main = "Density of residuals")
# 6)
summary(model)$r.squared # 0.8594845 - Correct and accurate

# Task 8
library(readr)
data_set2 <- read_csv("data_set2.csv")
X <- min(data_set2):max(data_set2)
Y <- dnorm(X, mean = mean(data_set2$Val), sd = sd(data_set2$Val))
plot(X, Y, type = "l", main = "Normal distribution of stick lengths")
d <- density(data_set2$Val, bw = 1)
points(d, col = "red", type = "l")
abline(v = mean(data_set2$Val), col = "green")
# The length of the sticks is not acceptable as the mean is much higher than the null hypothesis of µ = 30 and most values are not around 30.