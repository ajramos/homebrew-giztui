cask "giztui-desktop" do
  version "1.26.0"
  sha256 "7d13cb3c431363e25f60d7529d72304b5c20abec6f2d00f1650953f06bcdb93e"

  url "https://github.com/ajramos/giztui/releases/download/v#{version}/GizTUI-Desktop-#{version}-universal.dmg"
  name "GizTUI Desktop"
  desc "Visual Gmail client (Wails) sharing the GizTUI service layer"
  homepage "https://github.com/ajramos/giztui"

  app "GizTUI Desktop.app"

  zap trash: [
    "~/Library/Application Support/giztui",
    "~/Library/Logs/giztui",
  ]
end
