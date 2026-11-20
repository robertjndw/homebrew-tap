cask "archipel" do
  version "0.1.0-alpha.5"
  sha256 "98f0ca0fd0d3bfbf8a1eb6d378be94564fa80f981cc09629e891053475e5e22d"

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
