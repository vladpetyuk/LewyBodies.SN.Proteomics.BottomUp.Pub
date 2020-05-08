# library(doParallel)
# library(foreach)
# library(iterators)
# library(doRNG)

loocv_feat_sel_perf_eval <- function(response, dSet, seed=0){
    fmla <- as.formula(sprintf("%s ~ .", response))
    numCores <- min(nrow(dSet), detectCores())
    cl <- makeCluster(numCores)
    clusterExport(cl, c("fmla", "dSet"), envir = environment())
    registerDoParallel(cl)
    registerDoRNG(seed)
    #' LOOCV feature selection
    sel_feat_list <- foreach(i=icount(nrow(dSet)),
                             .combine=c,
                             # .export = c("fmla","dSet"),
                             .packages=c("Boruta")) %dopar%
                             {
                                 Boruta.result <- Boruta(fmla, data=dSet[-i,])
                                 list(getSelectedAttributes(Boruta.result))
                             }
    #' LOOCV predictions
    predictions_vec <- foreach(i=icount(nrow(dSet)),
                          .combine=c,
                          # .export = c("fmla","dSet"),
                          .packages=c("randomForest")) %dopar%
                          {
                              rf_mod <- randomForest(fmla, dSet[-i,])
                              as.character(predict(rf_mod, newdata = dSet[i,]))
                          }
    stopCluster(cl)
    #' return
    return(list(sel_feat_list=sel_feat_list,
                predictions_vec=predictions_vec))
}




