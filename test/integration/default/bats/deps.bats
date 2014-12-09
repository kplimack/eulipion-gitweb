
@test "git binary installed" {
    run which git
    [ "$status" -eq 0 ]
}

@test "apache2" {
    run which apache2
    [ "$status" -eq 0 ]
}

@test "apache2ctl" {
    run which apache2ctl
    [ "$status" -eq 0 ]
}

@test "a2ensite" {
    run which a2ensite
    [ "$status" -eq 0 ]
}
