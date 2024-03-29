% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glm.R
\name{h2o.glm}
\alias{h2o.glm}
\title{Fit a generalized linear model}
\usage{
h2o.glm(
  x,
  y,
  training_frame,
  model_id = NULL,
  validation_frame = NULL,
  nfolds = 0,
  checkpoint = NULL,
  export_checkpoints_dir = NULL,
  seed = -1,
  keep_cross_validation_models = TRUE,
  keep_cross_validation_predictions = FALSE,
  keep_cross_validation_fold_assignment = FALSE,
  fold_assignment = c("AUTO", "Random", "Modulo", "Stratified"),
  fold_column = NULL,
  random_columns = NULL,
  ignore_const_cols = TRUE,
  score_each_iteration = FALSE,
  score_iteration_interval = -1,
  offset_column = NULL,
  weights_column = NULL,
  family = c("AUTO", "gaussian", "binomial", "fractionalbinomial", "quasibinomial",
    "ordinal", "multinomial", "poisson", "gamma", "tweedie", "negativebinomial"),
  rand_family = c("[gaussian]"),
  tweedie_variance_power = 0,
  tweedie_link_power = 1,
  theta = 1e-10,
  solver = c("AUTO", "IRLSM", "L_BFGS", "COORDINATE_DESCENT_NAIVE", "COORDINATE_DESCENT",
    "GRADIENT_DESCENT_LH", "GRADIENT_DESCENT_SQERR"),
  alpha = NULL,
  lambda = NULL,
  lambda_search = FALSE,
  early_stopping = TRUE,
  nlambdas = -1,
  standardize = TRUE,
  missing_values_handling = c("MeanImputation", "Skip", "PlugValues"),
  plug_values = NULL,
  compute_p_values = FALSE,
  dispersion_parameter_method = c("deviance", "pearson", "ml"),
  init_dispersion_parameter = 1,
  remove_collinear_columns = FALSE,
  intercept = TRUE,
  non_negative = FALSE,
  max_iterations = -1,
  objective_epsilon = -1,
  beta_epsilon = 1e-04,
  gradient_epsilon = -1,
  link = c("family_default", "identity", "logit", "log", "inverse", "tweedie", "ologit"),
  rand_link = c("[identity]", "[family_default]"),
  startval = NULL,
  calc_like = FALSE,
  HGLM = FALSE,
  prior = -1,
  cold_start = FALSE,
  lambda_min_ratio = -1,
  beta_constraints = NULL,
  max_active_predictors = -1,
  interactions = NULL,
  interaction_pairs = NULL,
  obj_reg = -1,
  stopping_rounds = 0,
  stopping_metric = c("AUTO", "deviance", "logloss", "MSE", "RMSE", "MAE", "RMSLE",
    "AUC", "AUCPR", "lift_top_group", "misclassification", "mean_per_class_error",
    "custom", "custom_increasing"),
  stopping_tolerance = 0.001,
  balance_classes = FALSE,
  class_sampling_factors = NULL,
  max_after_balance_size = 5,
  max_runtime_secs = 0,
  custom_metric_func = NULL,
  generate_scoring_history = FALSE,
  auc_type = c("AUTO", "NONE", "MACRO_OVR", "WEIGHTED_OVR", "MACRO_OVO", "WEIGHTED_OVO"),
  dispersion_epsilon = 1e-04,
  tweedie_epsilon = 8e-17,
  max_iterations_dispersion = 3000,
  build_null_model = FALSE,
  fix_dispersion_parameter = FALSE,
  generate_variable_inflation_factors = FALSE,
  fix_tweedie_variance_power = TRUE,
  dispersion_learning_rate = 0.5,
  influence = c("dfbetas"),
  gainslift_bins = -1
)
}
\arguments{
\item{x}{(Optional) A vector containing the names or indices of the predictor variables to use in building the model.
If x is missing, then all columns except y are used.}

\item{y}{The name or column index of the response variable in the data. 
The response must be either a numeric or a categorical/factor variable. 
If the response is numeric, then a regression model will be trained, otherwise it will train a classification model.}

\item{training_frame}{Id of the training data frame.}

\item{model_id}{Destination id for this model; auto-generated if not specified.}

\item{validation_frame}{Id of the validation data frame.}

\item{nfolds}{Number of folds for K-fold cross-validation (0 to disable or >= 2). Defaults to 0.}

\item{checkpoint}{Model checkpoint to resume training with.}

\item{export_checkpoints_dir}{Automatically export generated models to this directory.}

\item{seed}{Seed for random numbers (affects certain parts of the algo that are stochastic and those might or might not be enabled by default).
Defaults to -1 (time-based random number).}

\item{keep_cross_validation_models}{\code{Logical}. Whether to keep the cross-validation models. Defaults to TRUE.}

\item{keep_cross_validation_predictions}{\code{Logical}. Whether to keep the predictions of the cross-validation models. Defaults to FALSE.}

\item{keep_cross_validation_fold_assignment}{\code{Logical}. Whether to keep the cross-validation fold assignment. Defaults to FALSE.}

\item{fold_assignment}{Cross-validation fold assignment scheme, if fold_column is not specified. The 'Stratified' option will
stratify the folds based on the response variable, for classification problems. Must be one of: "AUTO",
"Random", "Modulo", "Stratified". Defaults to AUTO.}

\item{fold_column}{Column with cross-validation fold index assignment per observation.}

\item{random_columns}{random columns indices for HGLM.}

\item{ignore_const_cols}{\code{Logical}. Ignore constant columns. Defaults to TRUE.}

\item{score_each_iteration}{\code{Logical}. Whether to score during each iteration of model training. Defaults to FALSE.}

\item{score_iteration_interval}{Perform scoring for every score_iteration_interval iterations Defaults to -1.}

\item{offset_column}{Offset column. This will be added to the combination of columns before applying the link function.}

\item{weights_column}{Column with observation weights. Giving some observation a weight of zero is equivalent to excluding it from
the dataset; giving an observation a relative weight of 2 is equivalent to repeating that row twice. Negative
weights are not allowed. Note: Weights are per-row observation weights and do not increase the size of the
data frame. This is typically the number of times a row is repeated, but non-integer values are supported as
well. During training, rows with higher weights matter more, due to the larger loss function pre-factor. If
you set weight = 0 for a row, the returned prediction frame at that row is zero and this is incorrect. To get
an accurate prediction, remove all rows with weight == 0.}

\item{family}{Family. Use binomial for classification with logistic regression, others are for regression problems. Must be
one of: "AUTO", "gaussian", "binomial", "fractionalbinomial", "quasibinomial", "ordinal", "multinomial",
"poisson", "gamma", "tweedie", "negativebinomial". Defaults to AUTO.}

\item{rand_family}{Random Component Family array.  One for each random component. Only support gaussian for now. Must be one of:
"[gaussian]".}

\item{tweedie_variance_power}{Tweedie variance power Defaults to 0.}

\item{tweedie_link_power}{Tweedie link power Defaults to 1.}

\item{theta}{Theta Defaults to 1e-10.}

\item{solver}{AUTO will set the solver based on given data and the other parameters. IRLSM is fast on on problems with small
number of predictors and for lambda-search with L1 penalty, L_BFGS scales better for datasets with many
columns. Must be one of: "AUTO", "IRLSM", "L_BFGS", "COORDINATE_DESCENT_NAIVE", "COORDINATE_DESCENT",
"GRADIENT_DESCENT_LH", "GRADIENT_DESCENT_SQERR". Defaults to AUTO.}

\item{alpha}{Distribution of regularization between the L1 (Lasso) and L2 (Ridge) penalties. A value of 1 for alpha
represents Lasso regression, a value of 0 produces Ridge regression, and anything in between specifies the
amount of mixing between the two. Default value of alpha is 0 when SOLVER = 'L-BFGS'; 0.5 otherwise.}

\item{lambda}{Regularization strength}

\item{lambda_search}{\code{Logical}. Use lambda search starting at lambda max, given lambda is then interpreted as lambda min
Defaults to FALSE.}

\item{early_stopping}{\code{Logical}. Stop early when there is no more relative improvement on train or validation (if provided)
Defaults to TRUE.}

\item{nlambdas}{Number of lambdas to be used in a search. Default indicates: If alpha is zero, with lambda search set to True,
the value of nlamdas is set to 30 (fewer lambdas are needed for ridge regression) otherwise it is set to 100.
Defaults to -1.}

\item{standardize}{\code{Logical}. Standardize numeric columns to have zero mean and unit variance Defaults to TRUE.}

\item{missing_values_handling}{Handling of missing values. Either MeanImputation, Skip or PlugValues. Must be one of: "MeanImputation",
"Skip", "PlugValues". Defaults to MeanImputation.}

\item{plug_values}{Plug Values (a single row frame containing values that will be used to impute missing values of the
training/validation frame, use with conjunction missing_values_handling = PlugValues)}

\item{compute_p_values}{\code{Logical}. Request p-values computation, p-values work only with IRLSM solver and no regularization
Defaults to FALSE.}

\item{dispersion_parameter_method}{Method used to estimate the dispersion parameter for Tweedie, Gamma and Negative Binomial only. Must be one
of: "deviance", "pearson", "ml". Defaults to pearson.}

\item{init_dispersion_parameter}{Only used for Tweedie, Gamma and Negative Binomial GLM.  Store the initial value of dispersion parameter.  If
fix_dispersion_parameter is set, this value will be used in the calculation of p-values.Default to 1.0.
Defaults to 1.}

\item{remove_collinear_columns}{\code{Logical}. In case of linearly dependent columns, remove some of the dependent columns Defaults to FALSE.}

\item{intercept}{\code{Logical}. Include constant term in the model Defaults to TRUE.}

\item{non_negative}{\code{Logical}. Restrict coefficients (not intercept) to be non-negative Defaults to FALSE.}

\item{max_iterations}{Maximum number of iterations Defaults to -1.}

\item{objective_epsilon}{Converge if  objective value changes less than this. Default (of -1.0) indicates: If lambda_search is set to
True the value of objective_epsilon is set to .0001. If the lambda_search is set to False and lambda is equal
to zero, the value of objective_epsilon is set to .000001, for any other value of lambda the default value of
objective_epsilon is set to .0001. Defaults to -1.}

\item{beta_epsilon}{Converge if  beta changes less (using L-infinity norm) than beta esilon, ONLY applies to IRLSM solver
Defaults to 0.0001.}

\item{gradient_epsilon}{Converge if  objective changes less (using L-infinity norm) than this, ONLY applies to L-BFGS solver. Default
(of -1.0) indicates: If lambda_search is set to False and lambda is equal to zero, the default value of
gradient_epsilon is equal to .000001, otherwise the default value is .0001. If lambda_search is set to True,
the conditional values above are 1E-8 and 1E-6 respectively. Defaults to -1.}

\item{link}{Link function. Must be one of: "family_default", "identity", "logit", "log", "inverse", "tweedie", "ologit".
Defaults to family_default.}

\item{rand_link}{Link function array for random component in HGLM. Must be one of: "[identity]", "[family_default]".}

\item{startval}{double array to initialize fixed and random coefficients for HGLM, coefficients for GLM.}

\item{calc_like}{\code{Logical}. if true, will return likelihood function value. Defaults to FALSE.}

\item{HGLM}{\code{Logical}. If set to true, will return HGLM model.  Otherwise, normal GLM model will be returned Defaults
to FALSE.}

\item{prior}{Prior probability for y==1. To be used only for logistic regression iff the data has been sampled and the mean
of response does not reflect reality. Defaults to -1.}

\item{cold_start}{\code{Logical}. Only applicable to multiple alpha/lambda values.  If false, build the next model for next set
of alpha/lambda values starting from the values provided by current model.  If true will start GLM model from
scratch. Defaults to FALSE.}

\item{lambda_min_ratio}{Minimum lambda used in lambda search, specified as a ratio of lambda_max (the smallest lambda that drives all
coefficients to zero). Default indicates: if the number of observations is greater than the number of
variables, then lambda_min_ratio is set to 0.0001; if the number of observations is less than the number of
variables, then lambda_min_ratio is set to 0.01. Defaults to -1.}

\item{beta_constraints}{Beta constraints}

\item{max_active_predictors}{Maximum number of active predictors during computation. Use as a stopping criterion to prevent expensive model
building with many predictors. Default indicates: If the IRLSM solver is used, the value of
max_active_predictors is set to 5000 otherwise it is set to 100000000. Defaults to -1.}

\item{interactions}{A list of predictor column indices to interact. All pairwise combinations will be computed for the list.}

\item{interaction_pairs}{A list of pairwise (first order) column interactions.}

\item{obj_reg}{Likelihood divider in objective value computation, default (of -1.0) will set it to 1/nobs Defaults to -1.}

\item{stopping_rounds}{Early stopping based on convergence of stopping_metric. Stop if simple moving average of length k of the
stopping_metric does not improve for k:=stopping_rounds scoring events (0 to disable) Defaults to 0.}

\item{stopping_metric}{Metric to use for early stopping (AUTO: logloss for classification, deviance for regression and anomaly_score
for Isolation Forest). Note that custom and custom_increasing can only be used in GBM and DRF with the Python
client. Must be one of: "AUTO", "deviance", "logloss", "MSE", "RMSE", "MAE", "RMSLE", "AUC", "AUCPR",
"lift_top_group", "misclassification", "mean_per_class_error", "custom", "custom_increasing". Defaults to
AUTO.}

\item{stopping_tolerance}{Relative tolerance for metric-based stopping criterion (stop if relative improvement is not at least this
much) Defaults to 0.001.}

\item{balance_classes}{\code{Logical}. Balance training data class counts via over/under-sampling (for imbalanced data). Defaults to
FALSE.}

\item{class_sampling_factors}{Desired over/under-sampling ratios per class (in lexicographic order). If not specified, sampling factors will
be automatically computed to obtain class balance during training. Requires balance_classes.}

\item{max_after_balance_size}{Maximum relative size of the training data after balancing class counts (can be less than 1.0). Requires
balance_classes. Defaults to 5.0.}

\item{max_runtime_secs}{Maximum allowed runtime in seconds for model training. Use 0 to disable. Defaults to 0.}

\item{custom_metric_func}{Reference to custom evaluation function, format: `language:keyName=funcName`}

\item{generate_scoring_history}{\code{Logical}. If set to true, will generate scoring history for GLM.  This may significantly slow down the
algo. Defaults to FALSE.}

\item{auc_type}{Set default multinomial AUC type. Must be one of: "AUTO", "NONE", "MACRO_OVR", "WEIGHTED_OVR", "MACRO_OVO",
"WEIGHTED_OVO". Defaults to AUTO.}

\item{dispersion_epsilon}{If changes in dispersion parameter estimation or loglikelihood value is smaller than dispersion_epsilon, will
break out of the dispersion parameter estimation loop using maximum likelihood. Defaults to 0.0001.}

\item{tweedie_epsilon}{In estimating tweedie dispersion parameter using maximum likelihood, this is used to choose the lower and
upper indices in the approximating of the infinite series summation. Defaults to 8e-17.}

\item{max_iterations_dispersion}{Control the maximum number of iterations in the dispersion parameter estimation loop using maximum likelihood.
Defaults to 3000.}

\item{build_null_model}{\code{Logical}. If set, will build a model with only the intercept.  Default to false. Defaults to FALSE.}

\item{fix_dispersion_parameter}{\code{Logical}. Only used for Tweedie, Gamma and Negative Binomial GLM.  If set, will use the dispsersion
parameter in init_dispersion_parameter as the standard error and use it to calculate the p-values. Default to
false. Defaults to FALSE.}

\item{generate_variable_inflation_factors}{\code{Logical}. if true, will generate variable inflation factors for numerical predictors.  Default to false.
Defaults to FALSE.}

\item{fix_tweedie_variance_power}{\code{Logical}. If true, will fix tweedie variance power value to the value set in tweedie_variance_power.
Defaults to TRUE.}

\item{dispersion_learning_rate}{Dispersion learning rate is only valid for tweedie family dispersion parameter estimation using ml. It must be
> 0.  This controls how much the dispersion parameter estimate is to be changed when the calculated
loglikelihood actually decreases with the new dispersion.  In this case, instead of setting new dispersion =
dispersion + change, we set new dispersion = dispersion + dispersion_learning_rate * change. Defaults to 0.5.
Defaults to 0.5.}

\item{influence}{If set to dfbetas will calculate the difference in beta when a datarow is included and excluded in the
dataset. Must be one of: "dfbetas".}

\item{gainslift_bins}{Gains/Lift table number of bins. 0 means disabled.. Default value -1 means automatic binning. Defaults to -1.}
}
\value{
A subclass of \code{\linkS4class{H2OModel}} is returned. The specific subclass depends on the machine
        learning task at hand (if it's binomial classification, then an \code{\linkS4class{H2OBinomialModel}} is
        returned, if it's regression then a \code{\linkS4class{H2ORegressionModel}} is returned). The default print-
        out of the models is shown, but further GLM-specifc information can be queried out of the object. To access
        these various items, please refer to the seealso section below. Upon completion of the GLM, the resulting
        object has coefficients, normalized coefficients, residual/null deviance, aic, and a host of model metrics
        including MSE, AUC (for logistic regression), degrees of freedom, and confusion matrices. Please refer to the
        more in-depth GLM documentation available here:
        \url{https://h2o-release.s3.amazonaws.com/h2o-dev/rel-shannon/2/docs-website/h2o-docs/index.html#Data+Science+Algorithms-GLM}
}
\description{
Fits a generalized linear model, specified by a response variable, a set of predictors, and a
description of the error distribution.
}
\examples{
\dontrun{
h2o.init()

# Run GLM of CAPSULE ~ AGE + RACE + PSA + DCAPS
prostate_path = system.file("extdata", "prostate.csv", package = "h2o")
prostate = h2o.importFile(path = prostate_path)
h2o.glm(y = "CAPSULE", x = c("AGE", "RACE", "PSA", "DCAPS"), training_frame = prostate,
        family = "binomial", nfolds = 0, alpha = 0.5, lambda_search = FALSE)

# Run GLM of VOL ~ CAPSULE + AGE + RACE + PSA + GLEASON
predictors = setdiff(colnames(prostate), c("ID", "DPROS", "DCAPS", "VOL"))
h2o.glm(y = "VOL", x = predictors, training_frame = prostate, family = "gaussian",
        nfolds = 0, alpha = 0.1, lambda_search = FALSE)


# GLM variable importance
# Also see:
#   https://github.com/h2oai/h2o/blob/master/R/tests/testdir_demos/runit_demo_VI_all_algos.R
bank = h2o.importFile(
  path="https://s3.amazonaws.com/h2o-public-test-data/smalldata/demos/bank-additional-full.csv"
)
predictors = 1:20
target = "y"
glm = h2o.glm(x = predictors, 
              y = target, 
              training_frame = bank, 
              family = "binomial", 
              standardize = TRUE,
              lambda_search = TRUE)
h2o.std_coef_plot(glm, num_of_features = 20)
}
}
\seealso{
\code{\link{predict.H2OModel}} for prediction, \code{\link{h2o.mse}}, \code{\link{h2o.auc}},
         \code{\link{h2o.confusionMatrix}}, \code{\link{h2o.performance}}, \code{\link{h2o.giniCoef}},
         \code{\link{h2o.logloss}}, \code{\link{h2o.varimp}}, \code{\link{h2o.scoreHistory}}
}
