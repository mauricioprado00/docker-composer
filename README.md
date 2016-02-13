# docker-composer
This tool allows you to use **php composer** in your project though docker, without having to install docker in your environment. 

# Install
In order to install the tool you just need to run:

```bash
curl https://raw.githubusercontent.com/mauricioprado00/docker-composer/master/bin/get-docker-composer | sh
```

after install you will have available the tool **bin/composer** into your current working directory

# How to use it?
You use **bin/composer** just like you would use composer.

There are additional intuitively named executables that wraps **bin/composer** for common composer commands.

# Why use this instead of composer?
Portability. If you create a docker-based project you will probably want to make **docker** the only dependency, either to run, test or develop the application.

> "But I could just run docker command to use the php composer image."

Yes you could, but you are lazy.

# Is install safe?
We all know that curl/sh install could be unsafe if connection fails, but since install performs a md5sum before the execution of the script, you dont have to worry about invalid downloaded scripts
If you prefer not to run a curl/sh, you can just mimic what the curl/sh does, described in the following section **what does intall do**

# What does install do?
install will download these files:

```
bin/composer-init
bin/composer
bin/composer-require
bin/get-docker-composer
bin/composer-dump-autoload
bin/composer-update
```

into your current working directory. and it will add all of them, except for **get-docker-composer** into your **.gitignore** file.

# Update
To update the toolkit you just need to run 

```bash
bin/get-docker-composer
```

