# A comment begins with #

# Some useful keyboard shortcuts in R Studio:
# CTRL+ENTER  Executes on the command line the script line containing the cursor
# If you highlight / select text with mouse, CTRL+ENTER executes all the code
# Same applies with => Run above


# CTRL+1      Moves cursor to script window
# CTRL+2      Moves cursor to command line
# Up Arrow    [In console] Cycles through previously entered commands
# TAB         Activates autocomplete - very useful for paths and variable names
# F1          Searches help for the word containing the cursor



##########################

# Basic Math in R

3 + 2
4 - 6 #

log(42 / 7.3)

5 + 6 + 3 + 6 + 4 + 2 + 4 + 8 + 3 + 2 + 7
7 + 3 - 5 * 2 # multiplication "5 * 2" is done before the additions and subtractions

# Exponents
exp(2) # e^2
4^3
4**3

log(9, 3) # log to base 3 of 9
sqrt(100) # square root of 100
factorial(20)
choose(10, 3) # binomial coefficient


# R is flexible about numeric values - don't need to worry about integer vs. float
2 / 3
2.0 / 3.0

# Expressions can be placed on a single line separated by semi-colons:
2 + 3
5 * 7
3 - 7

#########################
# Storing values in variables
a <- 2
b <- 3
a / b
c <- 10.3

# Variable names are case sensitive: y is not the same as Y.
# Variable names cannot begin with numbers (e.g. 1x) or symbols (e.g. %x).
# Variable names connot contain blank spaces (use back.pay not back_pay).

##########################

# Vector Math in R
# We can use the c(...) command to create vectors from a list of values.

prices <- c(5, 10, 12, 13)
quantities <- c(100, 3, 2000, 40)

# We reference entries by their location, given in square brackets.
prices[2]

# Some functions on vectors
sum(prices)
min(prices)
max(prices)
mean(quantities)

# When vectors are of the same length, we can multiply them 'by index'
prices * quantities


##########################

# From vectors, we can create data frames

User_ID <- 1:8
# Vector with values: 1 2 3 4 5 6 7 8

Name <- c(
    "John", "Lisa", "Susan", "Albert",
    "Brian", "Emma", "David", "Alice"
)

# Note that you may break a vector in different lines without a problem

gender <- c(
    "Male", "Female", "Female", "Male",
    "Male", "Female", "Male", "Female"
)

Points <- c(56, 76, 86, 96, 73, 87, 47, 98)

Birth_year <- c(1994, 2001, 1980, 1999, 1972, 2004, 1965, 1984)

# Now we can form a data frame
df <- data.frame(User_ID, Name, gender, Birth_year)


# Click "df" in the Environment pane

# We can refer to columns of a frame by using $-symbol

df$Name # All names

# We can easily compute the age of the persons
# This computes the age of every row:
df$Age <- 2022 - df$Birth_year

# Look df frame again, there is new column "age"
View(df)
# We can find the smallest age:
min(df$Age)

# Or maximum
max(df$Age)

# Or the average
mean(df$Age)

# One can use subset function to select a "subframe"

young <- subset(df, Age < 30)

###########################
# Saving data to CSV
### To check the default working directory, use "getwd()" without quotes.
getwd()

### To change the working directory, type the path in quotes inside
### the setwd() command.

### PC Example: setwd("C:/Users/YOURUSERNAMEHERE/Desktop/")

# You can store data as
write.csv(df, "example.csv")

# Open your CSV in Excel, make some changes, save and close it

###########################
# Bringing data in from a CSV
# Download the file "diamonds.csv" from Moodle
# Store it to "Home > R_codes"
# Click that file of Files pane
# Select "Import Dataset"
# After that RStudio install couple of packages
# that are useful in importing data
# After the packages are installed you can choose "import"
# => You have a frame "diamonds".

# Visualizing data
plot(diamonds$carat, diamonds$price)

# The first parameter is x-coordinate
# The second parameter ix y-coordinate

# For more information on plots, copy-paste the following address:
# https://www.datamentor.io/r-programming/plot-function/