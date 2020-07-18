#!/bin/bash -eu

echo 'init process'

MYSQL="mysql -u isucon -p isucon"

$MYSQL <<EOF
USE isucon;
ALTER TABLE memos ADD INDEX index_user(user);
ALTER TABLE memos ADD INDEX index_is_private(is_private);
EOF