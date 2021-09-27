# Addilo

Addilo is a machine learning and data analysis library designed for both those trying to understand the basics of machine learning by testing out different networks and those who desire a flexible neural networking creation system for comparative studies.

### Documentation

An installation guide is included below. For full documentation see [addilo.net](https://addilo.net).

### Contents of this Repository

This repository includes the source code, help pages (which show up with R `help` function), package metadata and sample usage code along with the relavent datasets.

### Installation Guide

To install Addilo, first download the library files here and place it in the working directory which you can find by running `getwd()` in the R console.

To then install the package, run the following code:

`install.packages("addilo_2.0.tar.gz", repos = NULL, type = "source")`

This will automatically install the package in the default location.

If you are experiencing issues with this method, you can also install a package using the RStudio menu.

1. Select `Tools` from the menu up the top, followed by the first option labelled `Install Packages...`
2. In the drop down menu labelled `Install From:`, select `Package Archive File (.zip; .tar.gz)`
3. Specify the path to the downloaded file by using the `Browse` button next to the `Package Archive:` menu
4. Select `Install`

Regardless of the method you used, your R package will now be ready to use. Simply run library('addilo') and code away!