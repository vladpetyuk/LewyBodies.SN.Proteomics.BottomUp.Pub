Reproducing study design and data analysis for the manuscript. Public repo.

# Protocol for reproducing vignettes

## docker
```r
docker run -p 8787:8787 vapetyuk/lewybodies1:latest
```

## RStudio server
To start the server, open browser and type `localhost:8787`. Username and password should be default for RStudio server.


## R package installation
```r
devtools::install_github("vladpetyuk/LewyBodies.SN.Proteomics.BottomUp.Pub", 
                      build_vignettes = TRUE)
```                      

## vignettes
```r
vignette(package="LewyBodies.SN.Proteomics.BottomUp.Pub")
```

## compiling Rnw files
Alternatively you can download and package as a zip file, upload into the RStudio docker (provided above), go to the vignettes directory withing the package and compile them on individually. This was the computation can be reproduced step by step. Note, prior to compilation, please set the weave engine to knitr.
![weave_engine](https://user-images.githubusercontent.com/4207635/109757527-d136a280-7b9e-11eb-9092-ce898ec05422.png)
