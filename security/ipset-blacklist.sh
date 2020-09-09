#!/usr/bin/env bash
ipset create blacklist hash:ip
iptables -I INPUT -m set --match-set blacklist src -j DROP
blacklister(){
for ip in ${blacklisted} ; do 
ipset add blacklist $ip ;
done
}

blacklisted="
185.107.94.43
37.49.231.142
46.249.59.196
62.210.244.190
93.115.28.180
93.115.28.168
102.165.38.146
158.69.126.203
102.165.51.10
212.129.15.93
37.49.229.205
156.96.62.121
45.143.220.39
77.247.109.20
156.96.114.110
45.143.220.73
156.96.62.121
45.143.220.39
185.53.88.167
77.247.109.20
45.143.220.73
77.247.109.20
45.143.220.62
51.158.30.15
192.227.144.226
92.246.84.185
88.80.148.149
156.96.58.106
156.96.45.247
88.80.148.186
185.53.88.143
45.143.220.226
103.145.12.138
45.143.220.253
156.96.156.37
156.96.156.130
45.143.220.164
156.96.114.122
156.96.128.140
156.96.114.112
212.83.158.206
156.96.156.130
45.143.220.221
46.105.112.86
51.81.47.59
144.217.77.27
66.150.67.162
204.12.204.98
103.145.12.166
147.135.222.202
13.70.109.123
103.253.42.59
103.145.12.173
185.53.88.157
147.135.138.28
"
blacklister