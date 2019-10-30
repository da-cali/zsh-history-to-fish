# zsh-fish History Converter

Migrate your zsh history to fish and vice versa.

### Instructions:

0. Install [stack](https://docs.haskellstack.org/en/stable/README/) if necessary.

1. Clone repository:
    ```
    git clone https://github.com/da-cali/zshFishHistoryConverter
    ```
2. Open folder:
    ```
    cd zshFishHistoryConverter
    ```
3. Build project:
    ```
    stack build
    ```
4. Migrate your history:
    
    From zsh to fish:
    ```
    cp ~/.zsh_history ~/zshFishHistoryConverter
    ```
    and then:
    ```
    stack runhaskell src/Zsh2fish.hs
    ```

    From fish to zsh:
    ```
    cp ~/.local/share/fish/fish_history ~/zshFishHistoryConverter
    ```
    and then:
    ```
    stack runhaskell src/Fish2zsh.hs
    ```