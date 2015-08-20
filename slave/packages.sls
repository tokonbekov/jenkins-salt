# The format used by slave-packages allows for a very terse list of all pacakges
# for more complex requirements see:
# http://docs.saltstack.com/en/latest/ref/states/all/salt.states.pkg.html

include:
    - slave.timesyncd

slave-packages:
    pkg.installed:
        - require:
            - sls: slave.timesyncd
        - refresh: True
        - normalize: False
        - pkgs:
            # - tsocks ## This is currently removed from testing and breaks if it is required here.
            - vim
            - sudo
            - build-essential
            - python-simplejson
            - python-lxml
            - python-mako
            - python-numpy
            - gcc-multilib
            - g++-multilib
            - openjdk-7-jre
            - git
            - libtool
            - autoconf
            - ccache
            - bison
            - flex
            - llvm
            - cmake
            - pkg-config
            - python-git
            - quilt
            - docbook-website
            - vim-nox
            - avahi-daemon
            - libdrm2
            - libdrm2:i386
            - emacs
            - freeglut3
            - freeglut3:i386
            - gcc-5-base
            - gcc-5-base:i386
            - libc6
            - libc6:i386
            - libc6-dev
            - libc6-dev:i386
            - libcaca0
            - libcaca0:i386
            - libegl1-mesa
            - libegl1-mesa:i386
            - libegl1-mesa-dev
            - libelf-dev
            - libelf-dev:i386
            - libexpat1-dev
            - libexpat1-dev:i386
            - libffi-dev
            - libffi-dev:i386
            - libffi6
            - libffi6:i386
            - libffi-dev
            - libgbm1
            - libgbm1:i386
            - libgbm-dev
            - libgcc1
            - libgcc1:i386
            - libgl1-mesa-dev
            - libgl1-mesa-dri
            - libgl1-mesa-dri:i386
            - libgl1-mesa-glx
            - libgl1-mesa-glx:i386
            - libegl1-mesa
            - libegl1-mesa:i386
            - libegl1-mesa-drivers
            - libegl1-mesa-drivers:i386
            - libglapi-mesa
            - libglu1-mesa
            - libglu1-mesa:i386
            - libglu1-mesa-dev
            - libllvm3.4
            - libllvm3.4:i386
            - libpciaccess-dev
            - libpciaccess-dev:i386
            - libpciaccess0
            - libpciaccess0:i386
            - libpng12-dev
            - libpthread-stubs0-dev
            - libtinfo-dev
            - libtinfo-dev:i386
            - libudev-dev
            - libudev-dev:i386
            - libvdpau-dev
            - libvdpau-dev:i386
            - libx11-dev
            - libx11-dev:i386
            - libx11-xcb-dev
            - libx11-xcb-dev:i386
            - libxcb-dri2-0-dev
            - libxcb-dri2-0-dev:i386
            - libxcb-dri3-dev
            - libxcb-dri3-dev:i386
            - libxcb-glx0-dev
            - libxcb-glx0-dev:i386
            - libxcb-present-dev
            - libxcb-present-dev:i386
            - libxcb-randr0-dev
            - libxcb-randr0-dev:i386
            - libxcb-sync-dev
            - libxcb-sync-dev:i386
            - libxcb-xfixes0-dev
            - libxcb-xfixes0-dev:i386
            - libxdamage-dev
            - libxdamage-dev:i386
            - libxext-dev
            - libxext-dev:i386
            - libxfixes-dev
            - libxfixes-dev:i386
            - libxrender1
            - libxrender1:i386
            - libxshmfence-dev
            - libxshmfence-dev:i386
            - libxxf86vm-dev
            - libxxf86vm-dev:i386
            - linux-libc-dev
            - linux-libc-dev:i386
            - libssl-dev
            - libssl-dev:i386
            - scons
            - x11proto-dri2-dev
            - x11proto-dri3-dev
            - x11proto-gl-dev
            - x11proto-present-dev
            - xutils-dev
            - valgrind

# vim: ft=yaml
