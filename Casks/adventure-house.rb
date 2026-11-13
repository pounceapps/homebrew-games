cask "adventure-house" do
  version "1.1.2"
  sha256 "b99d6e3d461d9f4b8a670191d9a4b651b97f436f9d30f00dc24bf839567186c7"

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
