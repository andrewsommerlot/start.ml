% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/select-models.R
\name{select_models}
\alias{select_models}
\title{select_models}
\usage{
select_models(model_list, test, eval_metric, y, eval_threshold = NULL,
  correlation_threshold = NULL)
}
\arguments{
\item{model_list}{List object of H2O model objects to be subbsetted by performance and correlation thresholds
No Default.}

\item{test}{H2O frame object containing labeled data for model evaluation.
No Default.}

\item{eval_metric}{Character object one of logloss, MSE, RMSE, MAE, AUC, or mean_per_class_error.}

\item{y}{Character object of length 1 identifying the column name of the target variable. No Default.}

\item{eval_threshold}{Numeric object defining the performance threshold models must meet to be used in prediction. Is minimum for maximization loss function (i.e., AUC) and maximum for minimization loss functions (logloss, MSE, etc). Default is NULL, returns models without performance consideration.}

\item{correlation_threshold}{Numeric object defining the maximum person correlation allowed in the group of resulting models. If two models show high correlation, the one with surperior performance will be kept and the other dropped. Value ranges from -1 to 1, default is NULL, returning models without correlation considered.}
}
\value{
List object containing H2O model objects adhearing to threshold standards set in input arguments.
}
\description{
select_models identifies best models in mlblob object by performance and pearson correlation thresholds.
}
