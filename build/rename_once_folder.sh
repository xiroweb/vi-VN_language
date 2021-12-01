#!/bin/sh

# A handy bash script to be executed only once on the extension-specific directories

EXTENSION_NAME="XiroAdmin"
EXTENSION_ALIAS="xiroadmin"
EXTENSION_CLASS_NAME="XirowebXiroadmin"
EXTENSION_DESC="TPL_XIROADMIN_XML_DESCRIPTION"
EXTENSION_NAMESPACE="Xiroweb"
TRANSLATION_KEY="TPL_XIROADMIN"

find $1 -name "*foo*" -type d -exec rename "s/foo/$EXTENSION_ALIAS/" {} \;
find $1 -name "*foo*" -type f -exec rename "s/foo/$EXTENSION_ALIAS/" {} \;
