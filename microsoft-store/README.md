# microsoft-store

Composite sub-action wrapping Partner Center submission API to push an MSIX package to the Microsoft Store. Part of `openMF/mifos-x-actionhub-publish-desktop-app-kmp@v2.0.0`.

## Usage

```yaml
- uses: openMF/mifos-x-actionhub-publish-desktop-app-kmp/microsoft-store@v2.0.0
  with:
    msix_path: ./cmp-desktop/build/compose/binaries/main-release/msix/MyApp.msix
    ms_partner_center_tenant_id: ${{ secrets.MS_PARTNER_CENTER_TENANT_ID }}
    ms_partner_center_client_id: ${{ secrets.MS_PARTNER_CENTER_CLIENT_ID }}
    ms_partner_center_client_secret: ${{ secrets.MS_PARTNER_CENTER_CLIENT_SECRET }}
    ms_app_id: ${{ vars.MS_STORE_APP_ID }}
```

## Inputs

| Name | Required | Description |
|---|---|---|
| `msix_path` | yes | Path to `.msix` or `.msixbundle` |
| `ms_partner_center_tenant_id` | yes | Partner Center tenant ID |
| `ms_partner_center_client_id` | yes | Partner Center client ID (Azure AD app) |
| `ms_partner_center_client_secret` | yes | Partner Center client secret |
| `ms_app_id` | yes | Microsoft Store app product ID |
| `release_flight` | no | Optional flight name; omit for mainstream release |

## Runner

`windows-latest` (PowerShell).
