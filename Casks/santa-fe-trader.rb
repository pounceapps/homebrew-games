cask "santa-fe-trader" do
  version "1.1.4"
  sha256 "308296a13fa3d629ae5a3df76c7f926c18cec0a429208423ef7d5ed7c4d7c04a"

  url "https://github.com/pounceapps/downloads/releases/download/santa-fe-trader-v#{version}/SantaFeTrader-#{version}.dmg"
  name "Santa Fe Trader"
  desc "Trading game on the 1830s Santa Fe Trail"
  homepage "https://stevesparks.com/apps"

  auto_updates false
  depends_on macos: :ventura

  app "Santa Fe Trader.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.games.santafe",
    "~/Library/Caches/com.pounceapps.games.santafe",
    "~/Library/Preferences/com.pounceapps.games.santafe.plist",
    "~/Library/Saved Application State/com.pounceapps.games.santafe.savedState",
    "~/Library/WebKit/com.pounceapps.games.santafe",
  ]
end
