
# UPDATE DEBIAN
<pre><code>apt update -y && apt upgrade -y && apt dist-upgrade -y && reboot</code></pre>
# UPDATE UBUNTU
<pre><code>apt update && apt upgrade -y && update-grub && sleep 2 && reboot</pre></code>

### INSTALL SCRIPT >2
<pre><code>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/oktaviaps/autoscriptl/main/main.sh && chmod +x main.sh && sed -i -e 's/\r$//' main.sh && screen -S main ./main.sh
</code></pre>

### UPDATE YANG AKAN DATANG 
<pre><code>wget -q https://raw.githubusercontent.com/oktaviaps/autoscript/main/update.sh && chmod +x update.sh && ./update.sh
</code></pre>
