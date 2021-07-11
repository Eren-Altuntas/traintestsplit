#' Train Test Split Function
#' @export
#' @param x Determines how many dummys there will be
#' @param length The your array or dataframe length.
#' @param pr Probablity for the new array.
#' @param data Your data.
#' @param numtr numtr is number dummy for train array.
#' @param numts numts is number dummy for test array.
#' @param shapex For shapex xtrain&xtest. Used to select rows or columns.
#' @param shapey For shapey ytrain&ytest. Used to select rows or columns.
#' @description The traintest method divides the dataset into 2 parts for people working in the field of machine learning, and the train part is used to build the model and the test part is used to test the model.
#' @seealso The x argument must be typed.
#' @references By Eren Altuntas(2021)
train_test_split <- function(x,length,pr,data,numtr,numts,shapex,shapey){
  split.data <- sample(x,length,replace = T,prob = c(pr,1-pr))
  split.data.x.training <<- data[split.data==numtr,shapex]
  split.data.x.test <<- data[split.data==numts,shapex]
  split.data.y.trainig <<- data[split.data==numtr,shapey]
  split.data.y.test <<- data[split.data==numts,shapey]
}
