cask "inside-the-mainframe" do
  version "1.1.2"
  sha256 "7397985327969727949501a14d03c3bf6552056c7d2bfaf2a4a1a9dc400e175b"

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
