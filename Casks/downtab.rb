cask "downtab" do
  version "0.6.0"
  sha256 "10e059f10843f85e5c130a1f6eaf2889bd7ceecf7110010a9053275aa428379f"

  url "https://github.com/doubleloop-io/downtab/releases/download/v#{version}/Downtab.dmg"
  name "Downtab"
  desc "App switcher like Cmd-Tab that can drop down to a single window"
  homepage "https://downtab.doubleloop.io/"

  livecheck do
    url "https://github.com/doubleloop-io/downtab/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Downtab.app"

  uninstall quit: "io.doubleloop.downtab"

  zap trash: [
    "~/Library/Caches/io.doubleloop.downtab",
    "~/Library/HTTPStorages/io.doubleloop.downtab",
    "~/Library/HTTPStorages/io.doubleloop.downtab.binarycookies",
    "~/Library/Preferences/io.doubleloop.downtab.plist",
  ]
end
