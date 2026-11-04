cask "adventure-house" do
  version "1.1.0"
  sha256 "65af3d36c983af4c28c22a04e5dbba16fac6b4f91201471f6ba8903fc94c0960"

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
