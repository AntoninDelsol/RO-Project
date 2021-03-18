

GLPK = function (unDataFrame){
  
  ###Force wd au dossier source de l'application pour pourvoir utiliser les chemins relatifs
  setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
  
  ### Création du fichier data grace au DataFrame
  write('data;',file = './temp/GLPK.dat',append = FALSE)
  write(paste('param F :=',nrow(unDataFrame),';'),file = './temp/GLPK.dat',append = TRUE)
  write(paste('param L :=',ncol(unDataFrame)-2,';'),file = './temp/GLPK.dat',append = TRUE)
  write(paste('param C :='),file = './temp/GLPK.dat',append = TRUE)
  l<-unDataFrame[,1:2]
  write.table(l,file = './temp/GLPK.dat',append = TRUE,row.names = FALSE,col.names = FALSE)
  write(';',file = './temp/GLPK.dat',append = TRUE)
  write(paste('param M : '),file = './temp/GLPK.dat',append = TRUE)
  write(1:(ncol(unDataFrame)-2),file = './temp/GLPK.dat',append = TRUE,ncolumns = ncol(unDataFrame)-2)
  write(":=",file = './temp/GLPK.dat',append = TRUE)
  l<-unDataFrame[,-2]
  write.table(l,file = './temp/GLPK.dat',append = TRUE,row.names = FALSE,col.names = FALSE)
  write(';',file = './temp/GLPK.dat',append = TRUE)
  write('end;',file = './temp/GLPK.dat',append = TRUE)
  ###Fin du fichier data


  library(glpkAPI)
  mip <- initProbGLPK()
  
  setProbNameGLPK(mip, "GLPK")
  
  dea <- mplAllocWkspGLPK()
  
  mod_filepath <-"./temp/GLPK.mod"
  data_filepath <-"./temp/GLPK.dat"
  
  ### Lecture du fichier modèle et data 
  result <- mplReadModelGLPK(dea, mod_filepath, skip=0)
  mplReadDataGLPK(dea, data_filepath)
  
  ### Test ###
  #setDefaultSmpParmGLPK()
  
  result <- mplGenerateGLPK(dea)
  result <- mplBuildProbGLPK(dea, mip)
  solveSimplexGLPK(mip)
  
  ### Test ###
  #mplPostsolveGLPK(dea, mip, GLP_MIP)
  
  ### Ecriture du resultat dans le fichier solution
  printSolGLPK(mip,'./temp/glpk4.sol')
  
  resultat <- read.table('./temp/glpk4.sol',nrows = 1,skip = 5)
  return(resultat[1,4])
}