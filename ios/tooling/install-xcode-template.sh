#!/usr/bin/env sh

# Configuration
XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/RIBs'

# Copy RIBs file templates into the local RIBs template directory
xcodeTemplate () {
  echo "==> Copying up RIBs Xcode file templates..."

  if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_TEMPLATE_DIR"
  cp -R *.xctemplate "$XCODE_TEMPLATE_DIR"
}

xcodeTemplate

if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    echo "==> ... success!"
    echo "==> RIBs have been set up. In Xcode, select 'New File...' to use RIBs templates."
else
    echo "==> ... error directory creation failed."
fi




