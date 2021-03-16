# Port of HTTP(S) proxy server on the local end
# port: 7890

# Port of SOCKS5 proxy server on the local end
# socks-port: 7891

# Transparent proxy server port for Linux and macOS (Redirect TCP and TProxy UDP)
# redir-port: 7892

# Transparent proxy server port for Linux (TProxy TCP and TProxy UDP)
# tproxy-port: 7893

# HTTP(S) and SOCKS5 server on the same port
mixed-port: 57890

# authentication of local SOCKS5/HTTP(S) server
# authentication:
#  - "user1:pass1"
#  - "user2:pass2"

# Set to true to allow connections to the local-end server from
# other LAN IP addresses
allow-lan: true

# This is only applicable when `allow-lan` is `true`
# '*': bind all IP addresses
# 192.168.122.11: bind a single IPv4 address
# "[aaaa::a8aa:ff:fe09:57d8]": bind a single IPv6 address
bind-address: '*'

# Clash router working mode
# rule: rule-based packet routing
# global: all packets will be forwarded to a single endpoint
# direct: directly forward the packets to the Internet
mode: rule

# Clash by default prints logs to STDOUT
# info / warning / error / debug / silent
log-level: info

# When set to false, resolver won't translate hostnames to IPv6 addresses
ipv6: false

# RESTful web API listening address
external-controller: 127.0.0.1:9090

# A relative path to the configuration directory or an absolute path to a
# directory in which you put some static web resource. Clash core will then
# serve it at `http://{{external-controller}}/ui`.
external-ui: folder

# Secret for the RESTful API (optional)
# Authenticate by spedifying HTTP header `Authorization: Bearer ${secret}`
# ALWAYS set a secret if RESTful API is listening on 0.0.0.0
# secret: ""

# Outbound interface name
# interface-name: en0

# profile:
  # store the `select` results in $HOME/.cache
  # when two different configurations have groups with the same name, the selected values are shared
  # set false if you don't want this behavior
  # store-selected: false
  # open tracing exporter API
  # tracing: true
# Static hosts for DNS server and connection establishment (like /etc/hosts)
#
# Wildcard hostnames are supported (e.g. *.clash.dev, *.foo.*.example.com)
# Non-wildcard domain names have a higher priority than wildcard domain names
# e.g. foo.example.com > *.example.com > .example.com
# P.S. +.foo.com equals to .foo.com and foo.com
# hosts:
  # '*.clash.dev': 127.0.0.1
  # '.dev': 127.0.0.1
  # 'alpha.clash.dev': '::1'

# DNS server settings
# This section is optional. When not present, the DNS server will be disabled.
# dns:
  # enable: false
  # listen: 0.0.0.0:53
  # ipv6: false # when the false, response to AAAA questions will be empty

  # These nameservers are used to resolve the DNS nameserver hostnames below.
  # Specify IP addresses only
  # default-nameserver:
    - 114.114.114.114
    - 8.8.8.8
  # enhanced-mode: redir-host # or fake-ip
  # fake-ip-range: 198.18.0.1/16 # Fake IP addresses pool CIDR
  # use-hosts: true # lookup hosts and return IP record
  
  # Hostnames in this list will not be resolved with fake IPs
  # i.e. questions to these domain names will always be answered with their
  # real IP addresses
  # fake-ip-filter:
  #   - '*.lan'
  #   - localhost.ptlogin2.qq.com
  
  # Supports UDP, TCP, DoT, DoH. You can specify the port to connect to.
  # All DNS questions are sent directly to the nameserver, without proxies
  # involved. Clash answers the DNS question with the first result gathered.
  # nameserver:
    # - 114.114.114.114 # default value
    # - 8.8.8.8 # default value
    # - tls://dns.rubyfish.cn:853 # DNS over TLS
    # - https://1.1.1.1/dns-query # DNS over HTTPS

  # When `fallback` is present, the DNS server will send concurrent requests
  # to the servers in this section along with servers in `nameservers`.
  # The answers from fallback servers are used when the GEOIP country
  # is not `CN`.
  # fallback:
  #   - tcp://1.1.1.1

  # If IP addresses resolved with servers in `nameservers` are in the specified
  # subnets below, they are considered invalid and results from `fallback`
  # servers are used instead.
  #
  # IP address resolved with servers in `nameserver` is used when
  # `fallback-filter.geoip` is true and when GEOIP of the IP address is `CN`.
  #
  # If `fallback-filter.geoip` is false, results from `nameserver` nameservers
  # are always used if not match `fallback-filter.ipcidr`.
  #
  # This is a countermeasure against DNS pollution attacks.
  # fallback-filter:
    # geoip: true
    # ipcidr:
      # - 240.0.0.0/4
    # domain:
    #   - '+.google.com'
    #   - '+.facebook.com'
    #   - '+.youtube.com'

proxies: ~
proxy-groups: ~

rule-providers:
  LAN:
    type: http
    behavior: domain
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Lan/Lan.yaml
    path: ./Rules/Other/LAN
    interval: 86400
  Download:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Download/Download.yaml
    path: ./Rules/Other/Download
    interval: 86400
  Advertising:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Advertising/Advertising.yaml
    path: ./Rules/Advertising/Advertising
    interval: 86400
  Advertising_Domain:
    type: http
    behavior: domain
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Advertising/Advertising_Domain.yaml
    path: ./Rules/Advertising/Advertising_Domain
    interval: 86400
  AsianMedia:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/AsianMedia/AsianMedia.yaml
    path: ./Rules/Media/AsianMedia
    interval: 86400
  GlobalMedia:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/GlobalMedia/GlobalMedia.yaml
    path: ./Rules/Media/GlobalMedia
    interval: 86400
  DMM:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/DMM/DMM.yaml
    path: ./Rules/Media/DMM
    interval: 86400
  Global:
    type: Global
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Global/Global.yaml
    path: ./Rules/Other/Global
    interval: 86400
  Global_Domain:
    type: http
    behavior: domain
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Global/Global_Domain.yaml
    path: ./Rules/Other/Global_Domain
    interval: 86400

rules:
- RULE-SET,LAN,DIRECT
- RULE-SET,Download,DIRECT
- RULE-SET,Advertising,⛔️广告拦截
- RULE-SET,Advertising_Domain,⛔️广告拦截
- RULE-SET,AsianMedia,📺 港台番剧
- RULE-SET,GlobalMedia,🎥 国外媒体
- RULE-SET,DMM,🔞 DMM.R18
- RULE-SET,Global,🔰 节点选择
- RULE-SET,Global_Domain,🔰 节点选择
- GEOIP,CN,DIRECT
- MATCH,🐟 漏网之鱼
