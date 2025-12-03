cask "alacritty-signed" do
  version "0.16.1"
  sha256 "ed8faa95ed3b5d5bc032c1b0e0e9bafc25a42c49dcdcf5646a8814992b84b7c0"

  url "https://github.com/mattness/homebrew-alacritty/releases/download/v0.16.1/Alacritty-#{version}-signed.dmg"
  name "Alacritty (Signed & Notarized)"
  desc "GPU-accelerated terminal emulator (code-signed and notarized build)"
  homepage "https://github.com/alacritty/alacritty/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Alacritty.app"
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty-direct",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty-direct"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty.1.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty.5.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty-msg.1.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty-bindings.5.gz"
  bash_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.bash"
  fish_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.fish"
  zsh_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/_alacritty"

  zap trash: [
    "~/Library/Preferences/org.alacritty.plist",
    "~/Library/Saved Application State/org.alacritty.savedState",
  ]
end
