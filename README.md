# mifos-x-actionhub-publish-desktop-app-kmp

GitHub Actions composite actions for publishing Compose Multiplatform desktop apps. Maintained by [Mifos Initiative](https://github.com/openMF).

## Distribution targets

| Target | Location | Tier | Since |
|---|---|---|---|
| GitHub Releases (unsigned) | Root `action.yml` | Tier-1 (default) | v1.0.0 |
| **DMG notarized (Apple Developer ID)** | [`dmg-notarized/`](dmg-notarized/) | Tier-2 | v2.0.0 |
| **MSI signed (Azure Trusted Signing)** | [`msi-signed/`](msi-signed/) | Tier-2 | v2.0.0 |
| **Microsoft Store (MSIX → Partner Center)** | [`microsoft-store/`](microsoft-store/) | Tier-2 | v2.0.0 |

## Usage

### Tier-1: unsigned GH Releases (root action, unchanged from v1.x)

```yaml
- uses: openMF/mifos-x-actionhub-publish-desktop-app-kmp@v2.0.0
  with:
    desktop_package_name: cmp-desktop
```

### Tier-2: pick one per platform

See each sub-action's `README.md` for inputs:

- [`dmg-notarized/README.md`](dmg-notarized/README.md)
- [`msi-signed/README.md`](msi-signed/README.md)
- [`microsoft-store/README.md`](microsoft-store/README.md)

## Versioning

- `v1.x` — single Tier-1 target (GH Releases unsigned). Last release: `v1.0.13`.
- `v2.0.0` — adds 3 Tier-2 sub-actions. Root action behavior preserved.

## Changelog

See [`CHANGELOG.md`](CHANGELOG.md).

## License

Apache 2.0.
