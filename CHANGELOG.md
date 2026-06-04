# Changelog

## v2.0.0 — Tier-2 desktop sub-actions (additive)

### Added

- **`dmg-notarized/`** — Composite sub-action wrapping `xcrun notarytool submit --wait` + `xcrun stapler staple` for Apple Developer ID notarization on macOS-latest. App Store Connect API key auth (base64-encoded `.p8` decoded inline).
- **`msi-signed/`** — Composite sub-action wrapping `azure/trusted-signing-action@v0.5.0` for Azure Trusted Signing of Windows MSI on windows-latest. Includes post-sign Authenticode verification.
- **`microsoft-store/`** — Composite sub-action wrapping the Partner Center submission API (OAuth2 client-credentials → create submission → upload to blob → commit) for pushing MSIX packages to the Microsoft Store.
- **`_shared/secrets-decode.sh`** — Cross-cutting helper for base64 → file decoding, shared across sub-actions.
- Per-sub-action `README.md` documenting inputs / runner requirements / sample usage.

### Preserved (no breaking change)

- **Root `action.yml`** — Tier-1 GH Releases unsigned DMG/MSI behavior is byte-for-byte preserved. Every existing consumer of `openMF/mifos-x-actionhub-publish-desktop-app-kmp@v1.x` continues to work unchanged.
- Existing input schema, output schema, and step structure of the root composite action.

### Migration

No migration required for existing consumers. To opt into a signed/notarized/store target, add a new job that consumes the corresponding sub-action — see each sub-action's `README.md` for sample YAML.

### Refs

- Epic: `openMF/kmp-project-template` fastlane-modernization sub-plan 13 (AC58, AC60)
- Companion repo: `openMF/mifos-x-actionhub-web-publish-kmp@v2.0.0` (web Tier-2 expansion)
- Registry update: `openMF/mifos-x-actionhub@v1.0.14` `PLATFORM_REGISTRY.yaml` rows for `desktop/<target>`
