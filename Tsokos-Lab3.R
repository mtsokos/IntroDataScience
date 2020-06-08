myCars <- mtcars

##Step 1: Which car has the best hp (hp stands for “horse power”)
# 1) What is the highest hp? (The highest hp is 335)
max(myCars$hp)
#335

# 2) Which car has the highest hp?
which.max(myCars$hp)
myCars[31,]
#Maserati Bora

##Step 2: Explore mpg (mpg stands for “miles per gallon”)
# 3) What is the highest mpg?
max(myCars$mpg)
#33.9

# 4) Which car has the highest mpg? (Toyota Corolla has the highest mpg.)
which.max(myCars$mpg)
myCars[20,]
#Toyota Corolla

# 5) Create a sorted dataframe, based on mpg
# sort the dataframe by mpg, in descending order, and store the sorted dataframe in 'myCars_sorted' 
myCars_sorted <- myCars[order(-myCars$mpg),]

##Step 3: Which car has the “best” combination of mpg and hp?
  #HINT: divide the mpg value by hp, and pick the car with highest result
myCars[which.max(myCars$mpg/myCars$hp),]
#Honda Civic

# 6) One method to pick an efficient car: divide the mpg value by hp, and pick the car with highest result
# add a new column 'efficiency' in the dataframe to store the division result
myCars$efficiency <- myCars$mpg/myCars$hp
# to find the maximum of this new created column
max(myCars$efficiency)

# 7) Which car has the best combination of mpg and hp? 
# get the index of maximum efficiency first, and then get its row name
row.names(myCars)[which.max(myCars$efficiency)]
#Honda Civic

##Step 4: Which car has “best” combination of mpg and hp, where mpg and hp must be given equal weight?
  #### The goal of this step is to put you in a situation where you have to implement a new function you didn't learn. 
   #You should be able to use knowledge on R to solve new problem. 
  # scale 'mpg' by subtracting its column mean and then dividing the column standard deviation
  #HINT: this is a video about the scale function 
#scale mpg first:
scale(myCars$mpg)

# scale 'hp' (scale is subtracting its column mean and then dividing its column’s standard deviation. But you just use scale function like this:)
scale(myCars$hp)

# You just created two new variable using mpg and hp using scale function. Add the two scaled data and save the result as a new column 'combination' in the dataframe. Populate XXXX below;
myCars$combination <-scale(myCars$mpg) + scale(myCars$hp)

# Get the index of maximum combination first, and then get its row name. HINT: use which.max function AND row.names function
row.names(myCars)[which.max(myCars$combination)]
#Maserati Bora
