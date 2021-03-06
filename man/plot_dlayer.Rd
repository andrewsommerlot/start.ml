% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot-dlayer.R
\name{plot_dlayer}
\alias{plot_dlayer}
\title{plot_dlayer
Visualize hidden layer activations in a deep learning model with dimentionality reduction and variable labels}
\usage{
plot_dlayer(model, vis_data, layer, label, dimentions = 2,
  max_points = 1000, tsne_iter = 500, wd = getwd())
}
\arguments{
\item{model}{H2O model object containing labeled data for model training.
No Default.}

\item{vis_data}{H2O frame object containing data to caculate layer activations.
No Default.}

\item{layer}{Numeric object of length 1 identifying the which hidden layer to visualize.
No Defalut.}

\item{label}{Character object of length 1 identifying the column name of the variable in vis_data to label visulaizaion points with. No Default.}

\item{dimentions}{Numeric object set to 2 or 3, 2 returns ggplot figure, 3 returns plotly html page}

\item{max_points}{Numeric object setting maximum number of observations in visualization. A number of rows equal to max_points from vis_data are sampled with out replacement for the visulaization.}

\item{tsne_iter}{Numberic object sets the number of iterations in t-tailed stochastic nearest neighbors dimentionality reduction operation. Defaults to 1000.}

\item{wd}{Character object defining file path where html interactive graphic will be saved if dimentions = 3. Defaults to current working directory.}
}
\value{
None
}
\description{
plot_dlayer
Visualize hidden layer activations in a deep learning model with dimentionality reduction and variable labels
}
