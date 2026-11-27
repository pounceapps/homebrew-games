cask "inside-the-mainframe" do
  version "1.1.5"
  sha256 "9e016fa9dd2f6aa5eb104edbd57762a66c2ca0b46f4be6539275e04fb4a49ae5"

  url "https://github.com/pounceapps/downloads/releases/download/inside-the-mainframe-v#{version}/InsidetheMainframe-#{version}.dmg"
  name "Inside the Mainframe"
  desc "Turn-based dungeon crawl through a 1970s computer center"
  homepage "https://stevesparks.com/apps"

  auto_updates false
  depends_on macos: :ventura

  app "Inside the Mainframe.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.games.mainframe",
    "~/Library/Caches/com.pounceapps.games.mainframe",
    "~/Library/Preferences/com.pounceapps.games.mainframe.plist",
    "~/Library/Saved Application State/com.pounceapps.games.mainframe.savedState",
    "~/Library/WebKit/com.pounceapps.games.mainframe",
  ]
end
