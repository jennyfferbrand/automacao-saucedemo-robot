# 🤖 Automação de Testes E2E - SauceDemo

![Status](https://img.shields.io/badge/Status-Concluído-brightgreen) ![Robot Framework](https://img.shields.io/badge/Framework-Robot-blue)

## 🔖 Sobre o Projeto

Este projeto consiste na automação de testes End-to-End (E2E) para o fluxo de login do e-commerce **Swag Labs (SauceDemo)**.

O objetivo foi criar scripts para validar a qualidade da autenticação, cobrindo tanto o caminho feliz quanto validações de erro.

## 🚀 Tecnologias Utilizadas

* **[Robot Framework](https://robotframework.org/):** 
* **[SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary):**
* **Python:** 

## 🧪 Cenários de Teste

| ID | Cenário | Tipo | Resultado Esperado |
| :--- | :--- | :--- | :--- |
| **CT01** | Login com Sucesso | Positivo | Usuário deve ser redirecionado para a página de produtos (`/inventory.html`). |
| **CT02** | Login com Senha Inválida | Negativo | O sistema deve bloquear o acesso e exibir mensagem de erro *"Epic sadface"*. |
