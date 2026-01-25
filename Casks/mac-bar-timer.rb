cask "mac-bar-timer" do
  version "1.0.0"
  sha256 "PLACEHOLDER_UPDATE_AFTER_RELEASE"

  url "https://github.com/trmdy/mac-bar-timer/releases/download/v#{version}/MacBarTimer.zip"
  name "Mac Bar Timer"
  desc "Menu bar timer for macOS focused on long work sessions"
  homepage "https://github.com/trmdy/mac-bar-timer"

  depends_on macos: ">= :sonoma"

  app "MacBarTimer.app"

  zap trash: [
    "~/Library/Preferences/com.example.MacBarTimer.plist",
  ]
end
