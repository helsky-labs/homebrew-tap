cask "tokencap" do
  version "1.3.2"
  sha256 "2112062f224d846d78af700df61927db560d9215650039a4e4a9f7c97920204f"

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
