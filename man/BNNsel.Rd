\name{BNNsel}
\alias{BNNsel}

\title{
Bayesian Neural Network for Variable Selection
}
\description{
Perform variable selection and calculate posterior probabilities for the classes of linear and nonlinear of models. 
}
\usage{
BNNsel(X,Y,train_num, hid_num = 3, lambda=0.025,total_iteration = 1000000, popN = 20, nCPUs = 20)
}
\arguments{
  \item{ X }{ a \emph{n}x\emph{p} input data matrix.}
  \item{ Y  }{response vector.}
  \item{ train_num  }{Number of training samples.  The default setting is 80\% of the input samples. }
\item{ hid_num  }{Number of hidden units. The default setting is 3.}
  \item{ lambda}{The prior probability for each connection of the neural network being selected for the final model. 
                 The default setting is 0.025.}
  \item{ total_iteration  }{Number of iterations. The default setting is 1000,000.}
  \item{ popN  }{ Number of Markov Chains in a parallel run. The default setting is 20.}
  \item{ nCPUs  }{Number of CPUs to be used in the simulation. The default setting is 20.}
  
  
}
\value{
A list of five elements:
  \item{net}{Marginal inclusion probability of each connection of the neural network.}
  \item{prob}{Posterior probability of the class of linear models.}
    \item{mar}{Marginal inclusion probability of each input variable, which can be used for variable selection based on a multiple-hypothesis test or the median probability model criterion.}
  \item{fit}{Fitted value for the response vector of training data.}
    \item{pred}{Predicted value for the response vector of testing data. }
    
%% ...
}
\author{ Bochao Jia and Faming Liang}
\examples{
#library(BNN)
#data(Topotecan)
#X <- Topotecan$X
#Y <- Topotecan$Y
#BNNsel(X,Y, hid_num = 3,lambda=0.025,total_iteration = 1000000, popN = 20, nCPUs = 20)
}
\references{
Liang, F., Li, Q. and Zhou, L. (2017) Bayesian Neural Networks for Selection of Drug Sensitive Genes.  Journal of the American Statistical Association, under revision.
}

\keyword{BNNsel}

