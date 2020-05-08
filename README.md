Reproducing study design and data analysis for the manuscript.
This repo completely reproduces the analysis and contains data protected by DUA.
Thus it must remain private.


# to install

## docker
```r
docker run -p 8787:8787 vapetyuk/lewybodies1:latest
```

## R package installation
```r
devtools::install_github("vladpetyuk/lewybodies.sn.proteomics.bottomup.pub.git", 
                      build_vignettes = TRUE)
```                      

## vignettes
```r
vignette(package="LewyBodies.SN.Proteomics.BottomUp.Pub")
```