# macos-crasher

macOS crashes on union mounted appledouble files

Apple security says this is not a security issue, so I'm free to publish this.

The bug is 100% reproducible on non-latest macos it results in a reboot, now it
just hangs the machine forever.

NOTE: disk4s1 is assumed to be the first available disk, if that's not true for
      you it won't work

