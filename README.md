# vault-unseal-by-local-kms

```bash
docker-compose up -d
docker-compose exec vault /bin/sh
```

```bash
$ vault status
Key                      Value
---                      -----
Seal Type                awskms
Recovery Seal Type       n/a
Initialized              false
Sealed                   true
Total Recovery Shares    0
Threshold                0
Unseal Progress          0/0
Unseal Nonce             n/a
Version                  1.19.5
Build Date               2025-05-29T09:17:06Z
Storage Type             file
HA Enabled               false

$ vault operator init
Recovery Key 1: ============================================
Recovery Key 2: ============================================
Recovery Key 3: ============================================
Recovery Key 4: ============================================
Recovery Key 5: ============================================

Initial Root Token: ============================

Success! Vault is initialized

Recovery key initialized with 5 key shares and a key threshold of 3. Please
securely distribute the key shares printed above.

$ vault status
Key                      Value
---                      -----
Seal Type                awskms
Recovery Seal Type       shamir
Initialized              true
Sealed                   false
Total Recovery Shares    5
Threshold                3
Version                  1.19.5
Build Date               2025-05-29T09:17:06Z
Storage Type             file
Cluster Name             vault-cluster-97d0ef6c
Cluster ID               81f8a9ce-5048-1f2b-d717-329071953b87
HA Enabled               false
`````
