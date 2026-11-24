cask "archipel" do
  version "0.1.0-alpha.7"
  sha256 "7aea7a1f8cc78313a03076bfd24a096027dc0b235e294542cf27da69d8b6c543"

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
