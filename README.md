Git LFS Utils
=============

A small collection of simple shell scripts to make working with git lfs a little better.
#Install
1. clone this repo where you would like it to live
2. open the terminal in the cloned repo
3. run the setup file `./setup.sh`
4. restart your termial

```
git clone git@github.com:Jam3/git-lfs-utils.git
cd git-lfs-utils
./setup.sh
```

adding the `--override-git` options will add function that will call the appropriate git command.

git clone -> quick-lfs-clone  
git pull -> quick-lfs-pull  
git checkout -> quick-lfs-checkout  

```
git clone git@github.com:Jam3/git-lfs-utils.git
cd git-lfs-utils
./setup.sh --override-git
```

#Commands
## quick-lfs-clone
This command will clone a repo with a lot of lfs files much quicker and is a drop in replacement for `git clone`

WARNING: This command will temporarily modify your .gitconfig file, so other git commands run during the pull will be affected. If you run another command, make sure to run `git lfs pull` after.  

```
quick-lfs-clone git@github.com:Jam3/git-lfs-utils.git
```

You can pass any argument you would have passed to `git clone` to `quick-lfs-clone`

```
quick-lfs-clone git@github.com:Jam3/git-lfs-utils.git --verbose
```

## quick-lfs-pull
This command will pull updates with a lot of lfs files much quicker and it's a drop in replacement for `git pull`  

WARNING: This command will temporarily modify your .gitconfig file, so other git commands run during the pull will be affected. If you run another command, make sure to run `git lfs pull` after.  

```
cd git-lfs-utils
quick-lfs-pull
```

You can pass any argument you would have passed to `git pull` to `quick-lfs-pull`
```
cd git-lfs-utils
quick-lfs-pull --verbose
```

## quick-lfs-checkout
This command will checkout branches with a lot of lfs files much quicker and it's a drop in replacement for `git checkout`  

WARNING: This command will temporarily modify your .gitconfig file, so other git commands run during the checkout will be affected. If you run another command, make sure to run `git lfs pull` after.  

```
cd git-lfs-utils
quick-lfs-checkout branch-name
```

You can pass any argument you would have passed to `git checkout` to `quick-lfs-checkout`
```
cd git-lfs-utils
quick-lfs-checkout --verbose
```
