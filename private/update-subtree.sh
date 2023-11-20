#!/bin/bash

TOP=$(git rev-parse --show-toplevel)

BRANCH=main-16k-gs-shusky-5.15

git -C "$TOP" subtree pull --prefix  private/bms https://android.googlesource.com/kernel/google-modules/bms "$BRANCH" --squash
git -C "$TOP" subtree pull --prefix  private/soc-gs https://android.googlesource.com/kernel/google-modules/soc/gs "$BRANCH" --squash
git -C "$TOP" subtree pull --prefix  private/trusty https://android.googlesource.com/kernel/google-modules/trusty "$BRANCH" --squash
git -C "$TOP" subtree pull --prefix  private/devices-google-huskey https://android.googlesource.com/kernel/devices/google/shusky "$BRANCH" --squash
