cask "hangman" do
  version "1.1.1"
  sha256 "d9e8e9d1e1306769f354377e55ade3a3c723fc9d2b1db12e91f512f839e31260"

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
