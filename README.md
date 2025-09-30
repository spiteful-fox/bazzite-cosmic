# bazzite-cosmic

![screenshot](/img.png)

This repository holds custom images for Bazzite that fully replace KDE with COSMIC.

I decided I wanted to mess with COSMIC for a little bit, but the other custom images I could find (at least at a glance) either:

- (A): didn't fully remove KDE/GNOME, and I wanted a "clean" environment at least *mostly* free of the pre-installed utilities that the other desktop environments come with, or

- (B): included a bunch of other preinstalled programs I didn't want, since I'm perfectly content with distrobox or layering when I need to do that.

So I decided to just do it myself. This is "clean" desktop Bazzite, with COSMIC, with hopefully few leftovers from any other DE, and nothing else. If anything extra gets added to it, it's because I noticed something important "missing" after taking away the KDE packages, but there probably won't be a whole lot of that.

At the moment, that list of "missing" things is:
- `gnome-keyring` & `seahorse`: to replace kwallet
- `file-roller`: to replace Ark
- `gnome-system-monitor`: to replace Plasma's system monitor

Importantly, Bazzite installs several components through Flatpak when it is first installed (e.g. Gwenview for KDE). Those won't go anywhere when you switch to this, so you'll have to swap them out yourself for e.g. GNOME equivalents yourself.

If you want it:

```sh
# AMD/Intel

rpm-ostree rebase ostree-image-signed:docker://ghcr.io/spiteful-fox/bazzite-cosmic

# NVIDIA (Turing+)

rpm-ostree rebase ostree-image-signed:docker://ghcr.io/spiteful-fox/bazzite-cosmic-nvidia-open
```