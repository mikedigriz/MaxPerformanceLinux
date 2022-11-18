# MaxPerformanceLinux
Enable maximum cpu's freq on Linux cores

<b>Installation</b>
```
1. git clone https://github.com/mixaxdd/MaxPerformanceLinux
2. cd MaxPerformanceLinux && chmod +x cpuperformance.sh cpupowersave.sh
```
<b>Run</b>
```
sudo ./cpuperformance.sh
```
<b>Disable</b>
```
sudo ./cpupowersave.sh
```
<b>Note</b>

You can add this skript on system startup, use ```sudo crontab -e``` and add this line:
```
@reboot /home/YOUR_USERNAME/YOUR_DIR/MaxPerformanceLinux/cpupowersave.sh >>/dev/null
```
