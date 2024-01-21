#!/bin/bash
###################################################
# This script converts RAML to OpenAPI for salesforce.
# You shouldn't ever have to use this unless you're updating the SDK.
###################################################

# Base directory for your RAML specifications
BASE_RAML_DIR="apis"

# Destination directory for the converted OpenAPI files
DEST_OPENAPI_DIR="openapi_specs"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_OPENAPI_DIR"

# Function to convert a single RAML file to OpenAPI using oas-raml-converter-cli
# a bit hacky, but it works. Expect to take about a minute to convert the YAML files.
convert_raml_to_openapi() {
    local raml_file=$1
    local openapi_file=$2

    /usr/bin/expect <<EOF
    spawn oas-raml-converter-cli
    expect "Choose the type of converter you want to use"
    send -- "3\r"
    expect "Enter the source path of the file:"
    send -- "$raml_file\r"
    expect "Enter the destination path for the file:"
    send -- "$openapi_file\r"
    expect "Are you sure you want to continue"
    send -- "y\r"
    expect eof
EOF
}

# Loop through each RAML file in the apis directory
for raml_file in "$BASE_RAML_DIR"/*/*.raml; do
    # Skip if it's not a file
    if [[ ! -f "$raml_file" ]]; then
        continue
    fi

    # Extract the name of the RAML file to use in the destination path
    api_name=$(basename "$raml_file" .raml)

    # Destination file for the converted OpenAPI spec
    openapi_file="$DEST_OPENAPI_DIR/$api_name.yaml"

    # Convert RAML to OpenAPI
    convert_raml_to_openapi "$raml_file" "$openapi_file"

    echo "Converted $raml_file to OpenAPI format: $openapi_file"
done

echo "All RAML files have been converted to OpenAPI format."
