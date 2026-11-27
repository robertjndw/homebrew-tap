cask "memoir" do
  version "0.1.0-alpha.5"
  sha256 "ddb6e589876cfb43771bd1f1e27b5bbec5dc884d0e053845525ea3d1181830e5"

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
