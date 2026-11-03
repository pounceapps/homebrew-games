cask "inside-the-mainframe" do
  version "1.0.0"
  sha256 "80299145b33074c4b33355e89aa7f2e3e4a4a8ddbe2c28b3c0f57d2389c80166"

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
