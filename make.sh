# This script makes and publishes the lecture book
# Author:
# 	Ilias Bilionis
# Date:
# 	5/9/2022
#       12/28/2023
#	6/11/2025

# Make it
jupyter-book build . --all

# Publish it
ghp-import -n -p -f ./_build/html
