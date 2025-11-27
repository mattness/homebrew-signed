# Alacritty Signed Builds

This repository automatically builds and code-signs [Alacritty](https://github.com/alacritty/alacritty) for macOS, creating releases that don't require the `--no-quarantine` flag.

## Why This Exists

Homebrew is removing support for `--no-quarantine`, and Alacritty's maintainers don't sign their macOS builds. This repository solves that by:
- Automatically detecting new Alacritty releases
- Verifying GPG signatures on git tags for authenticity
- Building them from source for full supply chain security
- Signing with a valid Apple Developer ID certificate
- Notarizing with Apple for the smoothest user experience (required on modern macOS)
- Creating signed releases
- Hosting a Homebrew tap for easy installation

By building from source and verifying signatures, we ensure complete transparency and verifiable provenance of the binary.

## Disclaimer

This is an unofficial signed build of Alacritty. I am not affiliated with 
the Alacritty project. All credit goes to the original authors.

This repository exists solely to provide code-signed builds for macOS users.
In the event the Alacritty team implements official signing, those builds
supercede the builds in this repository.

The binaries are built from verified GPG-signed source code from the official 
Alacritty repository and are not modified in any way.

## Installation

```bash
# Add this tap
brew tap mattness/alacritty

# Install signed Alacritty
brew install --cask alacritty-signed
```
