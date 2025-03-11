<h1 align="center">KEEP REPOS UP TO DATE</h1>

I use 3 computers to code :
- a desktop at home running Debian GNU/Linux (SID version)
- a desktop at work, also running Debian GNU/Linux (SD version)
- and a Macbook Pro, with MacOS.

How can I keep my local repositories on my 3 computers automatically up to date ?

This script, written in Bash, answers the question.
<br />
<br />

## Prerequisites

To work properly, you must install Github CLI. If you do not know how doing it, please follow this link : [Github CLI Installation](https://github.com/cli/cli#installation).

You must also have set up a SSH key to connect to your Github repositories.

<br />

## Prepare the script for your use ?

If you want to use this script, you must modify some of its lines.

Go to line 44, and modify Thanatos by the hostname of your first computer. <br />
At line 46, change the DEV_PATH value by the path of your main directory, the one which contains all your projects.<br />
Do it again at line 48 and 52, with the hostname of your other computers.
And at line 50 and 54 whith the correct main development path on your other computers.

<br />

## Run the script

Make sure the script is executable :

```bash
chmod +x kru2d.sh
```

and run it :

```bash
./kru2d.sh
```

<br />

