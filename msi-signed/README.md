# msi-signed

Composite sub-action wrapping Azure Trusted Signing for a Windows MSI via `azure/trusted-signing-action`. Part of `openMF/mifos-x-actionhub-publish-desktop-app-kmp@v2.0.0`.

## Usage

```yaml
- uses: openMF/mifos-x-actionhub-publish-desktop-app-kmp/msi-signed@v2.0.0
  with:
    msi_path: ./cmp-desktop/build/compose/binaries/main-release/msi
    azure_ts_tenant_id: ${{ secrets.AZURE_TS_TENANT_ID }}
    azure_ts_client_id: ${{ secrets.AZURE_TS_CLIENT_ID }}
    azure_ts_client_secret: ${{ secrets.AZURE_TS_CLIENT_SECRET }}
    azure_ts_endpoint: https://wus.codesigning.azure.net
    trusted_signing_account_name: ${{ vars.TRUSTED_SIGNING_ACCOUNT_NAME }}
    certificate_profile_name: ${{ vars.CERTIFICATE_PROFILE_NAME }}
```

## Inputs

| Name | Required | Description |
|---|---|---|
| `msi_path` | yes | Path to `.msi` (or folder of MSIs — filtered by `files-folder-filter: msi`) |
| `azure_ts_tenant_id` | yes | Azure tenant ID for Trusted Signing |
| `azure_ts_client_id` | yes | Service principal client ID |
| `azure_ts_client_secret` | yes | Service principal client secret |
| `azure_ts_endpoint` | yes | Trusted Signing endpoint URL (e.g. `https://wus.codesigning.azure.net`) |
| `trusted_signing_account_name` | yes | Trusted Signing account name |
| `certificate_profile_name` | yes | Certificate profile name |

## Runner

`windows-latest` (PowerShell).
