Checker for step-up

How to use

    docker build . --tag checker
    docker run --rm -v "$HOME/.ssh:/root/.ssh" checker ./checker.sh <GITHUB_USER/GITHUB_REPO> <BRANCH>

