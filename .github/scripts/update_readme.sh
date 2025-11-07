
set -e

FREQ_RESULT="$1"      
GITHUB_USER="$2"      
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo "Updating README with analysis result..."
cat <<EOF >> README.md

## Vowel Frequency Analysis

- User: ${GITHUB_USER}
- Time: ${TIMESTAMP}
- Result: ${FREQ_RESULT}

EOF


git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"
