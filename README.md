# MaxPerformanceLinux
Enable maximum cpu's freq on Linux cores. 

<b>Installation</b>
```
git clone https://github.com/mikedigriz/MaxPerformanceLinux
cd MaxPerformanceLinux && chmod +x cpuperformance.sh cpupowersave.sh
./cpuperformance.sh
```

<b>Note</b>

Make sure that you run only as root. Otherwise, the changes are not applied.

You can add this skript on system startup, use ```sudo crontab -e``` and add this line:
```
@reboot /home/YOUR_USERNAME/YOUR_DIR/MaxPerformanceLinux/cpuperformance.sh >>/dev/null
```
