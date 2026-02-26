cask "tokencap" do
  version "1.1.0"
  sha256 "5e7adb13caf68fddf9f9e0ffab6991aebbfa56cc8a2297ec4accede88d19ca64"

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
