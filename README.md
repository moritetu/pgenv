# pgenv

pgenv is a tiny tool that helps install various versions of PostgreSQL on bash.

## Install

```
git clone https://github.com/moritoru81/pgenv.git
source pgenv/install.sh
```

or

```
git clone https://github.com/moritoru81/pgenv.git
cat <<EOS >> ~/.bash_profile
### start pgenv
source `pwd`/pgenv/profile
export PATH=`pwd`/pgenv/bin:\$PATH
### end pgenv
EOS
touch `pwd`/pgenv/profile
source ~/.bash_profile
```

## Install PostgreSQL

```
pgenv install --g3 9.6.3
pgenv set 9.6.3         # exec $SHELL
pgenv global-set 9.6.3  # exec $SHELL -l
psql -V
```

## Diff

```
pgenv diff 9.5.6:9.6.3:src/backend/parser/analyze.c | less -R
# @ is current version
pgenv diff 9.5.6:@:src/backend/parser/analyze.c | less -R
```

## Edit

```
EDITOR=vim pgenv edit @:src/backend/parser/analyze.c
```

## Find and Grep

```
pgenv grep @:src/backend/parser:'_hook'
```

## Show versions

```
pgenv directories
```

## Switch version temporarily

```
pgenv select
```

## Others

```
# Show prefix
pgenv prefix            # => /path/to/versions/current_version
pgenv prefix 9.5.1      # => /path/to/versions/9.5.1
# Create a database cluster with version 9.5.1
$(pgenv prefix 9.5.1)/bin/initdb db95
```

## Configure option

By default, pgenv uses file 'configure_default_options'. But also you can use definitions for the specified version.

```
# If the option file for the specified version, it's used.
configure_default_options-9.6.3
# Otherwise, the default option file.
configure_default_options
```
