# Read Me

If you are having trouble with the config not loading, it's because of a file location conflict.

1. ~/.config/ghostty/config (XDG path)
2. ~/Library/Application Support/com.mitchellh.ghostty/config (macOS-native path)

My solution is to remove it entirely.

```
rm ~/Library/Application\ Support/com.mitchellh.ghostty/config
```

