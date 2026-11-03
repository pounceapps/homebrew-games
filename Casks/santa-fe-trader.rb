cask "santa-fe-trader" do
  version "1.0.0"
  sha256 "11a6caae2e1df3b08acc5cf27d8b3ca7122bafc4f39329d38ab3baf756ea8589"

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
