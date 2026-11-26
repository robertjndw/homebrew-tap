cask "memoir" do
  version "0.1.0-alpha.4"
  sha256 "6bc88284554575d34104db571cdb4d262ec2e16e0c3047a93b9fedcf3188af15"

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
