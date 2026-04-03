cask "foxtunes" do
  version "0.20260403.659246b"
  sha256 "62df1db20bd62c27b188b06880f8a477880db63b7a06f315b7ecf15147c2b81b"

  url "https://github.com/ckopsa/foxfin/releases/download/v0.20260403.659246b/FoxTunes.zip"
  name "FoxTunes"
  desc "Jellyfin music player for macOS with menu bar and windowed modes"
  homepage "https://github.com/ckopsa/foxfin"

  app "FoxTunes.app"

  zap trash: [
    "~/Library/Application Support/FoxTunes",
  ]
end
