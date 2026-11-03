cask "adventure-house" do
  version "1.0.0"
  sha256 "970e5301d6d5ffa8a2568ad38c43940842266a5f7dab2f67a7b3362d999e955a"

  url "https://github.com/pounceapps/downloads/releases/download/adventure-house-v#{version}/AdventureHouse-#{version}.dmg"
  name "Adventure House"
  desc "Two-word text adventure in an illustrated 1980s house"
  homepage "https://stevesparks.com/apps"

  auto_updates false
  depends_on macos: :ventura

  app "Adventure House.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.games.adventurehouse",
    "~/Library/Caches/com.pounceapps.games.adventurehouse",
    "~/Library/Preferences/com.pounceapps.games.adventurehouse.plist",
    "~/Library/Saved Application State/com.pounceapps.games.adventurehouse.savedState",
    "~/Library/WebKit/com.pounceapps.games.adventurehouse",
  ]
end
