cask "pcap-detective" do
  version "2.0.3"
  sha256 "ead5ad334e2e0f2103b86ad6bfb7828b50d189ec01617e034828efa20de1b40c"

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
