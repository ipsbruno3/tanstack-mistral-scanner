# TanStack-Mistral-Scanner

**Urgent scanner to detect compromised environments from the recent npm/JavaScript supply chain attack.**

We recently witnessed a severe supply chain compromise affecting parts of the JavaScript/npm ecosystem. The attack allows malicious code execution through infected third-party `node_modules` packages, including packages distributed through trusted dependency chains such as **TanStack** and **Mistral**.

This repository provides simple, transparent audit scripts to help identify potentially compromised environments.  
The code is intentionally minimal — **we strongly recommend you inspect the source before running it**.

## What the scanner checks

- Known compromised package versions published around **May 11, 2026**
- Suspicious `router_init.js` files inside `node_modules`
- `optionalDependencies` entries pointing directly to GitHub commits
- Malicious lifecycle scripts such as `preinstall`, `postinstall`, etc.
- Common persistence indicators in developer environments

## How to run

### Linux / macOS

```bash
# 1. Download the script
wget https://raw.githubusercontent.com/ipsbruno3/tanstack-mistral-scanner/main/scan_linux.sh

# 2. Make it executable
chmod +x scan_linux.sh

# 3. Run the scanner
./scan_linux.sh
```


## If indicators are detected

Treat the machine as potentially compromised.

Before revoking tokens or credentials:

1. Remove persistence hooks from:

   * `~/.claude/settings.json`
   * `~/.vscode/tasks.json`
2. Stop and remove suspicious background processes such as:

   * `gh-token-monitor`

After cleanup:

* Rotate GitHub credentials
* Rotate cloud credentials (AWS, GCP, Azure, etc.)
* Rotate npm tokens
* Rotate SSH keys
* Reinstall clean dependency versions
* Audit CI/CD pipelines and developer machines

## Potential impact

Observed behaviors associated with this campaign may include:

* Credential theft (GitHub, cloud providers, npm, SSH)
* Data exfiltration
* IDE persistence and re-execution
* CI/CD compromise
* Destructive actions triggered after token revocation attempts

## Recommendation

Update dependencies immediately, audit all developer systems, and verify the integrity of your supply chain and CI infrastructure.



### @voicproducoes

Cara, você tem um emprego bom? Em algum banco ou fintech né? Acorda pra vida. Ninguem ganhou nada com isso. "RM RF ~" em diretório alheio é destruir vidas. Milhões. Espero que entenda isso e melhore. Contrata um bom advopgado também, vai precisar. Fez merda na brincadeira e saiu do controle, as consequências vem agora. Não vou julgar ou me envolver. Mas ppensa ai. Valeu a pena?
