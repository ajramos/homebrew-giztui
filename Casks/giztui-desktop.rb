cask "giztui-desktop" do
  version "1.22.1"
  sha256 "d75bf24271d26475ebcc980f172e3ec7173617d49425d7e73d743a3acd421449"

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
