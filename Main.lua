local v=true local y,t=game,workspace local e,d,b,a=CFrame,Vector3,Vector2,UDim2 local c,s,p,I,P,J=string,math,table,Color3,tonumber,tostring local M=e.new local a=M()local k=d.new local a=k()local U=b.new local a=U()local u=setmetatable local a=getmetatable local i,N=type,typeof local n=Instance local h=Drawing or drawing local j=mousemoverel local f=getrawmetatable local d=setreadonly local e=newcclosure local o=readfile local g=writefile local b=appendfile local A,a=v and warn or function()end,v and print or function()end local a={j,h,f,d,o,g,b,e}for a,a in pairs(a)do if a==nil then A("Your exploit is not supported (may consider purchasing a better one?)!")return end end local e e=u({Get=function(a,b)if e[b]then return e[b]end local a=y:GetService(b)if a then e[b]=a end return a end},{__index=function(a,a)local b=y:GetService(a)if b then e[a]=b end return b end})local d={}local function D(b,a)local a=b:Connect(a)p.insert(d,a)return a end local x=e.Players local l=e.RunService local b=e.HttpService local f=e.UserInputService local function a(a)return b:JSONEncode(a)end local function a(a)return b:JSONDecode(a)end local function b(a)return pcall(function()return o(a)end)end local function e(a,b)local c=a for a,b in pairs(b)do c[a]=b end return c end local F=x.LocalPlayer local G=F:GetMouse()local Q=t.CurrentCamera local w=n.new("Part").FindFirstChild local K=F.Character local z=K and w(K,"HumanoidRootPart")or K.PrimaryPart D(F.CharacterAdded,function(a)K=a wait(.1)z=K and w(K,"HumanoidRootPart")or K.PrimaryPart end)D(F.CharacterRemoving,function()K=nil z=nil end)local a=tick()..s.random(1,100000)..s.random(1,100000)if shared.ah8 and shared.ah8.close and shared.ah8.uid~=a then shared.ah8:close()end A("AH8_MAIN : Running script...")local r={}local O={}local a={}local V={}local C=loadstring(y:HttpGet("https://pastebin.com/raw/3hREvLEU",false))()local W={}local H={}local R={}local E={}local T={}local S={}local L={}local B={enabled=true}do local b=i local a=coroutine local d=a.create local c=a.resume local function a(a,...)c(d(a),...)end function r.new(a)local c=a or{}local e=0 local d={}function c:connect(c)if b(c)~="function"then return end e=e+1 local a=e d[e]=c local b=true local function a()if b~=true then return end b=false d[e]=nil end return a end local function a(...)for a,a in pairs(d)do a(...)end end return a,c end end do local e=x.GetPlayers local a=Q.GetPartsObscuringTarget local a=Q.WorldToViewportPoint local a=Q.WorldToScreenPoint local b=Ray.new local f=t.FindPartOnRayWithIgnoreList local function d(e,a,c)local h=a or{}local i,b,d,g=f(t,e,h)while i and c do local a,c=c(i)if not a then break end if c then p.insert(h,c)else p.insert(h,i)end i,b,d,g=f(t,e,h)end return i,b,d,g end function O.isalive(c,b)if c==nil then return end local d,a if b~=nil then d,RootPart=c,b else d=c.Character RootPart=d and(d:FindFirstChild("HumanoidRootPart")or d.PrimaryPart)end if d and RootPart then local a=d:FindFirstChildOfClass("Humanoid")if RootPart and a then if a.Health>0 then return true end end end return false end function O.isvisible(f,c,a,...)local e=c.Position local g=Q.CFrame.p local c=(g-e).Magnitude local b=b(g,(e-g).unit*c)local c=0 local a=d(b,{K,...,cam},function(b)if b.CanCollide~=false then c=c+1 return c<a end if b:IsDescendantOf(f)then return end return true end)return a==nil and true or a:IsDescendantOf(f),c end function O.sameteam(b,a)local a=a or F return(b.Team~=nil and b.Team==a.Team)and b.Neutral==false or false end function O.getDistanceFromMouse(b)local a=a(Q,b)if a.Z>0 then return(U(G.X,G.Y)-U(a.X,a.Y)).Magnitude end return 9999 end function O.getClosestMouseTarget(i)local b,d=nil,i.fov or s.huge local c for a,e in pairs(e(x))do if(F~=e and(i.ignoreteam==true and O.sameteam(e)==false or i.ignoreteam==false))then local h=e.Character if h then local g=w(h,i.name or"HumanoidRootPart")or w(h,"HumanoidRootPart")if g then local f=true if f then if i.checkifalive then local a=O.isalive(h,g)if not a then f=false end end end if f then local a=true if i.ignorewalls==false then local a=O.isvisible(h,g,(i.maxobscuringparts or 0))if not a then f=false end end end if f then local a=O.getDistanceFromMouse(g:GetRenderCFrame().p)if d>a then d=a b=g c=e end end end end end end return b,d,c end function O.getClosestTarget(f)local b,d=nil,s.huge if z then for a,a in pairs(e(x))do if(F~=a)and(f.ignoreteam==true and O.sameteam(a)==false or f.ignoreteam==false)then local a=a.Character if a then local e=w(a,f.name or"HumanoidRootPart")or w(a,"HumanoidRootPart")if e then local c=true if f.ignorewalls==false then local a,b=O.isvisible(a,e,(f.maxobscuringparts or 0))if b<=(f.maxobscuringparts or 0)then c=a end end if c then local a=(z.Position-e.Position).Magnitude if d>a then d=a b=e end end end end end end end return b,d end end local m local q do local function n(g,d)local e,a,h,b,f=16,"0123456789ABCDEF","",0,nil while g>0 do b=b+1 g,f=s.floor(g/e),g%e+1 h=c.sub(a,f,f)..h end if d then h=('0'):rep(d-#h)..h end return h end local function j(a)return P(a,16)end local l={["nil"]="0";["boolean"]="1";["number"]="2";["string"]="3";["table"]="4";["Vector3"]="5";["CFrame"]="6";["Instance"]="7";["Color3"]="8"}local d=(function()local c={}for a,b in pairs(l)do c[b]=a end return c end)()local g=N or i local function c(b,...)local a=g(b)local d=l[a]local e=''if a=="nil"then e=l[a].."0"elseif a=="boolean"then local a=b==true and'1'or'0'e=d..a elseif a=="number"then local b=J(b)local a=#b e=d..a.."."..b elseif a=="string"then local b=b local a=#b e=d..a.."."..b elseif a=="Vector3"then local c,b,a=J(b.X),J(b.Y),J(b.Z)local a=n(#c,2)..c..n(#b,2)..b..n(#a,2)..a e=d..a elseif a=="CFrame"then local a={b:GetComponents()}local b=''for a,a in pairs(a)do local a=J(a)b=b..n(#a,2)..a end e=d..b elseif a=="Color3"then local a={b.R,b.G,b.B}local b=''for a,a in pairs(a)do local a=J(a)b=b..n(#a,2)..a end e=d..b elseif a=="table"then return m(b,...)end return e end local function f(c,a)local e=0 local function f(a)a=a or 1 e=e+a return c:sub(e-a+1,e)end local function b(a)local b=""while e<#c do if c:sub(e+1,e+1)==a then break else b=b..f()end end return b end local c=d[f()]local d if c=="nil"then f()elseif c=="boolean"then local a=f()d=a=="1"and true or false elseif c=="number"then local a=P(b("."))local a=f(a+1):sub(2,-1)d=P(a)elseif c=="string"then local a=P(b("."))local a=f(a+1):sub(2,-1)d=a elseif c=="Vector3"then local function a()local a=j(f(2))local a=f(P(a))return P(a)end local a,c,b=a(),a(),a()d=Vector3.new(a,c,b)elseif c=="CFrame"then local c={}for b=1,12 do local a=j(f(2))local a=f(P(a))c[b]=P(a)end d=CFrame.new(unpack(c))elseif c=="Instance"then local b=j(f(2))d=a[P(b)]elseif c=="Color3"then local c={}for b=1,3 do local a=j(f(2))local a=f(P(a))c[b]=P(a)end d=I.new(unpack(c))end return d end function m(d,a)if d==nil then return end local b=g(d)if b=="table"then local k={}local b=l[b]local j=""local m=a or 0 for h,i in pairs(d)do local e,d local a,b=g(h),g(i)local f,g if a=="Instance"then m=m+1 k[m]=h e=l[a]..n(m,2)else e,f=c(h,m)if f then for b,a in pairs(f)do k[b]=a end end end if b=="Instance"then m=m+1 k[m]=i d=l[b]..n(m,2)else d,g=c(i,m)if g then for a,b in pairs(g)do k[a]=b end end end j=j..e..d end return b..#j.."."..j,k elseif b=="Instance"then return l[b]..n(1,2),{d}else return c(d),{}end end function q(c,h)if c==nil then return end h=h or{}local a=d[c:sub(1,1)]if a=="table"then local i=0 local function k(a)a=a or 1 i=i+a return c:sub(i-a+1,i)end local function b(a)local b=""while i<#c do if c:sub(i+1,i+1)==a then break else b=b..k()end end return b end local a=P(b("."):sub(2,-1))k()local c={}local e=0 while i<=a do e=e+1 local function a()local e local c=k()local a=d[c]if a=="nil"then e=f(c..k())elseif a=="boolean"then e=f(c..k())elseif a=="number"then local a=b(".")local b=c..a..k()local a=k(P(a))b=b..a e=f(b)elseif a=="string"then local a=b(".")local b=c..a..k()local a=k(P(a))b=b..a e=f(b)elseif a=="Vector3"then local function a()local a=j(k(2))local a=k(P(a))return P(a)end local a,b,c=a(),a(),a()e=Vector3.new(a,b,c)elseif a=="CFrame"then local c={}for b=1,12 do local a=j(k(2))local a=k(P(a))c[b]=P(a)end e=CFrame.new(unpack(c))elseif a=="Instance"then local a=j(k(2))e=h[P(a)]elseif a=="Color3"then local c={}for b=1,3 do local a=j(k(2))local a=k(P(a))c[b]=P(a)end e=I.new(unpack(c))elseif a=="table"then local a=b(".")local a=c..a..k()..k(P(a))e=q(a,h)end return e end local b=a()local a=a()c[(g(b)~="nil"and b or e)]=a end return c elseif a=="Instance"then local a=P(j(c:sub(2,3)))return h[a]else return f(c,h)end end end do V.fileName="AimHot_v8_settings.txt"V.saved={}function V:Get(d,a)local b={}local c=V.saved[d]if c==nil and a~=nil then c=a V.saved[d]=c V:Set(d,c)end b.Value=c function b:Set(a)b.Value=a V.saved[d]=a V:Set(d,a)end return b end function V:Set(c,b)local a=V.saved[c]V.saved[c]=b return a end function V:Save()local a=V:GetAll()or{}local a=e(a,V.saved)local a=m(a)g(V.fileName,a)end function V:GetAll()if not b(V.fileName)then return end local a=o(V.fileName)local b pcall(function()b=q(a)end)return b end function V:Load()if not b(V.fileName)then return end local a=o(V.fileName)local b pcall(function()b=q(a)end)if b then b=e(V.saved,b)end V.saved=b return b end V:Load()end do local d={}d.ignoreteam=V:Get("aimbot.ignoreteam",true)d.sensitivity=V:Get("aimbot.sensitivity",.5)d.locktotarget=V:Get("aimbot.locktotarget",true)d.checkifalive=V:Get("aimbot.checkifalive",true)d.ignorewalls=V:Get("aimbot.ignorewalls",true)d.maxobscuringparts=V:Get("aimbot.maxobscuringparts",0)d.enabled=V:Get("aimbot.enabled",false)d.keybind=V:Get("aimbot.keybind","MouseButton2")d.presstoenable=V:Get("aimbot.presstoenable",true)d.fovsize=V:Get("aimbot.fovsize",400)d.fovenabled=V:Get("aimbot.fovenabled",true)d.fovsides=V:Get("aimbot.fovsides",10)d.fovthickness=V:Get("aimbot.fovthickness",1.5)W.fovshow=d.fovenabled.Value u(W,{__index=function(a,a)if d[a]~=nil then local a=d[a]if N(a)=="table"then return N(a)=="table"and a.Value else return a end end A(("AH8_ERROR : AimbotSettings : Tried to index %s"):format(J(a)))end;__newindex=function(a,c,b)if N(b)~="function"then if d[c]then local a=d[c]if N(a)~="table"then d[c]=b return elseif a.Set then a:Set(b)return end end end rawset(a,c,b)end})local b=Q.WorldToScreenPoint local h,d,e=nil,nil,nil local c=false local g=false D(f.InputBegan,function(b,a)if W.enabled==false then return end if W.presstoenable then W.fovshow=true else W.fovshow=g==true end if a then return end local a=b.KeyCode==Enum.KeyCode.Unknown and b.UserInputType or b.KeyCode if a.Name==W.keybind then if W.presstoenable then g=true W.fovshow=true else g=not g W.fovshow=g==true end end end)D(f.InputEnded,function(a)if W.enabled==false then g=false W.fovshow=false end if W.presstoenable then W.fovshow=true else W.fovshow=g==true end local a=a.KeyCode==Enum.KeyCode.Unknown and a.UserInputType or a.KeyCode if a.Name==W.keybind then if W.presstoenable then g=false end end end)local function a()end local function a(a)if c then return end local a=b(Q,a)j((a.X-G.X)*W.sensitivity,(a.Y-G.Y)*W.sensitivity)end function W.step()if c or W.enabled==false or g==false or K==nil or K:IsDescendantOf(y)==false then if h or e then h,e,d=nil,nil,d end return end if W.locktotarget==true then if h==nil or h:IsDescendantOf(y)==false or e==nil or e.Parent==nil or e.Character==nil or e.Character:IsDescendantOf(y)==false then h,d,e=O.getClosestMouseTarget({ignoreteam=W.ignoreteam;ignorewalls=W.ignorewalls;maxobscuringparts=W.maxobscuringparts;name='Head';fov=W.fovsize;checkifalive=W.checkifalive})else local b=false if b==false and not(W.ignoreteam==true and O.sameteam(e)==false or W.ignoreteam==false)then b=true end local a=true if b==false and W.ignorewalls==false then local a=O.isvisible(h.Parent,h,(W.maxobscuringparts or 0))if not a then b=true end end if b==false and W.checkifalive then local a=O.isalive(character,part)if not a then b=true end end if b then h,d,e=O.getClosestMouseTarget({ignoreteam=W.ignoreteam;ignorewalls=W.ignorewalls;maxobscuringparts=W.maxobscuringparts;name='Head';fov=W.fovsize;checkifalive=W.checkifalive})end end else h=O.getClosestMouseTarget({ignoreteam=W.ignoreteam;ignorewalls=W.ignorewalls;maxobscuringparts=W.maxobscuringparts;name='Head';fov=W.fovsize;checkifalive=W.checkifalive})end if h then a(h:GetRenderCFrame().Position)end end function W:End()c=true h=nil end end do local c=p.insert local d=h.new local e={}function clearDrawn()for b,a in pairs(e)do pcall(function()a:Remove()end)e[b]=nil end e={}end function newdrawing(a,b)local d=d(a)for b,a in pairs(b)do d[b]=a end c(e,d)return d end end do local d={}d.enabled=V:Get("crosshair.enabled",true)d.size=V:Get("crosshair.size",40)d.thickness=V:Get("crosshair.thickness",1)d.color=I.fromRGB(255,0,0)d.transparency=V:Get("crosshair.transparency",.1)u(R,{__index=function(a,a)if d[a]~=nil then local a=d[a]if N(a)=="table"then return N(a)=="table"and a.Value else return a end end A(("AH8_ERROR : CrosshairSettings : Tried to index %s"):format(J(a)))end;__newindex=function(a,c,b)if N(b)~="function"then if d[c]then local a=d[c]if N(a)~="table"then d[c]=b return elseif a.Set then a:Set(b)return end end end rawset(a,c,b)end})local f local e local d=t.CurrentCamera local a=d.ViewportSize local c=false local function b()if c then return R:Remove()end if f~=nil or e~=nil then return end local a={Visible=true;Transparency=(1-R.transparency);Thickness=R.thickness;Color=R.color}if R.enabled~=true then a.Visible=false end local b,c=newdrawing("Line",a),newdrawing("Line",a)if a.Visible then local a=d.ViewportSize/2 local d=R.size/2 local e,a=a.X,a.Y b.From=U(e-d,a)b.To=U(e+d,a)c.From=U(e,a-d)c.To=U(e,a+d)end f=b e=c end local function a()if c then return end if f==nil or e==nil then return b()end local a=R.enabled f.Visible=a e.Visible=a if a then local a=d.ViewportSize/2 local b=R.size/2 local c,d=a.X,a.Y local a=R.color f.Color=a e.Color=a local a=(1-R.transparency)f.Transparency=a e.Transparency=a local a=R.thickness f.Thickness=a e.Thickness=a f.From=U(c-b,d)f.To=U(c+b,d)e.From=U(c,d-b)e.To=U(c,d+b)end end function R:Remove()if f~=nil then f:Remove()f=nil end if e~=nil then e:Remove()e=nil end end function R:End()c=true if f~=nil then f:Remove()f=nil end if e~=nil then e:Remove()e=nil end R.enabled=false end R.step=a end do local d={}d.enabled=V:Get("tracers.enabled",false)d.origin=U(Q.ViewportSize.X/2,Q.ViewportSize.Y)d.fromMouse=V:Get("tracers.frommouse",true)d.transparency=.6 d.thickness=1.5 d.showteam=V:Get("tracers.showteam",false)d.drawdistance=V:Get("tracers.drawdistance",4000)d.enemycolor=I.fromRGB(255,0,0)d.teamcolor=I.fromRGB(0,255,0)u(S,{__index=function(a,a)if d[a]~=nil then local a=d[a]if N(a)=="table"then return N(a)=="table"and a.Value else return a end end A(("AH8_ERROR : TracersSettings : Tried to index %s"):format(J(a)))end;__newindex=function(a,c,b)if N(b)~="function"then if d[c]then local a=d[c]if N(a)~="table"then d[c]=b return elseif a.Set then a:Set(b)return end end end rawset(a,c,b)end})local a=Q.WorldToViewportPoint local c=false local g={}local function b(b,a)if c then return end if b==nil then return end if g[b]then return g[b]end local c={Color=S.enemycolor;Thickness=S.thickness;Transparency=1-S.transparency;Visible=true}if a then for a,b in pairs(a)do c[a]=b end end local a=newdrawing("Line",c)g[b]=a return a end local f={}function S:Draw(h)if c then return end if h==nil then return end if S.enabled~=true then return S:Remove(h)end if h.Character==nil then return S:Remove(h)end local d=(h.Team~=nil and h.Team==F.Team)and not h.Neutral or false if S.showteam~=true and d then return S:Remove(h)end local c=f[h]local e=c or w(h.Character,"HumanoidRootPart")or h.Character.PrimaryPart if e==nil then return S:Remove(h)end if c==nil then f[h]=e end if z then local a=(z.Position-e.Position).Magnitude if a>S.drawdistance then return S:Remove(h)end end local a,c=a(Q,e.Position)local e if g[h]~=nil then e=g[h]elseif c then e=b(h)end if e then if c then e.From=S.origin e.To=U(a.X,a.Y)e.Color=d and S.teamcolor or S.enemycolor end e.Visible=c end end function S:Hide(a)if c then return end if a==nil then return end local a=g[a]if a then a.Visible=false end end function S:Remove(a)if a==nil then return end local b=g[a]if b then b:Remove()end b=nil g[a]=nil end function S:RemoveAll()for b,a in pairs(g)do pcall(function()a:Remove()end)g[b]=nil end g={}end function S:End()c=true for a,b in pairs(g)do pcall(function()b:Remove()end)g[a]=nil end g={}end spawn(function()while B and B.enabled do for b,a in pairs(f)do f[b]=nil end f={}wait(3)end end)end do local d={}d.enabled=V:Get("boxes.enabled",false)d.transparency=V:Get("boxes.transparency",.2)d.thickness=V:Get("boxes.thickness",1.5)d.showteam=V:Get("boxes.showteam",true)d.teamcolor=I.fromRGB(0,255,0)d.enemycolor=I.fromRGB(255,0,0)d.thirddimension=V:Get("boxes.thirddimension",false)d.dist3d=V:Get("boxes.dist3d",1000)d.drawdistance=V:Get("boxes.drawdistance",4000)d.color=I.fromRGB(255,50,50)u(T,{__index=function(a,a)if d[a]~=nil then local a=d[a]if N(a)=="table"then return N(a)=="table"and a.Value else return a end end A(("AH8_ERROR : BoxesSettings : Tried to index %s"):format(J(a)))end;__newindex=function(a,c,b)if N(b)~="function"then if d[c]then local a=d[c]if N(a)~="table"then d[c]=b return elseif a.Set then a:Set(b)return end end end rawset(a,c,b)end})local d=unpack local b=n.new("Part").FindFirstChild local u=Q.WorldToViewportPoint local a=n.new("Model").GetBoundingBox local a=n.new("Model").GetExtentsSize local c=false local h={}local function g(e,b,a)if c then return end if e==nil then return end if h[e]then T:Remove(e)end local c={Visible=true;Transparency=1-T.transparency;Thickness=T.thickness;Color=T.color}if b then for a,b in pairs(b)do c[a]=b end end local b={}for a=1,a or 4 do b[a]=newdrawing("Line",c)end if h[e]then for b,a in pairs(h[e])do pcall(function()a:Remove()end)h[e][b]=nil end end h[e]={d(b)}return d(b)end local e={}local a=k()function T:Draw(v)if c then return end if v==nil then return end local c=v.Character if c==nil then return T:Remove(v)end local a=e[v]local c=a or b(c,"HumanoidRootPart")or c.PrimaryPart if c==nil then return T:Remove(v)end if a==nil then e[v]=c end local b=T.thirddimension if z then local a=(z.Position-c.Position).Magnitude if a>T.drawdistance then return T:Remove(v)elseif b and a>T.dist3d then b=false end end local a=(v.Team~=nil and v.Team==F.Team)and not v.Neutral or false if T.showteam~=true and a then return T:Remove(v)end local a=a and T.teamcolor or T.enemycolor local C,E=c.CFrame,c.Size local function D(e,b,c,d)if e==nil then return end if d then e.From=b e.To=c e.Color=a end e.Visible=d end if b then local i,j,k,n,m,l,p,r,t,s,o,q if h[v]==nil then i,j,k,n,m,l,p,r,t,s,o,q=g(v,nil,12)else if#h[v]~=12 then i,j,k,n,m,l,p,r,t,s,o,q=g(v,nil,12)else i,j,k,n,m,l,p,r,t,s,o,q=d(h[v])end end local v,a=u(Q,(C*M(-E.X,E.Y,E.Z)).p)local w,d=u(Q,(C*M(E.X,E.Y,E.Z)).p)local B,c=u(Q,(C*M(-E.X,-E.Y,E.Z)).p)local z,b=u(Q,(C*M(E.X,-E.Y,E.Z)).p)local y,f=u(Q,(C*M(-E.X,E.Y,-E.Z)).p)local x,g=u(Q,(C*M(E.X,E.Y,-E.Z)).p)local A,h=u(Q,(C*M(-E.X,-E.Y,-E.Z)).p)local u,e=u(Q,(C*M(E.X,-E.Y,-E.Z)).p)D(i,U(v.X,v.Y),U(w.X,w.Y),a)D(j,U(w.X,w.Y),U(z.X,z.Y),d)D(k,U(B.X,B.Y),U(v.X,v.Y),c)D(n,U(B.X,B.Y),U(z.X,z.Y),b)D(r,U(u.X,u.Y),U(A.X,A.Y),e)D(m,U(y.X,y.Y),U(x.X,x.Y),f)D(l,U(x.X,x.Y),U(u.X,u.Y),g)D(p,U(A.X,A.Y),U(y.X,y.Y),h)D(q,U(u.X,u.Y),U(z.X,z.Y),e)D(t,U(y.X,y.Y),U(v.X,v.Y),f)D(s,U(x.X,x.Y),U(w.X,w.Y),g)D(o,U(A.X,A.Y),U(B.X,B.Y),h)else local i,k,e,f if h[v]==nil then i,k,e,f=g(v,nil,4)else if#h[v]~=4 then i,k,e,f=g(v,nil,4)else i,k,e,f=d(h[v])end end local g,b=u(Q,(C*M(-E.X,E.Y,0)).p)local h,c=u(Q,(C*M(E.X,E.Y,0)).p)local l,a=u(Q,(C*M(-E.X,-E.Y,0)).p)local j,d=u(Q,(C*M(E.X,-E.Y,0)).p)D(i,U(g.X,g.Y),U(h.X,h.Y),b)D(k,U(h.X,h.Y),U(j.X,j.Y),c)D(e,U(l.X,l.Y),U(g.X,g.Y),a)D(f,U(l.X,l.Y),U(j.X,j.Y),d)end end function T:Update()if c then return end if player==nil then return end end function T:Hide(a)if c then return end if a==nil then return end local a=h[a]if a then for a,a in pairs(a)do a.Visible=false end end end function T:Remove(a)if a==nil then return end local c=h[a]if c then for b,a in pairs(c)do a:Remove()c[b]=nil end end h[a]=nil end function T:RemoveAll()for b,c in pairs(h)do pcall(function()for a,a in pairs(c)do a:Remove()c[b]=nil end end)h[b]=nil end h={}end function T:End()c=true for a,c in pairs(h)do for a,b in pairs(c)do pcall(function()b:Remove()c[a]=nil end)end h[a]=nil end h={}end spawn(function()while B and B.enabled do for b,a in pairs(e)do e[b]=nil end e={}a=nil wait(3)end end)end do E.enabled=true E.names=true E.healths=true E.distances=true E.heads=true local a={}function E:Draw(a)end function E:Remove(a)end function E:End()end end do H.enabled=V:Get("visuals.enabled",true)local a=x.GetPlayers local b local f local c=false D(x.PlayerRemoving,function(a)if c then return end S:Remove(a)T:Remove(a)end)local e=v and debug.profilebegin or function()end local d=v and debug.profileend or function()end function H.step()if c then return end local c=Q.ViewportSize if b==nil then b=newdrawing("Text",{Text="AimHot v8, Herrtt#3868";Color=I.new(255,255,255);Size=25.0;Transparency=.8;Position=U(c.X/8,6);Outline=true;Visible=true})else b.Position=U(c.X/8,6)end e("crosshair.step")if R.enabled then R.step()else R:Remove()end d("crosshair.step")e("fov.step")if W.enabled and W.fovenabled and H.enabled then if f==nil then f=newdrawing("Circle",{Position=U(G.X,G.Y+35),Radius=W.fovsize,Color=I.fromRGB(200,200,0),Thickness=W.fovthickness,Filled=false,Transparency=.8,NumSides=W.fovsides,Visible=W.fovshow})else f.Position=U(G.X,G.Y+35)f.Radius=W.fovsize f.NumSides=W.fovsides f.Visible=W.fovshow f.Thickness=W.fovthickness end elseif f~=nil then f:Remove()f=nil end d("fov.step")if H.enabled and(E.enabled or T.enabled or S.enabled or R.enabled)then e("tracers.origin")if S.fromMouse then S.origin=U(G.X,G.Y+35)else S.origin=U(c.X/2,c.Y)end d("tracers.origin")for a,a in pairs(a(x))do if(a~=F)then e("boxes.step")if T.enabled then T:Draw(a)else T:Remove(a)end d("boxes.step")e("tracers.step")if S.enabled then S:Draw(a)else S:Remove(a)end d("tracers.step")end end else S:RemoveAll()T:RemoveAll()R:Remove()end end function H:End()c=true R:End()T:End()S:End()clearDrawn()end end do local k=pcall local i=J local j=A local a=debug local m=v and a.profilebegin or function()end local n=v and a.profileend or function()end local h=l.RenderStepped local e=l.Heartbeat local b=l.Stepped local a=h.wait L.dt=0 L.time=tick()local f={{name='visuals.step',func=H.step}}local d={{name='aimbot.step',func=W.step}}local c={}L.onstep={}L.onthink={}L.onrender={}function L.wait()a(h)end local a=r.new(L.onstep)local a=r.new(L.onthink)local a=r.new(L.onrender)local g="AH.Renderstep"D(h,function(a)m(g)local a=tick()L.dt=a-L.time L.time=a for c,d in pairs(f)do m(d.name)local a,b=k(d.func,L.dt)n(d.name)if not a then j("AH8_ERROR : Failed to run "..d.name.."! "..i(b))f[c]=nil end end n(g)end)local a="AH.Heartbeat"D(e,function(b)m(a)for a,c in pairs(d)do m(c.name)local a,b=k(c.func,b)n(c.name)if not a then j("Failed to run "..c.name.."! "..i(b))end end n(a)end)local a="AH.Stepped"D(b,function(b)m(a)for a,c in pairs(c)do m(c.name)local b,a=k(c.func,b)n(c.name)if not b then j("Failed to run "..c.name.."! "..i(a))end end n(a)end)end do V:Save()B.enabled=true function B:close()spawn(function()pcall(V.Save,V)end)spawn(function()pcall(H.End,H)end)spawn(function()pcall(W.End,W)end)spawn(function()pcall(C.End,C)end)spawn(function()for a,a in pairs(d)do pcall(function()a:Disconnect()end)end end)B=nil shared.ah8=nil end shared.ah8=B local a=y:GetService("Players")local b=a.LocalPlayer D(a.PlayerRemoving,function(a)if a==b then V:Save()end end)end local a=C:AddTab({Text="Aiming"})local b=a:AddToggleCategory({Text="Aimbot",State=W.enabled},function(a)W.enabled=a end)b:AddKeybind({Text="keybind",Current=W.keybind},function(a)W.keybind=a.Name end)b:AddToggle({Text="Press To Enable",State=W.presstoenable},function(a)W.presstoenable=a end)b:AddToggle({Text="Lock To Target",State=W.locktotarget},function(a)W.locktotarget=a end)b:AddToggle({Text="Check If Alive",State=W.checkifalive},function(a)W.checkifalive=a end)local b=a:AddCategory({Text="Settings"})b:AddSlider({Text="Sensitivity",Current=W.sensitivity},{0.01,10,0.01},function(a)W.sensitivity=a end)b:AddToggle({Text="Ignore Team",State=W.ignoreteam},function(a)W.ignoreteam=a end)b:AddToggle({Text="Ignore Walls",State=W.ignorewalls},function(a)W.ignorewalls=a end)b:AddSlider({Text="Max Obscuring Parts",Current=W.maxobscuringparts},{0,10,1},function(a)W.maxobscuringparts=a end)local a=a:AddToggleCategory({Text="fov",State=W.fovenabled},function(a)W.fovenabled=a end)a:AddSlider({Text="Radius",Current=W.fovsize},{1,1000,1},function(a)W.fovsize=a end)a:AddSlider({Text="Sides",Current=W.fovsides},{6,40,1},function(a)W.fovsides=a end)a:AddSlider({Text="Thickness",Current=W.fovthickness},{0.5,50,1},function(a)W.fovthickness=a end)local b=C:AddTab({Text="Visuals"})b:AddToggle({Text="Enabled",State=H.enabled},function(a)H.enabled=a end)local a=b:AddToggleCategory({Text="Boxes",State=T.enabled},function(a)T.enabled=a end)a:AddToggle({Text="Show Team",State=T.showteam},function(a)T.showteam=a end)a:AddToggle({Text="3d",State=T.thirddimension},function(a)T.thirddimension=a end)a:AddSlider({Text="Draw Distance",Current=T.drawdistance},{5,10000,5},function(a)T.drawdistance=a end)a:AddSlider({Text="3d distance",Current=T.dist3d},{5,10000,5},function(a)T.dist3d=a end)local a=b:AddToggleCategory({Text="Tracers",State=S.enabled},function(a)S.enabled=a end)a:AddSlider({Text="Draw Distance",Current=S.drawdistance},{5,10000,5},function(a)S.drawdistance=a end)a:AddToggle({Text="Show Team",State=S.showteam},function(a)S.showteam=a end)local a=b:AddToggleCategory({Text="Crosshair",State=R.enabled},function(a)R.enabled=a end)a:AddSlider({Text="Size",Current=R.size},{1,2000,1},function(a)R.size=a end)a:AddSlider({Text="Thickness",Current=R.thickness},{1,50,1},function(a)R.thickness=a end)a:AddSlider({Text="Transparency",Current=R.transparency},{0,1,0.01},function(a)R.transparency=a end)local a=C:AddTab({Text="Hud"})C.Keybind=V:Get("hud.keybind","RightAlt").Value a:AddKeybind({Text="Toggle",Current=C.Keybind},function(a)V:Set("hud.keybind",a.Name)C.Keybind=a.Name end)A("AH8_MAIN : Reached end of script")