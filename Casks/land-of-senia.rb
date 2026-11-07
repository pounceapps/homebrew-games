cask "land-of-senia" do
  version "0.100.1"
  sha256 "5a3c3150935ab1114a9a037fd126297d33580df412efef49b4e560655bfa8d67"

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
