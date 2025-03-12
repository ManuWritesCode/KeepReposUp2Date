<h1 align="center">KEEP REPOS UP TO DATE</h1>

I use 3 computers to code :
- a **desktop** at home running _Debian GNU/Linux_ (_SID_ version)
- a **desktop** at work, also running _Debian GNU/Linux_ (_SD_ version)
- and a **Macbook Pro**, with _MacOS_.

How can I keep my local repositories on my 3 computers automatically up to date ?

This script, written in Bash, answers the question.
<br />
<br />

## Prerequisites

To work properly, you must install **Github CLI**. If you do not know how doing it, please follow this link : [Github CLI Installation](https://github.com/cli/cli#installation).

You must also have _set up a SSH key_ to connect to your Github repositories.

<br />

## Prepare the script for your use ?

If you want to use this script, you must modify some of its lines.

Go to **line 44**, and modify _Thanatos_ by the _hostname of your first computer_. <br />
At **line 46**, change the _DEV_PATH value_ by the _path of your main directory,_, the one which contains all your projects.<br />
**Do it again at line 48 and 52**, with the _hostname of your other computers_.<br />
And at **line 50 and 54** whith the correct _main development path on your other computers_.

<br />

## Run the script

Make sure the script is _executable_ :

```bash
chmod +x kru2d.sh
```

and run it manually :

```bash
./kru2d.sh
```

or _execute it automatically_ at launch of your terminal. 
Modify your **(bash/zsh/...)rc** file.

I use **zsh** as shell, so I modify my **zshrc** file :

```bash
nano ~/.zshrc
```

and I add this line at the end of the file :

```bash
source /Path_of_your_dev_dir/KeepReposUp2Date/kru2d.sh
```

Don't forget to **replace** _Path_of_your_dev_dir_ by your _really development path_.

Do this on all your computers.

<br />

