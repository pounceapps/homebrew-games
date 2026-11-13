cask "hangman" do
  version "1.1.2"
  sha256 "3e8fb9c45cc73b637b83a5888b93497debb229e14d797755a50c4b08ee4dd4e5"

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
