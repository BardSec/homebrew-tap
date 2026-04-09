cask "pcap-detective" do
  version "2.1.0"
  sha256 "9aa4ea247c33685c6a29ca1461532dcd367aabc3bad207f5a1f1b0ea35e0752d"

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
