# zsh-history-to-fish

### Instructions:

0. Install curl or wget.
    ```
    sudo apt install curl
    ```
    or:
    ```
    sudo apt install wget
    ```
1. Install [stack](https://docs.haskellstack.org/en/stable/README/):
    ```
    curl -sSL https://get.haskellstack.org/ | sh
    ```
    or:
    ```
    wget -qO- https://get.haskellstack.org/ | sh
    ```
2. Clone repository:
    ```
    git clone https://github.com/da-cali/zsh-history-to-fish
    ```
3. Copy zsh history to repository folder:
    ```
    cp .zsh_history zsh-history-to-fish
    ```
4. Open folder:
    ```
    cd zsh-history-to-fish
    ```
5. Run it:
    ```
    stack runhaskell src/Main.hs
    ```
Now you have a file named "fish_history" with your zsh history in fish format.