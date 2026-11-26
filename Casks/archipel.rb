cask "archipel" do
  version "0.1.0-alpha.10"
  sha256 "fa6138c6b95617766a3bdd790377741cf7fbe2d6d8dce637feabf12fa56c9193"

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
