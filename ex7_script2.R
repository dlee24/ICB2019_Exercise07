#ex7_script2. write functions to complete these tasks. Operate on iris, which is iris.csv read into global env
iris <- read.csv("iris.csv")

#part one: return the number of observations for a given species
#usage: NumObs("species_name")
#example: NumObs("setosa")
NumObs <- function(Species){
  SpeciesDF = iris[iris$Species == Species,]
  Num.Obs = sum(SpeciesDF$Sepal.Length != "", SpeciesDF$Sepal.Width != "", SpeciesDF$Petal.Length != "", SpeciesDF$Petal.Width != "")
  return(Num.Obs)
}



#part two: function to return a df for flowers with Sepal.Width > specified value by user.

#usage: SepalWidthMinimum(minimum_width_desired,dataset_name)
#defaults to iris as dataset, will work for other dataframes with Septal.Width column
SepalWidthMin <- function(minWidth, file=iris){
  df = file[file$Sepal.Width > minWidth,]
  return(df)
}


SpeciesWriter <- function(SpeciesName){
  SpeciesFile = iris[iris$Species == SpeciesName,]
  write.csv(SpeciesFile, file = paste(SpeciesName,".csv", sep = ""))
}
SpeciesWriter("virginica")
SpeciesWriter("versicolor")
SpeciesWriter("setosa")
