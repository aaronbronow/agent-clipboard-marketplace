# Agent Clipboard Marketplace

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A dedicated, custom third-party **Claude Code** Plugin Marketplace catalog hosting highly resilient clipboard synchronization bridge plugins.

---

## 📦 Available Plugins

### 1. `claude-clipboard-bridge`
Seamless cross-environment copy synchronization. Sync code blocks, terminal selections, and logs from local terminals, WSL, remote SSH sessions, Tmux/Screen multiplexers, and containerized Docker sandboxes back to your physical host clipboard automatically using secure, write-only OSC 52 sequences.

---

## 📥 How to Register & Install

To install plugins hosted in this registry inside your active **Claude Code** session:

### 1. Add the Marketplace Registry
Register this custom marketplace repository in your terminal environment:
```bash
/plugin marketplace add aaronbronow/agent-clipboard-marketplace
```

### 2. Install the Plugin
Install the namespaced clipboard bridge plugin from this registry:
```bash
/plugin install claude-clipboard-bridge@agent-clipboard-marketplace
```

### 3. Reload Plugins
Apply the installation instantly:
```bash
/reload-plugins
```

---

## 🛠️ Marketplace Maintenance

The catalog indexing is defined under `.claude-plugin/marketplace.json`. To index new plugins or push updates, update the metadata pointers and push the commits to GitHub.

---

## License

This marketplace catalog is open-source and licensed under the [MIT License](LICENSE).
