#!/bin/sh

# A handy bash script to be executed only once on the extension-specific directories

# How to use it:
#
# - Open rename_once_folder.sh, and edit/customize the variables (copy-paste from the .env file)
# - Open replace_once_folder.sh, and edit/customize the variables (copy-paste from the .env file)
# - From the project root, execute build/rename-and-replace_once.sh

EXTENSION_NAME="XiroAdmin"
EXTENSION_ALIAS="xiroadmin"
EXTENSION_CLASS_NAME="XirowebXiroadmin"
EXTENSION_DESC="TPL_XIROADMIN_XML_DESCRIPTION"
EXTENSION_NAMESPACE="Xiroweb"
TRANSLATION_KEY="TPL_XIROADMIN"

gsed -i "s/\[EXTENSION_ALIAS\]/$EXTENSION_ALIAS/g" composer.json
gsed -i "s/\[EXTENSION_DESC\]/$EXTENSION_DESC/g" composer.json
gsed -i "s/\[EXTENSION_NAMESPACE\]/$EXTENSION_NAMESPACE/g" composer.json

# Replace
test -d component && build/replace_once_folder.sh component
test -d file && build/replace_once_folder.sh file
test -d library && build/replace_once_folder.sh library
test -d modules && build/replace_once_folder.sh modules
test -d package && build/replace_once_folder.sh package
test -d plugins && build/replace_once_folder.sh plugins
test -d template && build/replace_once_folder.sh template

test -d build/templates && build/replace_once_folder.sh build/templates
test -d build/translations && build/replace_once_folder.sh build/translations

# Rename
test -d component && build/rename_once_folder.sh component
test -d file && build/rename_once_folder.sh file
test -d library && build/rename_once_folder.sh library
test -d modules && build/rename_once_folder.sh modules
test -d package && build/rename_once_folder.sh package
test -d plugins && build/rename_once_folder.sh plugins
test -d template && build/rename_once_folder.sh template

test -d build/templates && build/rename_once_folder.sh build/templates
test -d build/translations && build/rename_once_folder.sh build/translations
