# AWS WordPress Leyton - Terraform

Infrastructure AWS de la plateforme WordPress Multisite Leyton.

## Environnement

- Staging uniquement

## Region

`eu-west-3` - Europe (Paris)

## Regles

- Ne jamais committer de secrets, de cles AWS ou de fichiers d'etat Terraform.
- Executer `terraform fmt`, `terraform validate` et `terraform plan` avant tout `apply`.
- Utiliser un backend distant S3 avant le deploiement de l'infrastructure.
