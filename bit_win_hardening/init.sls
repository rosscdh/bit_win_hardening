{%- from "bit_win_hardening/map.jinja" import config with context %}

{{ config.location }}:
  file.directory:
    - mode: 755
    - makedirs: True

windows_hardening_script:
  file.serialize:
  - name: {{ config.location }}
  - source: salt://bit_win_hardening/files/Windows10_Privacy.ps1.jinja2
  - tempalte: jinja2

run_windows_hardening_script:
  cmd.run:
  - name: {{ config.location }}
  - shell: powershell
  - watch:
    - cmd: windows_hardening_script