cask "tokencap" do
  version "1.4.1"
  sha256 "5af314ffabf332053454829e7d7e8f42207da797040ae91cedc7a3d47c584ee1"

  url "https://github.com/helsky-labs/tokencap/releases/download/v#{version}/TokenCap-v#{version}.dmg"
  name "TokenCap"
  desc "macOS menu bar app for monitoring Claude Code token usage"
  homepage "https://tokencap.app"

  depends_on macos: ">= :sonoma"

  app "TokenCap.app"

  zap trash: [
    "~/Library/Preferences/com.helsky-labs.tokencap.plist",
  ]
end
