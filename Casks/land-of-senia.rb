cask "land-of-senia" do
  version "1.0.2"
  sha256 "b55e10e601f77bd3abfe3728b421298e53b266c97de87043eb79c36f8a101c04"

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
