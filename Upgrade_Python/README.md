# **Upgrade latest version Python 3 on Ubuntu 18.04**
---
### **Check Current Python Version**
Checking the current version of a software by running the following command in Terminal:
```
$ python3 -V
```
or
```
$ python3 --version
```
You might also have several versions of Python installed on your system. The following command will help you get a list of all Python versions you have on your system:

```
$ apt list --installed | grep python
```
---
### **Upgrade from source**
Python’s website maintains a list of all Python releases on this link:
https://www.python.org/downloads/source/
or download by command line :
```
$ wget https://www.python.org/ftp/python/3.x.x/Python-3.x.x.tgz
```
When the file download is complete, please run the following command in order to extract the resources:
```
$ tar -xvf Python-3.x.x.tgz
```
Change the directory to  whatever download version you have extracted:
```
$ cd Python-3.x.x
```
Now run the following command to run the configuration script:
```
$ ./configure
```
Now is the time to install Python.

```
$ sudo make
```
Then run the following command:

```
$ sudo apt-get make
```
or
```
$ sudo make install
```
---
### **Errors that might be encountered during installation**

**Error 1**

When you run the “sudo make install” command, you might encounter the following error:

![error1](https://vitux.com/wp-content/uploads/2018/11/word-image-174.png)

**Solution:**

Run the following command as sudo in order to install the missing zlib1g-dev package:
```
$ sudo apt install zlib1g-dev
```

Then run the following command in order to complete the Python installation:

```
$ sudo make install
```

***
**Error 2**

When might also get the following error when you run the “sudo make install” command:

![error2](https://vitux.com/wp-content/uploads/2018/11/word-image-175.png)

This would mean that a package named libffi-dev is missing from your system as you might have never needed it before.

Solution:

Run the following command as sudo in order to install the missing libffi-dev package:
```
$ sudo apt-get install libffi-dev
```
Then run the following command in order to complete the Python installation:

```
$ sudo make install
```
---
### **Upgrade Python to The Latest Version**

```
$ sudo apt-get upgrade python3
```
Now you can see that the updated Python version :
```
$ python3 -V
```
If you have installed manually from source, you must uninstall the previous version and install the latest version or the one you want. The steps of how to do so are described in the section below.

---
### **Uninstall python**
To uninstall python from your Ubuntu 18 machine, run:
```
sudo apt remove python3.6
```
Note that you cannot mention major python3 version as it is being used by the system, but you can uninstall minor version which is preinstalled on your machine.

If you have installed python from source and need to update it, you must uninstall the previous one and repeat the installation steps which are described above in this article. As this method if installation locates python files in /usr/local/bin path, you must remove python files from that path. To do so you can run the following commands:
```
sudo rm /usr/local/bin/py*
sudo rm /usr/local/bin/pip*
sudo rm /usr/local/bin/idle*
sudo rm /usr/local/bin/2to3*
sudo rm /usr/local/bin/easy_install-3.6
```
Once all files are removed you can proceed to the installation of newer version.

Then run the following command:
```
$ sudo make
```
```
$ sudo make install
```

**Important: 
Running time may be up to 30 minutes**
