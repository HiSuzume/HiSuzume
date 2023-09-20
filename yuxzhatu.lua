--玉仙辅助🌸HiSuzume--
print("🌸HiSuzume🌸")

--仿XS配置--
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) YsearchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast("🌸" .. qmnb[2]["name"] .. "开启失败🌸") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast("🌸" .. qmnb[2]["name"] .. "开启失败🌸") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast("🌸" .. qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据🌸") else gg.toast("🌸" .. qmnb[2]["name"] .. "开启失败🌸") end end end end
--公告--

b=gg.alert("🎀玉仙辅助感谢有你一路的陪伴🎀\n\n本辅助永远免费,正版辅助请认准江玉仙,其他都是盗版!\n\n本辅助已衰败，节哀\n\n🌸哔哩哔哩 江玉仙 制作(HiSuzume)🌸","💣一起炸图💣")--,"🌸反馈/联系我🌸")

--[[if b==2 then
  gg.alert("作者QQ:*****\n\n作者抖音:*****(已封号)\n\n作者B站:江玉仙\n\n每天晚上上线，请不要在其他时间反馈，否则会无法收到")
end]]

--检测

--gg.alert("我累了，辅助将不再维护，恢复时间不明，故此致歉\n\n你们好好过年吧，各位新年快乐！\n\n2021.12.31 🎀江玉仙🎀","🌸新年快乐，一起炸图罢🌸")

--gg.alert("源码已公开,链接:https://raw.githubusercontent.com/jiangyuxian/luas/main/rabbit.lua\n\n现已分享源码给QQ2372272305,请永远相信江玉仙制作的是正版~")

--gg.alert("最近发现有个叫浮梦修复版XE的辅助，本辅助为二改本辅助的源码而制作，并非我制作的！\n\n🌸请大家不要混淆🌸\n\n相关记录:https://b23.tv/U0cznYv")

function YuxTest()
  if gg.isVPN() then
    gg.toast("🌸出错啦!🌸")
    print("🌸出错啦!🌸")
    gg.setVisible(false)
    os.exit()
   else
    --gg.toast("🌸检测👀🌸")
  end
end

--配置--
YuxTest()
function main()
  YuxTest()
  vere="1.4.1" --声明版本号，后续可对比
  string=gg.makeRequest("https://jiangyuxian.github.io/main/").content
  if string == nil then
    print("⚙连接出现错误⚙")
    n=gg.alert("🌸无法获取公告，请重新再试🌸","🌸重连🌸","🌸退出🌸","🌸离线模式🌸")
    if n==1 then
      print(os.date("%H时%M分 重连⚙"))
      main()
     else
      if n==2 then
        print(os.date("%H时%M分 连接失败，退出⚙"))
        print("💮手动退出💮")
        os.exit()
       else
        print(os.date("%H时%M分 离线模式⚙"))
      end
    end
   else
    print("⚙连接成功⚙")
    sb = string:match("🌸当前版本：(.-)🌸")
    asp=string:match("<a>(.-)</a>")
    kg = string:match("🌸辅助状态：(.-)🌸")
    if kg == "开" then
      --[[if sb == vere then
        gg.alert("当前版本：" .. vere .. "\n\n作者公告：\n" .. asp .. "\n\n🌸感谢使用🌸","🌸进入🌸")
       else
        gg.alert("版本不一致\n\n当前：" .. vere .. "\n现在：" .. sb .."\n\n公告：\n" .. asp .. "\n\n🌸不更新可照旧使用，但可能会错过新功能🌸\n\n如需更新请去官网下载\njiangyuxian.github.io/main","🌸进入🌸")
      end]]
      --gg.alert("⚙版本：" .. vere .. "⚙\n\n作者公告：\n" .. asp .. "\n\n🌸感谢使用🌸","🌸进入🌸")
     else
      gg.alert("🌸管理员已关闭辅助，请去官网查看🌸","🌸退出🌸")
      print(os.date("%H时%M分 管理员关闭了脚本，无法进入⚙"))
      os.exit()
    end
  end
end

--main()

print("\n⚙完成连接⚙\n")

YuxTest()

--玉仙科技--

--开源，你们白嫖吧🌚🌝

print("玉仙科技已启动🌸作者：江玉仙")
print(os.date("访问时间：%H:%M:%S💣"))
print("")

if gg.getTargetInfo() == "我的世界" then
  gg.clearResults()
  gg.setRanges(262207)
  YsearchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  YsearchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("2139030018", gg.TYPE_DWORD)
  gg.clearResults()
end

a = io.open("/sdcard/Android/江玉仙.cfg", "rb") if a == nil then else
  a = io.open("/sdcard/Android/江玉仙.cfg"):read("*a") zh = a:match("🌸(.-)🌸") if a == "" then zh = "" end end
mm=gg.prompt({"🌸请输入你的迷你号🌸","详细日志","1.7.0迷你世界"},{[1] = zh,[2] = false,[3] = true},{[1] = "number",[2] = "checkbox",[3] = "checkbox"}) zh = mm[1] io.open("/sdcard/Android/江玉仙.cfg", "w") io.open("/sdcard/Android/江玉仙.cfg", "w"):write("🌸" .. zh .. "🌸"):close()
if mm[2] == true then
  log = false
  gg.alert("🌸搜索日志正在维护🌸")
