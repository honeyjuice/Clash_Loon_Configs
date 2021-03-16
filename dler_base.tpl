mixed-port: 57890
port: 57891
socks-port: 57892
allow-lan: true
mode: rule
log-level: info
external-controller: 127.0.0.1:6170
secret: ''
ipv6: true

proxies: ~
proxy-groups: ~
rule-providers:
  LAN:
    type: http
    behavior: classical
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
    type: http
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
