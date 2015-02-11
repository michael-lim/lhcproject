\name{lhcpackage}
\alias{lhcpackage}
\alias{lhc}
\docType{package}
\title{
This project implements the local hill climbing method that was proposed by David Kane (Hutchin Hills), which tries to maximize the profit on a given n-dimensional landscape with various modes of connection.
}
\description{
In an economic landscape, there are many local minima and maxima. While it is very hard to find the absolute maxima of the landscape, it is entirely possible to find many local maxima using the local hill climbing methods. The three methods entail: 1. steepest ascent, in which we look around the neighbors and move to the neighboring point with a maximum profit value, 2. median ascent in which we choose the median of the neighboring points with greater profit value, and 3. least ascent in which we choose the minimum profit value higher than the current profit value. It turns out that in many cases the least ascent has the most potential to optimize the given profit.
}
\details{
\tabular{ll}{
Package: \tab lhc\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-2-20\cr
License: \tab GNU GENERAL PUBLIC LICENSE Version 2\cr
}
Suppose you have a set of inputs "X," and you want to find the local maximum with the coefficients given by the profit function "Pi(X)" (refer to Kane's paper on the nomenclature of the problem). 
We can use hillclimb(X,Co,y,m) function to complete the task. X denotes the set of inputs, Co denotes the set of coefficients, y denotes the number of allowed connections, and m denotes the method of ascent (1 = steepest ascent, 2 = median ascent, 3 = least ascent). The connections are defined by the neighborhoods, and a connection of mode "y" will link i-th and (i+y)-th coordinates of inputs together. Steepest ascent looks around the neighbors and move to the neighboring point with a maximum profit value. Median ascent chooses the median of the neighboring points with greater profit value. Least ascent we chooses the minimum profit value higher than the current profit value. 
Now, its sister function ghillclimb(X,Co,y,m) function completes the task, except it generates a graph that compares the relative profit value vs. the number of iterations.
The function chillclimb(X,Co,y) compares the relative values for each of the hill climbing methods.
Finally, thillclimb(y,No,Ev,St) generates a table that compares the hill climbing methods over many randomly chosen inputs and coefficients. y denotes the mode of connection once again, No denotes the number of inputs, Ev denotes the expected value for each of the inputs, and St denotes the number of sets that we want to include in the sample.
}
\author{
Michael Hyun Jae Lim

Maintainer: <m@m-ike.me>
}
\references{
"Local Hillclimbing on an Economic Landscape" -David Kane (SFI WORKING PAPER: 1996-08-065)
}
\keyword{ package }
\examples{
Suppose you have a 
}
