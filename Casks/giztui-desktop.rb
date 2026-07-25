# Homebrew Cask for GizTUI Desktop.
#
# This file belongs in a *tap* repo (a repo named `homebrew-giztui` owned by the
# maintainer): copy it to `ajramos/homebrew-giztui` at `Casks/giztui-desktop.rb`.
# Then users install with:
#
#   brew tap ajramos/giztui
#   brew install --cask giztui-desktop
#
# On each release, bump `version` and `sha256` to match the new
# GizTUI-Desktop-<version>-universal.dmg asset (see packaging/homebrew/README.md
# for the auto-bump options). Until macOS notarization lands, the build is
# unsigned; Homebrew strips the quarantine attribute on cask installs, so it
# still opens without the manual right-click → Open dance.
cask "giztui-desktop" do
  version "1.22.0"
  sha256 "ce859ff0ec3d9b625247a5e5e2a316710c148a7064db0f1cebbefa776d47eeea"

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
