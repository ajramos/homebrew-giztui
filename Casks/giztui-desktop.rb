cask "giztui-desktop" do
  version "1.27.0"
  sha256 "5effe824edfcfd81b97d437b38ae4529d029a5fd21cecbec0a5a3044f2960f47"

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
