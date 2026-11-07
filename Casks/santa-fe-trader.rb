cask "santa-fe-trader" do
  version "1.1.1"
  sha256 "2725f23d928676b602f36ad319e584e55d32b673f9f748ea52ff71e8f81d2125"

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
