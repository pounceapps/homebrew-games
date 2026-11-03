cask "hangman" do
  version "1.0.0"
  sha256 "d00eb4579964944c44e69b97a10a7ea0c067f67deb822ce557a96ea164b2567d"

  url "https://github.com/pounceapps/downloads/releases/download/hangman-v#{version}/Hangman-#{version}.dmg"
  name "Hangman"
  desc "Word-guessing game with nine word lists"
  homepage "https://stevesparks.com/apps"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "Hangman.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.games.hangman",
    "~/Library/Caches/com.pounceapps.games.hangman",
    "~/Library/Preferences/com.pounceapps.games.hangman.plist",
    "~/Library/Saved Application State/com.pounceapps.games.hangman.savedState",
    "~/Library/WebKit/com.pounceapps.games.hangman",
  ]
end
