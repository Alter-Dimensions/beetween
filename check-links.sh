#!/bin/bash

echo "🔗 Comprehensive Link Check for Beetween Documentation"
echo "=================================================="

# Change to docs directory
cd "$(dirname "$0")/docs" || exit 1

# Function to resolve relative paths
resolve_path() {
    local current_file="$1"
    local link_path="$2"
    local current_dir=$(dirname "$current_file")

    # Handle relative paths
    if [[ "$link_path" == ../* ]]; then
        # Go up one directory from current file's directory
        echo "$current_dir/$link_path"
    elif [[ "$link_path" == ./* ]]; then
        # Same directory as current file
        echo "$current_dir/${link_path#./}"
    else
        # If no leading ./ or ../, treat as relative to current file's directory
        echo "$current_dir/$link_path"
    fi
}

# Extract all internal markdown links
echo "📋 Extracting all internal markdown links..."
total_links=0
broken_links=0

# Process each markdown file
for file in $(find . -name "*.md" -type f); do
    echo ""
    echo "Checking links in: $file"

    # Extract markdown links that end with .md and don't start with http
    while IFS= read -r line; do
        if [[ -n "$line" ]]; then
            # Extract the link path from [text](path.md) format
            link_path=$(echo "$line" | sed -E 's/.*\]\(([^)]*\.md)\).*/\1/')

            if [[ "$link_path" != "$line" ]]; then  # If extraction worked
                total_links=$((total_links + 1))

                # Resolve the path relative to current file
                resolved_path=$(resolve_path "$file" "$link_path")

                # Clean up the path (remove ./ and resolve ../)
                clean_path=$(echo "$resolved_path" | sed 's|^\./||' | sed 's|/\./|/|g')

                # Check if file exists
                if [[ -f "$clean_path" ]]; then
                    echo "  ✅ $link_path → $clean_path"
                else
                    echo "  ❌ $link_path → $clean_path (BROKEN)"
                    broken_links=$((broken_links + 1))
                fi
            fi
        fi
    done < <(grep -n '\]([^)]*\.md)' "$file" 2>/dev/null | grep -v 'http')
done

echo ""
echo "=================================================="
echo "📊 LINK CHECK SUMMARY"
echo "=================================================="
echo "Total internal links found: $total_links"
echo "Broken links: $broken_links"
echo "Working links: $((total_links - broken_links))"

if [[ $broken_links -eq 0 ]]; then
    echo "🎉 All internal links are working!"
    exit 0
else
    echo "⚠️  Found $broken_links broken link(s) that need attention"
    exit 1
fi
