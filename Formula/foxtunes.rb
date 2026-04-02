class Foxtunes < Formula
  desc "Jellyfin music player for macOS with menu bar and windowed modes"
  homepage "https://github.com/ckopsa/foxfin"
  url "https://github.com/ckopsa/foxfin.git", branch: "main"
  version "1.0.0"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on macos: :ventura

  def install
    cd "FoxTunes" do
      system "swift", "build", "-c", "release", "--disable-sandbox"

      app_bundle = prefix/"FoxTunes.app"
      app_bundle.mkpath
      (app_bundle/"Contents/MacOS").mkpath
      (app_bundle/"Contents/Resources").mkpath

      cp ".build/release/FoxTunes", app_bundle/"Contents/MacOS/FoxTunes"
      cp "FoxTunes/Info.plist", app_bundle/"Contents/Info.plist"
      cp "FoxTunes/FoxTunes.entitlements", app_bundle/"Contents/Resources/"

      system "codesign", "--force", "--sign", "-",
             "--entitlements", "FoxTunes/FoxTunes.entitlements",
             app_bundle.to_s
    end
  end

  def caveats
    <<~EOS
      FoxTunes.app has been installed to:
        #{prefix}/FoxTunes.app

      To link it to /Applications:
        ln -sf #{prefix}/FoxTunes.app /Applications/FoxTunes.app
    EOS
  end

  test do
    assert_predicate prefix/"FoxTunes.app/Contents/MacOS/FoxTunes", :exist?
  end
end
