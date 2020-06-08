# 1. BOOLEAN LOGIC -- values are either TRUE or FALSE
# & is AND : If both of the values are TRUE, then returns TRUE
# | is OR : If one of the values is TRUE, then returns TRUE
# ! is NOT : Returns the opposite
# Zero is FALSE, all nonzero numbers are TRUE

# Let's assign a vector (list of values) to x
x <- c(FALSE, 0, TRUE, 2)
# Let's try using NOT logic
!x
# It returns TRUE TRUE FALSE FALSE, the opposite of each input
# Let's assign a vector to y
y <- c(1, FALSE, 0, TRUE)
# Let's try NOT logic for y
!y
# It returns FALSE TRUE TRUE FALSE, opposite of each input
# Now let's try comparing x and y using AND and OR logic
x&y
# AND only returns TRUE if both of the compared inputs are also TRUE
# Here it returns FALSE FALSE FALSE TRUE
# Only the last pair of inputs are both TRUE
# Here we try OR logic, and let's see the difference from using AND
x|y
# It returns TRUE FALSE TRUE TRUE
# Only one of each of the compared values needs to be TRUE for OR logic to return TRUE

if (0 & 1) {               #Here we test out different inputs into a function that will say different
  print("Input is true")   #things depending on whether or not the input is true
} else {                   #Here with 0 and 1 as the inputs, it will return FALSE
  print("Input is false")
}
if (1 & 1) {               #Here we test the same function, but with 1 and 1 as inputs
  print("Input is true")   
} else {                   
  print("Input is false")
}
if (0|1) {                 #When using OR logic, only one input needs to be TRUE to return TRUE
  print("Input is true")
} else {
  print("Input is false")
}
if (0|0) {                 #Let's use the same function using 0 and 0 as inputs
  print("Input is true")
} else {
  print("Input is false")
}
if (!0) {                  #Finally, lets test out NOT logic, this will return the opposite Boolean value
  print("Input is true")   #of the input
} else {
  print("Input is false")
}
if (!1) {                  
  print("Input is true")   
} else {
  print("Input is false")
}

# 2. VECTORS
height <- c(59,60,61,58,67,72,70)
weight <- c(150,140,180,220,160,140,130)
a <- 150

avgheight <- mean(height)
avgweight <- mean(weight)

lheight <- length(height)
lweight <- length(weight)

sumheight <- sum(height)
sumweight <- sum(weight)

avg2height <- sumheight / lheight  #Calculate mean using summed values and length of the vector
avg2weight <- sumweight / lweight
avgheight == avg2height            #Compare the calculated mean to the value from the mean function
avgweight == avg2weight
#Both the newly computed means are equal to the means obtained from the mean function

maxH <- max(height)
minW <- min(weight)

weightafterdinner <- weight + 5
weightafterdinner / height

if (max(height) > 60) {
  "yes"
} else {
  "no"
}
if (min(weight) > a) {
  "yes"
} else {
  "no"
}
