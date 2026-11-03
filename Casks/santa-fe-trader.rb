cask "santa-fe-trader" do
  version "1.0.1"
  sha256 "0d6696b19496f620380c38a9b4cfe1f1f2cacf2ff0559ea24b4af624cfa9c66e"

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
