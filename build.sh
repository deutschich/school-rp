#! /bin/bash
VERSION=$(cat version.txt | tr -d '\n')
PREVIEW_VERSION="${VERSION}-preview"

echo "Removing Target Folder"
rm -rf target/
echo "Creating Pack..."
mkdir target
cd pack
zip -r ../target/CheapDesign-${PREVIEW_VERSION}.zip .
cd ..
cp target/CheapDesign-${PREVIEW_VERSION}.zip target/CheapMC-${PREVIEW_VERSION}.zip
