# dmg-notarized

Composite sub-action wrapping `xcrun notarytool submit --wait` + `xcrun stapler staple` for a macOS DMG using App Store Connect API key authentication. Part of `openMF/mifos-x-actionhub-publish-desktop-app-kmp@v2.0.0`.

## Usage

```yaml
- uses: openMF/mifos-x-actionhub-publish-desktop-app-kmp/dmg-notarized@v2.0.0
  with:
    app_path: ./cmp-desktop/build/compose/binaries/main-release/dmg/MyApp.dmg
    apple_id: ${{ secrets.APPLE_ID }}
    team_id: ${{ secrets.APPLE_TEAM_ID }}
    appstore_key_id: ${{ secrets.APPSTORE_KEY_ID }}
    appstore_issuer_id: ${{ secrets.APPSTORE_ISSUER_ID }}
    appstore_private_key_p8: ${{ secrets.APPSTORE_AUTH_KEY }}
```

## Inputs

| Name | Required | Description |
|---|---|---|
| `app_path` | yes | Path to the `.app` bundle or `.dmg` to notarize |
| `apple_id` | yes | Apple ID for App Store Connect account |
| `team_id` | yes | Apple Developer Team ID |
| `appstore_key_id` | yes | App Store Connect API key ID |
| `appstore_issuer_id` | yes | App Store Connect API issuer ID |
| `appstore_private_key_p8` | yes | Base64-encoded `.p8` API key (decoded inline) |

## Outputs

| Name | Description |
|---|---|
| `notarization_log` | Path to notarytool JSON log |

## Runner

`macos-latest` only.
