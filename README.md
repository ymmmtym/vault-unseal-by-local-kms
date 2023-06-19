# vault-unseal-by-local-kms


```bash
docker-compose up -d
docker-compose exec vault /bin/sh
```

```bash
$ vault operator init
Recovery Key 1: 0FphzTIpVaCT80LzjNo74HsIMGtkS2lgDiTcNJNzvVp9
Recovery Key 2: YQ1kIdP5mPnyWtWK6PJU7pr7H1v5roC06+nWU0DdGGd4
Recovery Key 3: Ucol6g7nyRguBh4CQInNPGy2LbuPtGxWLo6Ny12byhlw
Recovery Key 4: ObhojZUanlTDC36hQyIp6b3IMFp4vCbXh74lClLjDIT1
Recovery Key 5: XO6pbMu/apJmHwxLtp3mRluAGIbsEYuSrfZh0BN8vBBt

Initial Root Token: hvs.TMSr5mfGeFEbRUaLme69Hx13

Success! Vault is initialized

Recovery key initialized with 5 key shares and a key threshold of 3. Please
securely distribute the key shares printed above.

$ vault status
Key                      Value
---                      -----
Recovery Seal Type       shamir
Initialized              true
Sealed                   false
Total Recovery Shares    5
Threshold                3
Version                  1.13.3
Build Date               2023-06-06T18:12:37Z
Storage Type             file
Cluster Name             vault-cluster-3b0538b1
Cluster ID               bb201918-ef76-4569-f574-e0540fd1f88a
HA Enabled               false
```
