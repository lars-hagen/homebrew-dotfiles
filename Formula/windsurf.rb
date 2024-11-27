class Windsurf < Formula
  desc "Windsurf Editor by Codeium"
  homepage "https://codeium.com/windsurf"
  url "https://codeium.com/windsurf/download_mac"
  version "1.0.0" # Replace with the actual version number
  sha256 "364398c61f538cd0471c52bb274f369351b84dc8e7d73a5854df6bdfdad948e4"

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

