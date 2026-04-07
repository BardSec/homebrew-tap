cask "pcap-detective" do
  version "2.0.2"
  sha256 "PLACEHOLDER"

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
