# PounceApps Games Homebrew Tap

Games by [Three Peppers Gaming](https://github.com/Three-Peppers-Gaming) (Steve Sparks) for macOS, installed with
[Homebrew](https://brew.sh). Free, signed and notarized, for Apple silicon and Intel Macs with macOS 13 or later.

Tap and trust once (Homebrew now asks you to trust third-party taps), then install any game:

```sh
brew tap pounceapps/games
brew trust pounceapps/games
brew install --cask land-of-senia
brew install --cask inside-the-mainframe
brew install --cask santa-fe-trader
brew install --cask super-star-trek
brew install --cask adventure-house
brew install --cask blackjack
brew install --cask hangman
```

`brew upgrade --cask` gets new versions; `brew uninstall --cask <game>` removes one.

| Game | Cask |
|---|---|
| Land of Senia: a casual pixel RPG with licensed art and music | `land-of-senia` |
| Inside the Mainframe: a dungeon crawl through a 1970s computer center | `inside-the-mainframe` |
| Santa Fe Trader: trade down the 1830s Santa Fe Trail | `santa-fe-trader` |
| Super Star Trek: a free tribute to the 1978 BASIC space game | `super-star-trek` |
| Adventure House: a two-word text adventure | `adventure-house` |
| Blackjack: single-deck blackjack with retro card art | `blackjack` |
| Hangman: nine word lists, 1980s bulletin-board style | `hangman` |

Land of Senia is a Mac app only. The others also play in the browser at
[stevesparks.com/arcade](https://stevesparks.com/arcade).

PounceApps is where these games are built, signed and handed out. The DMGs the casks download live in
[pounceapps/downloads](https://github.com/pounceapps/downloads). PounceApps' other apps are in
[pounceapps/homebrew-tap](https://github.com/pounceapps/homebrew-tap).
