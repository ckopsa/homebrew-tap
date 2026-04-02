cask "foxtunes" do
  version "0.20260401.initial"
  sha256 :no_check

  url "https://github.com/ckopsa/foxfin/releases/latest/download/FoxTunes.zip"
  name "FoxTunes"
  desc "Jellyfin music player for macOS with menu bar and windowed modes"
  homepage "https://github.com/ckopsa/foxfin"

  app "FoxTunes.app"

  zap trash: [
    "~/Library/Application Support/FoxTunes",
  ]
end
