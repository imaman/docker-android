#!/bin/bash

# wait for the device to be ready.
until adb shell pm list packages calc | grep -m 1 "com.android.calculator2"; do : ; done

adb install /root/apks/*.apk

