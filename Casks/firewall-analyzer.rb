cask "firewall-analyzer" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/BardSec/firewall-analyzer/releases/download/v#{version}/Firewall-Analyzer-macOS.dmg"
  name "Firewall Analyzer"
  desc "Offline firewall config analyzer — visualize rule conflicts, shadowing, and overly permissive rules"
  homepage "https://github.com/BardSec/firewall-analyzer"

  depends_on macos: ">= :monterey"

  app "Firewall Analyzer.app"
end
