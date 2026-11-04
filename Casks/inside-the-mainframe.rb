cask "inside-the-mainframe" do
  version "1.1.0"
  sha256 "f8f476a800b7d8f155322fb64c6bbe57830db923ee5bd2458643fa5e755af94e"

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
