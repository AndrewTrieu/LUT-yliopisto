# EX 1

winnings <- 
  100000 * 5 +
  2000 * 40 +
  1000 * 160 +
  500 * 1000 +
  30 * 16000 +
  20 * 80000 +
  10 * 180000 +
  5 * 240000 +
  4 * 250000

N <- 3000000
Expectation <- winnings / N
Expectation
# 2.44

# But one ticked costs 4 euros, so expected win is 
Expectation - 4
# -1.56


# EX 2

dpois(0, lambda = 2.63) # a
dpois(1, lambda = 2.63) # b
dpois(2, lambda = 2.63) # c
dpois(3, lambda = 2.63) # d
dpois(4, lambda = 2.63) # e

1 - (dpois(0, lambda = 2.63) +
  dpois(1, lambda = 2.63) +
  dpois(2, lambda = 2.63) +
  dpois(3, lambda = 2.63) +
  dpois(4, lambda = 2.63))

# Same:
1 - ppois(4, lambda=2.63) # Cumulative distribution function / lower tail  

# Same:
ppois(4, lambda=2.63, lower=FALSE) # upper tail 
 

# EX 3
# This sounds like a geometric distribution
p <- 0.35
1 / p # Expected number of reports to read
#2.857143

# At most two
P <- p + (1 - p)*p 
P
# At least three
1 - P
# 0.4225

# One solution
1 - (dgeom(0, p) + dgeom(1, p))


# Directly / R counts the number of failures
1 - pgeom(1,p) # we fail at most once

# Or even simpler way
pgeom(1,p, lower = F)
pgeom(1,p, lower = FALSE)


# EX 4
dpois(1, lambda = 2.3) * dpois(0, lambda = 0.7) # 1-0
dpois(2, lambda = 2.3) * dpois(0, lambda = 0.7) # 2-0
dpois(2, lambda = 2.3) * dpois(1, lambda = 0.7) # 2-1

# draw
dpois(0, lambda = 2.3) * dpois(0, lambda = 0.7) + 
dpois(1, lambda = 2.3) * dpois(1, lambda = 0.7) + 
dpois(2, lambda = 2.3) * dpois(2, lambda = 0.7) + 
dpois(3, lambda = 2.3) * dpois(3, lambda = 0.7) +
dpois(4, lambda = 2.3) * dpois(4, lambda = 0.7) +
dpois(5, lambda = 2.3) * dpois(5, lambda = 0.7) +
dpois(6, lambda = 2.3) * dpois(6, lambda = 0.7) + 
dpois(7, lambda = 2.3) * dpois(7, lambda = 0.7) + 
dpois(8, lambda = 2.3) * dpois(8, lambda = 0.7) + 
dpois(9, lambda = 2.3) * dpois(9, lambda = 0.7) +
dpois(10, lambda = 2.3) * dpois(10, lambda = 0.7) 
# 0.1685989

# This is already very small  
dpois(10, lambda = 2.3) * dpois(10, lambda = 0.7)  

# Using for loop:

sum <- 0
for (k in 0:10)
{sum <- sum + dpois(k, lambda = 2.3) * dpois(k, lambda = 0.7)} 
sum
#[1] 0.1685989

sum <- 0
for (k in 0:1000000) # loop until million
{sum <- sum + dpois(k, lambda = 2.3) * dpois(k, lambda = 0.7)}
sum
# [1] 0.1685989


# EX 5 

# This looks like a binomial distribution
p = 0.6
n = 5

# All are alive
dbinom(5, size=5, prob=0.6)
# 0.07776

# At least three
dbinom(3, size=5, prob=0.6) +
dbinom(4, size=5, prob=0.6) +
dbinom(5, size=5, prob=0.6)
# 0.68256

# Cumulative version
1 - pbinom(2, 5, 0.6)

# OR
pbinom(2, 5, 0.6, lower = FALSE)

# Exactly two
dbinom(2, size=5, prob=0.6)
# 0.2304
