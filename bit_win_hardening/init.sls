{%- from "bit_win_hardening/map.jinja" import config with context %}

{{ config.location }}:
  file.directory:
    - mode: 755
    - makedirs: True

windows_hardening_script:
  file.managed:
  - name: {{ config.location }}/Windows10_Privacy.ps1
  - source: salt://bit_win_hardening/files/Windows10_Privacy.ps1.jinja2
  - template: jinja


{%- if config.run == 'true' %}
run_windows_hardening_script:
  cmd.run:
  - name: 'Powershell.exe -executionpolicy bypass -File {{ config.location }}/Windows10_Privacy.ps1'
  - shell: powershell
  - watch:
    - file: {{ config.location }}/Windows10_Privacy.ps1
{%- endif %}