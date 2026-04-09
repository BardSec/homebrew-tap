cask "pcap-detective" do
  version "2.1.0"
  sha256 "7034e9e5b2f1c65be3512cc5505d299c8b1109bac95518348bcfe558ab3cbeb7"

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
