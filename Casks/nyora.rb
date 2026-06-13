cask "nyora" do
  version "1.0"
  sha256 "51f1d4f68a183eb83a73ee51169c658dbb3342be00915c7d175430aa5eda8005"

  url "https://github.com/Hasan72341/nyora-mac/releases/download/v#{version}/Nyora-#{version}.dmg"
  name "Nyora"
  desc "AI-powered manga reader"
  homepage "https://nyora.pages.dev"

  # The published build bundles an arm64 runtime.
  depends_on arch: :arm64

  app "Nyora.app"

  caveats <<~EOS
    Nyora is ad-hoc signed, not notarised, so macOS blocks it on first launch.
    Allow it once via  System Settings → Privacy & Security → "Open Anyway",
    or clear the download quarantine:

      xattr -dr com.apple.quarantine "/Applications/Nyora.app"

    To skip the prompt entirely, install with:

      brew install --cask --no-quarantine nyora
  EOS

  zap trash: [
    "~/Library/Application Support/Nyora",
    "~/Library/Preferences/com.nyora.mac.plist",
    "~/Library/Caches/com.nyora.mac",
  ]
end
