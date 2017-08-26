# XMR miner for SimpleMining OS (AMD)

## Installation

Open the terminal via ssh or directly via connected keyboard/monitor.

Install git

`sudo apt update && sudo apt install git-core`

Clone this repository

`git clone https://github.com/kusayuzayushko/xmr-miner-smos.git`

go into directory

`cd xmr-miner-smos`

run

`./install.sh`

edit your global config.

## config string should look something like this:


`-s xmr-eu1.nanopool.org:14444 -w 42MmCH6p1B3P7BaC3y8KcXayNcKa1jaU9RnUPKFy7SMAJrGrgMajd17WbwaVe4vUMveKAzAiA4j8xgUi29TpKXpm3xUCcQ2.RX580 -p z -i 1024`


Where
-s pool server
-w is your wallet
-p password
-i intensity
