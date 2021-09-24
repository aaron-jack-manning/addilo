library('addilo')
# Section 1: Loading in and organising the data
X <- as.matrix(unname(read.csv("irisdimensions.csv")))[,1]
Y <- as.matrix(unname(read.csv("irisdimensions.csv")))[,2]

# Section 2: Creating and examining the model
model <- Regress(X, Y)

print(model)

# Section 3: Making data predictions from the X variable
independent.variable <- 2 # change this according to your independent variable to predict from and if you are interpolating or extrapolating

print(Predictor(model, independent.variable))
