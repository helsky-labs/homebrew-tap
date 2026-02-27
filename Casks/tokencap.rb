cask "tokencap" do
  version "1.2.0"
  sha256 "c5d941e45301d5773e3b817ce7b6923aebcc5d1c659414b3dabde755c3771388"

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
