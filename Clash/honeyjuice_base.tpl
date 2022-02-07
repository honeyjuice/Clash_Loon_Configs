mixed-port: 57890
port: 57891
socks-port: 57892
allow-lan: true
mode: rule
log-level: info
ipv6: false

dns:
  enable: true
  listen: 0.0.0.0:6653
  ipv6: false
  enhanced-mode: redir-host
  default-nameserver:
    - 119.29.29.29
    - 223.5.5.5
  nameserver:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
  fallback:
    - tls://one.one.one.one:853
    - tls://dns.google:853
    - https://dns.adguard.com/dns-query
    
proxy-groups: ~
rule-providers:
  🖥本地网络:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Lan/Lan.yaml
    path: ./Rules/Other/LAN.yaml
    interval: 86400
  📥下载:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Download/Download.yaml
    path: ./Rules/Other/Download.yaml
    interval: 86400
  📥PT下载:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/PrivateTracker/PrivateTracker.yaml
    path: ./Rules/Other/PrivateTracker.yaml
    interval: 86400
  ⛔️广告拦截:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/AdvertisingLite/AdvertisingLite.yaml
    path: ./Rules/Advertising/Advertising.yaml
    interval: 86400
  ⛔️广告拦截域名:
    type: http
    behavior: domain
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/AdvertisingLite/AdvertisingLite_Domain.yaml
    path: ./Rules/Advertising/Advertising_Domain.yaml
    interval: 86400
  🛑反劫持:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Hijacking/Hijacking.yaml
    path: ./Rules/Advertising/Hijacking.yaml
    interval: 86400
  🛡️隐私防护:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Privacy/Privacy.yaml
    path: ./Rules/Advertising/Privacy.yaml
    interval: 86400
  🛡️隐私防护域名:
    type: http
    behavior: domain
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Privacy/Privacy_Domain.yaml
    path: ./Rules/Advertising/Privacy_Domain.yaml
    interval: 86400
  Ⓜ️微软服务:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Microsoft/Microsoft.yaml
    path: ./Rules/Microsoft/Microsoft.yaml
    interval: 86400
  🍎苹果服务:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Apple/Apple.yaml
    path: ./Rules/Apple/Apple.yaml
    interval: 86400
  🕹Steam:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Steam/Steam.yaml
    path: ./Rules/Game/Steam.yaml
    interval: 86400
  🎲Epic:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Epic/Epic.yaml
    path: ./Rules/Game/Epic.yaml
    interval: 86400
  🎮游戏平台:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Game/Game.yaml
    path: ./Rules/Game/Game.yaml
    interval: 86400
  📽哔哩哔哩:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/BiliBili/BiliBili.yaml
    path: ./Rules/Media/BiliBili.yaml
    interval: 86400
  📺亚洲媒体:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/AsianMedia/AsianMedia.yaml
    path: ./Rules/Media/AsianMedia.yaml
    interval: 86400
  🎥国外媒体:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/GlobalMedia/GlobalMedia.yaml
    path: ./Rules/Media/GlobalMedia.yaml
    interval: 86400
  🔞DMM:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/honeyjuice/Clash_Loon_Configs@main/Clash/Rule/DMM.yaml
    path: ./Rules/Media/DMM.yaml
    interval: 86400
  🎧Spotify:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Spotify/Spotify.yaml
    path: ./Rules/Media/Spotify.yaml
    interval: 86400
  🎞️Netflix:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Netflix/Netflix.yaml
    path: ./Rules/Media/Netflix.yaml
    interval: 86400    
  🛒阿里巴巴:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Alibaba/Alibaba.yaml
    path: ./Rules/Media/Alibaba.yaml
    interval: 86400
  🛒阿里巴巴域名:
    type: http
    behavior: domain
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Alibaba/Alibaba_Domain.yaml
    path: ./Rules/Media/Alibaba_Domain.yaml
    interval: 86400
  🚀代理:
    type: http
    behavior: classical
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Global/Global.yaml
    path: ./Rules/Other/Global.yaml
    interval: 86400
  🚀代理域名:
    type: http
    behavior: domain
    url: https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Global/Global_Domain.yaml
    path: ./Rules/Other/Global_Domain.yaml
    interval: 86400

rules:
- RULE-SET,🖥本地网络,DIRECT
- RULE-SET,🛑反劫持,⛔️ 广告拦截
- RULE-SET,⛔️广告拦截,⛔️ 广告拦截
- RULE-SET,⛔️广告拦截域名,⛔️ 广告拦截
- RULE-SET,🛡️隐私防护,🛡️ 隐私防护
- RULE-SET,🛡️隐私防护域名,🛡️ 隐私防护
- RULE-SET,🛒阿里巴巴,DIRECT
- RULE-SET,🛒阿里巴巴域名,DIRECT
- RULE-SET,🔞DMM,🔞 DMM.R18
- RULE-SET,🎧Spotify,🎧 Spotify
- RULE-SET,🎞️Netflix,🎞️ Netflix
- RULE-SET,📽哔哩哔哩,📽 哔哩哔哩
- RULE-SET,🕹Steam,🕹 Steam
- RULE-SET,🎲Epic,🎲 Epic
- RULE-SET,📥下载,📥 PT下载
- RULE-SET,📥PT下载,📥 PT下载
- RULE-SET,Ⓜ️微软服务,Ⓜ️ 微软服务
- RULE-SET,🍎苹果服务,🍎 苹果服务
- RULE-SET,🎮游戏平台,🎮 游戏平台
- RULE-SET,📺亚洲媒体,📺 港台番剧
- RULE-SET,🎥国外媒体,🎥 国外媒体
- RULE-SET,🚀代理,🔰 节点选择
- RULE-SET,🚀代理域名,🔰 节点选择
- GEOIP,CN,DIRECT
- MATCH,🐟 漏网之鱼
