cask "foxtunes" do
  version "0.20260403.a9d9ac7"
  sha256 "68e2fde83867d8241916615c967b390390454a4c6571d50b0ab58bd5c4a87f40"

  url "https://github.com/ckopsa/foxfin/releases/download/v0.20260403.a9d9ac7/FoxTunes.zip"
  name "FoxTunes"
  desc "Jellyfin music player for macOS with menu bar and windowed modes"
  homepage "https://github.com/ckopsa/foxfin"

  app "FoxTunes.app"

  zap trash: [
    "~/Library/Application Support/FoxTunes",
  ]
end
