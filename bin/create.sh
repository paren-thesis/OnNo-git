#!/bin/bash

# Prompt for filename
read -p "Enter the name of the file: " filename

# Prompt for line 5 content
read -p "Enter line 5 of your code: " line5

# Create the file with default content
cat > "$filename" <<EOF
#!/bin/bash

source /c/OnNo-git/bin/functions/bisect

$line5
EOF

echo "File created successfully."