end
new=mm[3]
gg.toast("🌸当前迷你号:" .. a .. "好耶!一起炸图吧!🍭️o(≧v≦)o💣🌸")
--迷你号配置--
print(os.date("🌸%H时%M分 配置完毕"))
print("当前配置迷你号：" .. zh .. "")
print("玉仙辅助欢迎您的使用💮作者🌸江玉仙\n禁止倒卖和盗源行为\n")
--主页🌸--
function Maina()
  YuxTest()
  V = gg.choice({
    "🌸辅助菜单🌸",
    "🌸快捷功能🌸",
    "🌸结束游戏🌸",
    "🌸退出🌸",
  }, nil, "姐妹们炸图罢️o(≧v≦)o\n\n该版本提升了稳定性")
  if V==1 then
    Main0a()
  end
  if V==4 then
   print(os.date("🌸%H时%M分 辅助结束"))
   print("欢迎下次使用🤗")
   print("")
   print("🌸哔哩哔哩 江玉仙 制作🌸")
   print("💮手动退出💮")
   os.exit()
  end
  if V==3 then
    gg.processKill()
  end
  if V==2 then
    fasttoola()
  end
  FX1=0
end

function Main()
  YuxTest()
  V = gg.choice({
    "🌸辅助菜单🌸",
    "🌸快捷功能🌸",
    "🌸结束游戏🌸",
    "🌸退出🌸",
  }, nil, "姐妹们炸图罢o(≧v≦)o\n\n该版本提升了稳定性")
  if V==1 then
    Main0()
  end
  if V==4 then
   print(os.date("🌸%H时%M分 辅助结束"))
   print("欢迎下次使用🤗")
   print("")
   print("🌸哔哩哔哩_江玉仙 制作🌸")
   print("💮手动退出💮")
   os.exit()
  end
  if V==3 then
    gg.processKill()
  end
  if V==2 then
    fasttool()
  end
  FX1=0
end

function Main0()
  --print(os.date("🌸%H时%M分 打开页面"))
  if new==false then
  SN = gg.choice({
    "🌸炸图类🌸",
    "🌸玩家类🌸",
    "🌸脚本类🌸",
    "🌸漏洞类🌸",
    "🌸恶心类🌸",
    "🌸战斗类🌸",
    "🌸功能类🌸",
    "🌸测试功能🌸",
    "返回主页",
  }, nil, "欢迎使用玉仙辅助🌸\n测试中\n抖音hellojyx制作 请勿用于其他游戏")
  if SN==4 then
    BUGS()
  end
  if SN==2 then
    players()
  end
  if SN==9 then
    Main()
  end
  if SN==8 then
    weilai()
  end
  if SN==1 then
    ztl()
  end
  if SN==3 then
    luas()
  end
  if SN==5 then
    exbug()
  end
  if SN==6 then
    zdmn()
  end
  if SN==7 then
    other()
  end
  FX1=0
  else
  Main0a()
  end
end

function Main0a()
  --print(os.date("🌸%H时%M分 打开页面"))
  --gg.alert("温馨提醒:此处除了炸图类和战斗类其他都未开放，一旦点击就会出错，导致脚本中断(重新连接)","🌸我知道了🌸")
  SN = gg.choice({
    "🌸炸图类🌸",
    "🌸玩家类🌸",
    "🌸脚本类🌸",
    "🌸漏洞类🌸",
    "🌸恶心类🌸",
    "🌸战斗类🌸",
    "🌸功能类🌸",
    "🌸测试功能🌸", 
    "返回主页",
  }, nil, "欢迎使用玉仙辅助🌸\n测试中\n抖音hellojyx制作 请勿用于其他游戏")
  if SN==4 then
    aBUGS()
  end
  if SN==2 then
    aplayers()
  end
  if SN==9 then
    Maina()
  end
  if SN==8 then
    weilai()
  end
  if SN==1 then
    aztl()
  end
  if SN==3 then
    luas()
  end
  if SN==5 then
    aexbug()
  end
  if SN==6 then
    azdmn()
  end
  if SN==7 then
    aother()
  end
  FX1=0
end

function aBUGS()
  --gg.alert("对不起!此页面暂未制作!","🌸返回🌸")
  --Main0a()
  BUGS()
end

function aplayers()
  players()
  --gg.alert("对不起!此页面暂未制作!","🌸返回🌸")
end

function aexbug()
  --gg.alert("对不起!此页面暂未制作!","🌸返回🌸")
  --Main0a()
  exbug()
end

function aother()
  --gg.alert("对不起!此页面暂未制作!","🌸返回🌸")
  --Main0a()
  other()
end

