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
pgenv -i 9.6.3 -d
pgenv -s 9.6.3     # exec $SHELL
pgenv -g 9.6.3     # exec $SHELL -l
psql -V
```

### Others

```
# Show prefix
pgenv --prefix            # => /path/to/versions/current_version
pgenv --prefix-ver 9.5.1  # => /path/to/versions/9.5.1
# Create a database cluster with version 9.5.1
$(pgenv --prefix-ver 9.5.1)/bin/initdb db95
```
