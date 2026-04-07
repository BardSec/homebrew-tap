cask "pcap-detective" do
  version "2.0.3"
  sha256 "d2d5364abeeedd64e5b0a8c5757f8e5b7235a16d9f33ab77a1a9dfb6ee73baef"

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
