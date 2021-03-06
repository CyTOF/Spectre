# Spectre
A computational toolkit in R for the integration, exploration, and analysis of high-dimensional single-cell cytometry data. 

<img src="https://github.com/ImmuneDynamics/Spectre/blob/master/image/Spectre.png" width="200">

### Current version
`v0.3.7`

### About
Core developers of the Spectre package are Thomas Ashhurst, Felix Marsh-Wakefield, and Givanna Putri. The Spectre package is designed to allow for data analaysis workflows that simplify and streamline data manipulation and annotation, population identification (clustering, classificaiton), and dimensionality reduction (tSNE, UMAP) etc in high-dimensional cytometry data. Critically, the design of Spectre allows for a simple, clear, and modular design of analysis workflows, that can be utilised by data and laboratory scientists. 

### Protocols and vignettes
Basic usage instructions, and vignettes are available from https://wiki.centenary.org.au/display/SPECTRE. More comprehensive protocols can be found by signing up to the Sydney Cytometry 'extranet': https://sydneycytometry.org.au/wiki-launch.

### Citation
*If you use Spectre in your work, please consider citing Ashhurst, T. M., et al (2020). bioRxiv. 2020.10.22.349563. https://doi.org/10.1101/2020.10.22.349563. To continue providing open-source tools such as Spectre, it helps us to be able to demonstrate that our efforts are contributing to analysis efforts in the community. Please also consider citing the authors of the individual packages or tools (e.g. CytoNorm, FlowSOM, tSNE, UMAP, etc) that are critical elements of your analysis work.*

### Installing Spectre
Detailed installation instructions are available on this page: https://wiki.centenary.org.au/display/SPECTRE. 

Briefly, install and load the 'devtools' library.

```     
if(!require('devtools')) {install.packages('devtools')}
library('devtools')
```

Subsequently, use the 'install_github' function to install and load the Spectre package. By default this will load the 'master' branch, which is the same as the latest stable release version (listed at https://github.com/immunedynamics/Spectre/releases). To install a specific release version, see https://cran.r-project.org/web/packages/githubinstall/vignettes/githubinstall.html.

```
install_github("immunedynamics/spectre")
```

You will see the following returned:
```
Downloading GitHub repo sydneycytometry/spectre@master
These packages have more recent versions available.
Which would you like to update?

 1: All                                 
 2: CRAN packages only                  
 3: None                                
 4: data.table (1.12.0 -> 1.12.2) [CRAN]
 ... etc
 ```
 
We generally recommend updating your packages (by entering '1' and pressing return). If you wish to proceed without updating your other packages, select 'none' (in this example, by entering '3' and pressing return). If the package is sucessfully installed, you can load the library using:
```
library("Spectre")
```

Subsequently, there are a few packages from Bioconductor that you should install, which won't be installed by default when you install Spectre.

```
## Install BiocManager to download packages from Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
 
## Download additional BioConductor packages
if(!require('flowCore')) {BiocManager::install('flowCore')}
if(!require('Biobase')) {BiocManager::install('Biobase')}
if(!require('flowViz')) {BiocManager::install('flowViz')}
if(!require('FlowSOM')) {BiocManager::install('FlowSOM')}
```

You can then check for whether all of the packages for Spectre have been loaded correctly using the following commands
```
## Check if all required packages have been installed
Spectre::package.check()
 
## Load all required packages
Spectre::package.load()
```

Alternatively, you can go to releases (https://github.com/immunedynamics/spectre/releases) and download the latest stable release -- which can then be installed in R.

Once installed, usage instructions and vignettes can be found here: https://wiki.centenary.org.au/display/SPECTRE

#### Installing Docker image
Spectre is also available as a self-contained docker image (https://hub.docker.com/r/givanna/spectre). Instruction on how to setup Spectre docker image is available at: https://wiki.centenary.org.au/display/SPECTRE/Install+from+Docker

### Acknowledgements
The Spectre package was constructed on the basis of the CAPX workflow in R (https://sydneycytometry.org.au/capx). Along with the various R packages used within Spectre, we would like to acknowledge the Seurat and cytofkit R packages from providing inspiration for elements of the package design.
