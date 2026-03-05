cask "tokencap" do
  version "1.3.2"
  sha256 "a3c517af54eb49c7c7dea1bf61fb8dfdbba81ffdc68a76acadaec05a6ded9102"

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
