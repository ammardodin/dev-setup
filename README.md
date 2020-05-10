# Ansible Dev-env Setup

An Ansible playbook to setup bare development machines to my liking.

## What's Included ?

1. Xcode Command Line Tools

2. Applications
    - Docker
    - Firefox
    - Google Chrome
    - iTerm2
    - LastPass
    - Slack
    - Spotify
    - VLC media player
    - Visual Studio Code

3. Packages
    - libpq
    - bash-completion
    - docker-compose
    - docker-machine
    - go
    - jq
    - nmap
    - pyenv
    - python3
    - terraform
    - terraform-inventory
    - terraform-provisioner-ansible

4. Oh My Zsh
    - powerline fonts
    - zsh-completion
    - zsh-autosuggestions

## How to install ?

##### 1. Install Ansible

```shell
./install-ansible.sh
```

##### 2. Run the playbook with Ansible

```shell
ansible-playbook dev-playbook.yaml
```
