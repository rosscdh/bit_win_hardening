def test_file_exists(host):
    bit_win_hardening = host.file('/tmp/Windows10_Privacy.ps1')
    print(bit_win_hardening.content_string)
    assert bit_win_hardening.exists
    assert '    [bool]$enable = $true' in bit_win_hardening.content_string