function aztl()
  SN = gg.choice({
    "返回主页",
    "🌸玩法强制改创造(需要房主迷你号)🌸",
    "🌸物品改黑龙爆破蛋(小心被检测)🌸",
    "🌸开发者界面(自己创造打开过)🌸", 
    "🌸(更改功能)跳转到功能类🌸",
  }, nil, "功能测试中")
  if SN==3 then
    ghlzd()
  end
  if SN==1 then
    Main0a()
  end
  if SN==2 then
    agamestoc()
  end
  if SN==5 then
    aother()
  end
  if SN==4 then
    a=gg.alert("需要两次,打开后无法手动关闭","🌸开🌸","🌸关🌸")
    if a==1 then
      qmnb = {{["memory"] = 4},{["name"] = "开发者"},{["value"] = 157614080, ["type"] = 4},{["lv"] = 2, ["offset"] = 28, ["type"] = 4},}
      qmxg = {{["value"] = 16777472, ["offset"] = 32, ["type"] = 4},}
      xqmnb(qmnb)
    end
    if a==2 then
      qmnb = {{["memory"] = 4},{["name"] = "开发者关闭"},{["value"] = 157614080, ["type"] = 4},{["lv"] = 2, ["offset"] = 28, ["type"] = 4},}
      qmxg = {{["value"] = 16777216, ["offset"] = 32, ["type"] = 4},}
      xqmnb(qmnb)
    end
    if a==nil then
      gg.toast("🌸您未选择是否!🌸")
    end
  end
  FX1=0
end

