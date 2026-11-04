cask "blackjack" do
  version "1.1.0"
  sha256 "9a49efddfc1defb72ca9ef2962e30295a48876870c306bfcda091948c99aca54"

  url "https://github.com/pounceapps/downloads/releases/download/blackjack-v#{version}/Blackjack-#{version}.dmg"
  name "Blackjack"
  desc "Single-deck blackjack table with retro card art"
  homepage "https://stevesparks.com/apps"

  auto_updates false
  depends_on macos: :ventura

  app "Blackjack.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.games.blackjack",
    "~/Library/Caches/com.pounceapps.games.blackjack",
    "~/Library/Preferences/com.pounceapps.games.blackjack.plist",
    "~/Library/Saved Application State/com.pounceapps.games.blackjack.savedState",
    "~/Library/WebKit/com.pounceapps.games.blackjack",
  ]
end
