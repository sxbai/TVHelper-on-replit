tag1=$(wget -qO- -t1 -T2 "https://api.github.com/repos/sec-an/TVHelper/releases/latest" | jq -r '.tag_name')
wget -O TVHelper_Linux_x86_64.tar.gz https://github.com/sec-an/TVHelper/releases/download/${tag1}/TVHelper_Linux_x86_64.tar.gz \
&& tar -zxvf TVHelper_Linux_x86_64.tar.gz
chmod +x TVHelper && rm -rf TVHelper_Linux_x86_64.tar.gz
./TVHelper