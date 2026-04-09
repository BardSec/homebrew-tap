cask "pcap-detective" do
  version "2.1.0"
  sha256 "cefd86b715ee1c214041a01747307eba3922129cbfcfb476379bbd8b0386809b"

  url "https://github.com/BardSec/pcap-detective/releases/download/v#{version}/PCAP-Detective-macOS.dmg"
  name "PCAP Detective"
  desc "Desktop threat hunter — analyze packet captures with visual dashboards"
  homepage "https://github.com/BardSec/pcap-detective"

  depends_on macos: ">= :monterey"

  app "PCAP Detective.app"

  zap trash: [
    "~/.config/pcap-detective",
  ]
end
