#Pikapy - Mass Pokemon Go Account Creator and ToS verifier
==============================================================


Description
-----------
Automatically creates Pokemon Trainer Club accounts, and reads the ToS making them usable after the recent Niantic patch.
Text files will be created in your current directory.

Installation
------------
**Docker users (Windows/Linux/OSX)**
Right now you can run Pikapy in docker on a remote server through vnc by following these steps:

Change the ENTER_PASSWORD_HERE to a password of your choice (you will need this password to connect to vnc)

Save the file and run:

docker build -t pikapy .

After the image was successfully built, you can run your container with:

docker run -d -p 5900:5900 --cap-add=SYS_ADMIN --name pikapy pikapy

If the container is successfully built it will give you a long container ID that looks like this:

21185ee532f0b8199490f8d5c9a2c338b4527fd8cc62a24e9b4db30e84adbb64

If the port is open on your host's firewall, you can now connect to your container through your favourite VNC client


**Windows users**

Install all the necessary prerequisites as listed here:

http://pgm.readthedocs.io/en/develop/basic-install/windows.html

You will also need to download the chromedriver.exe:

http://chromedriver.storage.googleapis.com/2.23/chromedriver_win32.zip

Unzip and paste the chromedriver.exe file in "C:\Python27\Scripts" Folder.

Finally, open up your command prompt and paste this command:

    pip install git+https://github.com/skvvv/pikapy

If you are still having troubles, you can join us at discord channel https://discord.gg/VvwyS

**Linux users/OSX**

(OSX prerequisites)Selenium support:

    brew install chromedriver
(Ubuntu and variants prerequisites)

    sudo apt-get install chromium-browser


(Everyone from this point)
From your terminal run::

    pip install git+https://github.com/skvvv/pikapy

If you have both python2 and python3 installed::

    pip2 install git+https://github.com/skvvv/pikapy

If given permission errors::

    sudo pip2 install git+https://github.com/skvvv/pikapy

Updating to the latest version
------------------------------

    pip install --upgrade git+https://github.com/skvvv/pikapy

Uninstalling
------------

    pip uninstall pikapy

Usage
-----
**Command line interface:**

After installing the package run 'pikapy' from the terminal to create a new accounts.
Optional parameters include *--username*, *--password*, *--email*, *--count*
Use *--help* for command line interface help.

usernames.txt file is created in the current working directory.

Example 1 (Create entirely random new account)::

    ~pikapy
    Created new account:
      Username:  traynagmoh
      Password:  rossstrubhep
      Email   :  fantsniskflast@gastsnub.com
      
Example 2 (Create 2 accounts with the same password)::

    ~pikapy -p password -c 2
    Created new account:
      Username:  trodbectflik
      Password:  password
      Email   :  prepsteptcruct@gastsnub.com
    Created new account:
      Username:  truzplospduv
      Password:  password
      Email   :  linkslampnob@gastsnub.com
      
Example 3 (Create a new account with specified parameters)::

    ~pikapy --username=mycustomusername --password=hunter2 --email=verifiable@lackmail.ru
    Created new account:
      Username:  mycusttruzplospduv:trodbectflikomusername
      Password:  hunter2
      Email   :  verifiable@lackmail.ru

Example 4 (Create a new account with mail using "plus trick")::

    ~pikapy -m myemail+@gmail.com
    Created new account:
      Username:  wongblofttez
      Password:  password
      Email   :  myemail+swuchdranflost@gmail.com
