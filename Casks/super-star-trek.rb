cask "super-star-trek" do
  version "1.0.0"
  sha256 "0e4b05e3504af63be82a9f5ec1d7966e33184845ae6cacc817258c53ee4dafdc"

  url "https://github.com/pounceapps/downloads/releases/download/super-star-trek-v#{version}/SuperStarTrek-#{version}.dmg"
  name "Super Star Trek"
  desc "Free tribute to the 1978 BASIC space strategy game"
  homepage "https://stevesparks.com/apps"

  auto_updates false
  depends_on macos: :ventura

  app "Super Star Trek.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.games.trek1978",
    "~/Library/Caches/com.pounceapps.games.trek1978",
    "~/Library/Preferences/com.pounceapps.games.trek1978.plist",
    "~/Library/Saved Application State/com.pounceapps.games.trek1978.savedState",
    "~/Library/WebKit/com.pounceapps.games.trek1978",
  ]
end
