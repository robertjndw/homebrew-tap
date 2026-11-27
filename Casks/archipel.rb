cask "archipel" do
  version "0.1.0-alpha.11"
  sha256 "ae118138a93aa01f17add6db885c6fd8bc6df7b17bced966b699f99082a1b858"

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
