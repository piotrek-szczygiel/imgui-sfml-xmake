# Building

## Requirements

- C++ compiler
- xmake

You can install [xmake](https://xmake.io/) on your machine using these one-liners:

```bash
# via curl
bash <(curl -fsSL https://xmake.io/shget.text)

# via wget
bash <(wget https://xmake.io/shget.text -O -)

# via powershell
Invoke-Expression (Invoke-Webrequest 'https://xmake.io/psget.text' -UseBasicParsing).Content
```

## Usage

```bash
# Optionally: use debug mode
xmake config -m debug

# Build application
xmake

# Run application
xmake run
```
