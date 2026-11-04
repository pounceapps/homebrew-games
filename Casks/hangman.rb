cask "hangman" do
  version "1.1.0"
  sha256 "0a1ddd2981468e0c4f7f92f87fa185c5f70e6bae403e4f69a0b117ae653b5262"

  url "https://github.com/pounceapps/downloads/releases/download/hangman-v#{version}/Hangman-#{version}.dmg"
  name "Hangman"
  desc "Word-guessing game with nine word lists"
  homepage "https://stevesparks.com/apps"

  auto_updates false
  depends_on macos: :ventura

  app "Hangman.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.games.hangman",
    "~/Library/Caches/com.pounceapps.games.hangman",
    "~/Library/Preferences/com.pounceapps.games.hangman.plist",
    "~/Library/Saved Application State/com.pounceapps.games.hangman.savedState",
    "~/Library/WebKit/com.pounceapps.games.hangman",
  ]
end
