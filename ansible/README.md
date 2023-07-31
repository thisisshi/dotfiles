# Bootstrap a local OS with ansible

Installs all the typical packages, software, tools, etc for a new computer
installation. Also copies over all dotfiles to their respective locations.
Before running, this, add a ssh key to GitHub:

```
ssh-keygen -t ed25519
```

Then, install homebrew and ansible:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible
```

Finally, run the playbook:

```
curl https://raw.githubusercontent.com/thisisshi/dotfiles/master/ansible/mac.yml -o mac.yml
ansible-playbook mac.yml
```

When adding software through brew, update this file so that future computer
installations get the changes
