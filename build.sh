#! /bin/bash
VERSION=$(cat version.txt | tr -d '\n')
PREVIEW_VERSION="${VERSION}-preview"

echo "Removing Target Folder"
rm -rf target/
echo "Creating Pack..."
mkdir target
cd pack
zip -r ../target/ShoolRP-${PREVIEW_VERSION}.zip .
