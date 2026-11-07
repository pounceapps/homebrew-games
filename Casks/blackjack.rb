cask "blackjack" do
  version "1.1.1"
  sha256 "c3b2a05340715101752fc88e3213c3e6441ecdf79b99e267858ce386fa6b79cc"

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
