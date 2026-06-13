# Homebrew tap for Nyora

A [Homebrew](https://brew.sh) tap for the **Nyora** manga reader (macOS).

```bash
brew install --cask Hasan72341/nyora/nyora
```

…or tap first, then install:

```bash
brew tap Hasan72341/nyora
brew install --cask nyora
```

Nyora is **ad-hoc signed** (not notarised), so macOS blocks it on first launch.
Either allow it once via **System Settings → Privacy & Security → "Open Anyway"**,
clear the quarantine flag:

```bash
xattr -dr com.apple.quarantine "/Applications/Nyora.app"
```

…or skip the prompt entirely at install time:

```bash
brew install --cask --no-quarantine nyora
```

> Apple Silicon only for now (the build bundles an arm64 runtime).

The cask tracks releases of [`Hasan72341/nyora-mac`](https://github.com/Hasan72341/nyora-mac).
