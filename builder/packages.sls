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
          - libomxil-bellagio-dev:i386