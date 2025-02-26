## Install Shelll Environment
Install the the oh-my-zsh environment with the following command

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Paulchen5/shellSetup/main/setup.sh)"
```

## Install `.gitconfig` Files

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Paulchen5/config/main/setup_git.sh)"
```

## Create GPG-Signing-Key
> [!TIP]
> For further information on creating a GPG key visit the documentation on [docs.github.com](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
Generate the GPG key

```bash
gpg --full-generate-key
```

Add it to your GitHub account

```bash
gpg --list-secret-keys --keyid-format=long
gpg --armor --export <keyid-long-format>
```

Tell git about your signing key
> [!NOTE]
> Alternatively use the flag option `--global` to add the signing key to your global `.gitconfig`

```bash
git config --global --unset gpg.format
git config --file <file> user.signingKey <keyid-long-format>
```
