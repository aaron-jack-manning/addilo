# Addilo

Addilo is a machine learning and data analysis library designed for both those trying to understand the basics of machine learning by testing out different networks and those who desire a flexible neural networking creation system for comparative studies. This was my HSC software design and development project, only minor changes have been made since then.

## Documentation

An installation guide is included below. For full documentation see [addilo.net](https://addilo.net). The website source can be found in the `website` folder above.

## Contents of this Repository

This repository includes the source code, help pages (which show up with R `help` function), package metadata, sample usage code along with the relavent datasets and website source.

## Installation Guide

To install Addilo, first download the library file `addilo_2.0.tar.gz` and place it in the working directory which you can find by running `getwd()` in the R console.

To then install the package, run the following code:

`install.packages("addilo_2.0.tar.gz", repos = NULL, type = "source")`

This will automatically install the package in the default location.

If you are experiencing issues with this method, you can also install a package using the RStudio menu.

1. Select `Tools` from the menu up the top, followed by the first option labelled `Install Packages...`
2. In the drop down menu labelled `Install From:`, select `Package Archive File (.zip; .tar.gz)`
3. Specify the path to the downloaded file by using the `Browse` button next to the `Package Archive:` menu
4. Select `Install`

Regardless of the method you used, your R package will now be ready to use. Simply run library('addilo') and code away!

Please visit the website for more thorough details on using Addilo.

## Recreating Package

To recreate package from source files:

- Open RStudio
- File -> New Project -> New Directory -> R Package
- Specify name and location
- Keep R studio session open while loading all source files into the auto generated folder so that they appear in the RStudio files window
- Build -> Check Package
- Build -> Build Source Package 
