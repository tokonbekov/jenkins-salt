include:
    - base.timesyncd
    - slave.apt

builder-packages:
    pkg.installed:
        - require:
            - sls: base.timesyncd
            - sls: slave.apt
        - refresh: True
        - normalize: False
        - pkgs:
          - libvdpau-dev
          - libvdpau-dev:i386
          - libxvmc-dev
          - libxvmc-dev:i386
          - libva-dev 
          - libva-dev:i386
          - libomxil-bellagio-dev
          - libxkbcommon-dev
          - meson
          - wayland-protocols
          - libegl1-mesa-dev:i386
          - libclc-dev
