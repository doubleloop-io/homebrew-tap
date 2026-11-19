# doubleloop-io/tap

Homebrew tap for [Downtab](https://downtab.doubleloop.io/), a macOS app switcher like ⌘Tab that can drop down to a single window.

```sh
brew install --cask doubleloop-io/tap/downtab
```

Downtab updates itself with Sparkle, so `brew upgrade` leaves it alone (`auto_updates true`).

`Casks/downtab.rb` is bumped by `make release` in [doubleloop-io/downtab](https://github.com/doubleloop-io/downtab): edit it by hand only to change anything but `version` and `sha256`.
