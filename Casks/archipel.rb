cask "archipel" do
  version "0.1.0-alpha.8"
  sha256 "506424f9449df1927e30a038613587f315f1c62d4f387b91e2bed4809ab725fb"

  url "https://github.com/robertjndw/archipel/releases/download/v#{version}/Archipel-#{version}.dmg"
  name "Archipel"
  desc "Run coding agents in Ghostty terminals, each in its own git worktree"
  homepage "https://github.com/robertjndw/archipel"

  livecheck do
    skip "Updated by the upstream release workflow"
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Archipel.app"

  zap trash: [
    "~/Library/Application Support/Archipel",
    "~/Library/Caches/de.jandow.Archipel",
    "~/Library/Preferences/de.jandow.Archipel.plist",
  ]
end
