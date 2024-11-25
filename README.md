# subs_aai
All the main Answer.AI repos of interest

## Syncing Repos

The first time you clone this, you'll want to sync all git submodules with:

```sh
./sync.sh
```

## Updating Repos

To update all the repos in this repository, you can run the following command:

```sh
git pull
./update.sh
```

This will grab the most recent commits from the main of this repository and
then for each submodule update anyones that have changed.

## Install Repos

If you want to pip install all of the repositories you can run the following
command:

```sh
./install.sh
```

This will go through each repository and run an editable install on each of
them.