function ccccyb()
  gg.clearResults()
  gg.setRanges(16384)
  YsearchNumber("1507551267;400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  YsearchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
  end
  gg.clearResults()
end

function gamesfly()
  qmnb={{["memory"]=4},{["name"]="伪飞行"},{["value"]=-1020002304,["type"]=4},{["lv"]=-1046478848,["offset"]=-4,["type"]=4}}
  qmxg={{["value"]=16777472,["offset"]=-76,["type"]=4,["freeze"]=true}}
  xqmnb(qmnb)
  gg.clearResults()
end

function agamestoc()
  uid = gg.prompt({"请输入房主迷你号"},{[1]=1249733234},{[1]="number"})[1]
  qmnb = {{["memory"] = 4},{["name"] = "玩法改创造"},{["value"] = uid, ["type"] = 4},{["lv"] = 5, ["offset"] = -4, ["type"] = 4},}
  qmxg = {{["value"] = 4, ["offset"] = -4, ["type"] = 4},}
  xqmnb(qmnb)
  gg.clearResults()
end

function gamestoc()
  qmnb = {{["memory"] = 4},{["name"] = "第1步"},{["value"] = 1053609165, ["type"] = 4},{["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},{["lv"] = 1056964608, ["offset"] = 4, ["type"] = 4},{["lv"] = 1056964608, ["offset"] = 8, ["type"] = 4},{["lv"] = 23, ["offset"] = -16, ["type"] = 4}}
  qmxg = {{["value"] = 5, ["offset"] = -20, ["type"] = 4, ["freeze"] = true},}
  xqmnb(qmnb)
  gg.clearResults()
  local tt
  for i,v in ipairs(gg.getListItems())do
     if v.value==5 then
      tt=v.address
     break
    end
  end
  qmnb = {{["memory"] = 4},{["name"] = "玩法改创造"},{["value"] = tt, ["type"] = 4},{["lv"] = 0, ["offset"] = -4, ["type"] = 4},{["lv"] = 5, ["offset"] = 0x18, ["type"] = 4},}
  qmxg = {{["value"] = 4, ["offset"] = 0x18, ["type"] = 4},}
  gg.clearList()
  xqmnb(qmnb)
end

function BUGS()
  SN = gg.choice({
    "返回主页",
    "🌸员工炒老板(踢房主)🌸",
    "🌸员工当老板(附身房主)🌸",
    "🌸伪防踢🌸",
    "🌸员工互炒(伪房主)🌸",
    "🌸员工替身(伪员工说话)🌸",
  }, nil, "功能测试中")
  if SN==1 then
    Main0()
  end
  if SN==2 then
    ygclb()
  end
  if SN==3 then
    yghc()
  end
  if SN==4 then
    b= gg.prompt({"输入房主迷你号"},{[1]=""},{[1]="number"})[1]
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "伪防踢"},
      {["value"] = b, ["type"] = 4},
      {["lv"] = 2, ["offset"] = 44, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 3, ["offset"] = 44, ["type"] = 4},
      {["value"] = 16777472, ["offset"] = 64, ["type"] = 4},
      {["value"] = 16777216, ["offset"] = 64, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
  end
  if SN==5 then
    j = gg.prompt({"输入房主迷你号"},{[1]=""},{[1]="number"})[1]
    qmnb = {
      {["memory"] = 4},
      {["name"] = "伪房主"},
      {["value"] = j, ["type"] = 4},
      {["lv"] = 2, ["offset"] = 44, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 3, ["offset"] = 44, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
  end
  if SN==6 then
    mofangbieren()
  end
  FX1=0
end

function mofangbieren()
  gg.clearResults()
  t = gg.prompt({"请输入房主迷你号"}
  ,{[1]=0},{[1]="number"})[1]
  gg.toast("去复制要替他说话的人的迷你号，然后点击悬浮窗")
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      s = gg.prompt({"输入迷你号"}
      ,{[1]=0},{[1]="number"})[1]
      qmnb = {
        {["memory"] = 4},
        {["name"] = "模仿别人打字"},
        {["value"] =t , ["type"] = 4},
        {["lv"] = mm[1], ["offset"] = -16, ["type"] = 32},
      }
      qmxg = {
        {["value"] = s, ["offset"] = -16,["type"] = 32},
      }
      xqmnb(qmnb)
      gg.clearResults()
      break
    end
  end
end

function yghc()
  gg.clearResults()
  gg.alert("迷你号仅自动填充自己的，房主迷你号请自行复制\n有概率会出现断开连接的情况\n似乎被阉割了(不明白)")
  zh = a:match("🌸(.-)🌸")
  a = gg.prompt({"请输入你的迷你号"}
  ,{[1]=zh},{[1]="number"})[1]
  gg.toast("请在5秒内复制房主的迷你号\n点击房主头像进入主页即可复制")
  gg.sleep(5000)
  b = gg.prompt({"请输入房主迷你号"}
  ,{[1]=nil},{[1]="number"})[1]
  qmnb = {
    {["memory"] = 4},
    {["name"] = "踢房主"},
    {["value"] = a, ["type"] = 4},
    {["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
  qmxg = {
    {["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
  }
  gg.clearResults()
  Main()
end

function YXqzdz()
  gg.clearResults()
  gg.setRanges(262207)
  YsearchNumber("300.0;999.0:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  YsearchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 0}})
  end
  gg.clearResults()
end

function ygclb()
  gg.clearResults()
  --gg.alert("开启后房主将直接崩溃","开启️️")
  fmh = gg.prompt({"请输入房主迷你号"}
  ,{[1]=""},{[1]="number"})[1]
  qmnb = {
    {["memory"] = 4},
    {["name"] = "踢房主"},
    {["value"] = mm[1], ["type"] = 4},
    {["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
  qmxg = {
    {["value"] = fmh, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
  }
  xqmnb(qmnb)
end

function luas()
  SN = gg.choice({
    "返回主页",
    "CA炸图辅助",
    "小北煞神🐣",
    "安宁辅助🍓",
  }, nil, "此页面脚本基本凉了")
  if SN==1 then
    Main0()
  end
  if SN==2 then
    gg.alert("注意：连接到其它脚本后你将可能无法返回原脚本，需要手动重启(如果连接过久，请重启脚本)")
    print(os.date("🌸%H时%M分 尝试链接CA"))
    CAzhatu()
  end
  if SN==3 then
    gg.alert("注意：连接到其它脚本后你将可能无法返回原脚本，需要手动重启(如果连接过久，请重启脚本)")
    print(os.date("🌸%H时%M分 尝试链接小北煞神"))
    xbsszhatu()
  end
  if SN==4 then
    gg.alert("注意：连接到其它脚本后你将可能无法返回原脚本，需要手动重启(如果连接过久，请重启脚本)")
    print(os.date("🌸%H时%M分 尝试链接安宁辅助"))
    function DecryptionAA(Text)
      return (Text:gsub('..', function (a)
        return string.char((tonumber(a,16))%256)
      end))
    end
    pcall((load((DecryptionAA('647162623D22332E33220A7072696E742822E8B083E8AF95E4BFA1E681AFEFBC9A22290A66756E6374696F6E20696E64657828290A202067672E746F6173742822E8BF9EE68EA5E69C8DE58AA1E599A8E4B8ADEFBC8CE8AFB7E7A88DE580992E2E2E22290A20207072696E74286F732E646174652822254DE588862553E7A7925FE5BC80E5A78BE8BF9EE68EA5E69C8DE58AA1E599A82E2E2E2229290A2020616E6C3D67672E6D616B65526571756573742822687474703A2F2F7777772E6979756A692E636E2F6979756A692F732F6544566851324A46624567774F464A48544774555554426A4D457446555430392F3136333231303930353537383734313522292E636F6E74656E740A2020696620616E6C7E3D6E696C207468656E0A202020207072696E74286F732E646174652822254DE588862553E7A7925FE69C8DE58AA1E599A8E8BF9EE68EA5E68890E58A9FEFBC812229290A20202020616E6C6F3D616E6C3A6D617463682822E38090E78AB6E68081E38091282E2D29E38090E78AB6E68081E3809122290A20202020616E6C6F3D616E6C6F3A677375622822266E6273703B222C2222290A20202020616E6C6767203D20616E6C3A6D617463682822E38090E585ACE5918AE38091282E2D29E38090E585ACE5918AE3809122290A20202020616E6C67673D616E6C67673A677375622822266E6273703B222C2222290A20202020616E6C6373203D20616E6C3A6D617463682822E99885E8AFBB266E6273703B282E2D293C2F6469763E22290A20202020696620616E6C6F7E3D22E5BC8022207468656E0A2020202020207072696E74286F732E646174652822254DE588862553E7A7925FE99499E8AFAFEFBC9AE5BC80E58F91E88085E585B3E997ADE4BA86E8BE85E58AA92229290A20202020202067672E616C6572742822E5BC80E58F91E88085E585B3E997ADE4BA86E8BE85E58AA9EFBC815C6E222E2E616E6C67672C22F09F8C9EE98080E587BAF09F8C9E22290A2020202020656C73650A2020202020616E6C6778203D20616E6C3A6D617463682822E38090E78988E69CACE38091282E2D29E38090E78988E69CACE3809122290A2020202020696620616E6C67787E3D64716262207468656E0A20202020207072696E742822E6A380E6B58BE588B0E69BB4E696B0EFBC8CE8AFB7E5898DE5BE80E69BB4E696B0EFBC8CE590A6E58899E697A0E6B395E4BDBFE794A8EFBC8122290A2020202020656C73650A20202020204150503D67672E676574546172676574496E666F28290A2020202020207072696E74286F732E646174652822254DE588862553E7A7925FE5B09DE8AF95E689A7E8A18CE8849AE69CAC2E2E2E28222E2E4150502E616374697669746965735B315D2E6C6162656C2E2E22292229290A202020202020616E6C3D616E6C3A6D617463682822E38090E8849AE69CACE38091282E2D29E38090E8849AE69CACE3809122290A202020202020616E6C3D616E6C3A677375622822266E6273703B222C2222290A20202020202067672E616C65727428616E6C67672E2E225C6EE8BE85E58AA9E680BBE590AFE58AA8E6ACA1E695B0EFBC9A222E2E616E6C63732C22F09F8C9EE8BF9BE585A5E8BE85E58AA9F09F8C9E22290A2020202020207063616C6C286C6F616428616E6C29290A202020202020656E640A20202020656E640A202020656C73650A202020207072696E74286F732E646174652822254DE588862553E7A7925FE99499E8AFAFEFBC9AE69C8DE58AA1E599A8E8BF9EE68EA5E5A4B1E8B4A5EFBC8CE8AFB7E6A380E69FA5E7BD91E7BB9CEFBC812229290A20202020616E6C3D67672E616C6572742822E69C8DE58AA1E599A8E8BF9EE68EA5E5A4B1E8B4A5EFBC81222C22F09F8C9EE98080E587BAF09F8C9E222C22F09F8C9EE9878DE696B0E8BF9EE68EA5F09F8C9E22290A20202020696620616E6C3D3D32207468656E0A2020202020207072696E74286F732E646174652822254DE588862553E7A7925FE5B09DE8AF95E9878DE8BF9EE69C8DE58AA1E599A82E2E2E2229290A202020202020696E64657828290A20202020656E640A2020656E640A656E640A696E6465782829')))))
  end
  FX1=0
end

function CAzhatu()
  pcall(load(gg.makeRequest('https://vhjgsd-1303993472.cos.ap-nanjing.myqcloud.com/CA.lua').content))
end

function xbsszhatu()
  pcall(load(gg.makeRequest('http://lua.zhatu.xyz/%F0%9F%A7%8A%E5%B0%8F%E5%8C%97%E5%BC%91%E7%A5%9E%E8%84%9A%E6%9C%AC%F0%9F%A7%8A%282%29%281%29.lua').content))
end

function ztl()
  SN = gg.choice({
    "返回主页",
    "🌸玩法强制改创造🌸",
    "🌸物品改黑龙爆破蛋🌸",
    "🌸强开开发者界面🌸",
    "🌸解禁地形编辑器🌸",
    "🌸(更改功能)跳转到功能类🌸", 
  }, nil, "功能测试中")
  if SN==3 then
    ghlzd()
  end
  if SN==1 then
    Main0()
  end
  if SN==2 then
    gamestoc()
  end
  if SN== 4 then
    a=gg.alert("需要两次,打开后无法手动关闭","🌸开🌸","🌸关🌸")
    if a==1 then
      qmnb = {{["memory"] = 4},{["name"] = "开发者"},{["value"] = 157614080, ["type"] = 4},{["lv"] = 2, ["offset"] = 28, ["type"] = 4},}
      qmxg = {{["value"] = 16777472, ["offset"] = 32, ["type"] = 4},}
      xqmnb(qmnb)
    end
    if a==2 then
      qmnb = {{["memory"] = 4},{["name"] = "开发者关闭"},{["value"] = 157614080, ["type"] = 4},{["lv"] = 2, ["offset"] = 28, ["type"] = 4},}
      qmxg = {{["value"] = 16777216, ["offset"] = 32, ["type"] = 4},}
      xqmnb(qmnb)
    end
    if a==nil then
      gg.toast("🌸您未选择是否!🌸")
    end
  end
  if SN==5 then
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "解禁地形编辑器"},
      {["value"] = 1762840583, ["type"] = 4},
      {["lv"] = 265295819, ["offset"] = 4, ["type"] = 4},
      {["lv"] = 1096303249, ["offset"] = 8, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0, ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
  end
  if SN==6 then
    other()
  end
  FX1=0
end

function gamestoc()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "第1步"},
    {["value"] = 1053609165, ["type"] = 4},
    {["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},
    {["lv"] = 1056964608, ["offset"] = 4, ["type"] = 4},
    {["lv"] = 1056964608, ["offset"] = 8, ["type"] = 4},
    {["lv"] = 23, ["offset"] = -16, ["type"] = 4}
  }qmxg = {
    {["value"] = 5, ["offset"] = -20, ["type"] = 4, ["freeze"] = true},
  }xqmnb(qmnb)
  gg.clearResults()
  local tt
  for i,v in ipairs(gg.getListItems())do
    if v.value==5 then tt=v.address break end end
  qmnb = {
    {["memory"] = 4},
    {["name"] = "玩法改创造"},
    {["value"] = tt, ["type"] = 4},
    {["lv"] = 0, ["offset"] = -4, ["type"] = 4},
    {["lv"] = 5, ["offset"] = 0x18, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 4, ["offset"] = 0x18, ["type"] = 4},
  }gg.clearList()
  xqmnb(qmnb)
end

function ghlzd()
  gg.clearResults()
  gg.setRanges(4)
  YsearchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  YsearchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
  end
  gg.toast("修改成功")
  gg.clearResults()
  Main0()
end


function players()
  SN = gg.choice({
    "回到主页",
    "🌸附身玩家🌸",
  }, nil, "功能测试中")
  if SN==2 then
    HS2()
  end
  if SN==1 then
    Main0()
  end
  FX1=0
end

function HS2()
  zh = a:match("🌸(.-)🌸")
  HS2a=gg.prompt({"输入自己的迷你号"},{[1]=zh},{"number"})
  p1=HS2a[1]
  HS2b=gg.prompt({"输入别人的迷你号"},{""},{"number"})
  p2=HS2b[1]
  SN = gg.choice({
    "顺(自己改为他人)",
    "逆(他人改为自己)",
  }, nil, "功能正在测试，会出现严重问题，对战禁用")
  if SN==1 then
    gg.clearResults()
    gg.setRanges(262207)
    YsearchNumber(p1, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber(p1, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(p2, gg.TYPE_DWORD)
    gg.toast("修改成功！")
    gg.clearResults()
    Main0()
  end
  if SN==2 then
    gg.clearResults()
    gg.setRanges(262207)
    YsearchNumber(p2, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber(p2, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(p1, gg.TYPE_DWORD)
    gg.toast("修改成功！")
    gg.clearResults()
    Main0()
  end
end

function exbug()
  SN = gg.choice({
    "回到主页",
    "🌸强制进房🌸",
    "🌸解沉迷🌸",
    "🌸强制打字🌸",
    "🌸凭空捏造(取物)(1.6.0)🌸",
    "🌸强制进房2.0🌸", 
  }, nil, "功能测试中")
  if SN==6 then
    qmnb = {{["memory"] = 4},{["name"] = "强制进房"},{["value"] =4295032832 , ["type"] = 32},{["lv"] = 16777472, ["offset"] = 32, ["type"] = 32},}
    qmxg = {{["value"] = 16777216, ["offset"] = 32,["type"] = 32,["freeze"] = true},}
    xqmnb(qmnb)
    gg.clearResults()
  end
  if SN==2 then
    gg.clearResults()
    gg.setRanges(262207)
    YsearchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.alert("现在退出地图")
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        YsearchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.alert("现在再回到地图")
        while true do
          if gg.isVisible(true) then
            gg.setVisible(false)
            YsearchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            jg=gg.getResults(100)
            sl=gg.getResultCount()
            if sl>100 then sl=100 end
            for i = 1, sl do
              dzy=jg[i].address
              gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777216}})
            end
            gg.clearResults()
            break
          end
        end
        break
      end
    end
  end
  if SN==1 then
    Main0()
  end
  if SN==3 then
    anjcm()
  end
  if SN==4 then
    YXqzdz()
  end
  if SN==5 then
    gg.alert("🍓此功能参考了安宁辅助，并非个人制作🌸")
    jl=gg.prompt({"物品代码：(15056--黑龙球，10500--地形编辑器，835--炸药桶，1000--复制方块，12823--十字炸药桶，11016--钻头)","物品数量："},{[1] = "15056",[2] = "2048"},{[1] = "number",[2] = "number"})
    Aa2 = jl[1] Aa1 = jl[2]
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
    Main0()
  end
  FX1=0
end

function azdmn()
  SN = gg.choice({
    "回到主页",
    "🌸无限跳(不要跳跃)🌸",
    "🌸长臂猿🌸",
    "🌸玩法飞行🌸", 
  }, nil, "功能测试中")
  if SN==1 then
    Main0a()
  end
  if SN==2 then
    gg.clearResults()
    gg.setRanges(4)
    YsearchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
    end
    gg.toast("无限跳开启成功")
    gg.clearResults()
  end
  if SN==3 then
    ccccby()
  end
  if SN==4 then
    gamesfly()
  end
  FX1=0
end

function anjcm()
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{327680000, 0}, {16777216, 4}, }
  local tb2 = {{16777216, 4, true}, }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{327680000, 0}, {16777472, 4}, }
  local tb2 = {{16777216, 4, true}, }
  SearchWrite(tb1, tb2, dataType)
  gg.clearResults()
end

function zdmn()
  SN = gg.choice({
    "回到主页",
    "🌸无限跳(不要跳跃)🌸",
    "🌸获取炸图枪1(别人房间无效)🌸",
    "🌸获取炸图枪2(别人房间无效)🌸",
    "🌸狙击枪永不哑火🌸",
    "🌸第一格武器附魔🌸",
  }, nil, "功能测试中")
  if SN==1 then
    Main0()
  end
  if SN==2 then
    gg.clearResults()
    gg.setRanges(4)
    YsearchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
    end
    gg.toast("无限跳开启成功")
    gg.clearResults()
  end
  if SN==3 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="1"
    Aa2="12247"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
    gg.alert("🌸现在取彩弹枪，拿取后点开悬浮窗🌸","🌸好的🌸")
    gg.setVisible(false)
    while true do
      if gg.isVisible(true) then
        qmnb = {
          {["memory"] = 4},
          {["name"] = "彩蛋枪变炸图枪"},
          {["value"] = 12247, ["type"] = 4},
          {["lv"] = 12247, ["offset"] = 4, ["type"] = 4},
          {["lv"] = 9830400, ["offset"] = 72, ["type"] = 4},
          {["lv"] = 12249, ["offset"] = 140, ["type"] = 4},
        }
        qmxg = {
          {["value"] = 0, ["offset"] = 72, ["type"] = 4},
          {["value"] = 0, ["offset"] = 100, ["type"] = 4},
          {["value"] = 15056, ["offset"] = 140, ["type"] = 4},
        }
        xqmnb(qmnb)
        break
      end
    end
    Main0()
  end
  if SN==4 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="1"
    Aa2="15004"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
    gg.alert("🌸现在取狙击枪，拿取后点开悬浮窗🌸","🌸好的🌸")
    gg.setVisible(false)
    while true do
      if gg.isVisible(true) then
        A4="15056"
        qmnb = {
          {["memory"] = 4},
          {["name"] = "狙击枪变炸图枪"},
          {["value"] = 1155186688, ["type"] = 4},
          {["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},
          {["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},
        }
        qmxg = {
          {["value"] = A4, ["offset"] = 24, ["type"] = 4},
          {["value"] = 1, ["offset"] = 20, ["type"] = 4},
          {["value"] = 0, ["offset"] = -28, ["type"] = 16},
          {["value"] = 0, ["offset"] = -44, ["type"] = 16},
        }
        xqmnb(qmnb)
        break
      end
    end
  end
  if SN==5 then
    local memory = 4
    local array = {
      {["lv"] = -2117, ["type"] = 2},
      {["lv"] = 1, ["hv"] = 10000, ["offset"] = 68, ["type"] = 2},
    }
    local isok, data = app.memorysearch(memory, array)
    if isok then
      for i = 1, #data do
        app.memorywrite(data[i] + 68, 2, 32000)
      end
    end
  end
  if SN==6 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一格武器附魔"},
      {["value"] = 945804461, ["type"] = 4},
      {["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 20000, ["offset"] = 4, ["type"] = 4},
      {["value"] = 5, ["offset"] = 8, ["type"] = 4},
      {["value"] = 505, ["offset"] = 12, ["type"] = 4},
      {["value"] = 605, ["offset"] = 16, ["type"] = 4},
      {["value"] = 1005, ["offset"] = 20, ["type"] = 4},
      {["value"] = 1105, ["offset"] = 24, ["type"] = 4},
      {["value"] = 705, ["offset"] = 28, ["type"] = 4},
    }
    xqmnb(qmnb)
  end
  FX1=0
end

function other()
  SN = gg.choice({
    "返回主页",
    "🌸自定义更改物品🌸",
    "🌸木棒更改黑龙爆蛋🌸",
    "🌸能量剑更改地形编辑器🌸",
    "🌸仙人掌更改炸药桶🌸",
    "🌸木棒改岩浆(推荐√)🌸",
  }, nil, "此页面功能全部通用，但1.7.0可能会被检测到")
  if SN==3 then
    --a=gg.prompt({"输入被更改物品的代码(默认木棒)"},{"12001"},{"number"})
    gg.clearResults()
    gg.setRanges(4)
    YsearchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
    end
    gg.toast("自定义更改修改成功")
    gg.clearResults()
  end
  if SN==1 then
    Main0()
  end
  if SN==2 then
    a=gg.prompt({"输入被更改物品的代码\n木棒12001 红土233"},{""},{"number"})
    b=gg.prompt({"输入要更改的代码\n10500地形编辑器 834炸药桶 12005能量剑"},{""},{"number"})
    gg.clearResults()
    gg.setRanges(100000)
    YsearchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = b}})
    end
    gg.toast("自定义更改修改成功")
    gg.clearResults()
  end
  if SN==4 then
    gg.clearResults()
    gg.setRanges(262207)
    YsearchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
    end
    gg.toast("修改成功！")
    gg.clearResults()
  end
  if SN==5 then
    --a=gg.prompt({"输入被更改物品的代码(默认木棒)"},{"12001"},{"number"})
    reddirt()
  end
  if SN==6 then
    --gg.alert("技术不足，尚未制作...🌸")
    gg.clearResults()
    gg.setRanges(4)
    YsearchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 6}})
    end
    gg.toast("自定义更改修改成功")
    gg.clearResults()
  end
  FX1=0
end

function reddirt()
  gg.clearResults()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "仙人掌改TNT"},
    {["value"] = 1731093611, ["type"] = 4},
    {["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
    {["lv"] = 242, ["offset"] = 260, ["type"] = 4},
    {["lv"] = 12, ["offset"] = 300, ["type"] = 4},
    {["lv"] = 100, ["offset"] = 316, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 835, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

  }
  xqmnb(qmnb)
  gg.clearResults()
end

function fasttool()
  YuxTest()
  SN = gg.choice({
    "返回主页",
    "🌸获取基岩🌸",
    "🌸获取爆爆蛋🌸",
    "🌸获取黑龙蛋🌸",
    "🌸玩法改创造🌸",
    "🌸获取狙击枪🌸",
    "🌸获取子弹🌸",
    "🌸获取火箭背包🌸",
    "🌸获取地形编辑器+创造🌸",
    "🌸获取能量剑+长臂猿🌸",
    "🌸长臂猿🌸",
    "🌸玩法飞行🌸",
  }, nil, "常用功能项")
  if SN==2 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="2048"
    Aa2="1"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
  end
  if SN==1 then
    Main()
  end
  if SN==3 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="2048"
    Aa2="13109"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
  end
  if SN==4 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="2048"
    Aa2="15056"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
  end
  if SN==5 then
    gamestoc()
  end
  if SN==6 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="1"
    Aa2="15004"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
  end
  if SN==7 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="2048"
    Aa2="15003"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
  end
  if SN==8 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="1"
    Aa2="12253"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
    a=gg.alert("需要对道具进行解锁吗","🌸是🌸","🌸否🌸")
    if a==1 then
      gg.clearResults()
      gg.setRanges(262207)
      YsearchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      YsearchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      jg=gg.getResults(100)
      sl=gg.getResultCount()
      if sl>100 then
        sl=100
      end
      for i = 1, sl do
        dzy=jg[i].address
        gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
      end
      gg.clearResults()
    end
  end
  if SN==9 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="1"
    Aa2="10500"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
    gamestoc()
  end
  if SN==10 then
    qmnb = {
      {["memory"] = 4},
      {["name"] = "第一步"},
      {["value"] = 1124859904, ["type"] = 4},
      {["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
      {["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
      {["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
      {["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
      {["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
      {["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
    }
    qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
    xqmnb(qmnb)
    Aa1="1"
    Aa2="12005"
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "凭空捏造"},
      {["value"] = 11012, ["type"] =4},
      {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
      {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
      {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
    }
    qmxg = {
      {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
      {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

      {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
      {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
      {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
      {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    YsearchNumber("1507551267;400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
    end
    gg.clearResults()
  end
  if SN==11 then
    gg.clearResults()
    gg.setRanges(16384)
    YsearchNumber("1507551267;400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
    end
    gg.clearResults()
  end
  if SN==12 then
    gamesfly()
  end
  FX1=0
end

function fasttoola()
  YuxTest()
  SN = gg.choice({
    "返回主页",
    "🌸长臂猿🌸",
    "🌸无限跳🌸",
    "🌸解锁火箭背包🌸",
    "🌸玩法飞行🌸",
    "🌸玩法改创造(需要房主迷你号)🌸",
  }, nil, "常用功能项")
  if SN==1 then
    Maina()
  end
  if SN==3 then
    gg.clearResults()
    gg.setRanges(4)
    YsearchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then
      sl=100
    end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
    end
  end
  if SN==4 then
    gg.clearResults()
    gg.setRanges(262207)
    YsearchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    YsearchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then
      sl=100
    end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
    end
    gg.clearResults()
  end
  if SN==2 then
    ccccyb()
  end
  if SN==5 then
    gamesfly()
  end
  if SN==6 then
   agamestoc()
  end
  FX1=0
end

function weilai()
  SN = gg.choice({
    "回到主页",
    "🌸冻结血量(要死一次)🌸", 
    "🌸清理冻结数据🌸", 
  }, nil, "功能测试中")
  if SN==1 then
    Main()
  end
  if SN==3 then
    gg.clearList()
  end
  if SN==2 then
  gg.clearResults()
    YsearchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.toast("🌸请尝试死一次，打开悬浮窗🌸")
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
gg.refineNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "100.0"
		v.freeze = true
	end
end
gg.addListItems(t)
gg.alert("离开游戏后记得清理冻结数据哦","🌸好的🌸")
t = nil
gg.clearResults()
break
end
end
  end
  FX1=0
end

function YsearchNumber(n, type, ft, sign, r, s)
  --[[local waring = "🌸已检测到窥码行为，因此出现此状况！🌸"
  gg.setVisible(false)]]
  gg.searchNumber(n, type, ft, sign, r, s)
  --[[gg.toast("🌸反检测运行中,请勿点击...🌸")
  if gg.isVisible(true) then
    gg.setVisible(false)
    gg.processKill()
    print(warning)
    gg.alert("🌸违规行为🌸","🌸我要作死🌸")
    while true do
      gg.setVisible(false)
      print("🌸反log,作死你就趋势罢🌸")
      gg.alert("🌸再也别想关了🌸","🌸焯🌸")
    end
  end]]
end

while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    FX1 = nil
  end
  if FX1 == nil then
    YuxTest()
    V=0
    if new == false then
      Main()
     else
      Maina()
    end
  end
end