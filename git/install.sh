# Install watchman hook
curl https://raw.githubusercontent.com/git/git/master/templates/hooks--fsmonitor-watchman.sample -o /usr/local/bin/fsmonitor-watchman
chmod +x /usr/local/bin/fsmonitor-watchman

# Install git-recall
npm install -g git-recall
