
#' @name SN_proteome
#' 
#' @aliases SN_proteome_no_batch_effect
#'          SN_proteome_no_bias
#'          SN_proteome_residuals
#'          SN_proteome_50
#'          
#' @title MSnSet objects with preprocessed bottom-up proteomics data 
#'        for the Lewy bodies study
#'        
#' @description Bottom-up LC-MS/MS data collected on the Q Exactive
#'              instrument. Mass spec data was analyzed by MaxQuant.
#'              
#' @details There are four MSnSet objects. The list of objects is 
#' ordered according to the pre-processing steps.
#' \itemize{
#'   \item `SN_proteome`: LFQ intensities extracted from MaxQuant output.
#'                      Preprocessing involves log2 transform and 
#'                      zero-centering for proteins.
#'
#'   \item `SN_proteome_50`: Only those proteins that 
#'   present in at least 50% of samples are retained.
#'   Then normalized using \code{\link[stats]{medpolish}} approach.
#'   
#'   \item `SN_proteome_no_batch_effect`: All the previous steps, 
#'   then technical batch effect correspoding to plate columns 
#'   is modeled and removed. 
#'   Then normalized using \code{\link[stats]{medpolish}} approach.
#'   
#'   \item `SN_proteome_no_bias`: Same as `SN_proteome_no_batch_effect`,
#'   but additionally biases correspoding to subject matching 
#'   (age, gender, etc) are also removed.
#'   Then normalized using \code{\link[stats]{medpolish}} approach.
#'   
#'   \item `SN_proteome_residuals`: Same as `SN_proteome_no_bias`,
#'   but additionally group effects (case, control.1, control.2) are
#'   also removed.
#'   Then normalized using \code{\link[stats]{medpolish}} approach.
#' }
#' The details on data extraction and preprocessing can be found 
#' in the package source "scripts" directory.
#' 
#' 
# ' @section Data normalization: to be figured out
# ' @section Data pre-filtering: to be figured out
#' 
#' @docType data
#' @usage 
#' data(SN_proteome)
#' data(SN_proteome_50)
#' data(SN_proteome_no_batch_effect)
#' data(SN_proteome_no_bias)
#' data(SN_proteome_residuals)
#' 
#' @return m an \code{MSnSet} instance
#' @format an \code{MSnSet} instance
#' @source PNNL's data analysis pipeline
#' @author Vlad Petyuk, 2016-07-06
# ' @export
#' @examples
#' \dontrun{
#' data(SN_proteome)
#' head(pData(m))
#' head(fData(m))
#' head(exprs(m))
#' }
NULL


