cask "memoir" do
  version "0.1.0-alpha.3"
  sha256 "ca82fd367f0847c8ef51e9a7146f2ad9c70fe13a23ea16277f0c049b7cf16128"

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
