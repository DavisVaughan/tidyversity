% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model-anova.R
\name{tidy_anova}
\alias{tidy_anova}
\title{Analysis of variance}
\usage{
tidy_anova(data, model, ...)
}
\arguments{
\item{data}{Data frame with variables of interest to model}

\item{model}{Specification of the theorized model}

\item{...}{Other args passed to aov/lm}
}
\value{
List with fit and coef elements.
}
\description{
Conducts analysis of variance (ANOVA)
}
\examples{

## anova
polcom \%>\%
  dplyr::mutate(sex = ifelse(sex == 1, "Male", "Female"),
  vote_choice = dplyr::case_when(
    vote_2016_choice == 1 ~ "Clinton",
    vote_2016_choice == 2 ~ "Trump",
    TRUE ~ "Other")) \%>\%
  tidy_anova(pp_ideology ~ sex * vote_choice) \%>\%
  tidy_summary()

}
