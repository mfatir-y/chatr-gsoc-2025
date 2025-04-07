# pkgfunfinder

An R package that uses the `ellmer` package to query Ollama's llama3.2 language model to extract a list of functions exported by an R package.

## Installation

You'll need to have Ollama installed and the llama3.2:3b model available.

```r
# Install the development version from GitHub
# install.packages("devtools")
devtools::install_github("yourusername/pkgfunfinder")
```

## Prerequisites

1. Install Ollama from [https://ollama.ai/](https://ollama.ai/)
2. Pull the llama3.2:3b model:
   ```bash
   ollama pull llama3.2:3b
   ```

## Usage

```r
library(pkgfunfinder)

# Get functions from a package
dplyr_functions <- get_package_functions("dplyr")
print(dplyr_functions)

# You can also try with other models
tidyr_functions <- get_package_functions("tidyr", model = "llama3.2:3b", temperature = 0.1)
```

## Note

This package demonstrates how large language models can be used to retrieve information about R packages in a flexible, language-based way. The responses are generated from model predictions and may not always reflect the exact list of exported functions. For more accurate results, consider cross-referencing with standard R tools.
