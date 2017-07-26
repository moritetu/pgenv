# pgenv

pgenv is a tiny tool that helps install various versions of PostgreSQL on bash.

## Install

```
git clone https://github.com/moritoru81/pgenv.git
cat <<EOS >> ~/.bash_profile
# pgenv
source `pwd`/pgenv/profile
export PATH=`pwd`/pgenv/bin:\$PATH
EOS
source ~/.bash_profile
```

## Install PostgreSQL

```
pgenv -i 9.6.3 -d
pgenv -s 9.6.3     # exec $SHELL
pgenv -g 9.6.3     # exec $SHELL -l
psql -V
```
