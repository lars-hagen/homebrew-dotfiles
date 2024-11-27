cask "windsurf" do
  version :latest
  sha256 :no_check

  url "https://windsurf-stable.codeium.com/api/update/darwin-arm64-dmg/stable/latest"
  name "Windsurf"
  desc "Windsurf Editor by Codeium"
  homepage "https://codeium.com/windsurf"

  auto_updates true

  app "Windsurf.app"
end 