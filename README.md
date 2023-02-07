# ZSH config

I keep .zshrc in ~/.config/zsh/.zshrc. 

To do this make your ~/.zshrc file content the following:

```
if [ -r ~/.config/.zshrc ]; then
    source ~/.config/.zshrc
fi
```

And ZSH will source from your given path.
