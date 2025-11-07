
set -e

FILE_PATH="${FILE:-data.txt}"

echo "Running vowel frequency analyzer on '${FILE_PATH}'..."

# Run the Python analyzer
FREQ_RESULT=$(python .github/scripts/frequency.py "${FILE_PATH}")
echo "Vowel frequency result: ${FREQ_RESULT}"

# Call README updater with result + username
./.github/scripts/update_readme.sh "${FREQ_RESULT}" "${GITHUB_USER}"

echo "Done. README updated."
