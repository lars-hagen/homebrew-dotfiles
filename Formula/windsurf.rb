class Windsurf < Formula
  desc "Windsurf Editor by Codeium"
  homepage "https://codeium.com/windsurf"
  url "https://codeium.com/windsurf/download_mac"
  version "1.0.0" # Replace with the actual version number
  sha256 "REPLACE_WITH_ACTUAL_SHA256" # Replace with the actual SHA256 checksum

  def install
    # Since the download is a .dmg file, we need to mount it and copy the application
    system "hdiutil", "attach", "windsurf-macos.dmg"
    system "cp", "-r", "/Volumes/Windsurf/Windsurf.app", "#{prefix}/Windsurf.app"
    system "hdiutil", "detach", "/Volumes/Windsurf"
    bin.install_symlink "#{prefix}/Windsurf.app/Contents/MacOS/Windsurf" => "windsurf"
  end

  def caveats
    <<~EOS
      Windsurf.app has been installed in:
        #{opt_prefix}/Windsurf.app
      You can run it via the 'windsurf' command.
    EOS
  end

  test do
    system "#{bin}/windsurf", "--version"
  end
end

