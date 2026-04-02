cask "foxtunes" do
  version "0.20260402.ac81a48"
  sha256 "ea3500c4b4b7c45a14e61eab26ca333309f170d69cbef3eead4adf4956f60e72"

  url "https://github.com/ckopsa/foxfin/releases/download/v0.20260402.ac81a48/FoxTunes.zip"
  name "FoxTunes"
  desc "Jellyfin music player for macOS with menu bar and windowed modes"
  homepage "https://github.com/ckopsa/foxfin"

  app "FoxTunes.app"

  zap trash: [
    "~/Library/Application Support/FoxTunes",
  ]
end
