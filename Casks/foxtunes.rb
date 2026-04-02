cask "foxtunes" do
  version "0.20260402.2008f1d"
  sha256 "41ec0f6d44a90daf5949466d0265229782b4d92848f261ff1c978287c4d2af13"

  url "https://github.com/ckopsa/foxfin/releases/download/v0.20260402.2008f1d/FoxTunes.zip"
  name "FoxTunes"
  desc "Jellyfin music player for macOS with menu bar and windowed modes"
  homepage "https://github.com/ckopsa/foxfin"

  app "FoxTunes.app"

  zap trash: [
    "~/Library/Application Support/FoxTunes",
  ]
end
