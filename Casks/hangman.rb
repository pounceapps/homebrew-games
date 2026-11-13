cask "hangman" do
  version "1.1.4"
  sha256 "5797072832c7c81aa28c87846da8f15a4f566615b9391734d200d3f8878aec75"

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
