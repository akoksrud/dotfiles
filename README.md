# dotfiles
My dotfiles repo

## Chezmoi
https://www.chezmoi.io/

### Install chezmoi and init from your repo on an empty machine
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

### Update your dotfiles
```bash
chezmoi update
```
