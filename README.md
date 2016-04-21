Git LFS Utils
=============

A small collection of simple shell scripts to make working with git lfs a little better.
#Install
1. clone this repo where you would like it to live
2. open the terminal in the cloned repo
3. run the setup file `./setup.sh`
4. restart your termial and start using

```
git clone git@github.com:Jam3/git-lfs-utils.git
cd git-lfs-utils
./setup.sh
```

#Commands
## quick-lfs-clone
this command will clone a repo with a lot of lfs files much quicker and is a drop in replacement for `git clone`
```
quick-lfs-clone git@github.com:Jam3/git-lfs-utils.git
```

you can pass any argument you would have passed to `git clone` to `quick-lfs-clone`

```
quick-lfs-clone git@github.com:Jam3/git-lfs-utils.git --verbose
```

## quick-lfs-pull
this command will pull updates with a lot of lfs files much quicker and it's a drop in replacement for `git pull`  

WARINNG: this command will temporarily modify your .gitconfig file, so other git commands run during the pull will be affected. If you do run another command, just make sure you run `git lfs pull` after

```
cd git-lfs-utils
quick-lfs-pull
```

you can pass any argument you would have passed to `git pull` to `quick-lfs-pull`
```
cd git-lfs-utils
quick-lfs-pull --verbose
```
