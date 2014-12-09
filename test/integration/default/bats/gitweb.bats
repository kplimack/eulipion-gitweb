
@test "gitweb-conf" {
    test -f /etc/gitweb.conf
    [ "$?" -eq 0 ]
}

@test "git-repo-dir-exists" {
    test -d /data/repos/git
    [ "$?" -eq 0 ]
}
