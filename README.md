# homebrew-tap

Homebrew tap for robertjndw's macOS apps.

## Install

```sh
brew install --cask robertjndw/tap/archipel
```

Using the full name trusts that one cask, which Homebrew 6 and later require for third-party taps. If you'd rather use short names:

```sh
brew tap robertjndw/tap
brew trust --cask robertjndw/tap/archipel
brew install --cask archipel
```

## Casks

| Cask | Description |
| --- | --- |
| [Archipel](https://github.com/robertjndw/archipel) | Run coding agents in Ghostty terminals, each in its own git worktree |

Archipel updates itself via Sparkle, so `brew upgrade` skips it unless you pass `--greedy`.

## Maintaining

Each app's release workflow bumps its cask when a notarized build ships. It pushes with a fine-grained token that can only write to this repo.

To add an app, put its cask in `Casks/<name>.rb` and give its release workflow a bump step like the one in Archipel's `release.yml`.
