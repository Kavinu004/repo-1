import sys
from collections import Counter

VOWELS = set("aeiou")

def count_vowels(file_path: str) -> Counter:
    try:
        with open(file_path, "r", encoding="utf-8") as f:
            text = f.read().lower()
    except FileNotFoundError:
        print(f"Error: file '{file_path}' not found.", file=sys.stderr)
        sys.exit(1)

    counts = Counter(ch for ch in text if ch in VOWELS)
    return counts

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: frequency.py <file_path>", file=sys.stderr)
        sys.exit(1)

    file_path = sys.argv[1]
    counts = count_vowels(file_path)

    # Print result in one line so bash can capture it easily
    formatted = ", ".join(f"{v}:{counts.get(v,0)}" for v in sorted(VOWELS))
    print(formatted)
    