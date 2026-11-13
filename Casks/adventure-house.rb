cask "adventure-house" do
  version "1.1.4"
  sha256 "7d56c7eec3cdaacc2afc6ae310183095011ea2fad91051d1940f9b61fee10861"

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
