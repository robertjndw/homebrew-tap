cask "memoir" do
  version "0.1.0-alpha.2"
  sha256 "20696aefbddf945360c5972015b00836b627634da5037f94cfdcc5c34d7cc74b"

  url "https://github.com/robertjndw/memoir/releases/download/v#{version}/Memoir-#{version}.dmg"
  name "Memoir"
  desc "Record meetings and transcribe them on-device"
  homepage "https://github.com/robertjndw/memoir"

  livecheck do
    skip "Updated by the upstream release workflow"
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Memoir.app"

  zap trash: [
    "~/Library/Application Support/Memoir",
    "~/Library/Caches/de.jandow.Memoir",
    "~/Library/HTTPStorages/de.jandow.Memoir",
    "~/Library/Preferences/de.jandow.Memoir.plist",
  ]
end
