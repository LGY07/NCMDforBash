# NCMDforBash

[NCMD](https://github.com/Ltfjx/NCM_Downloader)的Bash实现,感谢[勒特夫杰克斯](https://github.com/Ltfjx/)先生制作的[NCMD](https://github.com/Ltfjx/NCM_Downloader)

### 通过歌曲ID下载网易云的音乐，[网易云音乐歌曲ID查看方法](https://github.com/LGY07/NCMDforBash/main/README.md#%E7%BD%91%E6%98%93%E4%BA%91%E9%9F%B3%E4%B9%90%E6%AD%8C%E6%9B%B2id%E6%9F%A5%E7%9C%8B%E6%96%B9%E6%B3%95)

### 需要bash，wget，安装所需程序方法：

>[Linux](https://github.com/LGY07/NCMDforBash/main/README.md#linux)

>[Windows](https://github.com/LGY07/NCMDforBash/main/README.md#windows)

>[Android](https://github.com/LGY07/NCMDforBash/main/README.md#androidtermux)

**使用方法(一行命令快速运行)：**
```
bash $(wget -O- "https://raw.githubusercontent.com/LGY07/NCMDforBash/main/ncmd.sh")
```

**使用方法(下载脚本到本地):**
```
wget https://raw.githubusercontent.com/LGY07/NCMDforBash/main/ncmd.sh
sudo chmod +x ./ncmd.sh
./ncmd.sh
```
# 网易云音乐歌曲ID查看方法

![歌曲ID获取示例](https://raw.githubusercontent.com/LGY07/NCMDforBash/main/example1.png)

# Linux

可以使用脚本自动尝试使用软件包管理器(包括dnf,pacman,apt)安装wget，仅需在`Do you want to try installing wget?`时选择`Y`

或者手动安装wget:

### Red Hat Enterprise Linux(包含Fedora,RockyOS等衍生版本,Fedora推荐不推荐方法)
>yum软件仓库
```
sudo yum install wget
```

### openSUSE(包含GeckoLinux等衍生版本)/Fedora(推荐使用此方法)
>dnf软件包管理器
```
sudo dnf install wget
```

### Arch Linux(包含Manjaro等衍生版本)
>pacman软件包管理器
```
sudo pacman -S wget
```

### Debian(包含Ubuntu,Kali等衍生版本)
>apt软件包管理器
```
sudo apt install wget
```

# Windows

Windows没有Bash，需要使用虚拟机或WSL，推荐使用[NCMDforPwsh](https://github.com/LGY07/NCMDforPwsh)而不是NCMDforBash

WSL安装方法,需要 Windows 10 版本 2004 及更高版本（内部版本 19041 及更高版本）:

1. 打开 `控制面板/程序/启动或关闭Windows功能`
2. 启用 `适用于Linux的Windows子系统`
3. 重启电脑使更改生效
4. 安装一个WSL，可以通过`Microsoft Store`或者[wsl.exe](https://docs.microsoft.com/zh-cn/windows/wsl/setup/environment)
5. 根据[Linux的wget安装教程](https://github.com/LGY07/NCMDforBash/main/README.md#linux)安装wget

# Android(Termux)

Android可以通过Termux或者UserLand等软件运行此脚本

此处以Termux为例：

1. 安装F-droid  [F-droid官网](https://f-droid.org/)
2. 从F-droid搜索并安装Termux(带有软件包管理器的版本)
3. 在Termux中安装wget,方法同[pt安装wget](https://github.com/LGY07/NCMDforBash/main/README.md#debian%E5%8C%85%E5%90%ABubuntukali%E7%AD%89%E8%A1%8D%E7%94%9F%E7%89%88%E6%9C%AC)
