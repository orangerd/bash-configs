To install, clone the repo:

```
git clone https://github.com/orangerd/bash-configs.git
```

Then, create symlinks into the cloned repo:

```
for n in bash-configs/.[bv]*; do echo ${n:13}; ln -sf $n ${n:13}; done
```
