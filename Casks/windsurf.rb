cask "windsurf" do
  version "3.10.23"
  sha256 "74ec490cfe95d80d6d17efaad45eecedcba09043ffd7aa9219558f3f7ac26631"

  url "https://windsurf-stable.codeiumdata.com/darwin-arm64-dmg/stable/deb816008be02bf5f9da707b7def3ebdb53a51cd/Devin-darwin-arm64-3.10.23.dmg",
      verified: "windsurf-stable.codeiumdata.com/"
  name "Windsurf"
  desc "Windsurf Editor by Codeium"
  homepage "https://codeium.com/windsurf"

  app "Windsurf.app"
end
