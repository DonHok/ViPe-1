# Read in the arguments
# The first argument is the path to the csv-files
# The second argument is the path to the source files
# The third argument is the path to the libraries
args <- commandArgs(TRUE);
pathToFiles <- args[1]
pathToSourceFiles <- args[2]
pathToLibraries <- args[3]
pathValueDomain <- ""
granularity <- "fine"
if (length(args) == 4) {
  pathValueDomain <- args[4]  
}
if (length(args) == 5) {
  granularity <- args[5]  
}

if (!endsWith(pathToFiles, "/")) {
  pathToFiles <- paste(pathToFiles, "/", sep="");
}

if (!endsWith(pathToSourceFiles, "/")) {
  pathToSourceFiles <- paste(pathToSourceFiles, "/", sep="");
}

.libPaths(c(pathToLibraries, .libPaths()));

source(paste(pathToSourceFiles, "Visualizer.R", sep=""));
visualize(pathToFiles, pathToSourceFiles, pathToLibraries, valueDomain = pathValueDomain, granularity = granularity)

