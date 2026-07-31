cask "giztui-desktop" do
  version "1.23.0"
  sha256 "08940aa45333a635ff62ce486da526d0d649166333f8e0ec5558750f8062d3e0"

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
