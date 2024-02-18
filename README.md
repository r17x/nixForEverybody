## This Repository based on live streaming  


### Command


#### Using nix shell remotely

```bash
# nix develop github:r17x/nixForEverybody#<NAME>
nix develop github:r17x/nixForEverybody#python
```

#### Update lock file

```bash
# nix flake lock --update-input <INPUTNAME>
nix flake lock --update-input nixpkgs 
```
