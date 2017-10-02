setup_bioclibrary <- function(libraryName){
  if( require(libraryName, character.only = TRUE) == FALSE ){
    source("https://bioconductor.org/biocLite.R");
    biocLite(libraryName);
  }
  library(libraryName, character.only = TRUE)
}

setup_library <- function(libName = 'tidyr'){
  if(require(libName, character.only = TRUE) == FALSE)
    install.packages(libName)
  library(libName, character.only = TRUE)
  
}
setup_bioclibrary('affy')
setup_bioclibrary('limma')
setup_bioclibrary('GEOquery')
setup_library('gam')

GSE90124 <- getGEO(GEO="GSE90124")
