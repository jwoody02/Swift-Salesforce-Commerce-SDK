#!/bin/bash
###################################################
# This script generates Swift code from OpenAPI for salesforce.
# You shouldn't ever have to use this unless you're updating the SDK.

# Notes:
# make sure to run 'convert-api.sh' first to convert RAML to OpenAPI
# also use 'brew install openapi-generator' since  we use the CLI
# (because packages don't support modifying build scripts)
###################################################


# Base directory for your converted OpenAPI specifications
BASE_API_DIR="openapi_specs"

# Destination directory for generated sources
DEST_BASE_DIR="Sources/Swift-Salesforce-Commerce-SDK/Generated"

# Loop through each YAML file in the openapi_specs directory
for spec_file in "$BASE_API_DIR"/*.{yaml,yml}; do
    # Skip if it's not a file
    if [[ ! -f "$spec_file" ]]; then
        continue
    fi

    # Extract the name of the spec file (without extension) to use in the destination path
    api_name=$(basename "$spec_file" | sed 's/\(.*\)\..*/\1/')

    # Destination directory for this particular API
    dest_dir="$DEST_BASE_DIR/$api_name"

    # Create the destination directory if it doesn't exist
    mkdir -p "$dest_dir"

    # Run OpenAPI Generator for this spec file
    openapi-generator generate -i "$spec_file" -g swift5 -o "$dest_dir"

    echo "Generated code for $api_name API"
done

echo "All APIs have been processed."
