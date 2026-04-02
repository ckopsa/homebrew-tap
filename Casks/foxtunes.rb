cask "foxtunes" do
  version "0.20260402.bf80174"
  sha256 "9febb16f2feed27e20562b92c9addd5b50577ac936644c90886fef98827b87c9"

  url "https://github.com/ckopsa/foxfin/releases/download/v0.20260402.bf80174/FoxTunes.zip"
  name "FoxTunes"
  desc "Jellyfin music player for macOS with menu bar and windowed modes"
  homepage "https://github.com/ckopsa/foxfin"

  app "FoxTunes.app"

  zap trash: [
    "~/Library/Application Support/FoxTunes",
  ]
end
