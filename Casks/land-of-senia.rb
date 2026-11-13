cask "land-of-senia" do
  version "1.0.5"
  sha256 "323ae2db7180b8590243b3b2a3c6d1b05e90231943708b38807521c1c313f357"

  url "https://github.com/pounceapps/downloads/releases/download/land-of-senia-v#{version}/LandofSenia-#{version}.dmg"
  name "Land of Senia"
  desc "Frontier role-playing game on a lost coast"
  homepage "https://stevesparks.com/apps"

  auto_updates false
  depends_on macos: :ventura

  app "Land of Senia.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.games.landofsenia",
    "~/Library/Caches/com.pounceapps.games.landofsenia",
    "~/Library/Preferences/com.pounceapps.games.landofsenia.plist",
    "~/Library/Saved Application State/com.pounceapps.games.landofsenia.savedState",
    "~/Library/WebKit/com.pounceapps.games.landofsenia",
  ]
end
