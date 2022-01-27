# Argo-Sops-plugin

ArgoCD sops plugin to decrypt files on demand

## Start argoCD with sidecar

see argocd/values.yaml

## development

### deploy test argoCD


an age key was generated and saved in argocd/templates/age-secret.yaml
```
> age-keygen 
# created: 2022-01-27T22:57:43+01:00
# public key: age10efzgcr0e55nvlxx5jlsr9gf2gx7cexnqqwtkx7efm04u6t5e5kq7yvdl4
AGE-SECRET-KEY-1M88TGFLLWLY92QFRNSPVT2W43K23657ZZ3CYK69JKE2WJMFHNZCSEPY2VS
```

Installing argoCD with plugin definition and age-key:

```
helm upgrade --install argo ./argocd
```

login to argoCD and check

## Links

- https://argo-cd.readthedocs.io/en/stable/user-guide/config-management-plugins/#configure-plugin-via-sidecar


