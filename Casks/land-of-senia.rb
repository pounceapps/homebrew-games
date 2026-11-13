cask "land-of-senia" do
  version "1.0.1"
  sha256 "c8740f6fefc5bdf2655862daa10d495242168cf47c27fcbdd61f9cda95768807"

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
