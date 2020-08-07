def test_file_exists(host):
    bit_win_hardening = host.file('/bit_win_hardening.yml')
    assert bit_win_hardening.exists
    assert bit_win_hardening.contains('your')

# def test_bit_win_hardening_is_installed(host):
#     bit_win_hardening = host.package('bit_win_hardening')
#     assert bit_win_hardening.is_installed
#
#
# def test_user_and_group_exist(host):
#     user = host.user('bit_win_hardening')
#     assert user.group == 'bit_win_hardening'
#     assert user.home == '/var/lib/bit_win_hardening'
#
#
# def test_service_is_running_and_enabled(host):
#     bit_win_hardening = host.service('bit_win_hardening')
#     assert bit_win_hardening.is_enabled
#     assert bit_win_hardening.is_running
