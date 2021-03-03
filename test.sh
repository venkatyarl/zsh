if (git config --list --show-origin | grep "user.name") | grep -q 'user.name'; then echo "matched"
fi