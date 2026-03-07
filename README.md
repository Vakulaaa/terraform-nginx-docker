# Terraform2: Docker + Modules + Workspaces

Учебный проект Terraform:
- провайдер `kreuzwerker/docker`
- модуль `modules/nginx_service`
- окружения `dev` и `test` через `*.tfvars`
- изоляция state через `terraform workspace`

## Структура

- `versions.tf` — версия Terraform и required providers
- `providers.tf` — конфигурация провайдера docker
- `variables.tf` — входные переменные root-модуля
- `main.tf` — вызов модуля `nginx_service`
- `outputs.tf` — outputs root-модуля
- `dev.tfvars` / `test.tfvars` — параметры окружений
- `modules/nginx_service/*` — реализация сервиса

## Быстрый старт

```bash
terraform init
terraform workspace new dev
terraform workspace new test# terraform-nginx-docker
