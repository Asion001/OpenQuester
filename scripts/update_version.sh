#!/bin/bash

# Get the latest git tag
GIT_TAG=$(git describe --tags --abbrev=0)

if [ -z "$GIT_TAG" ]; then
  echo "No tags found. Exiting."
  exit 1
fi

# Extract version number from the tag (assuming the tag is in the format v1.2.3)
VERSION=$(echo $GIT_TAG | sed 's/^v//')

if [ -z "$VERSION" ]; then
  echo "Failed to extract version from tag. Exiting."
  exit 1
fi

# Update pubspec.yaml with the new version
PUBSPEC_FILE="client/pubspec.yaml"
if grep -q "^version: $VERSION" $PUBSPEC_FILE; then
  echo "Version in $PUBSPEC_FILE is already up to date."
else
  sed -i "s/^version:.*/version: $VERSION/" $PUBSPEC_FILE
  echo "Updated version in $PUBSPEC_FILE to $VERSION"
fi

# Update package.json with the new version
PACKAGE_JSON_FILE="server/package.json"
if grep -q "\"version\": \"$VERSION\"" $PACKAGE_JSON_FILE; then
  echo "Version in $PACKAGE_JSON_FILE is already up to date."
else
  sed -i "s/\"version\": \".*\"/\"version\": \"$VERSION\"/" $PACKAGE_JSON_FILE
  echo "Updated version in $PACKAGE_JSON_FILE to $VERSION"
fi
