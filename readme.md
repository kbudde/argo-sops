# Argo-Sops-plugin

POC repository like argoCD sidecars can be used to decrypt sops/age encrypted secrets.

Example workflow:

- Developer encrypts all secrets with sops/age and commits them
- Push to a public repository
- Argo pulls the changes
- The sidecar decrypts the files in Argo before applying
- Argo synchronizes the data with the cluster

## Start argoCD with sidecar

see argocd/values.yaml for an example how to extend argoCD with a sidecar plugin
(https://argo-cd.readthedocs.io/en/stable/user-guide/config-management-plugins/#configure-plugin-via-sidecar)





