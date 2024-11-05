# CPUMiner GhostRider for Android

This repository contains a CPU miner optimized for the GhostRider algorithm, designed for Android devices.

## Features

- Multi-algo support
- Optimized for CPUs with AVX512, SHA, and VAES extensions
- Easy installation script

## Installation

To install the miner with one command, run the following:

```bash
curl -O https://raw.githubusercontent.com/tanishdt/CPUMiner_GhostRider_Android/main/install.sh && chmod +x install.sh && ./install.sh
```

This command will download the installation script, make it executable, and run it.

## Mining Scripts
After installation, the following mining scripts will be created in the cpuminer-gr directory:

- `mine_neox.sh`: Start mining with NEOX
- `mine_doge.sh`: Start mining with DOGE
- `mine_jup.sh`: Start mining with JUP

You can execute these scripts using the command:

```bash
./mine_neox.sh
./mine_doge.sh
./mine_jup.sh
```

## Configuration
The mining scripts are pre-configured with the following details:

- Stratum URL: `stratum+tcp://ghostrider.unmineable.com:443`
- NEOX Username: `NEOX:GgJsFyHH1VnDNbT1SNseYrpbNWj8d3dJuD.rn9pm#tdi`
- DOGE Username: `DOGE:DExbdJb2iu5foXXa3QbiArbiSXWwvCRod1.rn9pm#tdi`
- JUP Username: `JUP:8dnuYyi2m7vTAW1nnA9taf5gTGmvSLuihUXpLAiApvjw.rn9pm#tdi`

## Support
For any issues or questions, please open an issue in this repository.
