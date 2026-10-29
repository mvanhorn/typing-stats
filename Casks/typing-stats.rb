cask "typing-stats" do
  auto_updates true
  version "0.0.28"
  sha256 "3ed653488fc16bc501eafd03ba4df486e0e17f888d74e5ac211e0b975b18c8f4"

  url "https://github.com/rauchg/typing-stats/releases/download/v#{version}/TypingStats.zip"
  name "Typing Stats"
  desc "Track your daily keystroke statistics"
  homepage "https://github.com/rauchg/typing-stats"

  app "Typing Stats.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Typing Stats.app"]
  end

  zap trash: [
    "~/Library/Application Support/TypingStats",
    "~/Library/Preferences/com.typing-stats.app.plist",
  ]
end
