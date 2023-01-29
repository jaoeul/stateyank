stateyank
=========

This is a out-of-tree linux kernel module which tries to snapshot a live system
when loadeded.

A snapshot consists of cpu register state and physical memory state.

The goal of snapshotting is to load the state an machine into an emulator for
debugging and research purposes.


Building for your native
------------------------

```
git clone git@github.com:jaoeul/stateyank.git
cd stateyank
make
```

Load and run the module with `insmod stateyank.ko`

Cross-compiling with buildroot
-----------------------------

```
git clone git@github.com:jaoeul/stateyank.git
cd stateyank
export STATEYANK_SRC=$(pwd)
cd ..
git clone https://github.com/buildroot/buildroot.git
cd buildroot
cp -r $STATEYANK_SRC/buildroot-package package/stateyank
```

Edit the `buildroot/package/Config.in` file to include:
`source package/stateyank/Config.in`

Now run `make menuconfig` and enable the `stateyank` option in `Target packages`

Chose the target architecture, kernel binary format, filesystem options and
everything else you care about in the menuconfig menu, and lastly run `make`.

The resulting kernel module should new be in guest filesystem. Note that this
exact path may vary on your guest system. I, for example, found the built
module at: `/lib/modules/5.17.15/extra/stateyank.ko`

Load and run the module with `insmod stateyank.ko`
