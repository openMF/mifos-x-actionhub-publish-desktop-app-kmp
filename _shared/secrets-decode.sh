#!/usr/bin/env bash
#
# secrets-decode.sh — Shared helper across desktop sub-actions
#
# Decodes the CERT_P12_BASE64 environment variable into ./cert.p12 in the
# current working directory. Called by dmg-notarized/action.yml during the
# certificate-import step. Kept as a separate script so future sub-actions
# can reuse the decode pattern without copy-paste.
#
# Required env:
#   CERT_P12_BASE64 — base64-encoded .p12 certificate
#
set -euo pipefail

if [[ -z "${CERT_P12_BASE64:-}" ]]; then
  echo "ERROR: CERT_P12_BASE64 is unset" >&2
  exit 1
fi

echo "$CERT_P12_BASE64" | base64 --decode > cert.p12
chmod 600 cert.p12
echo "Decoded cert.p12 ($(wc -c < cert.p12) bytes)."
