## Git hub api Docs
# https://docs.github.com/en/rest/overview/endpoints-available-for-github-apps

## Will list all github repos
#curl \
#  -H "Accept: application/vnd.github.v3+json" \
#  https://api.github.com/users/venkatyarl/repos

# TODO: Checkout all github projects

if [[ ! $(which git) ]]; then
    echo "In method"
    source test.sh
else
    echo "In else method"
fi