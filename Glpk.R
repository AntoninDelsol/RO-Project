setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library(glpkAPI)
mip <- initProbGLPK()
setProbNameGLPK(mip, "DEA Example")
dea <- mplAllocWkspGLPK()
mod_filepath <-"./temp/GLPK.mod"
data_filepath <-"./temp/GLPK.dat"
### Since the model and data are in separate files, it is necessary
### to read in both.
result <- mplReadModelGLPK(dea, mod_filepath, skip=0)
mplReadDataGLPK(dea, data_filepath)

result <- mplGenerateGLPK(dea)
#print(result)
result <- mplBuildProbGLPK(dea, mip)
#print(result)

solveSimplexGLPK(mip)
#mplPostsolveGLPK(dea, mip, GLP_MIP)
solution_list <- getColsPrimGLPK(mip)

writeSolGLPK(mip,'./temp/glpk.sol')
#print(solution_list)
