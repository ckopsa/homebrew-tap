cask "foxtunes" do
  version "0.20260402.1ee7cd4"
  sha256 "24862151678f73288964f0bec31a9d930d251b0c70738b9050bf3e56d69a18b2"

  url "https://github.com/ckopsa/foxfin/releases/download/v0.20260402.1ee7cd4/FoxTunes.zip"
  name "FoxTunes"
  desc "Jellyfin music player for macOS with menu bar and windowed modes"
  homepage "https://github.com/ckopsa/foxfin"

  app "FoxTunes.app"

  zap trash: [
    "~/Library/Application Support/FoxTunes",
  ]
end
