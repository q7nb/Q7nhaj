--[[

Deobfuscate By.lyy WOW ONTOP ！

]]
if not getgenv().SCRIPT_KEY then
	if not SCRIPT_KEY then
		r = "No script key provided, please pass a SCRIPT_KEY!"
		loadstring(game:HttpGet("https://jnkie.com/sdk/love.lua"))()
		return
	end

	local v = SCRIPT_KEY
	getgenv().SCRIPT_KEY = v
end

if getgenv().EXECUTING == "true" then
	warn("There is already an execution in progress. Please wait before executing another script.")
	return
end

getgenv().EXECUTING = "true"

spawn(function()
	task.wait(5)
	getgenv().EXECUTING = "false"
end)

if Faces.new(Enum.NormalId.Front, Enum.NormalId.Left, 1, 2).Back ~= false then
	LPH_CRASH()
end

if pcall(setmetatable, game, {}) or pcall(setfenv, 1, {}) then
	LPH_CRASH()
end

if Faces.new(Enum.NormalId.Front, Enum.NormalId.Left, 1, 2).Front ~= true then
	LPH_CRASH()
end

if pcall(function()
	game:GetService("RunsServices")
end) then
	LPH_CRASH()
end

if typeof(game:GetService("RunService").Heartbeat:Wait()) ~= "number" or game:GetService("RunService").Heartbeat:Wait() <= 0 then
	LPH_CRASH()
end

do
	local ok, result = pcall(function()
		return pcall()
	end)

	if ok or result and not tostring(result):match("missing argument") then
		LPH_CRASH()
	end
end

do
	local ok, result = pcall(function()
		return debug and debug.info and debug.info(2, "f")
	end)

	if not (ok and result) then
		LPH_CRASH()
	end
end

if debug.setmemorycategory("X") == debug.setmemorycategory("X") then
	LPH_CRASH()
end

if not utf8.graphemes then
	LPH_CRASH()
end

do
	local ok, result = pcall(function()
		return game:GetService("HttpService"):GetSecret("JUNKIE-DEVELOPMENT")
	end)

	if not result:match("Can't find secret with given key") then
		LPH_CRASH()
	end
end

if not SharedTable.new() then
	LPH_CRASH()
end

if #(function(arg)
	local v = Random.new(tick() * math.random() * math.random())
	local str = ""

	for i = 1, v:NextNumber(20, 30) do
		str ..= utf8.char(v:NextNumber(97, 8000))
	end

	return ("\0"):rep(25) .. str .. arg .. ("\0"):rep(25) .. str
end)("hi") < 150 then
	LPH_CRASH()
end

local flag = not setmetatable or not pcall or not debug or not rawget or not rawset

if not flag then
	flag = not pcall(rawset, {}, " ", " ") or not select or not select(2, pcall(rawget, debug, "info"))

	if not flag then
		local v = print
		flag = not select(2, pcall(rawget, debug, "info"))(v, "s") == "[C]"

		if not flag then
			local v2 = require
			flag = not select(2, pcall(rawget, debug, "info"))(v2, "s") == "[C]"
		end
	end
end

if flag then
	LPH_CRASH()
end

local fn

fn = function(arg, arg2)
	r = arg2 and arg2 .. "\n\nError code: " .. arg or arg
	loadstring(game:HttpGet("https://jnkie.com/sdk/love.lua"))()
	task.wait(3)
end

local v
v = debug.info(1, "l")
local v2 = debug.info(1, "l")

if isfunctionhooked then
	local flag2 = false

	pcall(function()
		flag2 = isfunctionhooked(loadstring) or isfunctionhooked(os.time) or isfunctionhooked(request) or isfunctionhooked(math.randomseed) or isfunctionhooked(game.HttpGet)
	end)

	pcall(function()
		if hookfunction and type(hookfunction) == "function" then
			local function fn2()
			end

			hookfunction(fn2, function()
				print("hellow")
			end)

			if not isfunctionhooked(fn2) then
				while true do
				end
			end
		end
	end)

	if flag2 then
		LPH_CRASH()
	end
end

if isreadonly then
	if not isreadonly(math) then
		LPH_CRASH()
	end

	if not isreadonly(table) then
		LPH_CRASH()
	end

	if not isreadonly(string) and not identifyexecutor():match("^Velocity") then
		LPH_CRASH()
	end

	if not isreadonly(os) then
		LPH_CRASH()
	end
end

if getrenv then
	if math.randomseed ~= getrenv().math.randomseed then
		LPH_CRASH()
	end

	if math.random ~= getrenv().math.random then
		LPH_CRASH()
	end

	if tonumber ~= getrenv().tonumber then
		LPH_CRASH()
	end

	if os.clock ~= getrenv().os.clock then
		LPH_CRASH()
	end

	if tostring ~= getrenv().tostring then
		LPH_CRASH()
	end

	if os.time ~= getrenv().os.time then
		LPH_CRASH()
	end
end

if os.time() < 1787916745 then
	fn("J2_116")
	LPH_CRASH()
end

if debug.info(1, "l") ~= v2 or debug.info(1, "l") ~= v then
	LPH_CRASH()
end

local v3
v3 = debug.info(1, "l")

local function fn2(arg)
	for i = 1, 197 do
		local ok, result = pcall(function()
			return coroutine.wrap(arg)
		end)

		if not ok then
			fn("J2_205")
			LPH_CRASH()
		end

		if type(result) == "function" then
			arg = result
		end
	end

	local ok, result = pcall(arg)
	if tostring(result or ""):find("C stack overflow") then
		return true
	end
	return false
end

if fn2(math.max) then
	fn("J2_173")
	LPH_CRASH()
end

if fn2(request) and not identifyexecutor():match("^Hydrogen") and not identifyexecutor():match("^Xeno") and not identifyexecutor():match("^Solara") then
	fn("J2_260", "Executor compatibility error (" .. tostring(identifyexecutor()) .. ")")
	LPH_CRASH()
end

if fn2(math.abs) then
	fn("J2_151")
	LPH_CRASH()
end

if fn2(math.floor) then
	fn("J2_093")
	LPH_CRASH()
end

if fn2(math.random) then
	fn("J2_065")
	LPH_CRASH()
end

if fn2(os.clock) then
	fn("J2_216")
	LPH_CRASH()
end

if fn2(task.spawn) then
	fn("J2_022")
	LPH_CRASH()
end

if fn2(math.min) then
	fn("J2_003")
	LPH_CRASH()
end

if fn2(os.time) then
	fn("J2_022")
	LPH_CRASH()
end

if pcall(function()
	return getfenv()["pr" .. nil .. "nt"]
end) then
	fn("J2_113")
	LPH_CRASH()
end

do
	local flag2 = false

	local tbl = {
		__tostring = function()
			flag2 = true
			return ""
		end,
		__index = function()
			flag2 = true

			return function()
				return ""
			end
		end,
		__concat = function()
			flag2 = true
			return ""
		end,
		__len = function()
			flag2 = true
			return 0
		end,
	}

	local tbl2 = {
		Url = setmetatable({}, tbl),
		Method = "GET",
		Headers = { Accept = "*/*", ["User-Agent"] = "Roblox/WinInet" },
	}

	tbl2.Headers[setmetatable({}, tbl)] = "1"
	pcall(request, tbl2)

	if flag2 then
		fn("J2_260", "Executor compatibility error (" .. tostring(identifyexecutor()) .. ")")
		LPH_CRASH()
	end
end

local n
n = 0
local tbl

tbl = {
	_55441ab2d61e = "3B9qvWUL",
	_ac73910f7996 = 1200359869,
	_99d9956d1a32 = game:GetService("HapticService"),
	_c51f7ccc1556 = game:GetService("MemStorageService"),
	_bee158e7f7bf = 72011,
	_0885b160c4b0 = 1380084450,
	_1f9c82598da2 = "" .. math.random(800, 999),
	_78bbbabadc82 = "NjQ2LQj",
	_f64f31107fad = 4002259955,
	_e3460d8ffcc6 = 1260710764,
	_017ddbc83975 = "0Ol8aNNL4",
	_b88ae60951a8 = true,
	_e7760c5cd063 = "8YztKyKx",
	_3ec54fb3a387 = 84424,
	_cc6306fee598 = true,
	["\u{CD8}ୃကಐथකဖັ\u{EEB}"] = game:GetService("TeleportService"),
	_39d69f901428 = 38144,
	_78277f11ece5 = "LcaLD7dzhfD",
	_8e246c6526e9 = 91073,
	_5dc149fb5cad = 1482953653,
}

tbl._88505ca14763 = "_4ebf03d67379" .. tostring(tbl)
getfenv()[2014255] = 0
local n2
n2 = 2633
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", "")
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("൯ណಇඟጅ\u{E7F}๑ෘ", getgenv().SCRIPT_KEY)

if tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("൯ណಇඟጅ\u{E7F}๑ෘ") ~= getgenv().SCRIPT_KEY then
	LPH_CRASH()
end

local heartbeat
heartbeat = game:GetService("RunService").Heartbeat
local flag2
flag2 = true
local fn3

fn3 = function(arg, arg2, arg3)
	local flag3 = type(arg3) ~= "number"

	if not flag3 then
		local v4 = tostring
		flag3 = tostring(arg3) ~= v4(142956)
	end

	if flag3 then
		LPH_CRASH()
	end

	if not rawequal(arg3, 142956) == true then
		LPH_CRASH()
	end

	if arg3 ~= 142956 then
		LPH_CRASH()
	end

	if arg3 - 142956 ~= 0 then
		LPH_CRASH()
	end

	if not ({ [arg3] = true })[142956] then
		LPH_CRASH()
	end

	if arg == nil or arg2 == nil then
		if arg ~= arg2 then
			return false
		end
	end

	local tbl2 = {}
	rawset(tbl2, arg, arg2)
	if not rawequal(rawget(tbl2, arg2), arg2) then
		return false
	end
	rawset(tbl2, arg, nil)
	local flag4 = type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string")

	if flag4 then
		flag4 = not (arg >= arg2 and arg2 >= arg and arg <= arg2 and arg2 <= arg)
	end

	if flag4 then
		return false
	end

	if tostring(arg == arg2) ~= "true" then
		return false
	end

	if tostring(arg ~= arg2) ~= "false" then
		return false
	end
	local flag5 = type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string")

	if flag5 then
		flag5 = {}
		local flag6 = arg == arg2
		local flag7 = arg2 == arg
		local v4 = rawequal(arg, arg2)
		local v5 = rawequal(arg2, arg)
		local flag8 = not (arg ~= arg2)
		local flag9 = arg2 >= arg and arg2 <= arg
		local flag10 = arg2 == arg
		local flag11 = arg <= arg2
		local flag12 = arg2 >= arg
		local flag13 = not (arg ~= arg2)
		local flag14 = arg >= arg2 and arg <= arg2
		flag5[1] = flag6
		flag5[2] = flag7
		flag5[3] = v4
		flag5[4] = v5
		flag5[5] = flag8
		flag5[6] = flag9
		flag5[7] = flag10
		flag5[8] = flag11
		flag5[9] = flag12
		flag5[10] = flag13
		flag5[11] = flag14
	end

	if not flag5 then
		flag5 = {}
		local v4 = rawequal(arg, arg2)
		local v5 = rawequal(arg2, arg)
		flag5[1] = arg == arg2
		flag5[2] = arg2 == arg
		flag5[3] = v4
		flag5[4] = v5
		flag5[5] = not (arg ~= arg2)
		flag5[6] = true
		flag5[7] = arg2 == arg
		flag5[8] = true
		flag5[9] = true
		flag5[10] = not (arg ~= arg2)
		flag5[11] = true
	end

	local flag6 = false

	setmetatable(flag5, {
		__newindex = function()
			flag6 = true
		end,
		__metatable = {},
	})

	for i = 1, 11 do
		if not flag5[i] then
			return false
		end
	end

	flag5["8Kic5icFh2CIY8La"] = true
	if flag6 ~= true or #flag5 ~= 11 then
		return false
	end

	if not (not arg ~= arg2 == true) then
		return false
	end

	if not (arg ~= arg2 == false) then
		return false
	end
	local kind = type(arg)
	local kind2 = type(arg2)
	if kind ~= typeof(arg2) or typeof(arg) ~= kind2 then
		return false
	end
	local str = tostring(arg)
	local str2 = tostring(arg2)
	if #str ~= #str2 or str < str2 or str > str2 then
		return false
	end

	if not (rawequal(arg, arg2) and rawequal(arg2, arg) and rawequal(str, str2)) then
		return false
	end

	if arg ~= nil and arg2 ~= nil then
		local tbl3 = { [arg2] = arg }
		if not rawequal(({ [arg] = arg2 })[arg2], arg2) or not rawequal(tbl3[arg], arg) then
			return false
		end
	end

	return true
end

local fn4

fn4 = function(arg, arg2, arg3)
	local flag3 = type(arg3) ~= "number"

	if not flag3 then
		local v4 = tostring
		flag3 = tostring(arg3) ~= v4(349683)
	end

	if flag3 then
		LPH_CRASH()
	end

	local v4 = table.pack(65535)

	if arg3 - (1 - 2 * (382968035 + bit32.band(65535 * v4[1] + bit32.lshift(bit32.band(4294836225 + 65535 * v4[1], 65535), 16), 4294967295) % 4294967296 + 8206966556) % 4294967296) * (1 + ((2122590576 + 3228325340 + 3261428660) % 4294967296 * 67108864 + (2605080312 + 1689886984 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((3788545409 + 3180412936 + 1620977288) % 4294967296 - 1023) ~= 0 then
		LPH_CRASH()
	end

	if not rawequal(arg3, 349683) then
		LPH_CRASH()
	end

	if arg3 ~= 349683 == true then
		LPH_CRASH()
	end

	if not ({ [arg3] = true })[349683] then
		LPH_CRASH()
	end

	n2 += 17

	if flag2 then
		tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "6DCiOVcQT2Kw6PZL034mV")
	end

	if arg ~= nil and arg2 ~= nil and (not ({ [arg] = "RkDedC5UQG1nKlPW0s" })[arg2] or not ({ [arg2] = "RkDedC5UQG1nKlPW0s" })[arg]) then
		return false
	end

	if type(arg) == type(arg2) and ({ number = true, string = true })[type(arg)] == true then
		if not (arg >= arg2 and arg <= arg2 and arg2 >= arg and arg2 <= arg) then
			return false
		end
	end

	local kind = type(arg)
	local kind2 = type(arg2)
	if kind ~= typeof(arg2) or typeof(arg) ~= kind2 then
		return false
	end
	local str = tostring(arg)
	local str2 = tostring(arg2)
	if #str ~= #str2 or str < str2 or str > str2 then
		return false
	end

	if not (rawequal(arg, arg2) and rawequal(arg2, arg) and rawequal(str, str2)) then
		return false
	end
	local flag4 = type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string")

	if flag4 then
		flag4 = {}
		local flag5 = arg == arg2
		local flag6 = arg2 == arg
		local v5 = rawequal(arg, arg2)
		local v6 = rawequal(arg2, arg)
		local flag7 = not (arg ~= arg2)
		local flag8 = arg2 >= arg and arg2 <= arg
		local flag9 = arg2 == arg
		local flag10 = arg <= arg2
		local flag11 = arg2 >= arg
		local flag12 = not (arg ~= arg2)
		local flag13 = arg >= arg2 and arg <= arg2
		local flag14 = arg2 >= arg and arg2 <= arg
		flag4[1] = flag5
		flag4[2] = flag6
		flag4[3] = v5
		flag4[4] = v6
		flag4[5] = flag7
		flag4[6] = flag8
		flag4[7] = flag9
		flag4[8] = flag10
		flag4[9] = flag11
		flag4[10] = flag12
		flag4[11] = flag13
		flag4[12] = flag14
	end

	if not flag4 then
		flag4 = {}
		local v5 = rawequal(arg, arg2)
		local v6 = rawequal(arg2, arg)
		flag4[1] = arg == arg2
		flag4[2] = arg2 == arg
		flag4[3] = v5
		flag4[4] = v6
		flag4[5] = not (arg ~= arg2)
		flag4[6] = true
		flag4[7] = arg2 == arg
		flag4[8] = true
		flag4[9] = true
		flag4[10] = not (arg ~= arg2)
		flag4[11] = true
		flag4[12] = true
	end

	local flag5 = false

	setmetatable(flag4, {
		__newindex = function()
			flag5 = true
		end,
		__metatable = {},
	})

	local n3 = 0

	while true do
		n3 += 1

		if flag4[n3] ~= true then
			return false
		elseif n3 == 12 then
			break
		end
	end

	flag4.dimaNHOjSCf76foI = true
	if not flag5 then
		return false
	end

	if tostring(arg == arg2) ~= "true" then
		return false
	end

	if tostring(arg ~= arg2) ~= "false" then
		return false
	end

	if arg == nil or arg2 == nil then
		if arg ~= arg2 then
			return false
		end
	end

	local tbl2 = { [arg] = 961130 }
	local v5 = tbl2[arg2]
	tbl2[arg] = nil
	if v5 ~= 961130 then
		return false
	end

	if not (not arg ~= arg2 == true) or not (arg ~= arg2 == false) then
		return false
	end
	return true
end

if not fn4(349683, 349683, 349683) then
	fn("J2_202")
	LPH_CRASH()
end

spawn(function()
	local now = os.clock()
	local now2 = os.clock()
	task.wait(0.1)

	if now == now2 and now2 == os.clock() and fn3(now, now2, 142956) then
		LPH_CRASH()
	end

	local now3 = tick()
	local now4 = tick()
	task.wait(0.1)

	if now3 == now4 and now4 == tick() and fn3(now3, now4, 142956) then
		LPH_CRASH()
	end
end)

if debug.info(1, "l") ~= v3 or debug.info(1, "l") ~= v then
	LPH_CRASH()
end

local v4
v4 = debug.info(1, "l")
local v5, v6

local function fn5()
	local byte = string.byte
	local char = string.char
	local sub = string.sub
	local concat = table.concat
	local floor = math.floor
	local huge = math.huge

	local function fn6()
		error("J", 0)
	end

	local function fn7(arg)
		if arg >= 48 and arg <= 57 then
			return arg - 48
		end

		if arg >= 65 and arg <= 70 then
			return arg - 55
		end

		if arg >= 97 and arg <= 102 then
			return arg - 87
		end
		fn6()
	end

	local function fn8(arg, arg2, arg3)
		if arg2 + 3 > arg3 then
			fn6()
		end

		return fn7(byte(arg, arg2)) * 4096 + fn7(byte(arg, arg2 + 1)) * 256 + fn7(byte(arg, arg2 + 2)) * 16 + fn7(byte(arg, arg2 + 3)), arg2 + 4
	end

	local function fn9(arg)
		if arg < 128 then
			return char(arg)
		end

		if arg < 2048 then
			return char(192 + floor(arg / 64), 128 + arg % 64)
		end

		if arg < 65536 then
			return char(224 + floor(arg / 4096), 128 + floor(arg / 64) % 64, 128 + arg % 64)
		end
		return char(240 + floor(arg / 262144), 128 + floor(arg / 4096) % 64, 128 + floor(arg / 64) % 64, 128 + arg % 64)
	end

	local tbl2 = {
		[34] = "\"",
		[47] = "/",
		[92] = "\\",
		[98] = "\8",
		[102] = "\12",
		[110] = "\n",
		[114] = "\r",
		[116] = "\t",
	}

	local function fn10(arg, arg2, arg3)
		local tbl3 = {}
		local n3 = arg2 + 1
		local n4 = 0
		local v7 = n3

		while n3 <= arg3 do
			local v8 = byte(arg, n3)

			if v8 == 34 then
				if v7 < n3 then
					n4 += 1
					tbl3[n4] = sub(arg, v7, n3 - 1)
				end

				if n4 == 0 then
					return "", n3 + 1
				end

				if n4 == 1 then
					return tbl3[1], n3 + 1
				end
				return concat(tbl3), n3 + 1
			end

			if v8 == 92 then
				if v7 < n3 then
					n4 += 1
					tbl3[n4] = sub(arg, v7, n3 - 1)
				end

				n3 += 1

				if arg3 < n3 then
					fn6()
				end

				local v9 = byte(arg, n3)
				local v10 = tbl2[v9]

				if v10 then
					n3 += 1
				elseif v9 == 117 then
					local n5, v11 = fn8(arg, n3 + 1, arg3)

					if n5 >= 55296 and n5 <= 56319 and v11 + 5 <= arg3 and byte(arg, v11) == 92 and byte(arg, v11 + 1) == 117 then
						local v12
						v12, n3 = fn8(arg, v11 + 2, arg3)

						if v12 >= 56320 and v12 <= 57343 then
							n5 = 65536 + (n5 - 55296) * 1024 + v12 - 56320
						else
							n3 = v11
						end
					else
						n3 = v11
					end

					v10 = fn9(n5)
				else
					fn6()
				end

				n4 += 1
				tbl3[n4] = v10
				v7 = n3
			else
				if v8 < 32 then
					fn6()
				end

				n3 += 1
			end
		end

		fn6()
	end

	local function fn11(arg, arg2, arg3)
		local n3

		if byte(arg, arg2) ~= 45 then
			n3 = arg2
		else
			n3 = arg2 + 1
		end

		if arg3 < n3 then
			fn6()
		end

		local v7 = byte(arg, n3)

		if v7 == 48 then
			n3 += 1
			local v8 = byte(arg, n3)

			if v8 and v8 >= 48 and v8 <= 57 then
				fn6()
			end
		elseif v7 >= 49 and v7 <= 57 then
			while true do
				n3 += 1
				local v8 = byte(arg, n3)
				if not (not v8 or v8 < 48 or v8 > 57) then
					continue
				end
				break
			end
		else
			fn6()
		end

		local num = tonumber(sub(arg, arg2, n3 - 1))

		if not num or num ~= num or num <= -huge or num >= huge then
			fn6()
		end

		return num, n3
	end

	local fn12 = nil

	local function fn13(arg, arg2, arg3, arg4)
		local tbl3 = {}
		local n3 = arg2 + 1
		local n4 = 0
		if byte(arg, n3) == 93 then
			return tbl3, n3 + 1
		end
		local v7

		while true do
			local v8
			v8, v7 = fn12(arg, n3, arg3, arg4)
			n4 += 1
			tbl3[n4] = v8
			local v9 = byte(arg, v7)

			if v9 == 93 then
				break
			else
				if v9 ~= 44 then
					fn6()
				end

				n3 = v7 + 1
			end
		end

		return tbl3, v7 + 1
	end

	local function fn14(arg, arg2, arg3, arg4)
		local tbl3 = {}
		local n3 = arg2 + 1
		if byte(arg, n3) == 125 then
			return tbl3, n3 + 1
		end
		local v7

		while true do
			if byte(arg, n3) ~= 34 then
				fn6()
			end

			local v8, v9 = fn10(arg, n3, arg3)

			if byte(arg, v9) ~= 58 then
				fn6()
			end

			local v10
			v10, v7 = fn12(arg, v9 + 1, arg3, arg4)
			tbl3[v8] = v10
			local v11 = byte(arg, v7)

			if v11 ~= 125 then
				if v11 ~= 44 then
					fn6()
				end

				n3 = v7 + 1
				continue
			end

			break
		end

		return tbl3, v7 + 1
	end

	fn12 = function(arg, arg2, arg3, arg4)
		if arg4 > 8 or arg2 > arg3 then
			fn6()
		end

		local v7 = byte(arg, arg2)
		if v7 == 34 then
			return fn10(arg, arg2, arg3)
		end

		if v7 == 123 then
			return fn14(arg, arg2, arg3, arg4 + 1)
		end

		if v7 == 91 then
			return fn13(arg, arg2, arg3, arg4 + 1)
		end

		if v7 == 45 or v7 >= 48 and v7 <= 57 then
			return fn11(arg, arg2, arg3)
		end

		if v7 == 116 and sub(arg, arg2, arg2 + 3) == "true" then
			return true, arg2 + 4
		end

		if v7 == 102 and sub(arg, arg2, arg2 + 4) == "false" then
			return false, arg2 + 5
		end

		if v7 == 110 and sub(arg, arg2, arg2 + 3) == "null" then
			return nil, arg2 + 4
		end
		fn6()
	end

	local function fn15(arg)
		if type(arg) ~= "string" or #arg == 0 or #arg > 262144 then
			fn6()
		end

		local n3 = #arg
		local v7, v8 = fn12(arg, 1, n3, 0)

		if v8 <= n3 then
			fn6()
		end

		return v7
	end

	local tbl3 = { [8] = "\\b", [9] = "\\t", [10] = "\\n", [12] = "\\f", [13] = "\\r", [34] = "\\\"", [92] = "\\\\" }

	return fn15, function(arg)
		if type(arg) ~= "string" then
			fn6()
		end

		local tbl4 = { "\"" }
		local n3 = 1
		local n4 = 1

		for i = 1, #arg do
			local v7 = byte(arg, i)
			local v8 = tbl3[v7]

			if v8 or v7 < 32 then
				local n5

				if n3 < i then
					n5 = n4 + 1
					tbl4[n5] = sub(arg, n3, i - 1)
				else
					n5 = n4
				end

				n4 = n5 + 1
				tbl4[n4] = v8 or "\\u00" .. sub("0123456789ABCDEF", floor(v7 / 16) + 1, floor(v7 / 16) + 1) .. sub("0123456789ABCDEF", v7 % 16 + 1, v7 % 16 + 1)
				n3 = i + 1
			end
		end

		if n3 <= #arg then
			n4 += 1
			tbl4[n4] = sub(arg, n3)
		end

		tbl4[n4 + 1] = "\""
		return concat(tbl4)
	end
end

v5, v6 = fn5()
n2 += 39

if table.concat({ "yBC7yyfq", "wtV", "02oT6woUT", "5aqUHQqa4F8MH99bB" }) ~= "yBC7yyfqwtV02oT6woUT5aqUHQqa4F8MH99bB" or table.concat({ "yBC7yyfq", "wtV", "02oT6woUT", "5aqUHQqa4F8MH99bB" }) ~= "yBC7yyfqwtV02oT6woUT5aqUHQqa4F8MH99bB" then
	LPH_CRASH()
end

local v7, fn6, fn7, fn8, fn9, fn10

do
	local str = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
	n2 += 25

	local function fn11(arg, arg2)
		return function(arg3, arg4)
			local n3 = 0
			local n4 = 1

			while arg3 ~= 0 and arg4 ~= 0 do
				local n5 = arg3 % arg2
				local n6 = arg4 % arg2
				n3 += arg[n5][n6] * n4
				arg3 = (arg3 - n5) / arg2
				arg4 = (arg4 - n6) / arg2
				n4 *= arg2
			end

			return n3 + (arg3 + arg4) * n4
		end
	end

	local function fn12(arg)
		local v8 = fn11(arg, 2)

		return fn11(setmetatable({}, { __index = function(arg2, arg3)
			local obj = setmetatable({}, { __index = function(arg4, arg5)
				local v9 = v8(arg3, arg5)
				arg4[arg5] = v9
				return v9
			end })

			arg2[arg3] = obj
			return obj
		end }), 2 ^ (arg.n or 1))
	end

	v7 = fn12({ [0] = { [0] = 0, 1 }, { [0] = 1, 0 }, n = 4 })
	fn6 = nil

	fn6 = function(arg, arg2, arg3, ...)
		if arg2 then
			local v8 = v7(arg % 4294967296, arg2 % 4294967296)
			local v9

			if arg3 then
				v9 = fn6(v8, arg3, ...)
			else
				v9 = v8
			end

			return v9
		end

		if arg then
			return arg % 4294967296
		end
		return 0
	end

	fn7 = function(arg, arg2)
		if arg2 then
			local n3 = arg % 4294967296
			local n4 = arg2 % 4294967296
			return (n3 + n4 - v7(n3, n4)) / 2
		end

		if arg then
			return arg % 4294967296
		end
		return 4294967295
	end

	local function fn13(arg, arg2)
		local v8, v9, v10, v11 = string.byte(arg, arg2 + 1, arg2 + 4)
		return (v8 or 0) + (v9 or 0) * 256 + (v10 or 0) * 65536 + (v11 or 0) * 16777216
	end

	local function fn14(...)
		error("devirt: could not lift closure: symbolic value of a VM local carried between instructions (None)")
	end

	local function fn15(arg, arg2, arg3)
		local lrotate = bit32.lrotate
		local v8 = arg[1]
		local v9 = arg[2]
		local v10 = arg[3]
		local v11 = arg[4]
		local n3 = arg[5]
		local n4 = arg[6]
		local n5 = arg[7]
		local n6 = arg[8]
		local n7 = arg2 % 4294967296
		local v12 = arg3[1]
		local v13 = arg3[2]
		local v14 = arg3[3]
		local n8 = 1634760805
		local n9 = 857760878
		local n10 = 2036477234
		local n11 = 1797285236

		for i = 1, 10 do
			local n12 = (n8 + v8) % 4294967296
			local v15 = lrotate(v7(n7, n12), 16)
			local n13 = (n3 + v15) % 4294967296
			local v16 = lrotate(v7(v8, n13), 12)
			local n14 = (n12 + v16) % 4294967296
			local v17 = lrotate(v7(v15, n14), 8)
			local n15 = (n13 + v17) % 4294967296
			local v18 = lrotate(v7(v16, n15), 7)
			local n16 = (n9 + v9) % 4294967296
			local v19 = lrotate(v7(v12, n16), 16)
			local n17 = (n4 + v19) % 4294967296
			local v20 = lrotate(v7(v9, n17), 12)
			local n18 = (n16 + v20) % 4294967296
			local v21 = lrotate(v7(v19, n18), 8)
			local n19 = (n17 + v21) % 4294967296
			local v22 = lrotate(v7(v20, n19), 7)
			local n20 = (n10 + v10) % 4294967296
			local v23 = lrotate(v7(v13, n20), 16)
			local n21 = (n5 + v23) % 4294967296
			local v24 = lrotate(v7(v10, n21), 12)
			local n22 = (n20 + v24) % 4294967296
			local v25 = lrotate(v7(v23, n22), 8)
			local n23 = (n21 + v25) % 4294967296
			local v26 = lrotate(v7(v24, n23), 7)
			local n24 = (n11 + v11) % 4294967296
			local v27 = lrotate(v7(v14, n24), 16)
			local n25 = (n6 + v27) % 4294967296
			local v28 = lrotate(v7(v11, n25), 12)
			local n26 = (n24 + v28) % 4294967296
			local v29 = lrotate(v7(v27, n26), 8)
			local n27 = (n25 + v29) % 4294967296
			local v30 = lrotate(v7(v28, n27), 7)
			local n28 = (n14 + v22) % 4294967296
			local v31 = lrotate(v7(v29, n28), 16)
			local n29 = (n23 + v31) % 4294967296
			local v32 = lrotate(v7(v22, n29), 12)
			n8 = (n28 + v32) % 4294967296
			v14 = lrotate(v7(v31, n8), 8)
			n5 = (n29 + v14) % 4294967296
			v9 = lrotate(v7(v32, n5), 7)
			local n30 = (n18 + v26) % 4294967296
			local v33 = lrotate(v7(v17, n30), 16)
			local n31 = (n27 + v33) % 4294967296
			local v34 = lrotate(v7(v26, n31), 12)
			n9 = (n30 + v34) % 4294967296
			n7 = lrotate(v7(v33, n9), 8)
			n6 = (n31 + n7) % 4294967296
			v10 = lrotate(v7(v34, n6), 7)
			local n32 = (n22 + v30) % 4294967296
			local v35 = lrotate(v7(v21, n32), 16)
			local n33 = (n15 + v35) % 4294967296
			local v36 = lrotate(v7(v30, n33), 12)
			n10 = (n32 + v36) % 4294967296
			v12 = lrotate(v7(v35, n10), 8)
			n3 = (n33 + v12) % 4294967296
			v11 = lrotate(v7(v36, n3), 7)
			local n34 = (n26 + v18) % 4294967296
			local v37 = lrotate(v7(v25, n34), 16)
			local n35 = (n19 + v37) % 4294967296
			local v38 = lrotate(v7(v18, n35), 12)
			n11 = (n34 + v38) % 4294967296
			v13 = lrotate(v7(v37, n11), 8)
			n4 = (n35 + v13) % 4294967296
			v8 = lrotate(v7(v38, n4), 7)
		end

		local n12 = (v8 + arg[1]) % 4294967296
		local n13 = (v9 + arg[2]) % 4294967296
		local n14 = (v10 + arg[3]) % 4294967296
		local n15 = (v11 + arg[4]) % 4294967296
		local n16 = (n3 + arg[5]) % 4294967296
		local n17 = (n4 + arg[6]) % 4294967296
		local n18 = (n5 + arg[7]) % 4294967296
		local n19 = (n6 + arg[8]) % 4294967296
		local n20 = (n7 + arg2) % 4294967296
		local n21 = (v12 + arg3[1]) % 4294967296
		local n22 = (v13 + arg3[2]) % 4294967296
		local n23 = (v14 + arg3[3]) % 4294967296
		return fn14((n8 + 1634760805) % 4294967296) .. fn14((n9 + 857760878) % 4294967296) .. fn14((n10 + 2036477234) % 4294967296) .. fn14((n11 + 1797285236) % 4294967296) .. fn14(n12) .. fn14(n13) .. fn14(n14) .. fn14(n15) .. fn14(n16) .. fn14(n17) .. fn14(n18) .. fn14(n19) .. fn14(n20) .. fn14(n21) .. fn14(n22) .. fn14(n23)
	end

	fn8 = function(arg, arg2, arg3, arg4)
		if #arg2 ~= 32 then
			error("Invalid key length")
		end

		if #arg3 ~= 12 then
			error("Invalid nonce length")
		end

		local tbl2 = {}
		local v8 = fn13(arg2, 0)
		local v9 = fn13(arg2, 4)
		local v10 = fn13(arg2, 8)
		local v11 = fn13(arg2, 12)
		local v12 = fn13(arg2, 16)
		local v13 = fn13(arg2, 20)
		local v14 = fn13(arg2, 24)
		tbl2[1] = v8
		tbl2[2] = v9
		tbl2[3] = v10
		tbl2[4] = v11
		tbl2[5] = v12
		tbl2[6] = v13
		tbl2[7] = v14

		do
			local values = table.pack(fn13(arg2, 28))
			table.move(values, 1, values.n, 8, tbl2)
		end

		local tbl3 = {}
		local v15 = fn13(arg3, 0)
		local v16 = fn13(arg3, 4)
		tbl3[1] = v15
		tbl3[2] = v16

		do
			local values = table.pack(fn13(arg3, 8))
			table.move(values, 1, values.n, 3, tbl3)
		end

		local tbl4 = {}
		local n3 = #arg
		arg4 = arg4 or 1
		local n4 = 0

		for i = 1, n3, 64 do
			local v17 = fn15(tbl2, arg4, tbl3)
			local n5 = i + 63

			if n5 > n3 then
				n5 = n3
			end

			local n6 = 1

			while i + 3 <= n5 do
				local v18, v19, v20, v21 = string.byte(arg, i, i + 3)
				local v22, v23, v24, v25 = string.byte(v17, n6, n6 + 3)
				n4 += 1
				tbl4[n4] = string.char(v7(v18, v22), v7(v19, v23), v7(v20, v24), v7(v21, v25))
				i += 4
				n6 += 4
			end

			if i <= n5 then
				local v18, v19, v20 = string.byte(arg, i, n5)
				local v21, v22, v23 = string.byte(v17, n6, n6 + n5 - i)
				local n7 = n5 - i + 1
				n4 += 1
				tbl4[n4] = string.sub(string.char(v7(v18, v21), v19 and v7(v19, v22) or 0, v20 and v7(v20, v23) or 0, 0), 1, n7)
			end

			arg4 += 1
		end

		return table.concat(tbl4)
	end

	fn9 = function()return{};end

	local function fn16(arg, arg2, arg3, arg4, arg5)
		local lrotate = bit32.lrotate
		local n3, n4, n5, n6, n7, n8, n9, n10

		if arg == str then
			n3 = 3144134277
			n4 = 1359893119
			n5 = 528734635
			n6 = 1013904242
			n7 = 2600822924
			n8 = 2773480762
			n9 = 1541459225
			n10 = 1779033703
		else
			n10 = fn13(arg, 0)
			n3 = fn13(arg, 4)
			n6 = fn13(arg, 8)
			n8 = fn13(arg, 12)
			n4 = fn13(arg, 16)
			n7 = fn13(arg, 20)
			n5 = fn13(arg, 24)
			n9 = fn13(arg, 28)
		end

		local n11 = arg3 % 4294967296
		local n12 = (arg3 - n11) * 2.3283064365386963e-10
		local v8 = fn13(arg2, 0)
		local v9 = fn13(arg2, 4)
		local v10 = fn13(arg2, 8)
		local v11 = fn13(arg2, 12)
		local v12 = fn13(arg2, 16)
		local v13 = fn13(arg2, 20)
		local v14 = fn13(arg2, 24)
		local v15 = fn13(arg2, 28)
		local v16 = fn13(arg2, 32)
		local v17 = fn13(arg2, 36)
		local v18 = fn13(arg2, 40)
		local v19 = fn13(arg2, 44)
		local v20 = fn13(arg2, 48)
		local v21 = fn13(arg2, 52)
		local v22 = fn13(arg2, 56)
		local v23 = fn13(arg2, 60)
		local n13 = 1779033703
		local n14 = 3144134277
		local n15 = 1013904242
		local n16 = 2773480762

		for i = 1, 7 do
			local n17 = (n10 + n4 + v8) % 4294967296
			local v24 = lrotate(v7(n11, n17), 16)
			local n18 = (n13 + v24) % 4294967296
			local v25 = lrotate(v7(n4, n18), 20)
			local n19 = (n17 + v25 + v9) % 4294967296
			local v26 = lrotate(v7(v24, n19), 24)
			local n20 = (n18 + v26) % 4294967296
			local v27 = lrotate(v7(v25, n20), 25)
			local n21 = (n3 + n7 + v10) % 4294967296
			local v28 = lrotate(v7(n12, n21), 16)
			local n22 = (n14 + v28) % 4294967296
			local v29 = lrotate(v7(n7, n22), 20)
			local n23 = (n21 + v29 + v11) % 4294967296
			local v30 = lrotate(v7(v28, n23), 24)
			local n24 = (n22 + v30) % 4294967296
			local v31 = lrotate(v7(v29, n24), 25)
			local n25 = (n6 + n5 + v12) % 4294967296
			local v32 = lrotate(v7(arg4, n25), 16)
			local n26 = (n15 + v32) % 4294967296
			local v33 = lrotate(v7(n5, n26), 20)
			local n27 = (n25 + v33 + v13) % 4294967296
			local v34 = lrotate(v7(v32, n27), 24)
			local n28 = (n26 + v34) % 4294967296
			local v35 = lrotate(v7(v33, n28), 25)
			local n29 = (n8 + n9 + v14) % 4294967296
			local v36 = lrotate(v7(arg5, n29), 16)
			local n30 = (n16 + v36) % 4294967296
			local v37 = lrotate(v7(n9, n30), 20)
			local n31 = (n29 + v37 + v15) % 4294967296
			local v38 = lrotate(v7(v36, n31), 24)
			local n32 = (n30 + v38) % 4294967296
			local v39 = lrotate(v7(v37, n32), 25)
			local n33 = (n19 + v31 + v16) % 4294967296
			local v40 = lrotate(v7(v38, n33), 16)
			local n34 = (n28 + v40) % 4294967296
			local v41 = lrotate(v7(v31, n34), 20)
			n10 = (n33 + v41 + v17) % 4294967296
			arg5 = lrotate(v7(v40, n10), 24)
			n15 = (n34 + arg5) % 4294967296
			n7 = lrotate(v7(v41, n15), 25)
			local n35 = (n23 + v35 + v18) % 4294967296
			local v42 = lrotate(v7(v26, n35), 16)
			local n36 = (n32 + v42) % 4294967296
			local v43 = lrotate(v7(v35, n36), 20)
			n3 = (n35 + v43 + v19) % 4294967296
			n11 = lrotate(v7(v42, n3), 24)
			n16 = (n36 + n11) % 4294967296
			n5 = lrotate(v7(v43, n16), 25)
			local n37 = (n27 + v39 + v20) % 4294967296
			local v44 = lrotate(v7(v30, n37), 16)
			local n38 = (n20 + v44) % 4294967296
			local v45 = lrotate(v7(v39, n38), 20)
			n6 = (n37 + v45 + v21) % 4294967296
			n12 = lrotate(v7(v44, n6), 24)
			n13 = (n38 + n12) % 4294967296
			n9 = lrotate(v7(v45, n13), 25)
			local n39 = (n31 + v27 + v22) % 4294967296
			local v46 = lrotate(v7(v34, n39), 16)
			local n40 = (n24 + v46) % 4294967296
			local v47 = lrotate(v7(v27, n40), 20)
			n8 = (n39 + v47 + v23) % 4294967296
			arg4 = lrotate(v7(v46, n8), 24)
			n14 = (n40 + arg4) % 4294967296
			n4 = lrotate(v7(v47, n14), 25)

			if i ~= 7 then
				local v48 = v8
				v8 = v10
				v10 = v11
				v11 = v18
				v18 = v20
				v20 = v17
				v17 = v19
				v19 = v13
				v13 = v48
				local v49 = v9
				v9 = v14
				v14 = v12
				v12 = v15
				v15 = v21
				v21 = v22
				v22 = v23
				v23 = v16
				v16 = v49
			end
		end

		return fn14(v7(n10, n13)) .. fn14(v7(n3, n14)) .. fn14(v7(n6, n15)) .. fn14(v7(n8, n16)) .. fn14(v7(n4, n11)) .. fn14(v7(n7, n12)) .. fn14(v7(n5, arg4)) .. fn14(v7(n9, arg5))
	end

	fn10 = function(arg)
		local n3 = #arg
		if n3 <= 64 then
			return fn16("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", arg, 0, n3, 11)
		end
		local n4 = 1
		local n5 = 0
		local str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
		local n6 = 0
		local n7 = 0
		local tbl2 = nil

		for i = 0, n3 - 64 - 1, 64 do
			local v8 = fn16(str2, string.sub(arg, i + 1, i + 64), n6, 64, n4 + n5)
			n7 += 1

			if n7 == 15 then
				n4 = 0
				n5 = 2
				str2 = v8
			else
				n4 = 0

				if n7 ~= 16 then
					str2 = v8
				else
					local n8 = n6 + 1
					tbl2 = tbl2 or {}

					while n8 % 2 == 0 do
						v8 = fn16("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", table.remove(tbl2) .. v8, 0, 64, 4)
						n8 = n8 / 2 // 1
					end

					table.insert(tbl2, v8)
					n6 += 1
					n4 = 1
					n5 = 0
					str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
					n7 = 0
				end
			end
		end

		local n8 = (n3 - 1) % 64 + 1
		local str3 = string.sub(arg, -n8)
		local n9

		if n6 > 0 then
			local v8 = fn16(str2, str3, n6, n8, n4 + 2)

			for i = #tbl2, 2, -1 do
				v8 = fn16("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", tbl2[i] .. v8, 0, 64, 4)
			end

			str3 = tbl2[1] .. v8
			n9 = 12
			str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
			n8 = 64
		else
			n9 = n4 + 10
		end

		return fn16(str2, str3, 0, n8, n9)
	end
end

if ypcall ~= pcall then
	LPH_CRASH()
end

if pcall(request, "hi") then
	LPH_CRASH()
end

local function fn11(...)
	if not pcall(tostring, select(31, ...)) then
		LPH_CRASH()
	end
end

fn11(pcall(function()
	return 996869, 206207, 271837, 209203, 106006, 800111, 358285, 553371, 921526, 999289, 961968, 755646, 325597, 684249, 928572, 336433, 663349, 944957, 219269, 645048, 916194, 754246, 661925, 343848, 370182, 352591, 922861, 821566, 942851, nil
end))

local function fn12(...)
	if not pcall(type, select(31, ...)) then
		LPH_CRASH()
	end
end

fn12(pcall(function()
	return 177075, 29942, 811713, 406000, 634033, 124618, 973930, 422804, 418100, 197673, 645076, 37541, 627605, 181108, 322033, 47265, 54455, 723508, 800879, 702606, 417189, 464053, 228212, 992820, 903339, 289828, 574222, 847161, 553983, nil
end))

do
	local request_ = syn and syn.request or request or http_request
	local n3 = 0
	local n4 = 0

	pcall(function()
		local function fn13(arg)
			tostring(arg[1])
		end

		fn13(setmetatable({}, { __index = function()
			local fn14 = nil

			fn14 = function()
				n3 += 1
				return fn14()
			end

			fn14()
		end }))
	end)

	pcall(function()
		request_(setmetatable({}, { __index = function()
			local fn13 = nil

			fn13 = function()
				n4 += 1
				return fn13()
			end

			fn13()
		end }))
	end)

	local n5 = n4 - n3

	if n3 + n4 < 20000 and not identifyexecutor():match("^Hydrogen") and not identifyexecutor():match("^Xeno") then
		fn("J2_069")
		LPH_CRASH()
	end

	if n5 ~= 0 and not identifyexecutor():match("^Hydrogen") and not identifyexecutor():match("^Xeno") then
		if not (identifyexecutor():match("^Wave") and n5 == 200) then
			fn("J2_016")
			LPH_CRASH()
		end
	end
end

local flag3 = false

pcall(function()
	flag3 = true
end)

while not flag3 do
end

local n3 = n + 1

if n3 == 0 then
	fn("J2_158")
	LPH_CRASH()
end

task.spawn(function()
	while task.wait() do
		if not (n3 < 0) then
			continue
		end
		break
	end
end)

do
	local ok, result = pcall(function()
		if newcclosure then
			task.spawn(newcclosure(function()
				n2 += 17
				tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "jCvbh7hhluN21Q")
			end))
		end
	end)

	local v8 = result

	if not ok and (type(v8) == "string" and v8:find("expected lua") or v8:find("than 0")) then
		fn("J2_220")
		LPH_CRASH()
	end
end

task.spawn(function()
	for i = 1, 100 do
		pcall(setmetatable(setmetatable({}, { __call = function()
			n2 += 1
			tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "ZKYNz9KXc")

			error(setmetatable({}, { __tostring = function()
				fn("J2_091")
				LPH_CRASH()
			end }))
		end }), { __tostring = function()
			fn("J2_104")
			LPH_CRASH()
		end }))
	end
end)

local tbl2 = {
	__tostring = print,
	__call = function()
		n2 += 18
		tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "Yv8yuOUxrhke2D16k7c5CZWhuoxHeJHKVSLYVFvVMB3KiOYSDUo")

		if debug and debug.getconstants then
			if #debug.getconstants(3) < 5 and #debug.getconstants(3) ~= 0 then
				fn("J2_092")
				LPH_CRASH()
			end
		end
	end,
}

pcall(setmetatable(setmetatable({}, {}), tbl2))
n2 += 33
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "EEHjFHWHV7t7S")
n2 += 25
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "yh1qbAgq")
n2 += 13
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "5DNTqupZL")

if #tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") + 2704 ~= n2 then
	fn("J2_100B")
	LPH_CRASH()
end

if #tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") ~= 116 then
	fn("J2_118")
	LPH_CRASH()
end

if n2 ~= 2820 then
	fn("J2_100D")
	LPH_CRASH()
end

local fn13

fn13 = function(arg, arg2)
	if not rawequal(arg2, 332588) then
		fn("J2_183")
		LPH_CRASH()
	end

	if arg2 ~= 332588 then
		fn("J2_206")
		LPH_CRASH()
	end

	local flag4 = type(arg2) ~= "number"

	if not flag4 then
		local v8 = tostring
		flag4 = tostring(arg2) ~= v8(332588)
	end

	if flag4 then
		fn("J2_146")
		LPH_CRASH()
	end

	if not ({ [arg2] = true })[332588] then
		fn("J2_127")
		LPH_CRASH()
	end

	if arg2 - 332588 ~= 0 then
		fn("J2_167")
		LPH_CRASH()
	end

	local str = tostring(arg)

	if str == "" then
		crash_client("oth-1")
	end

	local str2 = str:gsub(("%s: "):format(type(arg)), "")

	if str2:sub(1, 2) == "0x" then
		str2 = str2:sub(3)
	end

	local n4 = 0

	for i = 1, #str2 do
		local str3 = str2:sub(i, i)
		local n5 = 0

		for i2 = 1, 16 do
			if ("0123456789abcdef"):sub(i2, i2) == str3 then
				n5 = i2 - 1
				break
			end
		end

		n4 = (n4 * 16 + n5) % 9007199254740991
	end

	return n4
end

if debug.info(1, "l") ~= v4 or debug.info(1, "l") ~= v then
	fn("J2_048")
	LPH_CRASH()
end

local v8
v8 = debug.info(1, "l")
local v9 = elapsedTime()

if type(v9) ~= "number" or not rawequal(v9, v9) or v9 * 0 ~= 0 or v9 + 0 ~= v9 then
	fn("J2_RVS")
	LPH_CRASH()
end

do
	local n4 = math.random(1, 100000)

	if type(n4) ~= "number" then
		fn("J2_214")
		LPH_CRASH()
	end

	if not rawequal(n4, n4) then
		fn("J2_214")
		LPH_CRASH()
	end

	if n4 * 0 ~= 0 then
		fn("J2_214")
		LPH_CRASH()
	end

	local n5 = n4 // 1

	if type(n5) ~= "number" then
		fn("J2_MS14")
		LPH_CRASH()
	end

	if n5 ~= n4 == true then
		fn("J2_MS14")
		LPH_CRASH()
	end

	if not rawequal(n5, n4) == true then
		fn("J2_MS14")
		LPH_CRASH()
	end

	if (n4 < 1 or n4 > 100000 or n4 % 1 ~= 0) == true then
		fn("J2_218")
		LPH_CRASH()
	end
end

local str = tostring({})

if not (not (type(str) ~= "string") and not not str:match("^table: 0x[%da-fA-F]+$")) then
	fn("J2_SOF8")
	LPH_CRASH()
end

if type(debug) ~= "table" == true then
	fn("J2_086")
	LPH_CRASH()
end

if type(debug.info) ~= "function" then
	fn("J2_086")
	LPH_CRASH()
end

if type(debug.traceback) ~= "function" == true then
	fn("J2_086")
	LPH_CRASH()
end

local str2 = table.concat({ "hM", "T2AxAX", "3", "D20", "K1KbiDJWV", "QPz" })

if type(str2) ~= "string" then
	fn("J2_219")
	LPH_CRASH()
end

if str2 ~= "hMT2AxAX3D20K1KbiDJWVQPz" then
	fn("J2_219")
	LPH_CRASH()
end

if tostring({}) == tostring({}) then
	fn("J2_HP2")
	LPH_CRASH()
end

do
	local v10 = Random.new():NextInteger(1, 9999999)
	local v11 = Random.new():NextInteger(1, 9999999)
	local v12 = Random.new():NextInteger(1, 9999999)

	if v10 == v11 and v11 == v12 then
		fn("J2_025")
		LPH_CRASH()
	end

	if type(v10) ~= "number" == true then
		fn("J2_006")
		LPH_CRASH()
	end

	if v10 * 0 ~= 0 then
		fn("J2_006")
		LPH_CRASH()
	end

	if v10 // 1 ~= v10 then
		fn("J2_006")
		LPH_CRASH()
	end
end

do
	local now = os.time()
	local unixTimestamp = DateTime.now().UnixTimestamp

	if (type(now) ~= "number" or type(unixTimestamp) ~= "number" or now - unixTimestamp > 2 or unixTimestamp - now > 2) == true then
		fn("J2_200")
		LPH_CRASH()
	end
end

local part
part = Instance.new("Part")
local Stats
Stats = game:GetService("Stats")
local n4

do
	local ok, result = pcall(function()
		return Stats.Network.ServerStatsItem.Stats.bytesSentPerSec:GetValue() * 2833
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	if result < 0 then
		result = -result
	end

	local n5 = (68578335 + result // 1 % 9999999 + 7603114) % 9999999

	local ok2, result2 = pcall(function()
		local dataPingDetails = Stats.Network.ServerStatsItem.DataPingDetails
		local estTotal = dataPingDetails.EstTotal
		local n6 = dataPingDetails.unrelEstTotal:GetValue() * 3019 + estTotal:GetValue() * 3011
		local measuredTotal = dataPingDetails.MeasuredTotal
		return n6 + dataPingDetails.unrelMeasuredTotal:GetValue() * 2999 + measuredTotal:GetValue() * 2971
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n6 = ((n5 + result2 // 1 % 9999999) * 93 + 4008015) % 9999999

	local ok3, result3 = pcall(function()
		return Stats.Network.ServerStatsItem.Stats.totalMessageBytesSent:GetValue() * 2837
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n7 = (n6 + result3 // 1 % 9999999 * 15 + 8066644) % 9999999

	local ok4, result4 = pcall(function()
		local dataPingDetails = Stats.Network.ServerStatsItem.DataPingDetails
		local unrelRakPing = dataPingDetails.unrelRakPing
		return dataPingDetails.RakPing:GetValue() * 3049 + unrelRakPing:GetValue() * 3041
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	n4 = (n7 + result4 // 1 % 9999999 * 25 + 2775342) % 9999999
end

local n5

do
	local ok, result = pcall(function()
		local serverStatsItem = Stats.Network.ServerStatsItem
		return (tonumber(serverStatsItem["Data Ping"]:GetValueString():split("(")[1]) or 0) * 3169 + (tonumber(serverStatsItem["Send kBps"]:GetValueString()) or 0) * 3163
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	if result < 0 then
		result = -result
	end

	local n6 = ((2003299 + result // 1 % 9999999) * 21 + 44746) % 9999999

	local ok2, result2 = pcall(function()
		local receivedDataPackets = Stats.Network.ServerStatsItem["Received Data Packets"]
		local size = receivedDataPackets.Size
		return receivedDataPackets:GetValue() * 3083 + size:GetValue() * 3067
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n7 = (n6 + (result2 // 1 % 9999999 + 905280) * 11) % 9999999

	local ok3, result3 = pcall(function()
		local serverStatsItem = Stats.Network.ServerStatsItem
		return (tonumber(serverStatsItem.TotalInDataBW:GetValueString()) or 0) * 3109 + (tonumber(serverStatsItem.TotalOutDataBW:GetValueString()) or 0) * 3089
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n8 = (n7 * 73 + result3 // 1 % 9999999 + 4333121) % 9999999

	local ok4, result4 = pcall(function()
		return tonumber(Stats.Network.ServerStatsItem.ElapsedTime:GetValueString()) or 0
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	n5 = (n8 * 59 + result4 // 1 % 9999999 + 5920657) % 9999999
end

local n6

do
	local globalWind = workspace.GlobalWind
	local position = workspace.WorldPivot.Position
	local n7 = globalWind.X * position.X + globalWind.Y * position.Y + globalWind.Z * position.Z

	if n7 * 0 ~= 0 then
		n7 = 0
	end

	if n7 < 0 then
		n7 = -n7
	end

	local n8 = (6856868 + n7 // 1 % 9999999 * 61 + 5459716) % 9999999
	local terrain = workspace.Terrain
	local n9 = terrain.Mass + terrain.WaterWaveSpeed * 4001 + terrain.WaterWaveSize * 3989

	if n9 * 0 ~= 0 then
		n9 = 0
	end

	if n9 < 0 then
		n9 = -n9
	end

	local n10 = ((n8 + n9 // 1 % 9999999) * 93 + 5171910) % 9999999
	local n11 = workspace.Gravity * 4081 - workspace.FallenPartsDestroyHeight * 4073 + workspace.DistributedGameTime * 4049

	if n11 * 0 ~= 0 then
		n11 = 0
	end

	if n11 < 0 then
		n11 = -n11
	end

	local n12 = (n10 * 57 + n11 // 1 % 9999999 + 3217572) % 9999999
	local size = workspace.Terrain.Size
	local n13 = size.X * 4093 + size.Y * 4079 + size.Z * 4057

	if n13 * 0 ~= 0 then
		n13 = 0
	end

	if n13 < 0 then
		n13 = -n13
	end

	n6 = (n12 * 21 + n13 // 1 % 9999999 + 9592770) % 9999999
end

local n7

do
	local currentCamera = workspace.CurrentCamera
	local n8 = currentCamera.FieldOfView * 3877 + currentCamera.DiagonalFieldOfView * 3853 + currentCamera.MaxAxisFieldOfView * 3833

	if n8 * 0 ~= 0 then
		n8 = 0
	end

	if n8 < 0 then
		n8 = -n8
	end

	local n9 = (93298716 + n8 // 1 % 9999999 + 5873671) % 9999999
	local cFrame = workspace.CurrentCamera.CFrame
	local n10 = cFrame.X * 3919 + cFrame.Y * 3907 + cFrame.Z * 3889

	if n10 * 0 ~= 0 then
		n10 = 0
	end

	if n10 < 0 then
		n10 = -n10
	end

	local n11 = ((n9 + n10 // 1 % 9999999) * 73 + 6155764) % 9999999
	local cFrame2 = workspace.CurrentCamera.CFrame
	local lookVector = cFrame2.LookVector
	local n12 = lookVector.X * 3727 + lookVector.Y * 3719 + lookVector.Z * 3697 + cFrame2.RightVector.X * 3677 + cFrame2.UpVector.Y * 3659

	if n12 * 0 ~= 0 then
		n12 = 0
	end

	if n12 < 0 then
		n12 = -n12
	end

	local n13 = ((n11 + n12 // 1 % 9999999) * 29 + 3963436) % 9999999
	local position = workspace.CurrentCamera.Focus.Position
	local n14 = position.X * 3821 + position.Y * 3797 + position.Z * 3779

	if n14 * 0 ~= 0 then
		n14 = 0
	end

	if n14 < 0 then
		n14 = -n14
	end

	n7 = (n13 + (n14 // 1 % 9999999 + 1953959) * 27) % 9999999
end

local n8

do
	local n9 = os.time() * 2699 + os.clock() * 2689

	if n9 * 0 ~= 0 then
		n9 = 0
	end

	if n9 < 0 then
		n9 = -n9
	end

	local n10 = ((7493815 + n9 // 1 % 9999999) * 3 + 7051800) % 9999999
	local n11 = #game:GetService("StarterGui"):GetChildren() * 2677

	if n11 * 0 ~= 0 then
		n11 = 0
	end

	if n11 < 0 then
		n11 = -n11
	end

	local n12 = (n10 + (n11 // 1 % 9999999 + 2978905) * 9) % 9999999
	local n13 = elapsedTime() * 2729

	if n13 * 0 ~= 0 then
		n13 = 0
	end

	if n13 < 0 then
		n13 = -n13
	end

	local n14 = (n12 * 73 + n13 // 1 % 9999999 + 4631349) % 9999999
	local userAgent = game:GetService("HttpService"):GetUserAgent()
	local n15 = 5381

	for i = 1, #userAgent do
		n15 = (n15 * 33 + string.byte(userAgent, i)) % 9999999
	end

	if n15 * 0 ~= 0 then
		n15 = 0
	end

	if n15 < 0 then
		n15 = -n15
	end

	n8 = (n14 + n15 // 1 % 9999999 * 33 + 7938243) % 9999999
end

do
	local n9 = #(gethui and gethui() or game:GetService("CoreGui")):GetChildren() * 2731

	if n9 * 0 ~= 0 then
		n9 = 0
	end

	if n9 < 0 then
		n9 = -n9
	end

	local n10 = ((2136394 + n9 // 1 % 9999999) * 65 + 405307) % 9999999
	local getregistry = debug and debug.getregistry
	local flag4 = false
	local result = nil

	if getregistry then
		flag4, result = pcall(getregistry)
	end

	local n11 = (flag4 and type(result) == "table" and #result or 0) * 2749

	if n11 * 0 ~= 0 then
		n11 = 0
	end

	if n11 < 0 then
		n11 = -n11
	end

	local n12 = ((n10 + n11 // 1 % 9999999) * 85 + 1583741) % 9999999
	local part2 = Instance.new("Part")
	local debugId = part2:GetDebugId()
	part2:Destroy()
	local n13 = 0

	for i = 1, #debugId do
		n13 = (n13 * 31 + string.byte(debugId, i)) % 9999999
	end

	if n13 * 0 ~= 0 then
		n13 = 0
	end

	if n13 < 0 then
		n13 = -n13
	end

	local n14 = (n12 + (n13 // 1 % 9999999 + 8352531) * 59) % 9999999
	local v10 = getgc
	local flag5 = false
	local result2 = nil

	if type(v10) == type(pcall) then
		flag5, result2 = pcall(v10)
	end

	local n15 = (flag5 and type(result2) == "table" and #result2 or 0) * 2753

	if n15 * 0 ~= 0 then
		n15 = 0
	end

	if n15 < 0 then
		n15 = -n15
	end

	local n16 = (n14 * 13 + n15 // 1 % 9999999 + 9446612) % 9999999

	local ok, result3 = pcall(function()
		local frameRateManager = Stats.FrameRateManager
		local gpuVariance = frameRateManager.GpuVariance
		local n17 = frameRateManager.MsFrame0:GetValue() * 3259 + gpuVariance:GetValue() * 3229
		local batches = frameRateManager.Batches
		return n17 + frameRateManager.Indices:GetValue() * 3217 + batches:GetValue() * 3203
	end)

	if not ok or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n17 = (869513720 + result3 // 1 % 9999999 + 7948906) % 9999999

	local ok2, result4 = pcall(function()
		return Stats.DataSendKbps * 3391 + Stats.DataReceiveKbps * 3373
	end)

	if not ok2 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	local n18 = (n17 * 93 + result4 // 1 % 9999999 + 2400081) % 9999999

	local ok3, result5 = pcall(function()
		return Stats.FrameRateManager.AverageFPS:GetValue() * 3169
	end)

	if not ok3 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	if result5 < 0 then
		result5 = -result5
	end

	local n19 = (n18 + result5 // 1 % 9999999 * 65 + 539944) % 9999999

	local ok4, result6 = pcall(function()
		return Stats.FrameRateManager.VideoMemoryInMB:GetValue() * 3167
	end)

	if not ok4 or type(result6) ~= "number" then
		result6 = 0
	end

	if result6 * 0 ~= 0 then
		result6 = 0
	end

	if result6 < 0 then
		result6 = -result6
	end

	local n20 = ((n19 + result6 // 1 % 9999999) * 65 + 1581287) % 9999999
	local Lighting = game:GetService("Lighting")
	local n21 = Lighting.ClockTime * 3637 + Lighting.Brightness * 3617 + Lighting.ExposureCompensation * 3593

	if n21 * 0 ~= 0 then
		n21 = 0
	end

	if n21 < 0 then
		n21 = -n21
	end

	local n22 = (7249765 + (n21 // 1 % 9999999 + 5140476) * 83) % 9999999
	local Lighting2 = game:GetService("Lighting")
	local n23 = Lighting2.FogEnd * 3581 + Lighting2.ShadowSoftness * 3559 + Lighting2.GeographicLatitude * 3541

	if n23 * 0 ~= 0 then
		n23 = 0
	end

	if n23 < 0 then
		n23 = -n23
	end

	local n24 = ((n22 + n23 // 1 % 9999999) * 43 + 8724625) % 9999999
	local sunDirection = game:GetService("Lighting"):GetSunDirection()
	local n25 = sunDirection.X * 3517 + sunDirection.Y * 3499 + sunDirection.Z * 3491

	if n25 * 0 ~= 0 then
		n25 = 0
	end

	if n25 < 0 then
		n25 = -n25
	end

	local n26 = (n24 + (n25 // 1 % 9999999 + 5329052) * 47) % 9999999
	local Lighting3 = game:GetService("Lighting")
	local moonDirection = Lighting3:GetMoonDirection()
	local n27 = moonDirection.X * 3469 + moonDirection.Y * 3457 + moonDirection.Z * 3449 + Lighting3:GetMoonPhase() * 3433

	if n27 * 0 ~= 0 then
		n27 = 0
	end

	if n27 < 0 then
		n27 = -n27
	end

	local n28 = ((((((((5331448 + n4 * 3) % 9999999 + n5 * 5) % 9999999 + n6 * 7) % 9999999 + n7 * 9) % 9999999 + n8 * 11) % 9999999 + n16 * 13) % 9999999 + n20 * 15) % 9999999 + ((n26 + n27 // 1 % 9999999) * 61 + 3049173) % 9999999 * 17) % 9999999
	local n29 = math.random(1, 9999999)

	if n29 * 0 ~= 0 then
		n29 = 0
	end

	if n29 < 0 then
		n29 = -n29
	end

	local n30 = n29 // 1 % 9999999
	local n31 = game.PlaceId + game.PlaceVersion * 4099

	if n31 * 0 ~= 0 then
		n31 = 0
	end

	if n31 < 0 then
		n31 = -n31
	end

	local n32 = n31 // 1 % 9999999

	local ok5, result7 = pcall(function()
		return tonumber(string.match(string.format("%*", {}), "0x(%x+)"), 16) or 0
	end)

	if not ok5 or type(result7) ~= "number" then
		result7 = 0
	end

	if result7 * 0 ~= 0 then
		result7 = 0
	end

	if result7 < 0 then
		result7 = -result7
	end

	local n33 = result7 // 1 % 9999999
	local n34 = math.floor(workspace.DistributedGameTime * 1000)

	if n34 * 0 ~= 0 then
		n34 = 0
	end

	if n34 < 0 then
		n34 = -n34
	end

	local n35 = n34 // 1 % 9999999
	local n36 = math.floor(workspace.CurrentCamera.FieldOfView * 1000)

	if n36 * 0 ~= 0 then
		n36 = 0
	end

	if n36 < 0 then
		n36 = -n36
	end

	local n37 = n36 // 1 % 9999999
	local n38 = #game:GetService("ReplicatedFirst"):GetChildren()

	if n38 * 0 ~= 0 then
		n38 = 0
	end

	if n38 < 0 then
		n38 = -n38
	end

	local n39 = n38 // 1 % 9999999

	local ok6, result8 = pcall(function()
		return game:GetService("Stats").InstanceCount
	end)

	if not ok6 or type(result8) ~= "number" then
		result8 = 0
	end

	if result8 * 0 ~= 0 then
		result8 = 0
	end

	if result8 < 0 then
		result8 = -result8
	end

	local n40 = result8 // 1 % 9999999
	local n41 = gcinfo() * 1000

	if n41 * 0 ~= 0 then
		n41 = 0
	end

	if n41 < 0 then
		n41 = -n41
	end

	part:SetAttribute("_4258267d", (n28 + ((((((((((6989873 + n30) * 35 + 8742611) % 9999999 + n32) * 27 + 8792606) % 9999999 + n33 * 11 + 7520512) % 9999999 + (n35 + 7421140) * 77) % 9999999 + (n37 + 2842533) * 29) % 9999999 + (n39 + 6992396) * 67) % 9999999 + (n40 + 9507366) * 21) % 9999999 + (n41 // 1 % 9999999 + 393228) * 25) % 9999999 + 1) % 9999999 // 1 + 1)
end

for i = 1, 27 do
	local v10 = part
	local setAttribute = v10.SetAttribute
	local n9

	if tostring({}) < tostring({}) then
		n9 = part:GetAttribute("_4258267d") + 1
	else
		n9 = part:GetAttribute("_4258267d") * 2
	end

	setAttribute(v10, "_4258267d", n9 % 9999998 + 1)
end

local attribute
attribute = part:GetAttribute("_4258267d")
tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(attribute, 3915771850)))

if (tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_dMS5ukh0wAHytyc") == "_dMS5ukh0wAHytyc" or tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_dMS5ukh0wAHytyc") ~= tostring(bit32.bxor(attribute, 3915771850))) and not identifyexecutor():match("^Synapse") then
	fn("J2_182")
	LPH_CRASH()
end

local v10

do
	local tbl3 = { 1, 2, 3, 4 }
	local tbl4 = {}

	for i = 1, 46 do
		local tbl5 = {}

		for i2 = 1, 33 do
			if i2 % 4 == 0 then
				tbl5[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl5[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl5[i2] = table.clone(tbl3)
			else
				tbl5[i2] = newproxy(true)
			end
		end

		tbl4[buffer.create(8)] = os.clock() * 1000 + i * 17
	end

	local n9 = 0

	for _, v11 in tbl4, nil, nil do
		n9 = ((n9 + v11 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n10 = 0 + n9
	local v11 = fn9()

	for i = 1, 32 do
		local tbl5 = {}

		for i2 = 1, 33 do
			if i2 % 4 == 0 then
				tbl5[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl5[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl5[i2] = table.clone(tbl3)
			else
				tbl5[i2] = newproxy(true)
			end
		end

		v11[fn9()] = tick() * 250 + i * 12
	end

	for i = 1, 26 do
		local tbl5 = {}

		for i2 = 1, 33 do
			if i2 % 4 == 0 then
				tbl5[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl5[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl5[i2] = table.clone(tbl3)
			else
				tbl5[i2] = newproxy(true)
			end
		end

		v11[buffer.create(12)] = tick() * 250 + i * 12
	end

	local n11 = 0

	for _, v12 in v11, nil, nil do
		n11 = ((n11 + v12 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n12 = n10 + n11
	local tbl5 = {}

	for i = 1, 60 do
		local tbl6 = {}

		for i2 = 1, 33 do
			if i2 % 4 == 0 then
				tbl6[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl6[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl6[i2] = table.clone(tbl3)
			else
				tbl6[i2] = newproxy(true)
			end
		end

		tbl5[newproxy(false)] = tick() * 100 + i * 53
	end

	local n13 = 0

	for _, v12 in tbl5, nil, nil do
		n13 = ((n13 + v12 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n14 = n12 + n13
	local tbl6 = {}

	for i = 1, 74 do
		local tbl7 = {}

		for i2 = 1, 33 do
			if i2 % 4 == 0 then
				tbl7[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl7[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl7[i2] = table.clone(tbl3)
			else
				tbl7[i2] = newproxy(true)
			end
		end

		tbl6[{}] = math.random(1, 9999999) + i * 31
	end

	local n15 = 0

	for _, v12 in tbl6, nil, nil do
		n15 = ((n15 + v12) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n16 = (n14 + n15) % 9999999 + 1
	local n17 = 17

	while n17 > 0 do
		if tostring({}) < tostring({}) then
			n16 = (n16 + 94) % 9999999
		else
			n16 = (n16 * 7 + 228) % 9999999
		end

		n17 -= 1
	end

	local n18 = 12

	while n18 > 0 do
		local v12 = tostring
		local v13 = fn9()
		local v14 = v12(v13)
		local v15 = tostring
		local v16 = fn9()

		if v14 < v15(v16) then
			n16 = (n16 + 42) % 9999999
		else
			n16 = (n16 * 4 + 595) % 9999999
		end

		n18 -= 1
	end

	local part2 = Instance.new("Part")
	part2:SetAttribute("_f3ec17c287de", 1)
	part2:SetAttribute("_5f70ad81a8b1", 0)
	local n19 = 263060
	local n20 = 0
	local n21 = 0
	local n22 = 0
	local n23 = 1

	while true do
		if not rawequal(n19, 263060) or type(n19) ~= "number" then
			fn("J2_006")
			LPH_CRASH()
		end

		local n24 = math.random(800, 999)

		if type(n24) ~= "number" or n24 < 800 or n24 > 999 or n24 ~= math.floor(n24) or not fn3(math.floor(n24), n24 // 1, 142956) then
			fn("J2_MS17")
			LPH_CRASH()
		end

		local n25 = math.random(800, 999)

		if type(n25) ~= "number" or n25 < 800 or n25 > 999 or n25 ~= math.floor(n25) or not fn3(math.floor(n25), n25 // 1, 142956) then
			fn("J2_169")
			LPH_CRASH()
		end

		n21 = n24 == n20 and n21 + 1 or 0

		if n21 >= 3 then
			fn("J2_050")
			LPH_CRASH()
		end

		if part2:GetAttribute("_f3ec17c287de") <= 9999 or part2:GetAttribute("_f3ec17c287de") < 9999 then
			if n22 ~= 0 and getfenv()[getfenv()[2014255]] == nil then
				fn("J2_HP4")
				LPH_CRASH()
			end

			if getfenv()[getfenv()[2014255]] == nil and n22 ~= 0 then
				fn("J2_RVP5")
				LPH_CRASH()
			end

			part2:SetAttribute("_f3ec17c287de", part2:GetAttribute("_f3ec17c287de") + n24)
			part2:SetAttribute("_5f70ad81a8b1", part2:GetAttribute("_5f70ad81a8b1") + 1)
			getfenv()[2014255] = n24
			getfenv()[n24] = n24
			n22 += 1

			if n22 > 20 then
				fn("J2_171")
				LPH_CRASH()
			end

			n23 += n25
			n20 = n24
			continue
		end

		break
	end

	if not fn3(n22, part2:GetAttribute("_5f70ad81a8b1"), 142956) or n22 < 11 or part2:GetAttribute("_5f70ad81a8b1") < 11 or n23 + 1000 <= 9999 then
		fn("J2_082")
		LPH_CRASH()
	end

	if n23 < 10000 then
		n23 += 1000
	end

	local n24 = (n16 + part2:GetAttribute("_f3ec17c287de") + n23) % 9999999 + 1
	getfenv()[235] = n24
	writefile(tbl._1f9c82598da2, n24 .. "")
	v10 = n24
end

if v10 .. "" ~= getfenv()[235] .. "" then
	fn("J2_RVP1")
	LPH_CRASH()
end

tbl._99d9956d1a32:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small, v10 % 957773 / 957773)
tbl._ef48b915646d = tbl._99d9956d1a32:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small)

if tbl._ef48b915646d == nil or tbl._ef48b915646d == v10 % 957773 / 957773 then
	fn("J2_181")
	LPH_CRASH()
end

local v11

local function fn14()
	error("devirt: symbolic next pc/mode: (r33 Add 1) / 153 (at 153:49)")
end

v11 = fn14(610760)
local flag4 = nil

for i = 1, 3 do
	local tbl3 = {}

	for i2 = 1, 40 do
		tbl3[{}] = math.random(1, 9999999) + i2
	end

	local n9 = 0

	for _, v12 in tbl3, nil, nil do
		n9 = ((n9 + v12) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n10 = n9 % 99999
	flag4 = flag4 and n10 == flag4

	if flag4 then
		fn("J2_037")
		LPH_CRASH()
	end

	v11 += n10
	flag4 = n10
end

local n9
local str3 = game:GetService("HttpService"):GenerateGUID(false) .. tostring(({}).n) .. tostring({}) .. tick()
n9 = 0

for i = 1, #str3 do
	n9 = (n9 + string.byte(str3, i) * 31 + 3831) * 33 % 1000000 + 1
end

local n10 = 35

while n10 > 0 do
	if tostring({}) < tostring({}) then
		n9 = (n9 + 44) % 1000000
	else
		n9 = (n9 * 3 + 471) % 1000000
	end

	n10 -= 1
end

local str4 = tostring({})

while str4 == tostring({}) do
	str4 = tostring({})
end

local n11

do
	local kind = typeof(isfunctionhooked)

	if kind == "number" or kind == "string" or kind == "boolean" then
		kind = "" .. isfunctionhooked
	elseif kind == "table" then
		kind = "{}"
	elseif kind == "function" then
		kind = "function: " .. (tostring(isfunctionhooked):match("0x%x+") or "0x1")
	end

	local n12 = 0

	for i = 4, #kind do
		local v12 = kind:byte(i)
		n12 = (n12 * 16 + (v12 >= 48 and v12 <= 57 and v12 - 48 or v12 >= 97 and v12 <= 102 and v12 - 97 + 10 or v12 >= 65 and v12 <= 70 and v12 - 65 + 10 or 0)) % 9007199254740991
	end

	n11 = n9 / 1000 // 1 % 100000 + n12 / 1400000000000087 // 1 * 89 + 1 + 1
end

wait(0.1)

if getscriptbytecode then
	local character = game:GetService("Players").LocalPlayer.Character
	character = character and character:FindFirstChild("Animate")
	character = character and getscriptbytecode(character)

	if type(character) == "string" then
		n11 += #character
	end
end

local n12
local v12 = game
n12 = Random.new(v10):NextInteger(1, 9999999) + #v12:GetDescendants()

if getinstances then
	n12 += #getinstances()
end

if getnilinstances then
	n12 += #getnilinstances()
end

local n13

do
	local kind = typeof(http.request)

	if kind == "number" or kind == "string" or kind == "boolean" then
		kind = "" .. http.request
	elseif kind == "table" then
		kind = "{}"
	elseif kind == "function" then
		kind = "function: " .. (tostring(http.request):match("0x%x+") or "0x1")
	end

	local n14 = 0

	for i = 4, #kind do
		local v13 = kind:byte(i)
		n14 = (n14 * 16 + (v13 >= 48 and v13 <= 57 and v13 - 48 or v13 >= 65 and v13 <= 70 and v13 - 65 + 10 or v13 >= 97 and v13 <= 102 and v13 - 97 + 10 or 0)) % 9007199254740991
	end

	local n15 = n9 % 100000 + n14 / 1125899906842679 // 1 * 1531 + (tonumber(tostring({}):match("0x(%x+)") or "1", 16) + tonumber(tostring(newproxy()):match("0x(%x+)") or "1", 16) + tonumber(tostring(buffer.create(8)):match("0x(%x+)") or "1", 16)) % 10000 + 1
	local DebugSettings = settings():GetService("DebugSettings")
	local instanceCount = DebugSettings.InstanceCount
	n13 = n15 + #listfiles("") + instanceCount + DebugSettings.JobCount + settings():GetService("NetworkSettings").FreeMemoryMBytes // 1
end

if settings():getService("DebugSettings") then
	n13 += settings():getService("DebugSettings").PlayerCount
end

tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ೖဎៅෟጒ", n12)

if not tostring(attribute):match("^%d+$") or not tostring(n12):match("^%d+$") then
	fn("J2_MS08")
	LPH_CRASH()
end

local n14 = (attribute + n12) // 1

if (type(n14) ~= "number" or n14 * 0 ~= 0) == true then
	fn("J2_HP1")
	LPH_CRASH()
end

if n14 ~= n14 // 1 then
	fn("J2_HP1")
	LPH_CRASH()
end

local n15 = 0

for k in {
	[attribute] = true,
	[v10] = true,
	[v11] = true,
	[n9] = true,
	[n13] = true,
	[n11] = true,
	[n12] = true,
}, nil, nil do
	n15 += 1
end

if n15 < 4 == true then
	fn("J2_162")
	LPH_CRASH()
end

if not (not (attribute // 1 ~= attribute) and not (v10 // 1 ~= v10)) then
	fn("J2_MS11")
	LPH_CRASH()
end

if n12 // 1 ~= n12 == true then
	fn("J2_MS11")
	LPH_CRASH()
end

if not (not (attribute - part:GetAttribute("_4258267d") ~= 0) and not (n12 - n12 ~= 0)) then
	fn("J2_164")
	LPH_CRASH()
end

if not (not (attribute + 0 ~= attribute) and not (n12 + 0 ~= n12)) then
	fn("J2_098")
	LPH_CRASH()
end

if (attribute * 0 ~= 0 or v10 * 0 ~= 0 or v11 * 0 ~= 0 or n9 * 0 ~= 0 or n12 * 0 ~= 0) == true then
	fn("J2_120")
	LPH_CRASH()
end

if attribute % attribute ~= 0 then
	fn("J2_MS22")
	LPH_CRASH()
end

if n12 % n12 ~= 0 then
	fn("J2_MS22")
	LPH_CRASH()
end

if attribute / attribute ~= 1 or n12 / n12 ~= 1 then
	fn("J2_123")
	LPH_CRASH()
end

if not (not (type(attribute) ~= "number") and not (type(v10) ~= "number") and not (type(v11) ~= "number") and not (type(n9) ~= "number")) then
	fn("J2_SOF3")
	LPH_CRASH()
end

if type(n13) ~= "number" or type(n11) ~= "number" or type(n12) ~= "number" then
	fn("J2_SOF3")
	LPH_CRASH()
end

if not rawequal(attribute, attribute) then
	fn("J2_REQ1")
	LPH_CRASH()
end

if not rawequal(v10, getfenv()[235]) == true then
	fn("J2_REQ1")
	LPH_CRASH()
end

if not rawequal(n12, n12) == true then
	fn("J2_REQ1")
	LPH_CRASH()
end

if (attribute < 1 or attribute > 9999999 or v10 < 1 or v10 > 9999999 or v11 < 1 or v11 > 872786 or v11 % 1 ~= 0 or n9 < 0 or n9 > 1000000 or n9 % 1 ~= 0 or n13 < 1 or n13 > 1e9 or n11 < 2 or n11 > 1e9 or n12 < 1 or n12 > 99999999) == true then
	fn("J2_011")
	LPH_CRASH()
end

n2 += 48
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "4nJx3qaPlFq")

if fn4(attribute, n12, 349683) or attribute == n12 or n12 .. "" == attribute then
	fn("J2_MS04")
	LPH_CRASH()
end

n2 += 16
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "Xm2ggd5S")
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ບഞఈ\u{C11}\u{B9B}", (attribute + v10 + v11 + n9 + n13 // 10000 + 1 + n11 // 10000 + 1 + n12 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1)
part:SetAttribute("_8de91042", attribute % 999999)
part:SetAttribute("_9ff230b1", v11 % 999999)
part:SetAttribute("_3c19754b", n9 % 999999)
part:SetAttribute("_f0bb7afd", bit32.bxor(n13 % 999999, n11 % 999999))
local sound
sound = Instance.new("Sound")
sound.Name = "_8e874f10fb1f" .. tostring(n12 % 10000)
sound.Volume = n13 % 100 / 100
sound.Pitch = n11 % 200 / 100
sound.TimePosition = attribute % 1000 / 10
local teleportOptions
teleportOptions = Instance.new("TeleportOptions")

teleportOptions:SetTeleportData({
	_845032601e53 = attribute % 999999 .. "_" .. getfenv()[235] % 999999,
	_a96fe6e41172 = v11 % 999999,
	_398245ae66b2 = n9 % 999999,
	_acef4ed00277 = bit32.bxor(n13 % 999999, n12 % 999999),
	_6e5d35625c5a = bit32.bxor(bit32.bxor(attribute % 999999, v11 % 999999), n11 % 999999),
	_ede3bec9c9f1 = os.time(),
	_504e91944721 = n13 % 10000 .. n11 % 10000,
})

local proxy
proxy = newproxy(true)
local intValue
intValue = Instance.new("IntValue")
local v13
v13 = nil
local frame
frame = Instance.new("Frame")
intValue.Name = (attribute + v10 + v11 + n9 + n13 // 10000 + 1 + n11 // 10000 + 1 + n12 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1
n2 += 38
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "U4SFGgofGL6gfKXJB")
getfenv()[146] = attribute
getfenv()[423] = v10
getfenv()[352] = bit32.bxor(n9 % 4294967295, n12 % 4294967295)

do
	local bxor = bit32.bxor
	local bxor2 = bit32.bxor
	getfenv()[610] = bxor(bit32.bxor(attribute % 4294967295, v10 % 4294967295), bxor2(v11 % 4294967295, n12 % 4294967295))
end

debug.setmemorycategory("_mS2P3fhD" .. tostring((attribute % 417997 * 15 + 5868) % 417997))
n2 += 7
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "ketde")
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "og1I0z9Yh4CLOvJ")

if fn13({}, 332588) == "" then
	fn("J2_224")
	LPH_CRASH()
end

n2 += 18
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "Wu2dFH")

if debug.info(1, "l") ~= v8 or debug.info(1, "l") ~= v then
	fn("J2_145")
	LPH_CRASH()
end

local v14
v14 = debug.info(1, "l")

if restorefunction then
	pcall(restorefunction, request)
end

if isfunctionhooked and isfunctionhooked(request) then
	fn("J2_039")
	LPH_CRASH()
end

local configuration
configuration = Instance.new("Configuration")
local v15

do
	local n16 = 0
	tbl._99d9956d1a32:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger, v11 % 918706 / 918706)
	tbl._7fa45af97cc6 = tbl._99d9956d1a32:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger)

	if tbl._7fa45af97cc6 == nil or tbl._7fa45af97cc6 == v11 % 918706 / 918706 then
		fn("J2_223")
		LPH_CRASH()
	end

	if not (tbl._c51f7ccc1556:HasItem(tbl._88505ca14763) and tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_pO27q6wjqeLjiYR") == tostring(bit32.bxor(attribute, 3915771850))) and not identifyexecutor():match("^Synapse") then
		fn("J2_SOF4")
		LPH_CRASH()
	end

	local bxor = bit32.bxor
	tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(bit32.bxor(3915766695, attribute, n11), bit32.bxor(v11, n12, n9), bxor(v10, n13))))
	local flag5 = tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)

	if flag5 then
		local v16 = tostring
		local bxor2 = bit32.bxor
		local bxor3 = bit32.bxor
		flag5 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_ErRBBKKueqApCY7") == v16(bxor2(bit32.bxor(3915766695, attribute, n11), bit32.bxor(v11, n12, n9), bxor3(v10, n13)))
	end

	if not flag5 and not identifyexecutor():match("^Synapse") then
		fn("J2_RV2")
		LPH_CRASH()
	end

	local function fn15()
		error("devirt: storing a non-empty VM table into a register (at 153:64)")
	end

	v15 = fn15(218309)
end

local n16

do
	local str5 = tostring(v15._83030ab2881402e1b6fdaa4f or "")
	local str6 = tostring(v15._ec2462e6bacbb5ddf170f1e2 or "")
	n16 = ((str6:byte(#str6) or 0) * 71 + #str5 * 27 + (str5:byte(1) or 0) * 107 + #str6 * 55 + (type(v15._ce458af07d85f36322689719) == "number" and v15._ce458af07d85f36322689719 % 804583 or 0) * 65 + (type(v15._c67cf183e16ec9253abd2187) == "number" and v15._c67cf183e16ec9253abd2187 % 842289 or 0) * 127 + (type(v15._a508fb16333dc40353e8e1b4) == "number" and v15._a508fb16333dc40353e8e1b4 % 1055391 or 0) * 75) % 2147483629
end

if (function()
	error("devirt: symbolic next pc/mode: (r16 Add 1) / 153 (at 153:8126)")
end)() ~= true then
	return 0
end

do
	local v16 = tostring
	local bxor = bit32.bxor
	local bxor2 = bit32.bxor

	if tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_zgsQbaHDDNfczZP") ~= v16(bxor(bit32.bxor(v11, n12, n11), bit32.bxor(3915761536, n9, attribute), bxor2(v10, n13))) and not identifyexecutor():match("^Synapse") then
		fn("J2_052")
		LPH_CRASH()
	end
end

local bxor = bit32.bxor
tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(bit32.bxor(v11, n12, n9), bit32.bxor(3915756413, n11, attribute), bxor(v10, n13, n16))))
local flag5 = not tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)

if not flag5 then
	local v16 = tostring
	local bxor2 = bit32.bxor
	local bxor3 = bit32.bxor
	flag5 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_tSJ90U29eNKUm7D") ~= v16(bxor2(bit32.bxor(v11, n12, n9), bit32.bxor(3915756413, n11, attribute), bxor3(v10, n13, n16)))
end

if flag5 and not identifyexecutor():match("^Synapse") then
	fn("J2_042")
	LPH_CRASH()
end

n2 += 19
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "GISOZSXVOH")

if debug.info(1, "l") ~= v14 or debug.info(1, "l") ~= v then
	fn("J2_004")
	LPH_CRASH()
end

debug.info(1, "l")

if (function()
	local n17 = 8
	local n18 = nil
	local n19 = nil
	local n20 = nil
	local n21 = nil
	local n22 = nil
	local v16 = nil
	local n23 = nil
	local n24 = nil
	local n25 = nil
	local n26 = nil
	local v17 = nil
	local bxor2 = nil
	local n27 = nil
	local n28 = nil

	while true do
		local flag6 = true
		local exitTo = nil

		while true do
			if not flag6 then
				if not (n17 <= 29) then
					if not (n17 <= 34) then
						if not (n17 <= 37) then
							if not (n17 <= 38) then
								if not (n17 <= 39) then
									if not (n28 == bxor2(52488205, v17) * 8 + 0) then
										n17 = 24
										flag6 = false
									else
										n17 = 20
										flag6 = n17 <= 19
									end

									continue
								else
									local v18 = table.pack(bit32.band(n22 + 1231693447, 4294967295))
									local v19 = table.pack(bit32.band(v18[1], 65535))
									local n29 = 98287528 + bit32.band(26456 * v19[1] + bit32.lshift(bit32.band(26456 * bit32.rshift(v18[1], 16) + 32335 * v19[1], 65535), 16), 4294967295) % 4294967296
									local v20 = table.pack(bit32.band(bit32.band(n22 + 1231693447, 2719446687), 4294967295))
									local v21 = table.pack(bit32.band(v20[1], 65535))
									local n30 = bit32.band(12624 * v21[1] + bit32.lshift(bit32.band(12624 * bit32.rshift(v20[1], 16) + 865 * v21[1], 65535), 16), 4294967295) % 4294967296
									local v22 = table.pack(bit32.band(bit32.bxor(2719446687, n22 + 1231693447), 4294967295))
									local v23 = table.pack(bit32.band(v22[1], 65535))
									local n31 = (n29 + n30 + bit32.band(39081 * v23[1] + bit32.lshift(bit32.band(39081 * bit32.rshift(v22[1], 16) + 33200 * v23[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
									local n32 = n24 % 4294967296
									local v24 = table.pack(bit32.band(n32 + 306348641, 4294967295))
									local v25 = table.pack(bit32.band(v24[1], 65535))
									local v26 = n31
									n17 = 31
									n21 = 1790121577 + bit32.band(5206 * v25[1] + bit32.lshift(bit32.band(5206 * bit32.rshift(v24[1], 16) + 18834 * v25[1], 65535), 16), 4294967295) % 4294967296
									n22 = n32
									v16 = v26
								end
							else
								n17 = 30
								n20 = 4678786758
								n21 = 83502278
								n22 = 5315397756
								n25 += n24
							end

							flag6 = n17 <= 19
						elseif not (n17 <= 35) then
							if not (n17 <= 36) then
								n17 = 19
								n27 = (n27 + 11093065) % 16777213
								n28 = (100939986 + v17) % 268435456 * 8 + 2
								flag6 = n17 <= 19
							elseif not (n27 ~= 11493078) then
								exitTo = 17
								break
							else
								n17 = 34
								flag6 = n17 <= 19
							end
						else
							exitTo = 16
							break
						end
					elseif not (n17 <= 31) then
						if not (n17 <= 32) then
							if not (n17 <= 33) then
								exitTo = 15
								break
							elseif not (n28 == (54398061 + v17) % 268435456 * 8 + 2) then
								n17 = 40
								flag6 = false
							else
								n17 = 28
								flag6 = n17 <= 19
							end
						else
							exitTo = 14
							break
						end
					else
						if not (n17 <= 30) then
							local v18 = table.pack(bit32.band(bit32.band(1790121577, n22 + 306348641), 4294967295))
							local v19 = table.pack(bit32.band(v18[1], 65535))
							local n29 = bit32.band(65534 * v19[1] + bit32.lshift(bit32.band(65534 * bit32.rshift(v18[1], 16) + 65535 * v19[1], 65535), 16), 4294967295) % 4294967296
							local v20 = table.pack(bit32.band(bit32.bnot(n22 + 306348641), 4294967295))
							local v21 = table.pack(bit32.band(v20[1], 65535))
							local n30 = (n21 + n29 + 1234310229 + bit32.band(5205 * v21[1] + bit32.lshift(bit32.band(5205 * bit32.rshift(v20[1], 16) + 18834 * v21[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n31 = n24 % 4294967296
							local v22 = table.pack(bit32.band(n31 + 3588867693, 4294967295))
							local v23 = table.pack(bit32.band(v22[1], 65535))
							n17 = 22
							n18 = 3588867693
							n19 = 781652597
							n20 = 1346085310
							n21 = 3425098773 + bit32.band(12065 * v23[1] + bit32.lshift(bit32.band(12065 * bit32.rshift(v22[1], 16) + 22498 * v23[1], 65535), 16), 4294967295) % 4294967296
							n22 = n31
							n24 = n30
						else
							local n29 = (n22 + n21 + n20) % 4294967296
							local n30 = n29 % 4294967296
							local v18 = table.pack(bit32.band(n30 + 790419307, 4294967295))
							local v19 = table.pack(bit32.band(v18[1], 65535))
							local n31 = 1898145902 + bit32.band(50778 * v19[1] + bit32.lshift(bit32.band(50778 * bit32.rshift(v18[1], 16) + 5816 * v19[1], 65535), 16), 4294967295) % 4294967296
							local v20 = table.pack(bit32.band(bit32.band(n30 + 790419307, 2278171507), 4294967295))
							local v21 = table.pack(bit32.band(v20[1], 65535))
							local n32 = bit32.band(29516 * v21[1] + bit32.lshift(bit32.band(29516 * bit32.rshift(v20[1], 16) + 53902 * v21[1], 65535), 16), 4294967295) % 4294967296
							local v22 = table.pack(bit32.band(bit32.bxor(2278171507, n30 + 790419307), 4294967295))
							local v23 = table.pack(bit32.band(v22[1], 65535))
							n17 = 39
							n22 = n29 % 4294967296
							n23 = (n31 + n32 + bit32.band(14759 * v23[1] + bit32.lshift(bit32.band(14759 * bit32.rshift(v22[1], 16) + 59719 * v23[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							n24 = n29
						end

						flag6 = n17 <= 19
					end
				elseif not (n17 <= 24) then
					if not (n17 <= 26) then
						if not (n17 <= 27) then
							if not (n17 <= 28) then
								if not (n28 == (100939986 + v17) % 268435456 * 8 + 2) then
									n17 = 33
									flag6 = false
								else
									n17 = 11
									flag6 = n17 <= 19
								end
							else
								local getAttribute = configuration.GetAttribute
								local v18 = getAttribute(getAttribute, "_b8dff174a8eb")
								local n267284e4a64baf4b90eead45 = v15._267284e4a64baf4b90eead45

								if not n267284e4a64baf4b90eead45 then
									local v19 = v18
									n17 = 26
									n25 = n267284e4a64baf4b90eead45
									n26 = 131849
									n28 = v19
								else
									local v19 = v18
									n17 = 15
									n26 = 131849
									n28 = v19
								end

								flag6 = n17 <= 19
							end
						else
							n17 = 19
							n27 = (n27 * 123 + 11550414) % 16777213
							n28 = (199671776 - v17) % 268435456 * 8 + 7
							flag6 = n17 <= 19
						end
					elseif not (n17 <= 25) then
						if not n25 then
							exitTo = 13
							break
						else
							n17 = 5
							flag6 = n17 <= 19
						end
					else
						exitTo = 12
						break
					end
				elseif not (n17 <= 21) then
					if not (n17 <= 22) then
						if not (n17 <= 23) then
							exitTo = 10
							break
						elseif not (v17 % 2 == 1) then
							exitTo = 11
							break
						else
							n17 = 37
							flag6 = n17 <= 19
						end
					else
						local v18 = bit32.band(n19, n22 + n18)
						local v19 = table.pack(bit32.band(n20, 4294967295))
						local v20 = table.pack(bit32.band(v18, 4294967295))
						local v21 = table.pack(bit32.band(v19[1], 65535))
						local v22 = table.pack(bit32.rshift(v19[1], 16))
						local v23 = table.pack(bit32.band(v20[1], 65535))
						local n29 = bit32.band(v21[1] * v23[1] + bit32.lshift(bit32.band(v21[1] * bit32.rshift(v20[1], 16) + v22[1] * v23[1], 65535), 16), 4294967295) % 4294967296
						local v24 = table.pack(bit32.band(bit32.bxor(781652597, n22 + 3588867693), 4294967295))
						local v25 = table.pack(bit32.band(v24[1], 65535))
						local n30 = (n21 + n29 + bit32.band(53472 * v25[1] + bit32.lshift(bit32.band(53472 * bit32.rshift(v24[1], 16) + 43037 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
						local n31 = n24 * 67108864
						local n32 = 1 - 2 * n23

						if n28(n26, n25, n32 * n32) then
							n17 = 23
							flag6 = false
						else
							n17 = 13
							flag6 = n17 <= 19
						end
					end
				else
					if not (n17 <= 20) then
						n17 = 19
						n27 = (n27 * 123 + 9730436) % 16777213
						n28 = bxor2(50580600, v17) * 8 + 6
					else
						local getAttribute = configuration.GetAttribute
						local v18 = getAttribute(getAttribute, "_f89937f1bafe")
						local n83030ab2881402e1b6fdaa4f = v15._83030ab2881402e1b6fdaa4f

						if not n83030ab2881402e1b6fdaa4f then
							local v19 = v18
							n17 = 0
							n28 = v19
						else
							local v19 = v18
							n17 = 14
							n26 = n83030ab2881402e1b6fdaa4f
							n28 = v19
						end
					end

					flag6 = n17 <= 19
				end
			else
				if not (n17 <= 9) then
					if not (n17 <= 14) then
						if not (n17 <= 16) then
							if not (n17 <= 17) then
								if not (n17 <= 18) then
									if not (n28 == (199671776 - v17) % 268435456 * 8 + 7) then
										exitTo = 9
										break
									else
										n17 = 36
										flag6 = n17 <= 19
										continue
									end
								else
									n17 = 19
									n27 = (n27 * 123 + 1249808) % 16777213
									n28 = bxor2(52488205, v17) * 8 + 0
									flag6 = n17 <= 19
									continue
								end
							elseif not n24 then
								exitTo = 8
								break
							else
								n17 = 38
								flag6 = n17 <= 19
								continue
							end
						elseif not (n17 <= 15) then
							if not (n28 == (241298465 - v17) % 268435456 * 8 + 7) then
								exitTo = 7
								break
							else
								n17 = 10
								flag6 = n17 <= 19
								continue
							end
						else
							n17 = 26
							n25 = 12822
							flag6 = false
							continue
						end
					elseif not (n17 <= 11) then
						if not (n17 <= 12) then
							if not (n17 <= 13) then
								if not (n28 ~= n26) then
									n17 = 27
									flag6 = false
									continue
								else
									n17 = 35
									flag6 = n17 <= 19
									continue
								end
							else
								exitTo = 6
								break
							end
						else
							exitTo = 5
							break
						end
					elseif not (n17 <= 10) then
						n17 = 19
						n27 = (n27 * 123 + 12534279) % 16777213
						n28 = bxor2(52488205, v17) * 8 + 0
						flag6 = n17 <= 19
						continue
					else
						local getAttribute = configuration.GetAttribute

						if not (getAttribute(getAttribute, "_f4c7dbe05f5c") ~= n16) then
							exitTo = 4
							break
						else
							n17 = 32
							flag6 = n17 <= 19
							continue
						end
					end
				elseif not (n17 <= 4) then
					if not (n17 <= 6) then
						if not (n17 <= 7) then
							if not (n17 <= 8) then
								if not (n28 == bxor2(50580600, v17) * 8 + 6) then
									n17 = 29
									flag6 = false
									continue
								else
									n17 = 2
									flag6 = n17 <= 19
									continue
								end
							else
								local n29 = n16 % 268435456
								n17 = 16
								v17 = n29
								bxor2 = bit32.bxor
								n27 = 1829208
								n28 = (241298465 - n29) % 268435456 * 8 + 7
								flag6 = n17 <= 19
								continue
							end
						else
							exitTo = 3
							break
						end
					elseif not (n17 <= 5) then
						exitTo = 2
						break
					elseif not (n28 ~= n26 + n25) then
						n17 = 21
						flag6 = false
						continue
					else
						n17 = 25
						flag6 = n17 <= 19
						continue
					end
				elseif not (n17 <= 1) then
					if not (n17 <= 2) then
						if not (n17 <= 3) then
							n17 = 38
							n24 = 0
							flag6 = false
							continue
						else
							exitTo = 1
							break
						end
					else
						local v18 = fn3
						local getTeleportSetting = tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"].GetTeleportSetting
						local v19 = getTeleportSetting(getTeleportSetting, "\u{EF4}ክໄಫፑ")
						local n4992bd108aa18425cb3fa1e6 = v15._4992bd108aa18425cb3fa1e6

						if not n4992bd108aa18425cb3fa1e6 then
							local v20 = v18
							n17 = 17
							n24 = n4992bd108aa18425cb3fa1e6
							n25 = 3097686
							n26 = v19
							n28 = v20
						else
							local v20 = v18
							local v21 = v19
							n17 = 6
							local v22 = v20
							n25 = 3097686
							n26 = v21
							n28 = v22
						end

						flag6 = n17 <= 19
						continue
					end
				elseif not (n17 <= 0) then
					n17 = 19
					n27 = (n27 * 123 + 9130289) % 16777213
					n28 = (54398061 + v17) % 268435456 * 8 + 2
					flag6 = n17 <= 19
					continue
				end

				break
			end
		end

		if exitTo == 1 then
			n17 = 7
			n28 = true
			continue
		end

		if exitTo == 2 then
			n17 = 17
			n24 = 25563
			continue
		end

		if exitTo == 3 then
			return n28
		end

		if exitTo == 4 then
			n17 = 1
			continue
		end

		if exitTo == 5 then
			n17 = 5
			n25 = 0
			continue
		end

		if exitTo == 6 then
			fn("J2_105")
			LPH_CRASH()
		end

		if exitTo == 7 then
			n17 = 9
			continue
		end

		if exitTo == 8 then
			if not n24 then
				n17 = 4
				continue
			end
			LPH_CRASH()
		end

		if exitTo == 9 then
			n17 = 16
			continue
		end

		if exitTo == 10 then
			fn("J2_005")
			LPH_CRASH()
		end

		if exitTo == 11 then
			n17 = 18
			continue
		end

		if exitTo == 12 then
			fn("J2_RVP4")
			LPH_CRASH()
		end

		if exitTo == 13 then
			n17 = 12
			continue
		end

		if exitTo == 14 then
			fn("J2_067")
			LPH_CRASH()
		end

		if exitTo == 15 then
			fn("J2_014")
			LPH_CRASH()
		end

		if exitTo == 16 then
			break
		end

		if exitTo == 17 then
			n17 = 3
		else
			n17 = 14
			n26 = ""
		end
	end

	fn("J2_203")
	LPH_CRASH()
end)() ~= true then
	return 0
end

do
	local v16 = tostring
	local bxor2 = bit32.bxor
	local bxor3 = bit32.bxor

	if (tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_AFoG5wbsb2cIjKt") == v16(bxor2(bit32.bxor(v11, n12, n9), bit32.bxor(3915756413, n11, attribute), bxor3(v10, n13, n16))) and tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)) ~= true and not identifyexecutor():match("^Synapse") then
		fn("J2_149")
		LPH_CRASH()
	end
end

local bxor2 = bit32.bxor
tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(bit32.bxor(n12, n9, n13), bit32.bxor(n11, attribute, 3915751254), bxor2(v10, v11, n16))))

do
	local v16 = tostring
	local bxor3 = bit32.bxor
	local bxor4 = bit32.bxor

	if (tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_d2ymhkmbxaI0rMV") ~= v16(bxor3(bit32.bxor(n12, n9, n13), bit32.bxor(n11, attribute, 3915751254), bxor4(v10, v11, n16))) or not tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)) and not identifyexecutor():match("^Synapse") then
		fn("J2_195")
		LPH_CRASH()
	end
end

if not fn4(debug.setmemorycategory("_mS2P3fhD" .. tostring((n12 % 417997 * 15 + 5868) % 417997)), "_mS2P3fhD" .. tostring((attribute % 417997 * 15 + 5868) % 417997), 349683) then
	fn("J2_080")
	LPH_CRASH()
end

if (function()
	local n17 = 53
	local n18 = nil
	local n19 = nil
	local n20 = nil
	local n21 = nil
	local n22 = nil
	local n23 = nil
	local v16 = nil
	local v17 = nil
	local n24 = nil
	local n25 = nil
	local v18 = nil
	local bxor3 = nil
	local n26 = nil
	local n27 = nil
	local n28 = nil

	while true do
		local flag6 = false
		local exitTo = nil

		while true do
			if not flag6 then
				if not (n17 <= 40) then
					if not (n17 <= 47) then
						if not (n17 <= 50) then
							if not (n17 <= 52) then
								if not (n17 <= 53) then
									local v19 = table.pack(bit32.band(n21, 4294967295))
									local v20 = table.pack(bit32.band(n20, 4294967295))
									local v21 = table.pack(bit32.band(v19[1], 65535))
									local v22 = table.pack(bit32.rshift(v19[1], 16))
									local v23 = table.pack(bit32.band(v20[1], 65535))
									local n29 = bit32.band(v21[1] * v23[1] + bit32.lshift(bit32.band(v21[1] * bit32.rshift(v20[1], 16) + v22[1] * v23[1], 65535), 16), 4294967295) % 4294967296
									local v24 = table.pack(bit32.band(bit32.bxor(4065201707, n23 + 1285325285), 4294967295))
									local v25 = table.pack(bit32.band(v24[1], 65535))
									local n30 = (n22 + n29 + bit32.band(10649 * v25[1] + bit32.lshift(bit32.band(10649 * bit32.rshift(v24[1], 16) + 50387 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
									local n31 = n24 % 4294967296
									local v26 = table.pack(bit32.band(n31 + 763412160, 4294967295))
									local v27 = table.pack(bit32.band(v26[1], 65535))
									local n32 = 1460476934 + bit32.band(35433 * v27[1] + bit32.lshift(bit32.band(35433 * bit32.rshift(v26[1], 16) + 2594 * v27[1], 65535), 16), 4294967295) % 4294967296
									local v28 = table.pack(bit32.band(bit32.band(n31 + 763412160, 3547242262), 4294967295))
									local v29 = table.pack(bit32.band(v28[1], 65535))
									n17 = 34
									n20 = 4124931480
									n21 = bit32.band(30102 * v29[1] + bit32.lshift(bit32.band(30102 * bit32.rshift(v28[1], 16) + 62941 * v29[1], 65535), 16), 4294967295) % 4294967296
									n22 = n32
									n23 = n31
									v16 = n30
								else
									local n29 = n16 % 268435456
									n17 = 6
									v18 = n29
									bxor3 = bit32.bxor
									n26 = 10841554
									n27 = (107231861 - n29) % 268435456 * 8 + 2
									n28 = 89912072
								end
							elseif not (n17 <= 51) then
								local v19 = bit32.bxor(4190517850, n23 + 3526180854)
								local v20 = table.pack(bit32.band(n20, 4294967295))
								local v21 = table.pack(bit32.band(v19, 4294967295))
								local v22 = table.pack(bit32.band(v20[1], 65535))
								local v23 = table.pack(bit32.rshift(v20[1], 16))
								local v24 = table.pack(bit32.band(v21[1], 65535))
								local n29 = (n22 + n21 + bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
								local n30 = n24 % 4294967296
								local v25 = table.pack(bit32.band(n30 + 5166082, 4294967295))
								local v26 = table.pack(bit32.band(v25[1], 65535))
								local n31 = 1399155456 + bit32.band(29824 * v26[1] + bit32.lshift(bit32.band(29824 * bit32.rshift(v25[1], 16) + 18742 * v26[1], 65535), 16), 4294967295) % 4294967296
								local v27 = table.pack(bit32.band(bit32.band(666662502, n30 + 5166082), 4294967295))
								local v28 = table.pack(bit32.band(v27[1], 65535))
								n17 = 43
								n19 = 666662502
								n20 = 3066661761
								n21 = bit32.band(5888 * v28[1] + bit32.lshift(bit32.band(5888 * bit32.rshift(v27[1], 16) + 28051 * v28[1], 65535), 16), 4294967295) % 4294967296
								n22 = n31
								n23 = n30
								n24 = n29
							else
								if not n25 then
									n17 = 6
									flag6 = true
								else
									n17 = 46
									flag6 = n17 <= 26
								end

								continue
							end

							flag6 = n17 <= 26
						elseif not (n17 <= 48) then
							if not (n17 <= 49) then
								n17 = 11
								n24 = 0
								flag6 = true
							elseif not (n27 == (166805952 + v18) % 268435456 * 8 + 7) then
								exitTo = 15
								break
							else
								n17 = 21
								flag6 = n17 <= 26
							end
						else
							exitTo = 14
							break
						end
					elseif not (n17 <= 43) then
						if not (n17 <= 45) then
							if not (n17 <= 46) then
								if not (n28 ~= n27) then
									exitTo = 13
									break
								else
									n17 = 22
									flag6 = n17 <= 26
								end
							elseif not (n26 ~= 10693513) then
								n17 = 13
								flag6 = true
							else
								n17 = 48
								flag6 = n17 <= 26
							end
						elseif not (n17 <= 44) then
							if not (n27 == (107231861 - v18) % 268435456 * 8 + 2) then
								n17 = 9
								flag6 = true
							else
								n17 = 26
								flag6 = n17 <= 26
							end
						else
							n17 = 18
							n27 = ""
							flag6 = true
						end
					elseif not (n17 <= 41) then
						if not (n17 <= 42) then
							local v19 = bit32.bxor(n19, n23 + 5166082)
							local v20 = table.pack(bit32.band(n20, 4294967295))
							local v21 = table.pack(bit32.band(v19, 4294967295))
							local v22 = table.pack(bit32.band(v20[1], 65535))
							local v23 = table.pack(bit32.rshift(v20[1], 16))
							local v24 = table.pack(bit32.band(v21[1], 65535))
							local n29 = (n22 + n21 + bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n30 = n24 * 67108864
							local n31 = 1 - 2 * v17

							if n28(n27, n25, n31 * n31) then
								n17 = 12
								flag6 = true
							else
								n17 = 23
								flag6 = n17 <= 26
							end
						else
							local getAttribute = configuration.GetAttribute
							local v19 = getAttribute(getAttribute, "_ac531479ca9e")
							local ec2462e6bacbb5ddf170f1e2 = v15._ec2462e6bacbb5ddf170f1e2

							if not ec2462e6bacbb5ddf170f1e2 then
								local v20 = v19
								n17 = 44
								n28 = v20
							else
								local v20 = v19
								n17 = 18
								n27 = ec2462e6bacbb5ddf170f1e2
								n28 = v20
							end

							flag6 = n17 <= 26
						end
					elseif not (n27 == bxor3(32991634, v18) * 8 + 6) then
						exitTo = 12
						break
					else
						n17 = 1
						flag6 = n17 <= 26
					end
				elseif not (n17 <= 33) then
					if not (n17 <= 36) then
						if not (n17 <= 38) then
							if not (n17 <= 39) then
								n17 = 19
								n28 = -194107891
								flag6 = true
							elseif not (v18 % 2 ~= 1) then
								n17 = 7
								flag6 = true
							else
								n17 = 24
								flag6 = n17 <= 26
							end
						else
							exitTo = 11
							break
						end
					elseif not (n17 <= 34) then
						if not (n17 <= 35) then
							local n29 = n24 * 67108864
							local n30 = 1 - 2 * v17

							if n28(n27, n25, n30 * n30) then
								exitTo = 10
								break
							else
								n17 = 4
								flag6 = n17 <= 26
							end
						else
							exitTo = 9
							break
						end
					else
						local v19 = bit32.bor(3547242262, n23 + 763412160)
						local v20 = table.pack(bit32.band(n20, 4294967295))
						local v21 = table.pack(bit32.band(v19, 4294967295))
						local v22 = table.pack(bit32.band(v20[1], 65535))
						local v23 = table.pack(bit32.rshift(v20[1], 16))
						local v24 = table.pack(bit32.band(v21[1], 65535))
						local n29 = (n22 + n21 + bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
						local n30 = n24 % 4294967296
						local v25 = table.pack(bit32.band(n30 + 1019934698, 4294967295))
						local v26 = table.pack(bit32.band(v25[1], 65535))
						local n31 = 476221504 + bit32.band(65535 * v26[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v25[1], 16) + 65535 * v26[1], 65535), 16), 4294967295) % 4294967296
						local v27 = table.pack(bit32.band(bit32.bor(3799810112, n30 + 1019934698), 4294967295))
						local v28 = table.pack(bit32.band(v27[1], 65535))
						n17 = 36
						n21 = 1169889346
						n22 = bit32.band(2 * v28[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v27[1], 16) + 0 * v28[1], 65535), 16), 4294967295) % 4294967296
						n23 = n31
						n24 = n29
						flag6 = n17 <= 26
					end
				elseif not (n17 <= 29) then
					if not (n17 <= 31) then
						exitTo = 8
						break
					else
						if not (n17 <= 30) then
							local v19 = bit32.bnot(n23 + 3167608534)
							local v20 = table.pack(bit32.band(n19, 4294967295))
							local v21 = table.pack(bit32.band(v19, 4294967295))
							local v22 = table.pack(bit32.band(v20[1], 65535))
							local v23 = table.pack(bit32.rshift(v20[1], 16))
							local v24 = table.pack(bit32.band(v21[1], 65535))
							local n29 = (n22 + n21 + n20 + bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n30 = n24 % 4294967296
							local v25 = table.pack(bit32.band(n30 + 266403274, 4294967295))
							local v26 = table.pack(bit32.band(v25[1], 65535))
							local n31 = 546409000 + bit32.band(65535 * v26[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v25[1], 16) + 65535 * v26[1], 65535), 16), 4294967295) % 4294967296
							local v27 = table.pack(bit32.band(bit32.bor(n30 + 266403274, 927900734), 4294967295))
							local v28 = table.pack(bit32.band(v27[1], 65535))
							n17 = 10
							n20 = 4294967295
							n21 = 1924538259
							n22 = bit32.band(2 * v28[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v27[1], 16) + 0 * v28[1], 65535), 16), 4294967295) % 4294967296
							n23 = n31
							v17 = n29
						else
							n17 = 19
							n26 = (10325967 + n26 * 11) % 16777213
							n27 = bxor3(177659630, v18) * 8 + 1
							n28 = 89912072
						end

						flag6 = n17 <= 26
					end
				elseif not (n17 <= 27) then
					if not (n17 <= 28) then
						local n29 = (n21 + n20 + bit32.bxor(n23, n19) + bit32.bxor(n22, 1248440564)) % 4294967296
						local n30 = n29 % 4294967296
						local v19 = table.pack(bit32.band(n30 + 3167608534, 4294967295))
						local v20 = table.pack(bit32.band(v19[1], 65535))
						local n31 = 465862342 + bit32.band(61831 * v20[1] + bit32.lshift(bit32.band(61831 * bit32.rshift(v19[1], 16) + 36688 * v20[1], 65535), 16), 4294967295) % 4294967296
						local v21 = table.pack(bit32.band(bit32.bor(3829104954, n30 + 3167608534), 4294967295))
						local v22 = table.pack(bit32.band(v21[1], 65535))
						n17 = 31
						n19 = 2404446600
						n20 = 2404446600
						n21 = bit32.band(2 * v22[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v21[1], 16) + 0 * v22[1], 65535), 16), 4294967295) % 4294967296
						n22 = n31
						n23 = n30
						n24 = n29
						flag6 = n17 <= 26
					else
						n17 = 0
						n24 = 12709
						flag6 = true
					end
				else
					n17 = 19
					n26 = (7299862 + n26 * 11) % 16777213
					n27 = (166805952 + v18) % 268435456 * 8 + 7
					n28 = 216920091
					flag6 = n17 <= 26
				end
			else
				if not (n17 <= 12) then
					if not (n17 <= 19) then
						if not (n17 <= 22) then
							if not (n17 <= 24) then
								if not (n17 <= 25) then
									local getAttribute = configuration.GetAttribute
									local v19 = getAttribute(getAttribute, "_114a72436e71")
									local n0a4d4a14b086c0540e842fc9 = v15._0a4d4a14b086c0540e842fc9

									if not n0a4d4a14b086c0540e842fc9 then
										local v20 = v19
										local v21 = n0a4d4a14b086c0540e842fc9
										n17 = 5
										local v22 = v20
										n27 = v21
										n28 = v22
									else
										local v20 = v19
										n17 = 16
										n28 = v20
									end

									flag6 = n17 <= 26
									continue
								elseif not (n27 == bxor3(120293234, v18) * 8 + 1) then
									exitTo = 7
									break
								else
									n17 = 27
									flag6 = n17 <= 26
									continue
								end
							elseif not (n17 <= 23) then
								n17 = 19
								n26 = (6122823 + n26 * 11) % 16777213
								n27 = (166805952 + v18) % 268435456 * 8 + 7
								n28 = 216920091
								flag6 = n17 <= 26
								continue
							else
								exitTo = 6
								break
							end
						elseif not (n17 <= 20) then
							if not (n17 <= 21) then
								exitTo = 5
								break
							else
								local v19 = fn3
								local getTeleportSetting = tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"].GetTeleportSetting
								local v20 = getTeleportSetting(getTeleportSetting, "\u{AF8}\u{CE5}๛\u{E85}")
								local n267284e4a64baf4b90eead45 = v15._267284e4a64baf4b90eead45

								if not n267284e4a64baf4b90eead45 then
									local v21 = v19
									n17 = 11
									n24 = n267284e4a64baf4b90eead45
									n25 = 1143172
									n27 = v20
									n28 = v21
								else
									local v21 = v19
									n17 = 50
									n25 = 1143172
									n27 = v20
									n28 = v21
								end

								flag6 = n17 <= 26
								continue
							end
						else
							n17 = 51
							n25 = n28 == 89912072
							flag6 = n17 <= 26
							continue
						end
					elseif not (n17 <= 15) then
						if not (n17 <= 17) then
							if not (n17 <= 18) then
								if not (n28 == -194107891) then
									n17 = 15
									flag6 = true
									continue
								else
									n17 = 32
									flag6 = n17 <= 26
									continue
								end
							elseif not (n28 ~= n27) then
								n17 = 8
								flag6 = true
								continue
							else
								n17 = 38
								flag6 = n17 <= 26
								continue
							end
						elseif not (n17 <= 16) then
							local n29 = (n19 + n18 + bit32.bxor(n23, 2933973557) + bit32.bxor(n22, 2372129226) + bit32.bxor(n21, 1810284895) + bit32.bxor(n20, 1248440564)) % 4294967296
							local n30 = n29 % 4294967296
							local v19 = table.pack(bit32.band(n30 + 3934887177, 4294967295))
							local v20 = table.pack(bit32.band(v19[1], 65535))
							n17 = 14
							n20 = n30 + 3934887177
							n21 = 3854106922
							n22 = 255836085 + bit32.band(32619 * v20[1] + bit32.lshift(bit32.band(32619 * bit32.rshift(v19[1], 16) + 36131 * v20[1], 65535), 16), 4294967295) % 4294967296
							n23 = n30
							n24 = n29
							flag6 = n17 <= 26
							continue
						else
							n17 = 5
							n27 = 4242409
							flag6 = true
							continue
						end
					elseif not (n17 <= 13) then
						if not (n17 <= 14) then
							local flag7 = n27 == (151968482 - v18) % 268435456 * 8 + 2

							if not flag7 then
								local v19 = flag7
								n17 = 51
								n25 = v19
								flag6 = n17 <= 26
								continue
							else
								n17 = 20
								flag6 = true
								continue
							end
						else
							local v19 = bit32.band(n20, 2419795295)
							local v20 = table.pack(bit32.band(n21, 4294967295))
							local v21 = table.pack(bit32.band(v19, 4294967295))
							local v22 = table.pack(bit32.band(v20[1], 65535))
							local v23 = table.pack(bit32.rshift(v20[1], 16))
							local v24 = table.pack(bit32.band(v21[1], 65535))
							local n29 = bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296
							local v25 = table.pack(bit32.band(bit32.bxor(2419795295, n23 + 3934887177), 4294967295))
							local v26 = table.pack(bit32.band(v25[1], 65535))
							local n30 = (n22 + n29 + bit32.band(32918 * v26[1] + bit32.lshift(bit32.band(32918 * bit32.rshift(v25[1], 16) + 29404 * v26[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n31 = n24 % 4294967296
							local v27 = table.pack(bit32.band(n31 + 1285325285, 4294967295))
							local v28 = table.pack(bit32.band(v27[1], 65535))
							local n32 = 133280632 + bit32.band(54888 * v28[1] + bit32.lshift(bit32.band(54888 * bit32.rshift(v27[1], 16) + 15148 * v28[1], 65535), 16), 4294967295) % 4294967296
							n17 = 54
							n20 = bit32.band(4065201707, n31 + 1285325285)
							n21 = 2309378864
							n22 = n32
							n23 = n31
							v17 = n30
							flag6 = n17 <= 26
							continue
						end
					else
						exitTo = 4
						break
					end
				elseif not (n17 <= 5) then
					if not (n17 <= 8) then
						if not (n17 <= 10) then
							if not (n17 <= 11) then
								n17 = 19
								n26 = (10683123 + n26 * 11) % 16777213
								n27 = (151968482 - v18) % 268435456 * 8 + 2
								n28 = 89912072
								flag6 = n17 <= 26
								continue
							elseif not n24 then
								exitTo = 3
								break
							else
								n17 = 0
								flag6 = n17 <= 26
								continue
							end
						elseif not (n17 <= 9) then
							local v19 = table.pack(bit32.band(n21, 4294967295))
							local v20 = table.pack(bit32.band(n20, 4294967295))
							local v21 = table.pack(bit32.band(v19[1], 65535))
							local v22 = table.pack(bit32.rshift(v19[1], 16))
							local v23 = table.pack(bit32.band(v20[1], 65535))
							local n29 = (n23 + n22 + bit32.band(v21[1] * v23[1] + bit32.lshift(bit32.band(v21[1] * bit32.rshift(v20[1], 16) + v22[1] * v23[1], 65535), 16), 4294967295) % 4294967296 + 450228525) % 4294967296
							local n30 = n24 % 4294967296
							local v24 = table.pack(bit32.band(n30 + 3526180854, 4294967295))
							local v25 = table.pack(bit32.band(v24[1], 65535))
							local n31 = 1116659720 + bit32.band(6804 * v25[1] + bit32.lshift(bit32.band(6804 * bit32.rshift(v24[1], 16) + 23444 * v25[1], 65535), 16), 4294967295) % 4294967296
							local v26 = table.pack(bit32.band(bit32.band(4190517850, n30 + 3526180854), 4294967295))
							local v27 = table.pack(bit32.band(v26[1], 65535))
							n17 = 52
							n20 = 2758534509
							n21 = bit32.band(51928 * v27[1] + bit32.lshift(bit32.band(51928 * bit32.rshift(v26[1], 16) + 18647 * v27[1], 65535), 16), 4294967295) % 4294967296
							n22 = n31
							n23 = n30
							v16 = n29
							flag6 = n17 <= 26
							continue
						elseif not (n27 == bxor3(177659630, v18) * 8 + 1) then
							exitTo = 2
							break
						else
							n17 = 42
							flag6 = n17 <= 26
							continue
						end
					elseif not (n17 <= 6) then
						if not (n17 <= 7) then
							n17 = 19
							n26 = (2727338 + n26 * 11) % 16777213
							n27 = bxor3(32991634, v18) * 8 + 6
							n28 = 216920091
						else
							n17 = 19
							n26 = (4468600 + n26) % 16777213
							n27 = bxor3(120293234, v18) * 8 + 1
							n28 = 216920091
						end

						flag6 = n17 <= 26
						continue
					elseif not (n28 == 89912072) then
						n17 = 3
						flag6 = true
						continue
					else
						n17 = 45
						flag6 = n17 <= 26
						continue
					end
				elseif not (n17 <= 2) then
					if not (n17 <= 3) then
						if not (n17 <= 4) then
							if not n27 then
								exitTo = 1
								break
							else
								n17 = 47
								flag6 = n17 <= 26
								continue
							end
						end
					elseif not (n28 == 216920091) then
						n17 = 2
						flag6 = true
						continue
					else
						n17 = 25
						flag6 = n17 <= 26
						continue
					end
				elseif not (n17 <= 0) then
					if not (n17 <= 1) then
						n17 = 19
						n28 = -194107891
						flag6 = true
						continue
					else
						local getTeleportSetting = tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"].GetTeleportSetting
						local v19 = n16
						local v20 = fn3
						local v21 = getTeleportSetting(getTeleportSetting, "ંቆଟ\u{EF5}")
						n17 = 17
						local v22 = v20
						n18 = 2264331160
						n19 = 1763666126
						n20 = 1847606971
						n21 = 2574373160
						n22 = 2308568332
						n23 = 924879441
						n25 = v19
						n27 = v21
						n28 = v22
						flag6 = n17 <= 26
						continue
					end
				else
					n17 = 29
					n19 = 1810284895
					n20 = 83502278
					n21 = 8784109272
					n22 = 1847606971
					n23 = 2574373160
					n25 -= n24
					flag6 = n17 <= 26
					continue
				end

				break
			end
		end

		if exitTo == 1 then
			if not n27 then
				n17 = 37
				continue
			end
			error("devirt: store below the stack VM's frame (register -41) (at 153:3044)")
		end

		if exitTo == 2 then
			n17 = 33
			continue
		end

		if exitTo == 3 then
			n17 = 28
			continue
		end

		if exitTo == 4 then
			n17 = 35
			n28 = true
			continue
		end

		if exitTo == 5 then
			fn("J2_024")
			LPH_CRASH()
		end

		if exitTo == 6 then
			fn("J2_019")
			LPH_CRASH()
		end

		if exitTo == 7 then
			n17 = 49
			continue
		end

		if exitTo == 8 then
			if not (n17 <= 32) then
				error("devirt: symbolic next pc/mode: (r18 Add 1) / 153 (at 153:11)")
			end

			fn("J2_028")
			LPH_CRASH()
		end

		if exitTo == 9 then
			return n28
		end

		if exitTo == 10 then
			n17 = 39
			continue
		end

		if exitTo == 11 then
			if not (n17 <= 37) then
				fn("J2_196")
				LPH_CRASH()
			end

			n17 = 47
			n27 = 4238462
			continue
		end

		if exitTo == 12 then
			n17 = 40
			continue
		end

		if exitTo == 13 then
			n17 = 30
			continue
		end

		if exitTo == 14 then
			fn("J2_021")
			LPH_CRASH()
		end

		if exitTo == 15 then
			n17 = 41
			continue
		end
		break
	end

	fn("J2_041")
	LPH_CRASH()
end)() ~= true then
	return 0
end

do
	local v16 = tostring
	local bxor3 = bit32.bxor
	local bxor4 = bit32.bxor

	if (tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_NRLK6Z33Bh7zMwh") == v16(bxor3(bit32.bxor(n12, n9, n13), bit32.bxor(n11, attribute, 3915751254), bxor4(v10, v11, n16))) and tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)) ~= true and not identifyexecutor():match("^Synapse") then
		fn("J2_074")
		LPH_CRASH()
	end
end

local bxor3 = bit32.bxor
tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(bit32.bxor(n16, attribute, n13), bit32.bxor(v10, n11, n12), bxor3(3915746099, n9, v11))))

do
	local v16 = tostring
	local bxor4 = bit32.bxor
	local bxor5 = bit32.bxor

	if (tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_HFK9eP4T2bufkuP") ~= v16(bxor4(bit32.bxor(n16, attribute, n13), bit32.bxor(v10, n11, n12), bxor5(3915746099, n9, v11))) or not tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)) and not identifyexecutor():match("^Synapse") then
		fn("J2_057")
		LPH_CRASH()
	end
end

if not (v15._267284e4a64baf4b90eead45 and v15._267284e4a64baf4b90eead45 == true and v15._267284e4a64baf4b90eead45 == true) then
	return 0
end

if not (v15._4992bd108aa18425cb3fa1e6 == true and true == v15._4992bd108aa18425cb3fa1e6 and false ~= v15._4992bd108aa18425cb3fa1e6 and fn3(v15._4992bd108aa18425cb3fa1e6, true, (1 - 2 * (6793775360 + 1796159232 + 0) % 4294967296) * (1 + ((3294253764 + 2088519541 + 3213245895) % 4294967296 * 67108864 + (3611123304 + 683843992 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((2788461692 + 3005855060 + 2795618880) % 4294967296 - 1023)) and not fn3(v15._4992bd108aa18425cb3fa1e6, false, (1 - 2 * (1073805850 + 3221161446 + 0) % 4294967296) * (1 + ((4850554688 + 3230623936 + 514840576) % 4294967296 * 67108864 + (5868908416 + 897681440 + 1823344736) % 4294967296) / 4503599627370496) * 2 ^ ((2141064362 + 6448871270) % 4294967296 - 1023)) and ({ [true] = true })[v15._4992bd108aa18425cb3fa1e6] and not ({ [false] = true })[v15._4992bd108aa18425cb3fa1e6]) then
	fn("Invalid key provided, check key validity or reset HWID! (" .. v15._83030ab2881402e1b6fdaa4f .. ")")
	return 0
end

local flag6

if type(v15._ee59eabaef81db8a99399e1c) ~= "number" or type(v15._6365c3064af8140f348357fa) ~= "number" or 6 * (v15._ee59eabaef81db8a99399e1c - -903) - 6 * (2 * v11 + 3 * n9) ~= 4 * (-2 * v11 + 4 * n9) - 4 * (v15._6365c3064af8140f348357fa - 172) or type(v15._acd0a41fec539c0a6ddf52f7) ~= "number" or type(v15._ee59eabaef81db8a99399e1c) ~= "number" or 7 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 2 * (v15._ee59eabaef81db8a99399e1c - -903) ~= 7 * (4 * attribute + -1 * v10) + 2 * (2 * v11 + 3 * n9) or type(v15._acd0a41fec539c0a6ddf52f7) ~= "number" or type(v15._90016adbc3fcc6bf691d3a60) ~= "number" or 6 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 7 * (v15._90016adbc3fcc6bf691d3a60 - -296) ~= 6 * (4 * attribute + -1 * v10) + 7 * (-2 * attribute + 4 * v10) then
	flag6 = true
elseif type(v15._59a699900f59ea0878e3c479) ~= "number" or type(v15._acd0a41fec539c0a6ddf52f7) ~= "number" then
	flag6 = true
else
	flag6 = false

	if 6 * (v15._59a699900f59ea0878e3c479 - 1885 - 3 * n12 + -1 * attribute) + 4 * (v15._acd0a41fec539c0a6ddf52f7 - 934 - 4 * attribute + -1 * v10) ~= 0 then
		flag6 = true
	end
end

if flag6 then
	fn("J2_115")
	LPH_CRASH()
end

do
	local ec2462e6bacbb5ddf170f1e2 = v15._ec2462e6bacbb5ddf170f1e2

	if type(v15._ce458af07d85f36322689719) ~= "number" or type(v15._a508fb16333dc40353e8e1b4) ~= "number" or v15._ce458af07d85f36322689719 % 1 ~= 0 or v15._ce458af07d85f36322689719 < 0 or v15._ce458af07d85f36322689719 >= 804583 or v15._ce458af07d85f36322689719 ~= (((25 * (n11 // 10000 + 1) % 804583 % 804583 + 51 * n9 % 804583) % 804583 + 25 * v15._a508fb16333dc40353e8e1b4 % 804583) % 804583 + 660910) % 804583 then
		fn("J2_001")
		LPH_CRASH()
	end

	local c67cf183e16ec9253abd2187 = v15._c67cf183e16ec9253abd2187

	if type(c67cf183e16ec9253abd2187) ~= "number" or type(v15._ce458af07d85f36322689719) ~= "number" or c67cf183e16ec9253abd2187 % 1 ~= 0 or c67cf183e16ec9253abd2187 < 0 or c67cf183e16ec9253abd2187 >= 842289 or not fn3((292717 + 111 * (n13 // 10000 + 1) % 842289 + 11 * (n11 // 10000 + 1) % 842289 + 59 * v15._ce458af07d85f36322689719 % 842289) % 842289, c67cf183e16ec9253abd2187, 142956) or (292717 + 111 * (n13 // 10000 + 1) % 842289 + 11 * (n11 // 10000 + 1) % 842289 + 59 * v15._ce458af07d85f36322689719 % 842289) % 842289 ~= c67cf183e16ec9253abd2187 then
		fn("J2_204")
		LPH_CRASH()
	end

	local a508fb16333dc40353e8e1b4 = v15._a508fb16333dc40353e8e1b4

	if type(a508fb16333dc40353e8e1b4) ~= "number" or a508fb16333dc40353e8e1b4 % 1 ~= 0 or a508fb16333dc40353e8e1b4 < 0 or a508fb16333dc40353e8e1b4 >= 1055391 or (660813 + 41 * (n11 // 10000 + 1) % 1055391 + 69 * v10 % 1055391) % 1055391 ~= a508fb16333dc40353e8e1b4 then
		fn("J2_097")
		LPH_CRASH()
	end

	if type(ec2462e6bacbb5ddf170f1e2) == "number" and ec2462e6bacbb5ddf170f1e2 > 0 and os.time() > ec2462e6bacbb5ddf170f1e2 + 300 then
		fn("J2_100")
		LPH_CRASH()
	end
end

n2 += 54
tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল", tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") .. "wKoEcFAAEr")
local n17
n17 = 0
local n18
n18 = 3
local now
now = os.clock()

if frame.Size.X.Scale ~= v11 or frame.Size.X.Offset ~= n9 then
	fn("J2_SOF9")
	LPH_CRASH()
end

do
	local n19 = (4231234328 + bit32.bxor((2097152 + (v15._c67cf183e16ec9253abd2187 - 111 * (n13 // 10000 + 1) % 842289 + 11 * (n11 // 10000 + 1) % 842289 + 59 * v15._ce458af07d85f36322689719 % 842289) % 842289) % 4294967296, 3495817888) + bit32.bxor(n2 % 4294967296, 2933973557) + 4762289036) % 4294967296
	local n20 = n19 % 4294967296
	local v16 = table.pack(bit32.band(n20 + 364506533, 4294967295))
	local v17 = table.pack(bit32.band(v16[1], 65535))
	local n21 = 2956748183 + bit32.band(35335 * v17[1] + bit32.lshift(bit32.band(35335 * bit32.rshift(v16[1], 16) + 26762 * v17[1], 65535), 16), 4294967295) % 4294967296
	local v18 = table.pack(bit32.band(bit32.band(2904728561, n20 + 364506533), 4294967295))
	local v19 = table.pack(bit32.band(v18[1], 65535))
	local n22 = bit32.band(30200 * v19[1] + bit32.lshift(bit32.band(30200 * bit32.rshift(v18[1], 16) + 38773 * v19[1], 65535), 16), 4294967295) % 4294967296
	local v20 = table.pack(bit32.band(bit32.bor(n20 + 364506533, 2904728561), 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	local n23 = (n21 + n22 + bit32.band(30202 * v21[1] + bit32.lshift(bit32.band(30202 * bit32.rshift(v20[1], 16) + 38773 * v21[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n24 = n19 % 4294967296
	local v22 = table.pack(bit32.band(n24 + 526425214, 4294967295))
	local v23 = table.pack(bit32.band(v22[1], 65535))
	local n25 = 1833654336 + bit32.band(43251 * v23[1] + bit32.lshift(bit32.band(43251 * bit32.rshift(v22[1], 16) + 8215 * v23[1], 65535), 16), 4294967295) % 4294967296
	local v24 = table.pack(bit32.band(bit32.band(3066648256, n24 + 526425214), 4294967295))
	local v25 = table.pack(bit32.band(v24[1], 65535))
	local n26 = bit32.band(44570 * v25[1] + bit32.lshift(bit32.band(44570 * bit32.rshift(v24[1], 16) + 49104 * v25[1], 65535), 16), 4294967295) % 4294967296
	local v26 = table.pack(bit32.band(bit32.bxor(3066648256, n24 + 526425214), 4294967295))
	local v27 = table.pack(bit32.band(v26[1], 65535))
	local n27 = (n25 + n26 + bit32.band(22286 * v27[1] + bit32.lshift(bit32.band(22286 * bit32.rshift(v26[1], 16) + 57320 * v27[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n28 = n19 % 4294967296
	local v28 = table.pack(bit32.band(n28 + 3795445463, 4294967295))
	local v29 = table.pack(bit32.band(v28[1], 65535))
	local n29 = 319541345 + bit32.band(24235 * v29[1] + bit32.lshift(bit32.band(24235 * bit32.rshift(v28[1], 16) + 58107 * v29[1], 65535), 16), 4294967295) % 4294967296
	local v30 = table.pack(bit32.band(bit32.band(2027789603, n28 + 3795445463), 4294967295))
	local v31 = table.pack(bit32.band(v30[1], 65535))
	local n30 = bit32.band(41300 * v31[1] + bit32.lshift(bit32.band(41300 * bit32.rshift(v30[1], 16) + 7428 * v31[1], 65535), 16), 4294967295) % 4294967296
	local v32 = table.pack(bit32.band(bit32.bor(n28 + 3795445463, 2027789603), 4294967295))
	local v33 = table.pack(bit32.band(v32[1], 65535))
	local n31 = (n29 + n30 + bit32.band(41302 * v33[1] + bit32.lshift(bit32.band(41302 * bit32.rshift(v32[1], 16) + 7428 * v33[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n32 = n19 % 4294967296
	local v34 = table.pack(bit32.band(n32 + 1263949433, 4294967295))
	local v35 = table.pack(bit32.band(v34[1], 65535))
	local n33 = 3775209251 + bit32.band(35527 * v35[1] + bit32.lshift(bit32.band(35527 * bit32.rshift(v34[1], 16) + 29984 * v35[1], 65535), 16), 4294967295) % 4294967296
	local v36 = table.pack(bit32.band(bit32.bor(n32 + 1263949433, 3804171461), 4294967295))
	local v37 = table.pack(bit32.band(v36[1], 65535))
	local n34 = bit32.band(60018 * v37[1] + bit32.lshift(bit32.band(60018 * bit32.rshift(v36[1], 16) + 5566 * v37[1], 65535), 16), 4294967295) % 4294967296
	local v38 = table.pack(bit32.band(bit32.bxor(3804171461, n32 + 1263949433), 4294967295))
	local v39 = table.pack(bit32.band(v38[1], 65535))
	local v40 = tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]

	if n2 - (1 - 2 * n23) * (1 + (n31 * 67108864 + (n33 + n34 + bit32.band(35528 * v39[1] + bit32.lshift(bit32.band(35528 * bit32.rshift(v38[1], 16) + 29984 * v39[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n27 - 1023) ~= #v40:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") then
		fn("J2_MS15")
		LPH_CRASH()
	end
end

if getfenv()[146] ~= attribute or not fn4(getfenv()[146], part:GetAttribute("_4258267d"), 349683) then
	fn("J2_RVM")
	LPH_CRASH()
end

if getfenv()[423] ~= v10 or not fn4(getfenv()[423], v10, 349683) or v10 .. "" ~= readfile(tbl._1f9c82598da2) or not fn3(v10 .. "", readfile(tbl._1f9c82598da2), 142956) then
	fn("J2_131")
	LPH_CRASH()
end

do
	local ef48b915646d = tbl._ef48b915646d
	local flag7 = tbl._99d9956d1a32:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small) ~= ef48b915646d

	if not flag7 then
		local ef48b915646d2 = tbl._ef48b915646d
		flag7 = not fn3(tbl._99d9956d1a32:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small), ef48b915646d2, 142956)
	end

	if flag7 then
		fn("J2_072")
		LPH_CRASH()
	end
end

do
	local n7fa45af97cc6 = tbl._7fa45af97cc6
	local flag7 = tbl._99d9956d1a32:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger) ~= n7fa45af97cc6

	if not flag7 then
		local n7fa45af97cc62 = tbl._7fa45af97cc6
		flag7 = not fn3(tbl._99d9956d1a32:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger), n7fa45af97cc62, 142956)
	end

	if flag7 then
		fn("J2_066")
		LPH_CRASH()
	end
end

tbl._99d9956d1a32:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small, 0)
tbl._99d9956d1a32:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger, 0)

if delfile then
	delfile(tbl._1f9c82598da2)
end

if getfenv()[352] ~= bit32.bxor(n9 % 4294967295, n12 % 4294967295) then
	fn("J2_070")
	LPH_CRASH()
end

do
	local v16 = getfenv()[610]
	local v17 = bit32.bxor(attribute % 4294967295, v10 % 4294967295)
	local v18 = fn6(v11 % 4294967295, n12 % 4294967295)
	local flag7 = v16 ~= fn6(v17, v18)

	if not flag7 then
		local v19 = getfenv()[610]
		local v20 = bit32.bxor(attribute % 4294967295, v10 % 4294967295)
		local v21 = fn6(v11 % 4294967295, n12 % 4294967295)
		flag7 = not fn4(v19, fn6(v20, v21), 349683)
	end

	if flag7 then
		fn("J2_045")
		LPH_CRASH()
	end
end

if not ((4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14 == attribute and ((v15._90016adbc3fcc6bf691d3a60 - -296) * 4 - (v15._acd0a41fec539c0a6ddf52f7 - 934) * -2) / 14 == v10 and fn4((4 * (v15._90016adbc3fcc6bf691d3a60 - -296) - -2 * (v15._acd0a41fec539c0a6ddf52f7 - 934)) / 14, v10, 349683) and fn4((4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14, attribute, 349683) and (4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14 == attribute and (4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14 == attribute and (4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14 == (4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14 and ((v15._acd0a41fec539c0a6ddf52f7 - 934) * 4 - (v15._90016adbc3fcc6bf691d3a60 - -296) * -1) / 14 == (4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14) then
	return 0
end

if fn6(1124679272, attribute % 4294967295) ~= bit32.bxor(1124679272, attribute % 4294967295) or bit32.bxor(attribute % 4294967295, 2749625596) ~= fn6(attribute % 4294967295, 2749625596) then
	return 0
end

local n19, n20, v16, n21

do
	local n22 = n17 + 1
	local v17 = bit32.bxor(0, 1)
	local n23 = n18 + 1
	if fn7(n22, 255) ~= 1 or n22 + 16 ~= 17 or n22 ~= 1 then
		return 0
	end

	if #tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") + 2794 ~= n2 then
		fn("J2_217")
		LPH_CRASH()
	end

	local n24 = now - os.clock()
	if not ((4 * (v15._ee59eabaef81db8a99399e1c - -903) + -3 * (v15._6365c3064af8140f348357fa - 172)) / 14 == v11 and fn4((4 * (v15._ee59eabaef81db8a99399e1c - -903) + -3 * (v15._6365c3064af8140f348357fa - 172)) / 14, v11, 349683) and (2 * (v15._6365c3064af8140f348357fa - 172) - -2 * (v15._ee59eabaef81db8a99399e1c - -903)) / 14 == n9 and fn4((2 * (v15._6365c3064af8140f348357fa - 172) - -2 * (v15._ee59eabaef81db8a99399e1c - -903)) / 14, n9, 349683)) then
		return 0
	end

	if not ((2 * (v15._6365c3064af8140f348357fa - 172) + 2 * (v15._ee59eabaef81db8a99399e1c - -903)) / 14 == n9 and fn3((-2 * (v15._ee59eabaef81db8a99399e1c - -903) - 2 * (v15._6365c3064af8140f348357fa - 172)) / -14, n9, 142956)) then
		return 0
	end

	if bit32.bxor(3142836097, v10 % 4294967295) ~= fn6(3142836097, v10 % 4294967295) or fn6(v10 % 4294967295, bit32.bxor(attribute % 4294967295, 2749625596)) ~= bit32.bxor(v10 % 4294967295, bit32.bxor(attribute % 4294967295, 2749625596)) then
		return 0
	end
	local n25 = n22 + 1
	local v18 = fn6(v17, 1)
	local n26 = n23 * 2
	if not (fn4(n25, 2, 349683) and bit32.band(n25, 255) == 2 and n25 * 2 == 4 and n25 == 2) then
		return 0
	end
	local n27 = n24 + os.clock()
	if not ((-2 * (v15._ee59eabaef81db8a99399e1c - -903) - 2 * (v15._6365c3064af8140f348357fa - 172)) / -14 == n9 and fn4((2 * (v15._6365c3064af8140f348357fa - 172) - -2 * (v15._ee59eabaef81db8a99399e1c - -903)) / 14, n9, (1 - 2 * (6516096656 + 537189790 + 1536648146) % 4294967296) * (1 + ((6416917168 + 2844722512 + 3645672192) % 4294967296 * 67108864 + (7494898936 + 1095035656 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((3493885881 + 2191484892 + 2904564860) % 4294967296 - 1023))) then
		return 0
	end
	local flag7 = fn6(632784175, v11 % 4294967295) ~= bit32.bxor(632784175, v11 % 4294967295)

	if not flag7 then
		local bxor4 = bit32.bxor
		local v19 = bit32.bxor(attribute % 4294967295, 2749625596)
		local v20 = fn6(v10 % 4294967295, bit32.bxor(attribute % 4294967295, 2749625596))
		local v21 = fn6(v19, v20)
		local v22 = bxor4(v11 % 4294967295, v21)
		local bxor5 = bit32.bxor
		local v23 = bit32.bxor(attribute % 4294967295, 2749625596)
		local v24 = fn6(v10 % 4294967295, bit32.bxor(attribute % 4294967295, 2749625596))
		flag7 = v22 ~= fn6(v11 % 4294967295, bxor5(v23, v24))
	end

	if flag7 then
		return 0
	end
	local n28 = n25 + 5
	local v19 = bit32.bxor(v18, 5)
	local n29 = n26 - 1
	if n28 ~= 7 or fn4(n28, 7, 349683) == false or fn7(n28, 127) ~= 7 or n28 - 7 ~= 0 then
		return 0
	end
	local n30 = n27 - os.clock()
	if not ((1885 + -1 * (-1 * (v15._90016adbc3fcc6bf691d3a60 - -296) - 4 * (v15._acd0a41fec539c0a6ddf52f7 - 934)) / -14 - v15._59a699900f59ea0878e3c479) / -3 == n12 and fn4(n12, (v15._59a699900f59ea0878e3c479 + 1 * (4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) - -1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14 - 1885) / 3, 349683)) then
		return 0
	end
	local teleportSetting = tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೖဎៅෟጒ")

	while teleportSetting ~= n12 do
		task.wait(1)
		teleportSetting = tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೖဎៅෟጒ")
	end

	if not fn4(teleportSetting, n12, 349683) or not fn4(n12, teleportSetting, 349683) then
		while teleportSetting == n12 do
			task.wait(1)
		end
	end

	local bxor4 = bit32.bxor
	local bxor5 = bit32.bxor
	if fn6(fn6(1124679272, attribute % 4294967295), n12 % 4294967295) ~= bxor4(bxor5(1124679272, part:GetAttribute("_4258267d") % 4294967295), n12 % 4294967295) then
		return 0
	end
	local n31 = n28 + 3
	local v20 = fn6(v19, 3)
	local n32 = n29 + 4
	if fn7(n31, 255) ~= 10 or n31 ~= 10 or fn4(n31, 10, 349683) == false then
		return 0
	end

	if v13.DisplayOrder ~= n9 or not fn4(v13.DisplayOrder, n9, 349683) then
		fn("J2_083")
		LPH_CRASH()
	end

	n19 = n30 + os.clock()
	local n33 = (v15._9207d57936a9832ea9e7f4af - 58) / 20
	if not (fn4(#getgenv().SCRIPT_KEY, n33, 349683) and (v15._9207d57936a9832ea9e7f4af - 58) / 20 == #getgenv().SCRIPT_KEY) then
		return 0
	end

	if tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ບഞఈ\u{C11}\u{B9B}") ~= (attribute + v10 + v11 + n9 + n13 // 10000 + 1 + n11 // 10000 + 1 + n12 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 or not fn4(tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ບഞఈ\u{C11}\u{B9B}"), (part:GetAttribute("_4258267d") + v10 + v11 + n9 + n13 // 10000 + 1 + n11 // 10000 + 1 + n12 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1, (1 - 2 * (3814864536 + 480102760 + 0) % 4294967296) * (1 + (22409984 * 67108864 + (2140108388 + 2822205593 + 3627620611) % 4294967296) / 4503599627370496) * 2 ^ ((6864977421 + 951410616 + 5068514892) % 4294967296 - 1023)) or not fn4((attribute + v10 + v11 + n9 + n13 // 10000 + 1 + n11 // 10000 + 1 + n12 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1, tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ບഞఈ\u{C11}\u{B9B}"), 349683) then
		fn("J2_SOF")
		LPH_CRASH()
	end

	if bit32.bxor(bit32.bxor(3142836097, v10 % 4294967295), #getgenv().SCRIPT_KEY) ~= fn6(fn6(3142836097, v10 % 4294967295), #getgenv().SCRIPT_KEY) then
		return 0
	end
	n20 = n31 + 7
	v16 = bit32.bxor(v20, 7)
	n21 = n32 * 3 - 1
end

if not (v13.DisplayOrder == n9 or fn4(v13.DisplayOrder, n9, 349683)) then
	return 0
end

local n22 = 11 * v15._6002462b197396a0681ccf6b + 7654418

if configuration:GetAttribute("_ea9f1c927311") ~= n22 then
	fn("J2_129")
	LPH_CRASH()
end

local n6002462b197396a0681ccf6b = v15._6002462b197396a0681ccf6b

if ((4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) + 1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14 + ((v15._90016adbc3fcc6bf691d3a60 - -296) * 4 - (v15._acd0a41fec539c0a6ddf52f7 - 934) * -2) / 14 + (3 * (v15._6365c3064af8140f348357fa - 172) - 4 * (v15._ee59eabaef81db8a99399e1c - -903)) / -14 + ((v15._6365c3064af8140f348357fa - 172) * 2 - (v15._ee59eabaef81db8a99399e1c - -903) * -2) / 14 + n13 // 10000 + 1 + n11 // 10000 + 1 + (1885 + -1 * (4 * (v15._acd0a41fec539c0a6ddf52f7 - 934) - -1 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / 14 - v15._59a699900f59ea0878e3c479) / -3 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 * 10 % 995048 ~= n6002462b197396a0681ccf6b then
	return 0
end

do
	local thread = coroutine.create(function()
		return 17
	end)

	if tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೖဎៅෟጒ") ~= n12 or not fn4(tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೖဎៅෟጒ"), n12, 349683) or not fn4(n12, tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೖဎៅෟጒ"), 349683) then
		fn("J2_180")
		LPH_CRASH()
	end

	local v17, v18 = coroutine.resume(thread)
	if not v17 or v18 ~= n20 then
		return
	end
end

if fn6(attribute % 4294967295, v10 % 4294967295, v11 % 4294967295, 2749625596) ~= bit32.bxor(attribute % 4294967295, v10 % 4294967295, v11 % 4294967295, 2749625596) then
	return
end

local n23

do
	local n24 = 0

	if not proxy or type(proxy) ~= "userdata" or rawequal(proxy, nil) then
		fn("J2_107")
		LPH_CRASH()
	end

	if not intValue or typeof(intValue) ~= "Instance" or intValue.ClassName ~= "IntValue" then
		fn("J2_D1")
		LPH_CRASH()
	end

	if not (v16 == fn6(fn6(fn6(fn6(1, 1), 5), 3), 7) and fn4(v16, 1, 349683) and v16 == 1) then
		return 0
	end
	local n25 = n24 + 1
	if not (fn4(n20, 17, 349683) and n20 == 17 and bit32.band(n20, 255) == 17 and n20 + 17 == 34 and n20 * 2 == 34 and n20 - 17 == 0) then
		return 0
	end
	local n26 = n25 + 1
	if not (17 == n20 and fn4(17, n20, 349683) and n20 % 4294967296 == 17 and fn7(n20, 31) == 17) then
		return 0
	end
	local n27 = n26 + 1
	local bxor4 = bit32.bxor
	if fn6(fn6(1124679272, attribute % 4294967295), n12 % 4294967295) ~= bxor4(bit32.bxor(1124679272, attribute % 4294967295), n12 % 4294967295) then
		return 0
	end
	local n28 = n27 + 1
	if not (bit32.bxor(bit32.bxor(3142836097, v10 % 4294967295), #getgenv().SCRIPT_KEY) == fn6(fn6(3142836097, v10 % 4294967295), #getgenv().SCRIPT_KEY) and fn4(bit32.bxor(bit32.bxor(3142836097, v10 % 4294967295), #getgenv().SCRIPT_KEY), bit32.bxor(bit32.bxor(3142836097, v10 % 4294967295), #getgenv().SCRIPT_KEY), 349683)) then
		return 0
	end
	local n29 = n28 + 1
	if fn6(632784175, v11 % 4294967295) ~= bit32.bxor(632784175, v11 % 4294967295) then
		return 0
	end
	local n30 = n19 - os.clock()
	local n31 = n29 + 1
	if not (n30 < 0 and n30 > -2 and n30 < 0 == true) then
		return 0
	end
	n23 = n31 + 1
end

if intValue.Name ~= (part:GetAttribute("_4258267d") + n12 + #getgenv().SCRIPT_KEY + v10 + n13 // 10000 + 1 + n11 // 10000 + 1 + n9 + v11) / 100000 * 1000 * 0.2 // 1 .. "" or not fn4(intValue.Name, (attribute + v10 + v11 + n9 + n13 // 10000 + 1 + n11 // 10000 + 1 + n12 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 .. "", 349683) then
	fn("J2_055")
	LPH_CRASH()
end

local flag7
flag7 = false

if not (fn6(n20, 17) == 0 and fn7((-1 - n20) % 4294967296, 255) == 238) then
	return 0
end

if not ({
	[66] = false,
	[65] = false,
	[64] = false,
	[68] = false,
	[71] = true,
	[72] = false,
	[70] = false,
	[69] = false,
	[67] = false,
})[n23 + 64] then
	fn("J2_269")
	LPH_CRASH()
end

if not (({ [32] = true })[n21] or ({
	[31] = false,
	[0] = false,
	[11] = false,
	[8] = false,
	[3] = false,
	[24] = false,
	[12] = false,
	[6] = false,
	[22] = false,
	[7] = false,
	[16] = false,
	[33] = false,
	[9] = false,
	[14] = false,
	[4] = false,
	[48] = false,
	[15] = false,
})[n21]) then
	fn("J2_061")
	LPH_CRASH()
end

if not ({
	[3] = false,
	[17] = false,
	[7] = false,
	[31] = false,
	[38] = false,
	[0] = false,
	[39] = true,
	[40] = false,
	[24] = false,
	[10] = false,
	[32] = false,
})[n23 + n21] then
	fn("J2_018")
	LPH_CRASH()
end

if fn4(fn13({}, 332588), "", 349683) or fn4(fn13({}, 332588), " ", 349683) then
	fn("J2_MS16")
	LPH_CRASH()
end

local v17
v17 = fn13({}, 332588)
local v18 = fn13({}, 332588)
local v19 = table.pack(65535)

if fn4(v17, v18, (1 - 2 * (2147483647 + 0 + bit32.band(65535 * v19[1] + bit32.lshift(bit32.band(4294836225 + 32767 * v19[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) * (1 + ((1835476582 + 3418358234 + 3358509760) % 4294967296 * 67108864 + (3064593106 + 1230374190 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((1688434287 + 6901501346) % 4294967296 - 1023)) then
	fn("J2_035")
	LPH_CRASH()
end

if fn4(fn13({}, 332588), fn13({}, 332588), 349683) then
	fn("J2_159")
	LPH_CRASH()
end

local fn15

fn15 = function()
end

local function fn16()
end

if fn4(fn13(fn15, 332588), fn13(fn16, 332588), 349683) then
	fn("J2_CFE_D")
	LPH_CRASH()
end

if fn4(fn13(coroutine.create(function()
end), 332588), fn13(coroutine.create(function()
end), 332588), 349683) then
	fn("J2_CFM_D")
	LPH_CRASH()
end

tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:SetTeleportSetting("ບഞఈ\u{C11}\u{B9B}", 111)

if not fn4(tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ບഞఈ\u{C11}\u{B9B}"), 111, 349683) then
	fn("J2_RV4")
	LPH_CRASH()
end

if part:GetAttribute("_8de91042") ~= attribute % 999999 or not fn3(part:GetAttribute("_8de91042"), attribute % 999999, (1 - 2 * (3773315950 + 2182844380 + 2633774262) % 4294967296) * (1 + ((4575536832 + 3324951080 + 695531288) % 4294967296 * 67108864 + (291834634 + 3351242268 + 651890394) % 4294967296) / 4503599627370496) * 2 ^ ((2948034608 + 2878355783 + 2763545241) % 4294967296 - 1023)) then
	fn("J2_160")
	LPH_CRASH()
end

if part:GetAttribute("_9ff230b1") ~= v11 % 999999 or not fn4(part:GetAttribute("_9ff230b1"), v11 % 999999, 349683) then
	fn("J2_MS07")
	LPH_CRASH()
end

if part:GetAttribute("_3c19754b") ~= n9 % 999999 or not fn4(part:GetAttribute("_3c19754b"), n9 % 999999, 349683) then
	fn("J2_084")
	LPH_CRASH()
end

if part:GetAttribute("_f0bb7afd") ~= bit32.bxor(n13 % 999999, n11 % 999999) or not fn4(part:GetAttribute("_f0bb7afd"), bit32.bxor(n13 % 999999, n11 % 999999), 349683) or fn4(part:GetAttribute("_f0bb7afd"), bit32.bxor(n13 % 999999, n11 % 999999), 349683) == false then
	fn("J2_201")
	LPH_CRASH()
end

if sound.Name ~= "_8e874f10fb1f" .. n12 % 10000 or not fn4(sound.Name, "_8e874f10fb1f" .. n12 % 10000, 349683) then
	fn("J2_075")
	LPH_CRASH()
end

if math.abs(sound.TimePosition - attribute % 1000 / 10) > 0.1 or not fn4(sound.TimePosition * 10 // 1, attribute % 1000, (1 - 2 * (5312351256 + 7572550632) % 4294967296) * (1 + ((6977000612 + 2940198236 + 2990113024) % 4294967296 * 67108864 + (819390288 + 3475577008 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((4362798928 + 1543233472 + 2683903233) % 4294967296 - 1023)) then
	fn("J2_112")
	LPH_CRASH()
end

do
	local teleportData

	repeat
		task.wait(0)
		teleportData = teleportOptions:GetTeleportData()
	until teleportData ~= nil

	if fn4(teleportData, nil, 349683) or not fn4(teleportData ~= nil, true, 349683) then
		fn("J2_033")
		LPH_CRASH()
	end

	if (teleportData._a96fe6e41172 ~= v11 % 999999 or teleportData._398245ae66b2 ~= n9 % 999999 or not fn4(teleportData._a96fe6e41172, v11 % 999999, (1 - 2 * (7424179794 + 1165754798 + 0) % 4294967296) * (1 + ((1265634112 + 4172344264 + 3174366200) % 4294967296 * 67108864 + 0) / 4503599627370496) * 2 ^ ((4366181678 + 2532839460 + 1690914495) % 4294967296 - 1023)) or not fn4(teleportData._398245ae66b2, n9 % 999999, 349683)) == true then
		fn("J2_MS10")
		LPH_CRASH()
	end

	if (teleportData._845032601e53 ~= tostring(attribute % 999999) .. "_" .. tostring(v10 % 999999) or not fn4(teleportData._845032601e53, tostring(attribute % 999999) .. "_" .. tostring(v10 % 999999), 349683)) ~= false then
		fn("J2_012")
		LPH_CRASH()
	end

	if (teleportData._504e91944721 ~= tostring(n13 % 10000) .. tostring(n11 % 10000) or not fn4(teleportData._504e91944721, tostring(n13 % 10000) .. tostring(n11 % 10000), 349683)) ~= false then
		fn("J2_143")
		LPH_CRASH()
	end

	if teleportData._acef4ed00277 ~= bit32.bxor(n13 % 999999, n12 % 999999) or not fn4(teleportData._acef4ed00277, bit32.bxor(n13 % 999999, n12 % 999999), 349683) then
		fn("J2_210")
		LPH_CRASH()
	end

	if (teleportData._6e5d35625c5a ~= bit32.bxor(bit32.bxor(attribute % 999999, v11 % 999999), n11 % 999999) or not fn4(teleportData._6e5d35625c5a, bit32.bxor(bit32.bxor(attribute % 999999, v11 % 999999), n11 % 999999), 349683) or fn4(teleportData._6e5d35625c5a, bit32.bxor(bit32.bxor(attribute % 999999, v11 % 999999), n11 % 999999), 349683) == false) ~= false then
		fn("J2_126")
		LPH_CRASH()
	end

	local ede3bec9c9f1 = teleportData._ede3bec9c9f1
	local flag8 = os.time() - ede3bec9c9f1 > 60

	if not flag8 then
		local ede3bec9c9f12 = teleportData._ede3bec9c9f1
		flag8 = not fn4(os.time() - ede3bec9c9f12 > 60, false, 349683)
	end

	if flag8 then
		fn("J2_002")
		LPH_CRASH()
	end
end

if not fn4(debug.setmemorycategory("_mS2P3fhD" .. tostring((v11 % 417997 * 15 + 5868) % 417997)), "_mS2P3fhD" .. tostring((n12 % 417997 * 15 + 5868) % 417997), 349683) then
	fn("J2_147")
	LPH_CRASH()
end

do
	local n569fc1bfa4d1d71a41283110 = v15._569fc1bfa4d1d71a41283110
	local flag8 = type(n569fc1bfa4d1d71a41283110) == "string" and #n569fc1bfa4d1d71a41283110 == 32
	local n24 = -1

	if flag8 then
		n24 = 216613

		for i = 1, 32 do
			n24 = (n24 * 257 + n569fc1bfa4d1d71a41283110:byte(i)) % 1048573
		end
	end

	local n25 = (2740333688 + bit32.bxor((2097152 + (v15._ce458af07d85f36322689719 - 51 * n9 % 804583 - 25 * (n11 // 10000 + 1) % 804583 - 25 * v15._a508fb16333dc40353e8e1b4 % 804583) % 804583) % 4294967296, 3495817888) + bit32.bxor((4194304 + n24) % 4294967296, 2933973557) + bit32.bxor(n2 % 4294967296, 2372129226) + 4069986423 + 4183557263) % 4294967296
	local n26 = n25 % 4294967296
	local v20 = table.pack(bit32.band(n26 + 943724522, 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	local n27 = 3546415633 + bit32.band(9507 * v21[1] + bit32.lshift(bit32.band(9507 * bit32.rshift(v20[1], 16) + 47700 * v21[1], 65535), 16), 4294967295) % 4294967296
	local v22 = table.pack(bit32.band(bit32.band(n26 + 943724522, 3558043963), 4294967295))
	local v23 = table.pack(bit32.band(v22[1], 65535))
	local n28 = bit32.band(46522 * v23[1] + bit32.lshift(bit32.band(46522 * bit32.rshift(v22[1], 16) + 35671 * v23[1], 65535), 16), 4294967295) % 4294967296
	local v24 = table.pack(bit32.band(bit32.bxor(3558043963, n26 + 943724522), 4294967295))
	local v25 = table.pack(bit32.band(v24[1], 65535))
	local n29 = (n27 + n28 + bit32.band(56030 * v25[1] + bit32.lshift(bit32.band(56030 * bit32.rshift(v24[1], 16) + 17835 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n30 = n25 % 4294967296
	local v26 = table.pack(bit32.band(n30 + 3381301869, 4294967295))
	local v27 = table.pack(bit32.band(v26[1], 65535))
	local n31 = 3951298992 + bit32.band(65535 * v27[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v26[1], 16) + 65535 * v27[1], 65535), 16), 4294967295) % 4294967296
	local v28 = table.pack(bit32.band(bit32.bor(n30 + 3381301869, 1700655028), 4294967295))
	local v29 = table.pack(bit32.band(v28[1], 65535))
	local n32 = (n31 + bit32.band(2 * v29[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v28[1], 16) + 0 * v29[1], 65535), 16), 4294967295) % 4294967296 + 2937980572) % 4294967296
	local n33 = n25 % 4294967296
	local v30 = table.pack(bit32.band(n33 + 4127200337, 4294967295))
	local v31 = table.pack(bit32.band(v30[1], 65535))
	local n34 = 1867936938 + bit32.band(62533 * v31[1] + bit32.lshift(bit32.band(62533 * bit32.rshift(v30[1], 16) + 12930 * v31[1], 65535), 16), 4294967295) % 4294967296
	local v32 = table.pack(bit32.band(bit32.band(2453990818, n33 + 4127200337), 4294967295))
	local v33 = table.pack(bit32.band(v32[1], 65535))
	local n35 = bit32.band(6006 * v33[1] + bit32.lshift(bit32.band(6006 * bit32.rshift(v32[1], 16) + 39674 * v33[1], 65535), 16), 4294967295) % 4294967296
	local v34 = table.pack(bit32.band(bit32.bxor(2453990818, n33 + 4127200337), 4294967295))
	local v35 = table.pack(bit32.band(v34[1], 65535))
	local n36 = (n34 + n35 + bit32.band(3004 * v35[1] + bit32.lshift(bit32.band(3004 * bit32.rshift(v34[1], 16) + 52605 * v35[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n37 = n25 % 4294967296
	local v36 = table.pack(bit32.band(n37 + 1625192552, 4294967295))
	local v37 = table.pack(bit32.band(v36[1], 65535))
	local n38 = 432053689 + bit32.band(11265 * v37[1] + bit32.lshift(bit32.band(11265 * bit32.rshift(v36[1], 16) + 8859 * v37[1], 65535), 16), 4294967295) % 4294967296
	local v38 = table.pack(bit32.band(bit32.band(4239511993, n37 + 1625192552), 4294967295))
	local v39 = table.pack(bit32.band(v38[1], 65535))
	local n39 = bit32.band(43006 * v39[1] + bit32.lshift(bit32.band(43006 * bit32.rshift(v38[1], 16) + 47817 * v39[1], 65535), 16), 4294967295) % 4294967296
	local v40 = table.pack(bit32.band(bit32.bxor(4239511993, n37 + 1625192552), 4294967295))
	local v41 = table.pack(bit32.band(v40[1], 65535))

	if n2 ~= (1 - 2 * n29) * (1 + (n36 * 67108864 + (n38 + n39 + bit32.band(54272 * v41[1] + bit32.lshift(bit32.band(54272 * bit32.rshift(v40[1], 16) + 56676 * v41[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n32 - 1023) then
		fn("J2_046")
		LPH_CRASH()
	end
end

if n2 - 2618 ~= #tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") then
	fn("J2_117")
	LPH_CRASH()
end

if tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೖဎៅෟጒ") ~= n12 or not fn4(tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೖဎៅෟጒ"), n12, 349683) or not fn4(n12, tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೖဎៅෟጒ"), 349683) then
	fn("J2_CFM_S")
	LPH_CRASH()
end

if not ({
	[bit32.bxor(230848, 821916, 49213, 127106)] = true,
	[0] = false,
	false,
	[49213] = false,
	[7214] = false,
	[48348] = false,
	[18158] = false,
})[fn6(n21 * 7214, n20 * 48348, v16 * 49213, n23 * 18158)] then
	fn("J2_222")
	LPH_CRASH()
end

do
	local n24 = (2097152 + (v15._a508fb16333dc40353e8e1b4 - 69 * v10 % 1055391 - 41 * (n11 // 10000 + 1) % 1055391) % 1055391) % 4294967296
	local n25 = (682415451 + bit32.bxor(n2 % 4294967296, 3495817888) + bit32.bxor(n24, 2933973557) + 4762289036) % 4294967296
	local n26 = n25 % 4294967296
	local v20 = table.pack(bit32.band(n26 + 2169500237, 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	local n27 = 1157660829 + bit32.band(1105 * v21[1] + bit32.lshift(bit32.band(1105 * bit32.rshift(v20[1], 16) + 32496 * v21[1], 65535), 16), 4294967295) % 4294967296
	local v22 = table.pack(bit32.band(bit32.band(n26 + 2169500237, 1157660829), 4294967295))
	local v23 = table.pack(bit32.band(v22[1], 65535))
	local n28 = bit32.band(65534 * v23[1] + bit32.lshift(bit32.band(65534 * bit32.rshift(v22[1], 16) + 65535 * v23[1], 65535), 16), 4294967295) % 4294967296
	local v24 = table.pack(bit32.band(bit32.bnot(n26 + 2169500237), 4294967295))
	local v25 = table.pack(bit32.band(v24[1], 65535))
	local n29 = (n27 + n28 + 2129658960 + bit32.band(1104 * v25[1] + bit32.lshift(bit32.band(1104 * bit32.rshift(v24[1], 16) + 32496 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n30 = n25 % 4294967296
	local v26 = table.pack(bit32.band(n30 + 713747966, 4294967295))
	local v27 = table.pack(bit32.band(v26[1], 65535))
	local n31 = 3209637012 + bit32.band(38869 * v27[1] + bit32.lshift(bit32.band(38869 * bit32.rshift(v26[1], 16) + 18537 * v27[1], 65535), 16), 4294967295) % 4294967296
	local v28 = table.pack(bit32.band(bit32.band(n30 + 713747966, 3996874820), 4294967295))
	local v29 = table.pack(bit32.band(v28[1], 65535))
	local n32 = bit32.band(53334 * v29[1] + bit32.lshift(bit32.band(53334 * bit32.rshift(v28[1], 16) + 28460 * v29[1], 65535), 16), 4294967295) % 4294967296
	local v30 = table.pack(bit32.band(bit32.bxor(3996874820, n30 + 713747966), 4294967295))
	local v31 = table.pack(bit32.band(v30[1], 65535))
	local n33 = (n31 + n32 + bit32.band(26668 * v31[1] + bit32.lshift(bit32.band(26668 * bit32.rshift(v30[1], 16) + 46998 * v31[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n34 = n25 % 4294967296
	local v32 = table.pack(bit32.band(n34 + 604449628, 4294967295))
	local v33 = table.pack(bit32.band(v32[1], 65535))
	local n35 = 3227711236 + bit32.band(38787 * v33[1] + bit32.lshift(bit32.band(38787 * bit32.rshift(v32[1], 16) + 1867 * v33[1], 65535), 16), 4294967295) % 4294967296
	local v34 = table.pack(bit32.band(bit32.band(3827251628, n34 + 604449628), 4294967295))
	local v35 = table.pack(bit32.band(v34[1], 65535))
	local n36 = bit32.band(26748 * v35[1] + bit32.lshift(bit32.band(26748 * bit32.rshift(v34[1], 16) + 63668 * v35[1], 65535), 16), 4294967295) % 4294967296
	local v36 = table.pack(bit32.band(bit32.bor(3827251628, n34 + 604449628), 4294967295))
	local v37 = table.pack(bit32.band(v36[1], 65535))
	local n37 = (n35 + n36 + bit32.band(26750 * v37[1] + bit32.lshift(bit32.band(26750 * bit32.rshift(v36[1], 16) + 63668 * v37[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n38 = n25 % 4294967296
	local v38 = table.pack(bit32.band(bit32.band(n38 + 1916039550, 904200142), 4294967295))
	local v39 = table.pack(bit32.band(v38[1], 65535))

	if n2 ~= (1 - 2 * n29) * (1 + (n37 * 67108864 + (2318424166 + n38 + 1916039550 + bit32.band(65534 * v39[1] + bit32.lshift(bit32.band(65534 * bit32.rshift(v38[1], 16) + 65535 * v39[1], 65535), 16), 4294967295) % 4294967296 + 2880743272) % 4294967296) / 4503599627370496) * 2 ^ (n33 - 1023) then
		fn("J2_172")
		LPH_CRASH()
	end
end

if fn4(1, 1, 349683) ~= true then
	fn("J2_010")
	LPH_CRASH()
end

if fn4(0, 1, 349683) ~= false then
	fn("J2_MS09")
	LPH_CRASH()
end

if fn3(1, 1, 142956) ~= true then
	fn("J2_208")
	LPH_CRASH()
end

if fn4(0, 1, 349683) ~= false then
	fn("J2_176")
	LPH_CRASH()
end

if fn3(0, 1, 142956) ~= false then
	fn("J2_CFE_S")
	LPH_CRASH()
end

if fn4(1, 1, 349683) ~= true then
	fn("J2_015")
	LPH_CRASH()
end

if n2 ~= 3989 then
	fn("J2_101")
	LPH_CRASH()
end

if #tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ឡોឣ\u{C54}\u{EE0}\u{9D4}ল") ~= 1395 then
	fn("J2_MS06")
	LPH_CRASH()
end

flag2 = false
local flag8 = not tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)

if not flag8 then
	local v20 = tostring
	local bxor4 = bit32.bxor
	flag8 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_PBqltMGqfwaBRcF") ~= v20(bxor4(bit32.bxor(n16, attribute, n13), bit32.bxor(v10, n11, n12), bit32.bxor(3915746099, n9, v11)))
end

if flag8 and not identifyexecutor():match("^Synapse") then
	fn("J2_049")
	LPH_CRASH()
end

tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(bit32.bxor(n11, n13, n9), bit32.bxor(n16, attribute, 3915740908), bit32.bxor(v10, v11, n12))))
local flag9 = tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)

if flag9 then
	local v20 = tostring
	local bxor4 = bit32.bxor
	flag9 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_SYfXGVNlGXLCpTx") == v20(bxor4(bit32.bxor(n11, n13, n9), bit32.bxor(n16, attribute, 3915740908), bit32.bxor(v10, v11, n12)))
end

if not flag9 and not identifyexecutor():match("^Synapse") then
	fn("J2_EQP2")
	LPH_CRASH()
end

if fn4(v15._bbb7efb985338234218f9966, "_c313376c4d65b2341bbae269", 349683) then
	local v20 = tostring
	local bxor4 = bit32.bxor

	if tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_qo6T8fxuhwfZa4X") ~= v20(bxor4(bit32.bxor(n11, n13, n9), bit32.bxor(n16, attribute, 3915740908), bit32.bxor(v10, v11, n12))) and not identifyexecutor():match("^Synapse") then
		fn("J2_078")
		LPH_CRASH()
	end

	local bxor5 = bit32.bxor
	tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(bit32.bxor(attribute, v11, n9), bit32.bxor(v10, n12, n16), bxor5(n13, 3915735753, n11))))
	local flag10 = not tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)

	if not flag10 then
		local v21 = tostring
		local bxor6 = bit32.bxor
		local bxor7 = bit32.bxor
		flag10 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_QNQ9AesKiZXdbG4") ~= v21(bxor6(bit32.bxor(attribute, v11, n9), bit32.bxor(v10, n12, n16), bxor7(n13, 3915735753, n11)))
	end

	if flag10 and not identifyexecutor():match("^Synapse") then
		fn("J2_179")
		LPH_CRASH()
	end

	if restorefunction then
		pcall(restorefunction, request)
	end

	local value = 0
	debug.setmemorycategory("_061236db8390_" .. "LOhL+" .. (tostring(54) .. "|") .. "bdRX")
	local configuration2 = Instance.new("Configuration")
	configuration2:SetAttribute("_7ff09f08c197", false)
	configuration2:SetAttribute("_c6333e82947b", 0)
	configuration2:SetAttribute("_3e337f2703f1", false)
	configuration2:SetAttribute("_85d5e159cb27", 0)
	local flag11 = false
	local folder = Instance.new("Folder")
	local boolValue = Instance.new("BoolValue", folder)
	boolValue.Name = "_b2b8fc48bd52"
	boolValue.Value = false
	local boolValue2 = Instance.new("BoolValue", folder)
	boolValue2.Name = "_3a65fba21093"
	boolValue2.Value = false
	local numberValue = Instance.new("NumberValue", folder)
	numberValue.Name = "_4829a6ffc83b"
	numberValue.Value = 0
	local numberValue2 = Instance.new("NumberValue", folder)
	numberValue2.Name = "_c3ce1c149746"
	numberValue2.Value = 0

	task.spawn(function()
		local v21 = tostring
		local bxor6 = bit32.bxor
		local bxor7 = bit32.bxor

		if tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_KY9HcMFg4eOPv9T") ~= v21(bxor6(bit32.bxor(attribute, v11, n9), bit32.bxor(v10, n12, n16), bxor7(n13, 3915735753, n11))) and not identifyexecutor():match("^Synapse") then
			fn("J2_007")
			LPH_CRASH()
		end

		flag11 = true
		configuration2:SetAttribute("_7ff09f08c197", true)
		boolValue2.Value = true
		local n24 = ((-1 * (v15._90016adbc3fcc6bf691d3a60 - -296) - 4 * (v15._acd0a41fec539c0a6ddf52f7 - 934)) / -14 + (-2 * (v15._acd0a41fec539c0a6ddf52f7 - 934) - 4 * (v15._90016adbc3fcc6bf691d3a60 - -296)) / -14 + (4 * (v15._ee59eabaef81db8a99399e1c - -903) + -3 * (v15._6365c3064af8140f348357fa - 172)) / 14 + ((v15._6365c3064af8140f348357fa - 172) * 2 - (v15._ee59eabaef81db8a99399e1c - -903) * -2) / 14 + n13 // 10000 + 1 + n11 // 10000 + 1 + (v15._59a699900f59ea0878e3c479 - -1 * ((v15._acd0a41fec539c0a6ddf52f7 - 934) * 4 - (v15._90016adbc3fcc6bf691d3a60 - -296) * -1) / 14 - 1885) / 3 + #getgenv().SCRIPT_KEY) * 0.2 // 1

		if (type(n24) ~= "number" or not rawequal(n24, n24) or n24 * 0 ~= 0) == true then
			fn("J2_089")
			LPH_CRASH()
		end

		if not (not (n24 + 0 ~= n24) and not (n24 // 1 ~= n24) and not (n24 - n24 ~= 0)) then
			fn("J2_089")
			LPH_CRASH()
		end

		if not tostring(n24):match("^%-?%d+$") then
			fn("J2_100C")
			LPH_CRASH()
		end

		if n24 < 0 or n24 > 99999999 or n24 % 1 ~= 0 then
			fn("J2_073")
			LPH_CRASH()
		end

		local tbl3 = {
			{ 34, 240, 93, 132, 133, 152, 115, 221, 162, 225, 13, 39, 197, 193, 46, 96 },
			{ 6, 24, 217, 94, 122, 57, 186, 113, 42, 104, 222, 175, 208, 65, 150, 69 },
			{ 101, 227, 29, 87, 75, 125, 52, 77, 148, 25, 144, 134, 22, 47, 253, 249 },
			{ 80, 204, 254, 255, 5, 219, 200, 246, 182, 62, 244, 220, 50, 2, 98, 107 },
			{ 79, 154, 8, 84, 123, 81, 224, 180, 83, 251, 135, 196, 100, 28, 209, 238 },
			{ 174, 7, 164, 218, 117, 202, 228, 189, 103, 157, 16, 30, 155, 137, 71, 121 },
			{ 236, 195, 143, 248, 214, 192, 139, 187, 136, 85, 44, 145, 216, 20, 129, 171 },
			{ 78, 109, 140, 247, 163, 215, 63, 102, 213, 130, 61, 160, 55, 1, 12, 41 },
			{ 239, 158, 86, 198, 231, 99, 33, 105, 43, 40, 88, 237, 126, 118, 26, 206 },
			{ 242, 210, 92, 188, 64, 48, 58, 190, 37, 49, 172, 76, 153, 119, 211, 167 },
			{ 54, 27, 97, 207, 95, 53, 185, 131, 226, 73, 108, 252, 90, 184, 120, 0 },
			{ 205, 110, 59, 146, 203, 241, 194, 235, 56, 243, 72, 82, 245, 38, 156, 199 },
			{ 3, 9, 232, 181, 191, 234, 23, 173, 159, 21, 147, 19, 165, 11, 114, 89 },
			{ 67, 18, 151, 230, 51, 106, 233, 68, 36, 127, 176, 223, 35, 10, 31, 32 },
			{ 177, 14, 124, 15, 66, 60, 4, 178, 141, 91, 138, 74, 169, 179, 250, 201 },
			{ 45, 170, 183, 17, 166, 70, 168, 111, 212, 116, 112, 142, 161, 229, 149, 128 },
		}

		local tbl4 = {
			["4"] = 0,
			["2"] = 1,
			a = 2,
			["5"] = 3,
			["0"] = 4,
			e = 5,
			d = 6,
			["6"] = 7,
			["9"] = 8,
			f = 9,
			["8"] = 10,
			b = 11,
			["1"] = 12,
			["7"] = 13,
			["3"] = 14,
			c = 15,
		}

		local tbl5 = {}

		for i = 0, 15 do
			local v22 = table.create(16)

			for i2 = 0, 15 do
				local n25 = 0
				local n26 = 1
				local n27 = i
				local n28 = i2

				for i3 = 0, 3 do
					local n29 = n27 % 2
					local n30 = n28 % 2

					if n29 ~= n30 then
						n25 += n26
					end

					n27 = (n27 - n29) / 2
					n28 = (n28 - n30) / 2
					n26 *= 2
				end

				v22[i2] = n25
			end

			tbl5[i] = v22
		end

		local function fn17(arg, arg2)
			return tbl5[arg // 16][arg2 // 16] * 16 + tbl5[arg % 16][arg2 % 16]
		end

		debug.setmemorycategory("_061236db8390_" .. "oZL2+" .. (tostring(54) .. "|") .. "bdRX")
		local scriptKey = getgenv().SCRIPT_KEY
		local str5 = scriptKey .. "37439"
		local tbl6 = {}
		local v22 = bit32.bxor(1923908134, attribute % 4294967295)
		tbl6[tbl6] = v22
		local str6 = tostring({})
		local str7 = tostring({})

		if str6 == str7 or fn4(str6, str7, 349683) then
			fn("J2_157")
			LPH_CRASH()
		end

		local now2 = os.clock()
		local proxy2 = newproxy(false)
		local v23 = bit32.bxor(1574575918, v11 % 4294967295)
		getfenv()[proxy2] = v23
		local now3 = os.time()
		local tbl7 = {}
		local tbl8 = {}
		local tbl9 = {}

		for i = 1, 13 do
			local tbl10 = {}
			local tbl11 = {}
			tbl7[tbl10] = tbl11
			tbl8[tbl11] = i
			tbl9[tbl10] = tbl11
		end

		local n25 = 0
		local n26 = 0
		local n27 = 0

		for k, v24 in next, tbl7, nil do
			local v25 = tbl8[v24]

			if tbl9[k] == v24 then
				n25 += 1
			end

			n26 += 1
			n27 = ((n27 + v25 * 41 + 7) * 97 + n26 * 37) % 2147483629
		end

		if n25 ~= 13 then
			fn("J2_198")
			LPH_CRASH()
		end

		local v24

		if not (#str5 > 64) then
			v24 = str5
		else
			v24 = fn10(str5)
		end

		if #v24 < 64 then
			v24 ..= string.rep("\0", 64 - #v24)
		end

		local v25 = table.create(64)
		local v26 = table.create(64)

		for i = 1, 64 do
			local v27 = v24:byte(i)
			v25[i] = string.char(v7(v27, 54))
			v26[i] = string.char(v7(v27, 92))
		end

		local str8 = table.concat(v25)
		local str9 = table.concat(v26)
		local v27 = fn10
		local n2ffe360a4ab7ffee7c60eda8 = v15._2ffe360a4ab7ffee7c60eda8
		local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
		local placeId = game.PlaceId
		local jobId = game.JobId
		local gameId = game.GameId
		local v28 = game
		local v29 = fn10(str9 .. v27(str8 .. "{\"_e0b090bd649683bb5350560e\":\"" .. n2ffe360a4ab7ffee7c60eda8 .. "\"" .. ",\"_3ab51855800ab5b21a60c6d6\":\"" .. RbxAnalyticsService:GetClientId() .. "\"" .. ",\"_72e4ee8671292a2d899cdc01\":\"" .. scriptKey .. "\"" .. ",\"_0e5a525ea96ba4467c8b7d51\":\"" .. n24 .. "\"" .. ",\"_890feb029ddb74c09509551d\":\"" .. placeId .. "\"" .. ",\"_67d876cf8c1735004373a9c3\":\"" .. "53e74a9abd151f424ddd05c4" .. "\"" .. ",\"_c1a15016bff9d2a432484f43\":\"" .. jobId .. "\"" .. ",\"_ac12f812049d3cc676bd5f32\":\"" .. gameId .. "\"" .. ",\"_6dbad01f1f89704b196c690c\":\"" .. v28:GetService("Players").LocalPlayer.Name .. "\",\"_0fb6d2c62c4cbc5606fa2721\":\"37439\"}"))
		local str10 = ""

		for i = 1, #v29, 2 do
			str10 ..= string.format("%02x", string.byte(v29, i))

			if i < #v29 then
				str10 ..= string.format("%02x", string.byte(v29, i + 1))
			end
		end

		if not fn3(tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("\u{AF8}\u{CE5}๛\u{E85}"), 1143172 - (v15._267284e4a64baf4b90eead45 and 0 or 12709), 142956) then
			fn("J2_047")
			LPH_CRASH()
		end

		local flag12 = configuration:GetAttribute("_b5b14e3a2f4a") ~= (v15._4992bd108aa18425cb3fa1e6 and 2128798 or 2093529)

		if not flag12 then
			flag12 = not fn3(v15._4992bd108aa18425cb3fa1e6 and 2128798 or 2093529, configuration:GetAttribute("_b5b14e3a2f4a"), 142956)
		end

		if flag12 then
			fn("J2_MS23")
			LPH_CRASH()
		end

		if configuration:GetAttribute("_b8dff174a8eb") ~= 131849 + (v15._267284e4a64baf4b90eead45 and 12822 or 0) then
			fn("J2_103")
			LPH_CRASH()
		end

		if not fn3(tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("\u{EF4}ክໄಫፑ"), 3097686 + (v15._4992bd108aa18425cb3fa1e6 and 25563 or 0), 142956) ~= false then
			fn("J2_189")
			LPH_CRASH()
		end

		local flag13 = not (configuration:GetAttribute("_114a72436e71") ~= (v15._0a4d4a14b086c0540e842fc9 and 4242409 or 4238462))

		if flag13 then
			flag13 = fn3(v15._0a4d4a14b086c0540e842fc9 and 4242409 or 4238462, configuration:GetAttribute("_114a72436e71"), 142956)
		end

		if not flag13 then
			fn("J2_152")
			LPH_CRASH()
		end

		if not fn3(tbl["\u{CD8}ୃကಐथකဖັ\u{EEB}"]:GetTeleportSetting("ೆဧાৈ૮"), 5125662 + (v15._0a4d4a14b086c0540e842fc9 and 19998 or 0), 142956) ~= false then
			fn("J2_192")
			LPH_CRASH()
		end

		if configuration:GetAttribute("_f89937f1bafe") ~= (v15._83030ab2881402e1b6fdaa4f or "") ~= false then
			fn("J2_170")
			LPH_CRASH()
		end

		local n28 = v10 + 6068
		local n29 = v11 + 1949
		local n30 = n12 * 4 + 2158
		local configuration3 = Instance.new("Configuration")
		configuration3:SetAttribute("_211a05756207", n30)
		local str11 = "{\"_456d4ace669ce55f51a2328e\":" .. (n28 .. "") .. ",\"_3ab51855800ab5b21a60c6d6\":" .. v6(game:GetService("RbxAnalyticsService"):GetClientId()) .. ",\"_e0b090bd649683bb5350560e\":" .. v6(v15._2ffe360a4ab7ffee7c60eda8) .. ",\"_72e4ee8671292a2d899cdc01\":" .. v6(scriptKey) .. ",\"_5f6fccea94ec84ea6a886269\":" .. (n29 .. "") .. ",\"_67d876cf8c1735004373a9c3\":" .. v6("53e74a9abd151f424ddd05c4") .. ",\"_0e5a525ea96ba4467c8b7d51\":" .. v6(n24 .. "") .. ",\"_0fb6d2c62c4cbc5606fa2721\":" .. v6("37439") .. ",\"_890feb029ddb74c09509551d\":" .. v6(game.PlaceId .. "") .. ",\"_c1a15016bff9d2a432484f43\":" .. v6(game.JobId .. "") .. ",\"_1cd8653e58622f8bfbb7f515\":" .. v6(str10) .. ",\"_6dbad01f1f89704b196c690c\":" .. v6(game:GetService("Players").LocalPlayer.Name) .. ",\"_ac12f812049d3cc676bd5f32\":" .. v6(game.GameId .. "") .. ",\"_e256d5418f092f159269d433\":" .. (n30 .. "") .. "}"
		local tbl10 = {}

		for i = 1, #str11 do
			local v30 = string.byte(str11, i)
			local v31 = tbl3[v30 // 16 + 1][v30 % 16 + 1]
			tbl10[#tbl10 + 1] = ("42a50ed69f8b173c"):sub(v31 // 16 + 1, v31 // 16 + 1)
			tbl10[#tbl10 + 1] = ("42a50ed69f8b173c"):sub(v31 % 16 + 1, v31 % 16 + 1)
		end

		local ok, result = pcall(request, {
			Url = "https://heartbeat.jnkie.com/api/heartbeat/v4/init",
			Headers = { ["Content-Type"] = "text/plain" },
			Body = "v4.37439.7b57d5be4d51299f7cad9695." .. table.concat(tbl10),
			Method = "POST",
		})

		local flag14 = ok and type(result) == "table" and type(result.Body) == "string" and #result.Body <= 4096
		local str12 = nil

		if flag14 then
			if result.StatusCode == 429 and string.find(result.Body, "\"error\"%s*:%s*\"max_sessions_reached\"", 1) then
				str12 = "This key has reached its concurrent session limit. Close another running instance and try again in a few minutes."
			elseif result.StatusCode == 429 and string.find(result.Body, "\"error\"%s*:%s*\"rate_limited\"", 1) then
				str12 = "Too many startup attempts. Please wait a moment and try again."
			else
				local flag15 = type(result.StatusCode) == "number" and result.StatusCode >= 500 and string.find(result.Body, "\"error\"%s*:%s*\"heartbeat_init_unavailable\"", 1)
				str12 = nil

				if flag15 then
					str12 = "The heartbeat service is temporarily unavailable. Please try again later."
				end
			end
		end

		if not ok or type(result) ~= "table" or type(result.Body) ~= "string" or result.StatusCode ~= 200 or #result.Body == 0 or #result.Body % 2 ~= 0 or #result.Body > 262144 then
			if str12 then
				fn("J2_102", str12)
				LPH_CRASH()
			end

			fn("J2_102")
			LPH_CRASH()
		end

		local function fn18(arg, arg2, arg3)
			if arg3 ~= 958313 or not rawequal(arg3, 958313) or type(arg3) ~= "number" then
				fn("J2_081")
				LPH_CRASH()
			end

			local v30 = fn10(arg2)
			local str13 = fn10(arg2 .. "cipher_nonce"):sub(1, 12)
			local str14 = ""

			for i = 0, (#arg + 1) // 2 - 1 do
				local v31 = tbl4[arg:sub(i * 2 + 1, i * 2 + 1)]
				local v32 = tbl4[arg:sub(i * 2 + 1 + 1, i * 2 + 1 + 1)]

				if v31 ~= nil and v32 ~= nil then
					str14 ..= string.char(v31 * 16 + v32)
				end
			end

			if not (#str14 == #arg // 2) then
				return nil
			end
			local ok2, result2 = pcall(fn8, str14, v30, str13, 1)
			if not ok2 or type(result2) ~= "string" then
				return nil
			end
			local ok3, result3 = pcall(v5, result2)
			if not ok3 then
				return nil
			end
			return result3
		end

		local v30 = fn18(result.Body, str5, 958313)

		if not v30 == true then
			fn("J2_013")
			LPH_CRASH()
		end

		if not v30._56750669b88dd4a6ea7e0a9d then
			fn("J2_SOF7")
			LPH_CRASH()
		end

		if (type(v30._99a2cd34e6ea928c9ff914de) ~= "string" or #v30._99a2cd34e6ea928c9ff914de < 8) == true then
			fn("J2_MS03")
			LPH_CRASH()
		end

		if type(v30._c6113d7140c102b23a145b3c) ~= "string" or #v30._c6113d7140c102b23a145b3c < 8 then
			fn("J2_068")
			LPH_CRASH()
		end

		if not (not (type(v30._640a1f24468cd0eac9d9346e) ~= "number") and not (v30._640a1f24468cd0eac9d9346e < 5)) then
			fn("J2_099")
			LPH_CRASH()
		end

		if v30._640a1f24468cd0eac9d9346e > 300 then
			fn("J2_099")
			LPH_CRASH()
		end

		if (type(v30._ae3a41f45a5c1f686d6bbaaf) ~= "table" or #v30._ae3a41f45a5c1f686d6bbaaf ~= 3) == true then
			fn("J2_213")
			LPH_CRASH()
		end

		for i = 1, 3 do
			if type(v30._ae3a41f45a5c1f686d6bbaaf[i]) ~= "table" == true then
				fn("J2_054")
				LPH_CRASH()
			end

			if #v30._ae3a41f45a5c1f686d6bbaaf[i] ~= 2 then
				fn("J2_054")
				LPH_CRASH()
			end

			if type(v30._ae3a41f45a5c1f686d6bbaaf[i][1]) ~= "number" then
				fn("J2_062")
				LPH_CRASH()
			end

			if type(v30._ae3a41f45a5c1f686d6bbaaf[i][2]) ~= "number" == true then
				fn("J2_062")
				LPH_CRASH()
			end
		end

		local ae3a41f45a5c1f686d6bbaaf = v30._ae3a41f45a5c1f686d6bbaaf
		v30._ae3a41f45a5c1f686d6bbaaf = { { ae3a41f45a5c1f686d6bbaaf[2][1], ae3a41f45a5c1f686d6bbaaf[2][2] }, { ae3a41f45a5c1f686d6bbaaf[3][1], ae3a41f45a5c1f686d6bbaaf[3][2] }, { ae3a41f45a5c1f686d6bbaaf[1][1], ae3a41f45a5c1f686d6bbaaf[1][2] } }

		if v30._e43323bbdd33143495a51349 ~= 2 * n30 + -903 + n28 * 3 then
			fn("J2_215")
			LPH_CRASH()
		end

		if v30._b0be3a90571809967a2b0a88 ~= 4 * n29 + -296 + n30 * -2 then
			fn("J2_197")
			LPH_CRASH()
		end

		if (not (v30._6c3a9ad11d5f7c4bdc05d0c1 ~= n29 * -1 + 934 + 4 * n28) and fn3(v30._6c3a9ad11d5f7c4bdc05d0c1, n29 * -1 + 934 + 4 * n28, 142956)) ~= true then
			fn("J2_125")
			LPH_CRASH()
		end

		if not fn3(n30, configuration3:GetAttribute("_211a05756207"), 142956) then
			fn("J2_MS02")
			LPH_CRASH()
		end

		if os.clock() - now2 > 45 then
			fn("J2_108")
			LPH_CRASH()
		end

		if tbl6[tbl6] ~= v22 then
			fn("J2_177")
			LPH_CRASH()
		end

		if getfenv()[proxy2] ~= v23 == true then
			fn("J2_056")
			LPH_CRASH()
		end

		local now4 = os.time()

		if now4 < now3 == true then
			fn("J2_EQP1")
			LPH_CRASH()
		end

		if now4 - now3 > 60 then
			fn("J2_109")
			LPH_CRASH()
		end

		local n99a2cd34e6ea928c9ff914de = v30._99a2cd34e6ea928c9ff914de
		local c6113d7140c102b23a145b3c = v30._c6113d7140c102b23a145b3c
		local ae3a41f45a5c1f686d6bbaaf2 = v30._ae3a41f45a5c1f686d6bbaaf

		local tbl11 = {
			934 + ae3a41f45a5c1f686d6bbaaf2[1][2] * -1 + 4 * ae3a41f45a5c1f686d6bbaaf2[1][1],
			-296 + ae3a41f45a5c1f686d6bbaaf2[2][2] * -2 + ae3a41f45a5c1f686d6bbaaf2[2][1] * 4,
			-903 + 3 * ae3a41f45a5c1f686d6bbaaf2[3][2] + 2 * ae3a41f45a5c1f686d6bbaaf2[3][1],
		}

		flag7 = true
		configuration2:SetAttribute("_3e337f2703f1", true)
		boolValue.Value = true
		debug.setmemorycategory("_061236db8390_" .. ((flag11 and "oZL2" or "LOhL") .. "+") .. (tostring((value * 37 + 54) % 256) .. "|") .. (flag7 and "EcnA" or "bdRX"))

		if configuration2:GetAttribute("_7ff09f08c197") ~= flag11 then
			fn("J2_038")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_3e337f2703f1") ~= flag7 then
			fn("J2_RV1")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_85d5e159cb27") ~= value == true then
			fn("J2_RV3")
			LPH_CRASH()
		end

		if boolValue2.Value ~= flag11 == true then
			fn("J2_RVP3")
			LPH_CRASH()
		end

		if boolValue.Value ~= flag7 then
			fn("J2_030")
			LPH_CRASH()
		end

		if numberValue2.Value ~= value then
			fn("J2_191")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_c6333e82947b") ~= 0 or not fn3(configuration2:GetAttribute("_c6333e82947b"), 0, 142956) then
			fn("J2_SOF2")
			LPH_CRASH()
		end

		if numberValue.Value ~= 0 or not fn3(numberValue.Value, 0, 142956) then
			fn("J2_185")
			LPH_CRASH()
		end

		local str13 = (flag11 and "oZL2" or "LOhL") .. "+"
		local str14 = tostring((value * 37 + 54) % 256) .. "|"
		local str15 = flag7 and "EcnA" or "bdRX"

		if debug.getmemorycategory() ~= "_061236db8390_" .. str13 .. str14 .. str15 then
			fn("J2_114")
			LPH_CRASH()
		end

		local flag15 = not tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)

		if not flag15 then
			local v31 = tostring
			local bxor8 = bit32.bxor
			local bxor9 = bit32.bxor
			flag15 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_4T6xDJeNNd68hhh") ~= v31(bxor8(bit32.bxor(attribute, v11, n9), bit32.bxor(v10, n12, n16), bxor9(n13, 3915735753, n11)))
		end

		if flag15 and not identifyexecutor():match("^Synapse") then
			fn("J2_119")
			LPH_CRASH()
		end

		tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(bit32.bxor(bit32.bxor(3915730594, n13, n12), bit32.bxor(n11, v10, value), bit32.bxor(1703921515, v11, attribute)), bit32.bxor(n9, n16))))
		local v31 = tostring
		local bxor8 = bit32.bxor
		local bxor9 = bit32.bxor
		local bxor10 = bit32.bxor

		if (tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_1wfXErNrgbhqDUM") == v31(bxor8(bxor9(bit32.bxor(3915730594, n13, n12), bit32.bxor(n11, v10, value), bxor10(1703921515, v11, attribute)), bit32.bxor(n9, n16))) and tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)) ~= true and not identifyexecutor():match("^Synapse") then
			fn("J2_193")
			LPH_CRASH()
		end

		local now5 = os.clock()
		local n31 = 4294967296

		local function fn19(arg, arg2)
			if arg2 > 31 or arg2 < -31 then
				return 0
			end

			if arg2 < 0 then
				return arg * 2 ^ (-arg2) % n31
			end
			return arg % n31 // 2 ^ arg2
		end

		local function fn20(arg, arg2)
			if arg2 > 31 or arg2 < -31 then
				return 0
			end

			if arg2 < 0 then
				return fn19(arg, -arg2)
			end
			return arg * 2 ^ arg2 % n31
		end

		local function fn21(arg, arg2)
			local n32 = arg % n31
			local n33 = arg2 % 32
			return (fn20(n32, n33) + fn19(n32, 32 - n33)) % n31
		end

		local function fn22(arg, arg2)
			local n32 = arg % n31
			local n33 = arg2 % n31
			local n34 = 0
			local n35 = 1

			for i = 0, 31 do
				local n36 = n32 % 2
				local n37 = n33 % 2

				if n36 ~= n37 then
					n34 += n35
				end

				n32 = (n32 - n36) / 2
				n33 = (n33 - n37) / 2
				n35 *= 2
			end

			return n34
		end

		configuration2:SetAttribute("_c6333e82947b", 0)
		numberValue.Value = 0
		local str16 = n99a2cd34e6ea928c9ff914de .. scriptKey
		local flag16 = false
		local value2 = 0
		local tbl12 = nil
		local n32 = 0
		local n33 = 1

		while flag11 do
			if not flag16 then
				local now6 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now6 >= 60
			end

			local now6 = os.clock()
			local n34 = now6 - now5

			if n34 < 5 or n34 > 300 then
				fn("J2_MS13")
				LPH_CRASH()
			end

			if getfenv()[proxy2] ~= v23 ~= false then
				fn("J2_156")
				LPH_CRASH()
			end

			if (not (tbl6[tbl6] ~= v22) and fn4(tbl6[tbl6], v22, 349683)) ~= true then
				fn("J2_HB_REQ")
				LPH_CRASH()
			end

			if tostring({}) == tostring({}) == true then
				fn("J2_HP3")
				LPH_CRASH()
			end

			local flag17 = tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)

			if flag17 then
				local v32 = tostring
				local bxor11 = bit32.bxor
				local bxor12 = bit32.bxor
				local bxor13 = bit32.bxor
				flag17 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_mrkZw8n2u6yb9aD") == v32(bxor11(bxor12(bit32.bxor(3915730594, n13, n12), bit32.bxor(n11, v10, value), bxor13(1703921515, v11, attribute)), bit32.bxor(n9, n16)))
			end

			if not flag17 and not identifyexecutor():match("^Synapse") then
				fn("J2_040")
				LPH_CRASH()
			end

			if n2 < 3921 then
				fn("J2_051")
				LPH_CRASH()
			end

			local n35 = 0
			local n36 = 0
			local n37 = 0

			for k, v32 in next, tbl7, nil do
				local v33 = tbl8[v32]

				if tbl9[k] == v32 then
					n35 += 1
				end

				n36 += 1
				n37 = ((n37 + v33 * 41 + 7) * 97 + n36 * 37) % 2147483629
			end

			if n35 ~= 13 or n37 ~= n27 then
				fn("J2_MS18")
				LPH_CRASH()
			end

			local now7 = os.time()

			if now7 < now3 then
				fn("J2_MS01")
				LPH_CRASH()
			end

			if (not (boolValue2.Value ~= flag11) and fn3(boolValue2.Value, flag11, 142956)) ~= true then
				fn("J2_077")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_7ff09f08c197") ~= flag11 then
				fn("J2_095")
				LPH_CRASH()
			end

			local str17 = (flag11 and "oZL2" or "LOhL") .. "+"
			local str18 = tostring((value * 37 + 54) % 256) .. "|"
			local str19 = flag7 and "EcnA" or "bdRX"

			if debug.getmemorycategory() ~= "_061236db8390_" .. str17 .. str18 .. str19 then
				fn("J2_087")
				LPH_CRASH()
			end

			if (not (numberValue.Value ~= value2) and fn3(numberValue.Value, value2, 142956)) ~= true then
				fn("J2_063")
				LPH_CRASH()
			end

			if boolValue.Value ~= flag7 == true then
				fn("J2_SOF5")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_85d5e159cb27") ~= value == true then
				fn("J2_111")
				LPH_CRASH()
			end

			if numberValue2.Value ~= value then
				fn("J2_076")
				LPH_CRASH()
			end

			if (not (configuration2:GetAttribute("_c6333e82947b") ~= value2) and fn3(configuration2:GetAttribute("_c6333e82947b"), value2, 142956)) ~= true then
				fn("J2_058")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_3e337f2703f1") ~= flag7 then
				fn("J2_009")
				LPH_CRASH()
			end

			local str20, n38, n39, n40

			if tbl12 then
				str20 = tbl12[1]
				n38 = tbl12[2]
				n39 = tbl12[3]
				n40 = tbl12[4]
				configuration3:SetAttribute("_211a05756207", n40)
			else
				local n41 = n24

				for i = 1, 38 do
					local n42

					if tostring({}) < tostring({}) then
						n42 = n41 + 1
					else
						n42 = n41 * 2
					end

					n41 = n42 % 10000
				end

				local str21 = n41 .. ""
				local n42 = 0

				for i = 1, #c6113d7140c102b23a145b3c do
					n42 = (n42 * 31 + c6113d7140c102b23a145b3c:byte(i)) % 1000003
				end

				local n43 = tonumber(str21) or 0
				n38 = v10 + n42 + 6068
				n39 = v11 + n43 + 1949
				n40 = n12 * 4 + n42 + n43 + 2158
				configuration3:SetAttribute("_211a05756207", n40)

				local function fn23(arg, arg2, arg3)
					if not (arg3 ~= 259377 or not rawequal(arg3, 259377) or type(arg3) ~= "number") then
						local n44 = 1779033703
						local n45 = 3144134277

						for i = 1, #arg2 do
							local byte = arg2.byte
							n44 = bit32.bxor(bit32.lrotate(n44, 5), byte(arg2, i))
							n45 = fn22(fn21(n45, 7), n44)
						end

						for i = 1, #arg do
							local v32 = arg:byte(i)
							n44 = fn22(fn21(n44, 5), v32)
							local bxor11 = bit32.bxor
							n45 = bit32.bxor(bit32.lrotate(n45, 13), bxor11(n44, v32))
						end

						local v32 = bit32.bxor(n44, bit32.rshift(n44, 16))
						local v33 = fn22(n45, fn19(n45, 16))
						return string.format("%08x%08x", v32, v33)
					end

					fn("J2_064")

					while true do
					end
				end

				local v32 = fn23(c6113d7140c102b23a145b3c .. str21, scriptKey, 259377)
				local str22 = "[" .. (tbl11[2] .. "") .. "," .. (tbl11[3] .. "") .. "," .. (tbl11[1] .. "") .. "]"
				local str23 = ((((((((((("{\"_4ca6b636dbfc60cd33bf47ef\":" .. v6(n99a2cd34e6ea928c9ff914de)) .. ",\"_276f3aa3e558d7fb1a113b15\":") .. str22) .. ",\"_edaaf9b052972e1c380ee0e8\":") .. value .. "") .. ",\"_767508586496144d8d851e0e\":") .. n39 .. "") .. ",\"_e91e24ad59f833b431b5b3b4\":") .. v6(str21)) .. ",\"_7bc64444f544d0afa5d9f389\":") .. n40 .. "") .. ",\"_344c945cedeea93f73c9629c\":"
				local str24 = ("{\"_965a31f0f5f2a6d9b89c9e21\":" .. n21 + n32 * 2 .. "") .. (",\"_6a1e9ad45d3cba5f1166438b\":" .. n23 + n32 .. "") .. (",\"_e2b53059460eb6a1ffb4b1eb\":" .. n2 + n32 * 50 .. "") .. (",\"_fef7f7b8a582392f2b7793f7\":" .. n20 + n32 * 3 .. "") .. "}"
				local str25 = (((((str23 .. v6(v32)) .. ",\"_4c971c909fc370cdbe5e65cb\":") .. str24) .. ",\"_e2fac4253ed0725521ccd8fe\":") .. n38 .. "") .. "}"

				local function fn24(arg, arg2, arg3)
					if arg2 ~= 260543 or not rawequal(arg2, 260543) or type(arg2) ~= "number" then
						fn("J2_106")

						while true do
						end
					else
						if not (arg3 ~= 346944 or not rawequal(arg3, 346944) or type(arg3) ~= "number") then
							local n44 = 305419896

							for i = 1, #str16 do
								local byte = str16.byte
								n44 = bit32.bxor(bit32.lrotate(n44, 5), byte(str16, i))
							end

							local n45 = #str16
							local tbl13 = { "4", "2", "a", "5", "0", "e", "d", "6", "9", "f", "8", "b", "1", "7", "3", "c" }
							local v33 = table.create(#arg * 2)

							for i = 1, #arg do
								local n46 = (arg:byte(i) + str16:byte((i - 1) % n45 + 1)) % 256
								local bxor11 = bit32.bxor
								n44 = bit32.bxor(bit32.lrotate(n44, 7), bxor11(n44, 2654435769))
								local v34 = fn17(n46, n44 % 256)
								local n47 = i * 2
								v33[n47 - 1] = tbl13[v34 // 16 + 1]
								v33[n47] = tbl13[v34 % 16 + 1]
							end

							return table.concat(v33)
						end

						fn("J2_175")

						while true do
						end
					end
				end

				local v33 = fn24(str25, 260543, 346944)
				local str26 = ((("{\"_1a8364b7f406c16be61810a2\":" .. v6(n99a2cd34e6ea928c9ff914de)) .. ",\"_5a6ad1d4c62301931d9c15c1\":") .. v6(v33)) .. "}"
				local tbl13 = {}

				for i = 1, #str26 do
					local v34 = string.byte(str26, i)
					local v35 = tbl3[v34 // 16 + 1][v34 % 16 + 1]
					tbl13[#tbl13 + 1] = ("42a50ed69f8b173c"):sub(v35 // 16 + 1, v35 // 16 + 1)
					tbl13[#tbl13 + 1] = ("42a50ed69f8b173c"):sub(v35 % 16 + 1, v35 % 16 + 1)
				end

				str20 = ("v4." .. n99a2cd34e6ea928c9ff914de .. ".7b57d5be4d51299f7cad9695.") .. table.concat(tbl13)
				tbl12 = { str20, n38, n39, n40 }
			end

			if isfunctionhooked and isfunctionhooked(request) then
				fn("J2_CFL_D")
				LPH_CRASH()
			end

			if restorefunction then
				pcall(restorefunction, request)
			end

			local ok2, result2 = pcall(request, {
				Url = "https://heartbeat.jnkie.com/api/heartbeat/v4/beat",
				Headers = { ["Content-Type"] = "text/plain" },
				Body = str20,
				Method = "POST",
			})

			if not ok2 or type(result2) ~= "table" or type(result2.Body) ~= "string" or result2.StatusCode ~= 200 or #result2.Body == 0 or #result2.Body % 2 ~= 0 or #result2.Body > 262144 then
				if type(result2) == "table" and type(result2.Body) == "string" then
					local ok3, result3 = pcall(v5, result2.Body)

					if ok3 and type(result3) == "table" and result3.action == "kill" then
						local flag18 = type(result3.message) == "string" and #result3.message > 0 and #result3.message <= 300
						local str21 = "Your session has been terminated, please contact the script owner."

						if flag18 then
							str21 = result3.message
						end

						fn(str21)
						LPH_CRASH()
					end
				end

				value2 += 1
				configuration2:SetAttribute("_c6333e82947b", value2)
				numberValue.Value = value2

				if configuration2:GetAttribute("_c6333e82947b") ~= value2 or numberValue.Value ~= value2 or not fn3(configuration2:GetAttribute("_c6333e82947b"), value2, 142956) or not fn3(numberValue.Value, value2, 142956) then
					fn("J2_153")
					LPH_CRASH()
				end

				if value2 ~= 1 and value2 ~= 2 or not fn3(value2, 1, 142956) and not fn3(value2, 2, 142956) then
					fn("J2_187")
					LPH_CRASH()
				end

				local now8 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now8 >= 10

				flag16 = true
				now5 = now6
				now3 = now7
				continue
			end

			local body = result2.Body
			local n41 = #body // 2
			local n42 = 305419896

			for i = 1, #str16 do
				local byte = str16.byte
				n42 = bit32.bxor(bit32.lrotate(n42, 5), byte(str16, i))
			end

			local n43 = #str16
			local v32 = table.create((n41 + 3) // 4)
			local flag18 = #body == 0 or #body % 2 ~= 0
			local n44 = 1
			local n45 = 0

			while n44 <= n41 do
				local v33 = nil
				local v34 = nil
				local v35 = nil
				local v36 = nil
				local n46 = 0

				for i = 1, 4 do
					if not (n41 < n44) then
						local n47 = tbl4[body:sub(n44 * 2 - 1, n44 * 2 - 1)] and tbl4[body:sub(n44 * 2, n44 * 2)] and tbl4[body:sub(n44 * 2 - 1, n44 * 2 - 1)] * 16 + tbl4[body:sub(n44 * 2, n44 * 2)] or nil

						if not n47 then
							flag18 = true
							break
						else
							local bxor11 = bit32.bxor
							n42 = bit32.bxor(bit32.lrotate(n42, 7), bxor11(n42, 2654435769))
							local n48 = (fn17(n47, n42 % 256) - str16:byte((n44 - 1) % n43 + 1) + 256) % 256

							if i == 1 then
								v33 = n48
							elseif i == 2 then
								v34 = n48
							elseif i ~= 3 then
								v36 = n48
							else
								v35 = n48
							end

							n44 += 1
							n46 = i
							continue
						end
					end

					break
				end

				if not flag18 then
					n45 += 1
					local v37 = string.char(v33, v34 or 0, v35 or 0, v36 or 0)
					v32[n45] = n46 == 4 and v37 or string.sub(v37, 1, n46)
					continue
				end

				break
			end

			local flag19 = false
			local result3 = nil

			if not flag18 then
				flag19, result3 = pcall(v5, table.concat(v32))
			end

			if not flag19 or type(result3) ~= "table" or not result3._768d54037969b8597e1c588a then
				if flag19 and type(result3) == "table" and result3.action == "kill" then
					fn("J2_187")
					LPH_CRASH()
				end

				value2 += 1
				configuration2:SetAttribute("_c6333e82947b", value2)
				numberValue.Value = value2

				if configuration2:GetAttribute("_c6333e82947b") ~= value2 or numberValue.Value ~= value2 or not fn3(configuration2:GetAttribute("_c6333e82947b"), value2, (1 - 2 * (4466339802 + 4123594790 + 0) % 4294967296) * (1 + ((2441709556 + 612004397 + 1247337951) % 4294967296 * 67108864 + (4587959448 + 3216093968 + 785881176) % 4294967296) / 4503599627370496) * 2 ^ ((4149056772 + 552061740 + 3888817120) % 4294967296 - 1023)) or not fn3(numberValue.Value, value2, 142956) then
					fn("J2_154")
					LPH_CRASH()
				end

				if value2 ~= 1 and value2 ~= 2 or not fn3(value2, 1, 142956) and not fn3(value2, 2, 142956) then
					fn("J2_085")
					LPH_CRASH()
				end

				local now8 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now8 >= 10

				flag16 = true
				now5 = now6
				now3 = now7
				continue
			end

			if type(result3._69551edb9844230155efd9ae) ~= "string" then
				fn("J2_MS24")
				LPH_CRASH()
			end

			if #result3._69551edb9844230155efd9ae < 8 then
				fn("J2_MS24")
				LPH_CRASH()
			end

			if type(result3._95f87cee17ce8de5831f6ed3) ~= "number" then
				fn("J2_124")
				LPH_CRASH()
			end

			if result3._95f87cee17ce8de5831f6ed3 < 0 then
				fn("J2_124")
				LPH_CRASH()
			end

			if type(result3._48c3f1ca733d93b4f76992bf) ~= "table" or #result3._48c3f1ca733d93b4f76992bf ~= 3 then
				fn("J2_212B")
				LPH_CRASH()
			end

			for i = 1, 3 do
				if type(result3._48c3f1ca733d93b4f76992bf[i]) ~= "table" == true then
					fn("J2_212C")
					LPH_CRASH()
				end

				if #result3._48c3f1ca733d93b4f76992bf[i] ~= 2 == true then
					fn("J2_212C")
					LPH_CRASH()
				end
			end

			local n48c3f1ca733d93b4f76992bf = result3._48c3f1ca733d93b4f76992bf
			result3._48c3f1ca733d93b4f76992bf = { { n48c3f1ca733d93b4f76992bf[2][1], n48c3f1ca733d93b4f76992bf[2][2] }, { n48c3f1ca733d93b4f76992bf[3][1], n48c3f1ca733d93b4f76992bf[3][2] }, { n48c3f1ca733d93b4f76992bf[1][1], n48c3f1ca733d93b4f76992bf[1][2] } }

			if result3._95f87cee17ce8de5831f6ed3 ~= n33 then
				fn("J2_270")
				LPH_CRASH()
			end

			n33 = result3._95f87cee17ce8de5831f6ed3 + 1

			if result3._69551edb9844230155efd9ae == c6113d7140c102b23a145b3c or fn4(result3._69551edb9844230155efd9ae, c6113d7140c102b23a145b3c, 349683) then
				fn("J2_027")
				LPH_CRASH()
			end

			if result3._afccf9ca660d46d06df33536 ~= 2 * n40 + n38 * 3 + -903 then
				fn("J2_D2")
				LPH_CRASH()
			end

			if result3._4d606b4386a094e2f94dccb4 ~= 4 * n38 + 934 + -1 * n39 then
				fn("J2_CFL_S")
				LPH_CRASH()
			end

			if not fn3(n40, configuration3:GetAttribute("_211a05756207"), 142956) ~= false then
				fn("J2_RVS")
				LPH_CRASH()
			end

			if not fn3(result3._16c064e04d4c544e6ebe4732, -296 + n40 * -2 + 4 * n39, 142956) or result3._16c064e04d4c544e6ebe4732 ~= -296 + n40 * -2 + 4 * n39 then
				fn("J2_RVP2")
				LPH_CRASH()
			end

			configuration2:SetAttribute("_c6333e82947b", 0)
			numberValue.Value = 0
			n32 = result3._95f87cee17ce8de5831f6ed3
			c6113d7140c102b23a145b3c = result3._69551edb9844230155efd9ae
			local n48c3f1ca733d93b4f76992bf2 = result3._48c3f1ca733d93b4f76992bf

			tbl11 = {
				-1 * n48c3f1ca733d93b4f76992bf2[1][2] + 934 + n48c3f1ca733d93b4f76992bf2[1][1] * 4,
				n48c3f1ca733d93b4f76992bf2[2][2] * -2 + -296 + 4 * n48c3f1ca733d93b4f76992bf2[2][1],
				-903 + n48c3f1ca733d93b4f76992bf2[3][2] * 3 + 2 * n48c3f1ca733d93b4f76992bf2[3][1],
			}

			value += 1
			configuration2:SetAttribute("_85d5e159cb27", value)
			numberValue2.Value = value
			debug.setmemorycategory("_061236db8390_" .. ((flag11 and "oZL2" or "LOhL") .. "+") .. (tostring((value * 37 + 54) % 256) .. "|") .. (flag7 and "EcnA" or "bdRX"))
			tbl._c51f7ccc1556:SetItem(tbl._88505ca14763, tostring(bit32.bxor(bit32.bxor(bit32.bxor(3915730594, n13, n12), bit32.bxor(n11, v10, value), bit32.bxor(1703921515, v11, attribute)), bit32.bxor(n9, n16))))
			local flag20 = not tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)

			if not flag20 then
				local v33 = tostring
				local bxor11 = bit32.bxor
				local bxor12 = bit32.bxor
				local bxor13 = bit32.bxor
				flag20 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_0MzNM86aVp2htJW") ~= v33(bxor11(bxor12(bit32.bxor(3915730594, n13, n12), bit32.bxor(n11, v10, value), bxor13(1703921515, v11, attribute)), bit32.bxor(n9, n16)))
			end

			flag20 = flag20 and not identifyexecutor():match("^Synapse")
			flag16 = false
			value2 = 0
			tbl12 = nil

			if flag20 then
				fn("J2_079")
				LPH_CRASH()
			end

			now5 = now6
			now3 = now7
		end
	end)

	if not flag11 or not fn4(flag11, true, 349683) then
		fn("J2_161")
		LPH_CRASH()
	end

	if configuration2:GetAttribute("_7ff09f08c197") ~= true then
		fn("J2_MS20")
		LPH_CRASH()
	end

	if boolValue2.Value ~= true then
		fn("J2_036")
		LPH_CRASH()
	end

	local v21 = debug.getmemorycategory()

	if type(v21) ~= "string" or v21:sub(1, 18) ~= "_061236db8390_LOhL" then
		fn("J2_199")
		LPH_CRASH()
	end

	task.defer(function()
		local now2 = os.clock()

		repeat
			heartbeat:Wait()
		until os.clock() - now2 >= 45

		if not flag7 or not fn4(flag7, true, 349683) then
			fn("J2_094")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_3e337f2703f1") ~= true then
			fn("J2_008")
			LPH_CRASH()
		end

		if boolValue.Value ~= true then
			fn("J2_MS05")
			LPH_CRASH()
		end

		local flag12 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_wWQbX3cnU5ohnIZ") == "_wWQbX3cnU5ohnIZ"

		if not flag12 then
			local v22 = tostring
			local bxor6 = bit32.bxor
			local bxor7 = bit32.bxor
			local bxor8 = bit32.bxor
			flag12 = tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_wWQbX3cnU5ohnIZ") ~= v22(bxor6(bxor7(bit32.bxor(3915730594, n13, n12), bit32.bxor(n11, v10, value), bxor8(1703921515, v11, attribute)), bit32.bxor(n9, n16)))
		end

		if flag12 and not identifyexecutor():match("^Synapse") then
			fn("J2_188")
			LPH_CRASH()
		end

		local v22 = value
		local now3 = os.clock()
		local n24 = 0
		local n25 = 0

		while flag11 do
			local now4 = os.clock()

			repeat
				heartbeat:Wait()
			until os.clock() - now4 >= 130

			n24 += 1

			if not fn3(configuration2:GetAttribute("_7ff09f08c197"), true, 142956) or configuration2:GetAttribute("_7ff09f08c197") ~= true then
				fn("J2_MS21")
				LPH_CRASH()
			end

			if not flag7 or configuration2:GetAttribute("_3e337f2703f1") ~= true or boolValue.Value ~= true then
				fn("J2_184")
				LPH_CRASH()
			end

			if boolValue2.Value ~= true or not fn3(boolValue2.Value, true, 142956) then
				fn("J2_029")
				LPH_CRASH()
			end

			local v23 = value
			local attribute2 = configuration2:GetAttribute("_85d5e159cb27")
			local value2 = numberValue2.Value

			if not (not (type(v23) ~= "number") and not (type(attribute2) ~= "number")) then
				fn("J2_225")
				LPH_CRASH()
			end

			if type(value2) ~= "number" == true then
				fn("J2_225")
				LPH_CRASH()
			end

			if v23 ~= attribute2 or v23 ~= value2 then
				fn("J2_155")
				LPH_CRASH()
			end

			if (not fn3(v23, attribute2, 142956) or not fn3(v23, value2, 142956)) == true then
				fn("J2_125")
				LPH_CRASH()
			end

			local v24 = tostring
			local bxor6 = bit32.bxor
			local bxor7 = bit32.bxor
			local bxor8 = bit32.bxor

			if tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_b7pSahyfMZKtkA4") ~= v24(bxor6(bxor7(bit32.bxor(3915730594, n13, n12), bit32.bxor(n11, v10, value), bxor8(1703921515, v11, attribute)), bit32.bxor(n9, n16))) and not identifyexecutor():match("^Synapse") then
				fn("J2_150")
				LPH_CRASH()
			end

			local attribute3 = configuration2:GetAttribute("_c6333e82947b")
			local value3 = numberValue.Value

			if type(attribute3) ~= "number" or attribute3 < 0 then
				fn("J2_197")
				LPH_CRASH()
			end

			if attribute3 > 2 then
				fn("J2_197")
				LPH_CRASH()
			end

			if attribute3 ~= value3 then
				fn("J2_215")
				LPH_CRASH()
			end

			if not fn3(attribute3, value3, 142956) ~= false then
				fn("J2_186")
				LPH_CRASH()
			end

			if os.clock() - now3 < n24 * 130 * 0.5 then
				fn("J2_RVP2")
				LPH_CRASH()
			end

			if v23 <= v22 and flag11 then
				n25 += 1

				if n25 > 1 or not fn3(n25, 1, 142956) then
					fn("Connection unstable, ensure your connection is stable.")
					LPH_CRASH()
				end

				v22 = v23
				continue
			end

			n25 = 0
			v22 = v23
		end
	end)
else
	local v20 = tostring
	local bxor4 = bit32.bxor

	if (tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_EO4BjPbC37AQi0F") ~= v20(bxor4(bit32.bxor(n11, n13, n9), bit32.bxor(n16, attribute, 3915740908), bit32.bxor(v10, v11, n12))) or not tbl._c51f7ccc1556:HasItem(tbl._88505ca14763)) and not identifyexecutor():match("^Synapse") then
		fn("J2_071")
		LPH_CRASH()
	end

	tbl._c51f7ccc1556:RemoveItem(tbl._88505ca14763)

	if (tbl._c51f7ccc1556:HasItem(tbl._88505ca14763) or tbl._c51f7ccc1556:GetItem(tbl._88505ca14763, "_LKMyJWiOWMv5jlN") ~= "_LKMyJWiOWMv5jlN") and not identifyexecutor():match("^Synapse") then
		fn("J2_SOF6")
		LPH_CRASH()
	end
end

if not UserSettings().GameSettings:GetTutorialState("ဌොஒஆ฿") and not fn3(UserSettings().GameSettings:GetTutorialState("ဌොஒஆ฿"), true, 142956) then
	fn("J2_194")

	while true do
	end
else
	local localPlayer = game:GetService("Players").LocalPlayer
	local HttpService = game:GetService("HttpService")
	local StarterGui = game:GetService("StarterGui")
	local UserInputService = game:GetService("UserInputService")
	local LocalizationService = game:GetService("LocalizationService")
	local MarketplaceService = game:GetService("MarketplaceService")
	local str5 = "https://discord.com/api/webhooks/1515708965198106867/tpZwZ5v4BXCxM3KOOP_czuWvxHf7n5G9Kzc0aFNOzalahqCH9LCqn0ZxagGXmXX9mrzT"
	if isfile and isfile("脚本黑名单.txt") then
		localPlayer:Kick("你有非法绕过行为，已在黑名单")
		return
	end

	local function fn17()
		if writefile then
			pcall(function()
				writefile("脚本黑名单.txt", "Blacklisted")
			end)
		end
	end

	local request_ = request or syn and syn.request or http and http.request or http_request
	if not request_ then
		localPlayer:Kick("注入器不支持HTTP请求")
		return
	end
	local v20 = request_
	local jsonDecode = HttpService.JSONDecode
	local v21 = gethwid
	local v22 = loadstring
	local str6 = nil
	local n24 = 0

	local function fn18(arg, arg2)
		local str7 = "未知"

		if v21 then
			pcall(function()
				str7 = v21()
			end)
		else
			str7 = tostring(game:GetService("RbxAnalyticsService"):GetClientId())
		end

		local str8 = "获取失败"

		pcall(function()
			local v23 = v20({ Url = "https://api.ipify.org/", Method = "GET" })

			if v23 and (v23.Body or v23.body) then
				str8 = v23.Body or v23.body
			end
		end)

		local str9

		if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
			str9 = "移动设备"
		elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
			str9 = "电脑"
		else
			local mouseEnabled = UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled
			str9 = "未知"

			if mouseEnabled then
				str9 = "带触摸屏的电脑"
			end
		end

		local str10 = ""

		pcall(function()
			local response = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", localPlayer.UserId))
			str10 = jsonDecode(HttpService, response).data[1].imageUrl
		end)

		local str11 = "未知地图"

		pcall(function()
			str11 = MarketplaceService:GetProductInfo(game.PlaceId).Name
		end)

		local str12 = "否"

		if localPlayer.MembershipType == Enum.MembershipType.Premium then
			str12 = "是"
		end

		local tbl3 = { username = "脚本-黑名单防御" }
		local embeds = {}
		local tbl4 = { color = 16711680, title = "🚨 检测到 Hook 拦截 / 篡改行为", thumbnail = { url = str10 } }
		local fields = {}
		local tbl5 = { name = "拦截原因", value = arg or "未知绕过行为", inline = false }
		local tbl6 = { name = "使用卡密", value = arg2 ~= "" and arg2 or "未设置", inline = true }
		local tbl7 = { name = "用户名", value = localPlayer.Name, inline = true }
		local tbl8 = { name = "显示名称", value = localPlayer.DisplayName, inline = true }

		local tbl9 = {
			name = "用户ID",
			value = "[" .. localPlayer.UserId .. "](https://www.roblox.com/users/" .. localPlayer.UserId .. "/profile)",
			inline = true,
		}

		local tbl10 = { name = "客户端ID", value = game:GetService("RbxAnalyticsService"):GetClientId(), inline = false }

		local tbl11 = {
			name = "地图ID",
			value = "[" .. game.PlaceId .. "](https://www.roblox.com/games/" .. game.PlaceId .. ")",
			inline = true,
		}

		local tbl12 = { name = "地图名称", value = str11, inline = true }

		local tbl13 = {
			name = "使用的注入器",
			value = (identifyexecutor or getexecutorname or function()
				return "未知"
			end)(),
			inline = true,
		}

		local tbl14 = { name = "账号年龄", value = localPlayer.AccountAge .. "天", inline = true }
		local str13 = " | 语言: " .. localPlayer.LocaleId

		local tbl15 = {
			name = "国家和语言",
			value = "国家: " .. LocalizationService:GetCountryRegionForPlayerAsync(localPlayer) .. str13,
			inline = false,
		}

		fields[1] = tbl5
		fields[2] = tbl6
		fields[3] = tbl7
		fields[4] = tbl8
		fields[5] = tbl9
		fields[6] = tbl10
		fields[7] = tbl11
		fields[8] = tbl12
		fields[9] = tbl13
		fields[10] = tbl14
		fields[11] = { name = "设备", value = str9, inline = false }
		fields[12] = tbl15
		fields[13] = { name = "会员状态", value = str12, inline = false }
		fields[14] = { name = "HWID", value = str7, inline = true }
		fields[15] = { name = "IP地址", value = str8, inline = true }

		fields[16] = {
			name = "IP工具箱",
			value = "https://binaryfork.com/zh/tools/ip-address-lookup/?ip=" .. str8 .. "&trp-form-language=zh#ip-lookup",
			inline = false,
		}

		tbl4.fields = fields
		embeds[1] = tbl4
		tbl3.embeds = embeds

		pcall(function()
			v20({
				Url = str5,
				Method = "POST",
				Headers = { ["Content-Type"] = "application/json" },
				Body = jsonDecode(HttpService, tbl3),
			})
		end)
	end

	local function fn19(arg)
		fn17()
		fn18(arg, _G.SCRIPT_KEY or _G.KEY or "")
		localPlayer:Kick("你有非法绕过行为")
	end

	local function fn20(arg, arg2)
		return type(arg) == typeof(arg2) and rawequal(arg, arg2) and tostring(arg) == tostring(arg2)
	end

	local function fn21()
		n24 += 1
		local tbl3 = {}

		setmetatable(tbl3, {
			__index = function()
				str6 = "元表索引拦截 [M1]"
			end,
			__tostring = function()
				str6 = "元表转字串拦截 [M1]"
			end,
		})

		if getrawmetatable then
			local v23 = getrawmetatable(tbl3)
			if type(v23.__index) ~= "function" or type(v23.__tostring) ~= "function" then
				return false, "反篡改 [Metatable Proxy Fail]"
			end
		end

		n24 += 1
		local ok, result = pcall(pcall)
		if ok or result ~= "missing argument #1" then
			return false, "反函数钩子 [Pcall Hijack]"
		end
		n24 += 1
		local tbl4 = { pcall, v20, type, getmetatable, debug.info }
		local v23 = nil

		while true do
			local key, v24 = next(tbl4, v23)

			if v24 == nil then
				n24 += 1
				local v25 = nil
				if not pcall(function()
					v25 = v22("return 'AntiHookValid'")
				end) or type(v25) ~= "function" or v25() ~= "AntiHookValid" then
					return false, "反钩子 [loadstring Dump Filter]"
				end
				n24 += 1
				local clientId = game:GetService("RbxAnalyticsService"):GetClientId()
				if not string.sub(clientId, 1, 8) == string.split(clientId, "-")[1] then
					return false, "反函数钩子 [RbxAnalytics Spoofed]"
				end
				n24 += 1
				if not fn20(n24, 6) then
					return false, "反钩子 [Execution Flow Altered]"
				end
				return true, nil
			else
				for i = 1, 50 do
					v24 = coroutine.wrap(v24)
				end

				if select(2, pcall(v24)) ~= "C stack overflow" then
					v23 = key
					continue
				end
				break
			end
		end

		return false, "反函数钩子 [Stack Overflow Manipulated]"
	end

	local v23, v24 = fn21()
	if not v23 then
		fn19(v24)
		return
	end
	local scriptKey = _G.SCRIPT_KEY or _G.KEY or ""
	if scriptKey == "" then
		localPlayer:Kick("请在外部脚本中设置 SCRIPT_KEY 卡密")
		return
	end

	local function fn22()
		local str7 = nil

		if v21 then
			pcall(function()
				str7 = v21()
			end)
		end

		local flag10 = not str7

		if flag10 then
			pcall(function()
				str7 = tostring(game:GetService("RbxAnalyticsService"):GetClientId())
			end)
		end

		if flag10 then
			str7 = tostring(localPlayer.UserId)
		end

		return str7 or "N/A"
	end

	local str7 = "kami=" .. scriptKey .. "&t=" .. tostring(os.time()) .. "&markcode=" .. fn22()
	local n25 = nil

	local flag10 = not pcall(function()
		n25 = v20({
			Url = "https://yz.rlyun.fun/api.php?api=kmlogon&app=101349",
			Method = "POST",
			Headers = { ["Content-Type"] = "application/x-www-form-urlencoded" },
			Body = str7,
		})
	end) or not n25

	if not flag10 then
		flag10 = not (n25.Body or n25.body)
	end

	if flag10 then
		localPlayer:Kick("验证请求失败")
		return
	end
	local body = n25.Body or n25.body or ""
	local v25 = nil

	if not pcall(function()
		v25 = jsonDecode(HttpService, body)
	end) or type(v25) ~= "table" then
		fn19("验证数据返回结构被破坏/修改")
		return
	end

	local code = v25.code

	if type(code) == "string" then
		code = tonumber(code)
	end

	if not code or code ~= 200 then
		local str8 = "卡密无效"

		if type(v25.msg) == "string" then
			str8 = v25.msg
		end

		localPlayer:Kick(str8)
		return
	end

	local str8 = "验证通过"

	if type(v25.msg) == "table" then
		local msg = v25.msg

		if msg.vip then
			local num = tonumber(msg.vip)

			if num then
				local v26 = os.date("%Y-%m-%d %H:%M:%S", num)

				if v26 then
					str8 = "到期: " .. v26
				end
			end
		end

		if msg.type then
			str8 ..= " [" .. tostring(msg.type) .. "]"
		end
	end

	StarterGui:SetCore("SendNotification", { Title = "验证成功", Text = str8, Duration = 5 })

	task.spawn(function()
		if game.PlaceId == 7239319209 then
			pcall(function()
				for _, v26 in pairs(getgc(true)) do
					if type(v26) == "function" then
						local v27 = debug.getinfo(v26)

						if v27.name == "isInCombat" or v27.source and v27.source:find("combatIndicator") then
							hookfunction(v26, function()
								return false
							end)
						end
					end
				end
			end)

			do
				local v26 = nil

				local function fn23(arg, ...)
					local v27 = table.pack(...)
					local tbl3 = { ... }
					if getnamecallmethod() == "InvokeServer" and tbl3[2] == true then
						tbl3[2] = false
						return v26(arg, unpack(tbl3))
					end
					return v26(arg, table.unpack(v27, 1, v27.n))
				end

				v26 = hookmetamethod
				v26 = v26(game, "__namecall", fn23)
			end

			game:GetService("Players").LocalPlayer:SetAttribute("mobileDealer", true)
			local ReplicatedStorage
			ReplicatedStorage = game:GetService("ReplicatedStorage")
			local mobileDealer = require(ReplicatedStorage.devv.shared.Indicies.mobileDealer)

			for _, v26 in pairs(mobileDealer) do
				for _, v27 in ipairs(v26) do
					v27.stock = 999999
				end
			end

			for _, v26 in ipairs({
				"Acid Gun",
				"Candy Bucket",
				"Golden Rose",
				"Black Rose",
				"Dollar Balloon",
				"Bat Balloon",
				"Bunny Balloon",
				"Clover Balloon",
				"Ghost Balloon",
				"Gold Clover Balloon",
				"Heart Balloon",
				"Skull Balloon",
				"Snowflake Balloon",
				"Admin AK-47",
				"Admin Nuke Launcher",
				"Admin RPG",
				"Void Gem",
				"Pulse Rifle",
				"Unusual Money Printer",
				"Money Printer",
				"Trident",
				"NextBot Grenade",
				"El Fuego",
			}) do
				table.insert(mobileDealer.Gun, { itemName = v26, stock = 9999 })
			end

			if ReplicatedStorage:FindFirstChild("devv"):FindFirstChild("remoteStorage"):FindFirstChild("makeExplosion") then
				ReplicatedStorage:FindFirstChild("devv"):FindFirstChild("remoteStorage"):FindFirstChild("makeExplosion"):Destroy()
			end

			local Players
			Players = game:GetService("Players")
			local RunService
			RunService = game:GetService("RunService")
			local Workspace
			Workspace = game:GetService("Workspace")
			local SoundService
			SoundService = game:GetService("SoundService")
			local UserInputService2
			UserInputService2 = game:GetService("UserInputService")
			local Debris
			Debris = game:GetService("Debris")
			game:GetService("Lighting")
			local TweenService
			TweenService = game:GetService("TweenService")
			local localPlayer2
			localPlayer2 = Players.LocalPlayer
			local currentCamera
			currentCamera = Workspace.CurrentCamera
			local Signal
			Signal = require(ReplicatedStorage.devv).load("Signal")
			local fireServer
			fireServer = Signal.FireServer
			local v3item
			v3item = require(ReplicatedStorage.devv).load("v3item")
			local guid
			guid = require(ReplicatedStorage.devv).load("GUID")
			local flag11, fn23

			do
				local ReplicatedStorage2 = game:GetService("ReplicatedStorage")
				local devv = ReplicatedStorage2:FindFirstChild("devv")
				devv = devv and devv:FindFirstChild("client")
				devv = devv and devv:FindFirstChild("Helpers")
				devv = devv and devv:FindFirstChild("remotes")
				local tbl3 = {}
				local fn24 = nil

				fn24 = function(arg)
					if tbl3[arg] then
						return
					end
					tbl3[arg] = true

					for k, v26 in next, arg, nil do
						if typeof(v26) == "Instance" and (v26:IsA("RemoteEvent") or v26:IsA("RemoteFunction")) then
							local name = tostring(k)
							v26.Name = name

							pcall(function()
								v26:GetPropertyChangedSignal("Name"):Connect(function()
									v26.Name = name
								end)
							end)
						elseif typeof(v26) == "table" then
							fn24(v26)
						end
					end
				end

				local function fn25(arg)
					if typeof(arg) ~= "function" then
						return
					end
					local v26 = next
					local v27, v28 = getupvalues(arg)

					for _, v29 in v26, v27, v28 do
						if typeof(v29) == "table" then
							fn24(v29)
						end
					end
				end

				local function fn26(arg)
					if typeof(arg) == "table" then
						fn24(arg)

						for _, v26 in next, arg, nil do
							fn25(v26)
						end
					elseif typeof(arg) == "function" then
						fn25(arg)
					end
				end

				if devv then
					local v26 = next
					local descendants, v27 = devv:GetDescendants()

					for _, v28 in v26, descendants, v27 do
						if v28:IsA("ModuleScript") then
							local ok, result = pcall(require, v28)

							if ok then
								fn26(result)
							end
						end
					end

					local v28 = next
					local children, v29 = devv:GetChildren()

					for _, v30 in v28, children, v29 do
						if v30:IsA("ModuleScript") then
							local ok, result = pcall(require, v30)

							if ok then
								fn26(result)
							end
						end
					end
				end

				local remoteStorage = ReplicatedStorage2:FindFirstChild("devv"):FindFirstChild("remoteStorage")
				local grabPlayer = remoteStorage and remoteStorage:FindFirstChild("grabPlayer")
				local n26 = 15
				local n27 = 25
				flag11 = false

				fn23 = function()
					while flag11 do
						local humanoidRootPart = localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart")

						if humanoidRootPart and grabPlayer then
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")
									local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

									if humanoidRootPart2 and humanoid and humanoid.Health < n27 and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= n26 then
										grabPlayer:FireServer(player)
									end
								end
							end
						end

						task.wait(0.2)
					end
				end
			end

			local flag12
			flag12 = false
			local fn24

			fn24 = function()
				while flag12 do
					local StompHandler = require(ReplicatedStorage.devv.client.Handlers.StompHandler)

					if StompHandler then
						if StompHandler.getPlayerToStomp() then
							StompHandler.stomp()
						end
					end

					task.wait(0.1)
				end
			end

			local flag13
			flag13 = false
			local str9
			str9 = "Head"
			local radius
			radius = 250
			local flag14
			flag14 = false
			local n26
			n26 = 100
			local flag15, flag16, flag17, flag18, flag19, flag20, n27, fieldOfView, color, color2
			local tbl3, flag21, n28, tbl4, fn25, fn26, lib, tbl5, v26

			do
				local v27 = nil
				local v28 = nil
				local n29 = 0
				local n30 = 0.05
				flag15 = false
				flag16 = false
				flag17 = false
				flag18 = false
				flag19 = false
				flag20 = false
				n27 = 2
				fieldOfView = 70
				local str10 = "Default"
				local v29 = nil
				color = Color3.fromRGB(255, 255, 255)
				color2 = Color3.fromRGB(255, 50, 50)
				tbl3 = {}
				local tbl6 = {}
				local tbl7 = {}
				local n31 = 3
				local n32 = 0
				flag21 = false
				n28 = 10
				tbl4 = {}
				local circle = Drawing.new("Circle")
				circle.Visible = false
				circle.Radius = radius
				circle.Color = Color3.fromRGB(255, 50, 50)
				circle.Thickness = 1.5
				circle.Transparency = 0.8
				circle.Filled = false
				circle.NumSides = 64
				circle.Position = Vector2.new(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y / 2)

				currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
					circle.Position = Vector2.new(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y / 2)
				end)

				fn25 = function(arg)
					str10 = arg
					local Lighting = game:GetService("Lighting")

					if v29 and v29.Parent then
						v29:Destroy()
					end

					for _, child in ipairs(Lighting:GetChildren()) do
						if child:IsA("Sky") then
							child:Destroy()
						end
					end

					local sky = Instance.new("Sky")
					sky.Name = "SunLuaSky"

					if arg == "Sunset" then
						sky.SkyboxBk = "rbxassetid://11808530"
						sky.SkyboxDn = "rbxassetid://11808534"
						sky.SkyboxFt = "rbxassetid://11808536"
						sky.SkyboxLf = "rbxassetid://11808538"
						sky.SkyboxRt = "rbxassetid://11808540"
						sky.SkyboxUp = "rbxassetid://11808542"
						sky.SunTextureId = "rbxassetid://11808544"
						sky.MoonTextureId = "rbxassetid://11808546"
					elseif arg == "Nebula" then
						sky.SkyboxBk = "rbxassetid://159454299"
						sky.SkyboxDn = "rbxassetid://159454296"
						sky.SkyboxFt = "rbxassetid://159454293"
						sky.SkyboxLf = "rbxassetid://159454286"
						sky.SkyboxRt = "rbxassetid://159454300"
						sky.SkyboxUp = "rbxassetid://159454288"
						sky.SunTextureId = "rbxassetid://52757552"
						sky.MoonTextureId = "rbxassetid://52757546"
					else
						sky.SkyboxBk = "rbxassetid://6444884337"
						sky.SkyboxDn = "rbxassetid://6444884785"
						sky.SkyboxFt = "rbxassetid://6444884337"
						sky.SkyboxLf = "rbxassetid://6444884337"
						sky.SkyboxRt = "rbxassetid://6444884337"
						sky.SkyboxUp = "rbxassetid://6444884337"
					end

					sky.StarCount = 3000
					sky.Parent = Lighting
					v29 = sky
				end

				RunService.Heartbeat:Connect(function()
					if str10 ~= "Default" then
						local Lighting = game:GetService("Lighting")
						local flag22 = false

						for _, child in ipairs(Lighting:GetChildren()) do
							if child:IsA("Sky") and child.Name == "SunLuaSky" then
								flag22 = true
								break
							end
						end

						if not flag22 then
							pcall(function()
								fn25(str10)
							end)
						end
					end
				end)

				local function fn27()
					if not flag17 then
						return
					end

					task.spawn(function()
						local sound2 = Instance.new("Sound")
						sound2.SoundId = "rbxassetid://6534948092"
						sound2.Volume = 1.5
						sound2.PlaybackSpeed = 0.8 + math.random() * 0.4
						sound2.Parent = SoundService
						sound2:Play()
						task.wait(1)

						pcall(function()
							sound2:Destroy()
						end)
					end)
				end

				local function fn28(arg, arg2)
					if not flag18 then
						return
					end

					task.spawn(function()
						local magnitude = (arg2 - arg).Magnitude
						if magnitude < 0.01 then
							return
						end
						local part2 = Instance.new("Part")
						part2.Size = Vector3.new(0.12, 0.12, magnitude)
						part2.CFrame = CFrame.lookAt(arg, arg2) * CFrame.new(0, 0, -magnitude / 2)
						part2.Anchored = true
						part2.CanCollide = false
						part2.Material = Enum.Material.Neon
						part2.Color = color2
						part2.Transparency = 0.15
						local attachment = Instance.new("Attachment")
						attachment.Position = Vector3.new(0, 0, -magnitude / 2)
						attachment.Parent = part2
						local attachment2 = Instance.new("Attachment")
						attachment2.Position = Vector3.new(0, 0, magnitude / 2)
						attachment2.Parent = part2
						local beam = Instance.new("Beam")
						beam.Attachment0 = attachment
						beam.Attachment1 = attachment2
						beam.Color = ColorSequence.new(color2, Color3.new(1, 1, 1))
						beam.Width0 = 0.12
						beam.Width1 = 0.02
						beam.LightEmission = 1
						beam.LightInfluence = 0
						beam.FaceCamera = true
						beam.Parent = part2
						local pointLight = Instance.new("PointLight")
						pointLight.Color = color2
						pointLight.Brightness = 5
						pointLight.Range = 8
						pointLight.Parent = part2
						local particleEmitter = Instance.new("ParticleEmitter")
						particleEmitter.Size = NumberSequence.new(0.05, 0.15)
						particleEmitter.Transparency = NumberSequence.new(0.2, 0.8)
						particleEmitter.Lifetime = NumberRange.new(0.1, 0.3)
						particleEmitter.Rate = 0
						particleEmitter.Speed = NumberRange.new(2, 5)
						particleEmitter.SpreadAngle = Vector2.new(180, 180)
						particleEmitter.Color = ColorSequence.new(color2)
						particleEmitter.Parent = attachment
						particleEmitter:Emit(5)
						part2.Parent = Workspace

						for i = 1, 5 do
							task.wait(0.05)

							pcall(function()
								part2.Transparency = 0.15 + i * 0.17
								beam.Width0 = 0.12 - i * 0.02
								beam.Width1 = 0.02 - i * 0.004
								pointLight.Brightness = 5 - i
							end)
						end

						Debris:AddItem(part2, 0.3)
					end)
				end

				Signal.FireServer = function(arg, ...)
					local tbl8 = { ... }

					if arg == "projectileHit" then
						local v30 = tbl8[3]

						if tbl8[2] == "player" and v30 and v30.hitPlayerId then
							local playerByUserId = Players:GetPlayerByUserId(v30.hitPlayerId)

							if playerByUserId and playerByUserId.Character and playerByUserId.Character:FindFirstChild("Head") then
								local head = playerByUserId.Character.Head
								v30.hitPart = head
								v30.pos = head.Position
								v30.hitSize = head.Size
								tbl8[3] = v30
								fn27()
								local character = localPlayer2.Character

								if character and character:FindFirstChild("Head") then
									fn28(character.Head.Position, head.Position)
								end
							end
						end
					end

					return fireServer(arg, unpack(tbl8))
				end

				local function fn29(arg)
					local v30 = tbl3[arg]

					if v30 then
						pcall(function()
							v30:Destroy()
						end)

						tbl3[arg] = nil
					end

					local v31 = tbl6[arg]

					if v31 then
						local character = arg.Character

						if character then
							local hitbox = character:FindFirstChild("Hitbox")

							if hitbox then
								local headHitbox = hitbox:FindFirstChild("Head_Hitbox")

								if headHitbox then
									pcall(function()
										headHitbox.Size = v31
									end)
								end
							end
						end

						tbl6[arg] = nil
					end

					if tbl7[arg] then
						pcall(function()
							tbl7[arg]:Destroy()
						end)

						tbl7[arg] = nil
					end
				end

				local function fn30()
					n32 += 1
					if n32 % n31 ~= 0 then
						return
					end

					if not flag20 then
						for k in pairs(tbl3) do
							fn29(k)
						end

						return
					end

					local vector = Vector3.new(n27, n27, n27)

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer2 then
							local character = player.Character

							if not character then
								fn29(player)
							else
								local humanoid = character:FindFirstChildOfClass("Humanoid")

								if not humanoid or humanoid.Health <= 0 then
									fn29(player)
								else
									local hitbox = character:FindFirstChild("Hitbox")

									if not hitbox then
										fn29(player)
									else
										local headHitbox = hitbox:FindFirstChild("Head_Hitbox")

										if not headHitbox then
											fn29(player)
										else
											if not tbl6[player] then
												tbl6[player] = headHitbox.Size
											end

											if headHitbox.Size ~= vector then
												headHitbox.Size = vector
											end

											local boxHandleAdornment = tbl3[player]

											if not boxHandleAdornment then
												boxHandleAdornment = Instance.new("BoxHandleAdornment")
												boxHandleAdornment.AlwaysOnTop = true
												boxHandleAdornment.ZIndex = 10
												boxHandleAdornment.Adornee = headHitbox
												boxHandleAdornment.Parent = headHitbox
												tbl3[player] = boxHandleAdornment
											end

											if boxHandleAdornment.Size ~= vector then
												boxHandleAdornment.Size = vector
											end

											if boxHandleAdornment.Color3 ~= color then
												boxHandleAdornment.Color3 = color
											end

											if boxHandleAdornment.Transparency ~= 0.4 then
												boxHandleAdornment.Transparency = 0.4
											end
										end
									end
								end
							end
						end
					end

					for k in pairs(tbl3) do
						if not k:IsDescendantOf(Players) then
							fn29(k)
						end
					end
				end

				local function fn31(arg)
					local playerStates = arg:FindFirstChild("PlayerStates")
					if playerStates and playerStates:FindFirstChild("Team") then
						return playerStates.Team.Value
					end
					local leaderstats = arg:FindFirstChild("leaderstats")
					if leaderstats and leaderstats:FindFirstChild("Team") then
						return leaderstats.Team.Value
					end
					return nil
				end

				fn26 = function(arg)
					local v30 = fn31(localPlayer2)
					local v31 = fn31(arg)
					return v30 ~= nil and v30 == v31
				end

				local function fn32(arg)
					local v30, v31 = currentCamera:WorldToViewportPoint(arg)
					if not v31 then
						return false
					end
					local n33 = v30.X - circle.Position.X
					local n34 = v30.Y - circle.Position.Y
					return n33 * n33 + n34 * n34 <= radius * radius
				end

				local function fn33()
					if not flag13 then
						v27 = nil
						return
					end
					local str11 = str9

					if str11 == "随机" or str11 == "Random" then
						str11 = "Random"
					elseif str11 == "头部" or str11 == "Head" then
						str11 = "Head"
					elseif str11 == "躯干" or str11 == "HumanoidRootPart" then
						str11 = "HumanoidRootPart"
					elseif str11 == "上身" or str11 == "Torso" then
						str11 = "Torso"
					end

					local position = currentCamera.CFrame.Position
					local huge = math.huge
					local v30 = nil

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer2 then
							local character = player.Character

							if character then
								local flag22 = false

								pcall(function()
									flag22 = fn26(player)
								end)

								if flag22 then
								else
									local humanoid = character:FindFirstChildOfClass("Humanoid")

									if not humanoid or humanoid.Health <= 0 then
									elseif character:FindFirstChild("ForceField") then
									else
										local v31

										if str11 == "Random" then
											local tbl8 = {
												"Head",
												"HumanoidRootPart",
												"Left Arm",
												"Right Arm",
												"Left Leg",
												"Right Leg",
											}

											v31 = character:FindFirstChild(tbl8[math.random(1, #tbl8)])
										else
											v31 = character:FindFirstChild(str11)
										end

										if not v31 then
										else
											local n33 = v31.Position - position
											local magnitude = n33.Magnitude

											if magnitude > 1000 then
											elseif not fn32(v31.Position) then
											elseif flag14 then
												local raycastParams = RaycastParams.new()
												raycastParams.FilterDescendantsInstances = { localPlayer2.Character, character }
												raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

												if Workspace:Raycast(position, n33, raycastParams) then
												else
													if magnitude < huge then
														huge = magnitude
														v30 = v31
													end
												end
											else
												if magnitude < huge then
													huge = magnitude
													v30 = v31
												end
											end
										end
									end
								end
							end
						end
					end

					v27 = v30
				end

				RunService.RenderStepped:Connect(function()
					if tick() - n29 >= n30 then
						n29 = tick()
						fn33()
					end
				end)

				v28 = hookmetamethod(game, "__namecall", function(arg, ...)
					local v30 = table.pack(...)
					local v31 = getnamecallmethod()
					if checkcaller() then
						return v28(arg, ...)
					end

					if arg ~= Workspace then
						return v28(arg, ...)
					end

					if v31 ~= "Raycast" and v31 ~= "FindPartOnRayWithIgnoreList" and v31 ~= "FindPartOnRay" then
						return v28(arg, ...)
					end

					if not flag13 or not v27 then
						return v28(arg, ...)
					end

					if n26 < math.random(1, 100) then
						return v28(arg, ...)
					end
					local tbl8 = { ... }
					local origin, direction

					if v31 == "Raycast" then
						origin = tbl8[1]
						direction = tbl8[2]
					else
						local flag22 = v31 == "FindPartOnRayWithIgnoreList" or v31 == "FindPartOnRay"
						origin = nil
						direction = nil

						if flag22 then
							local v32 = tbl8[1]
							origin = nil
							direction = nil

							if typeof(v32) == "Ray" then
								origin = v32.Origin
								direction = v32.Direction
							end
						end
					end

					if not origin or not direction then
						return v28(arg, table.unpack(v30, 1, v30.n))
					end
					local position = v27.Position
					local unit = (position - origin).Unit
					local magnitude = (position - origin).Magnitude

					if v31 == "Raycast" then
						return {
							Instance = v27,
							Position = position,
							Normal = unit,
							Material = Enum.Material.Plastic,
							Distance = magnitude,
						}
					end

					return v27, position, unit
				end)

				RunService.RenderStepped:Connect(function()
					if flag16 and flag13 and v27 then
						local parent = v27.Parent

						if parent then
							local playerFromCharacter = Players:GetPlayerFromCharacter(parent)

							if playerFromCharacter and not fn26(playerFromCharacter) then
								local humanoid = parent:FindFirstChildOfClass("Humanoid")

								if humanoid and humanoid.Health > 0 then
									if fn32(v27.Position) then
										if flag14 then
											local raycastParams = RaycastParams.new()
											raycastParams.FilterDescendantsInstances = { localPlayer2.Character, parent }
											raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

											if not Workspace:Raycast(currentCamera.CFrame.Position, v27.Position - currentCamera.CFrame.Position, raycastParams) then
												mouse1click()
											end
										else
											mouse1click()
										end
									end
								end
							end
						end
					end
				end)

				RunService.Heartbeat:Connect(function()
					if not flag19 then
						for _, v30 in pairs(tbl7) do
							pcall(function()
								v30:Destroy()
							end)
						end

						table.clear(tbl7)
						return
					end

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer2 then
							local character = player.Character

							if not character then
								if tbl7[player] then
									pcall(function()
										tbl7[player]:Destroy()
									end)

									tbl7[player] = nil
								end
							elseif fn26(player) then
								if tbl7[player] then
									pcall(function()
										tbl7[player]:Destroy()
									end)

									tbl7[player] = nil
								end
							else
								if not tbl7[player] then
									local highlight = Instance.new("Highlight")
									highlight.FillTransparency = 0.7
									highlight.OutlineTransparency = 0
									highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
									highlight.FillColor = Color3.fromRGB(255, 0, 0)
									highlight.Parent = character
									tbl7[player] = highlight
								end

								local v30 = tbl7[player]

								if v30 and v30.Parent ~= character then
									v30.Parent = character
								end

								if v30 then
									local now2 = tick()
									v30.FillColor = Color3.new(0.5 + 0.5 * math.sin(now2 * 3), 0.5 + 0.5 * math.sin(now2 * 3 + 2), 0.5 + 0.5 * math.sin(now2 * 3 + 4))
									v30.OutlineColor = v30.FillColor
								end
							end
						end
					end
				end)

				local function fn34(arg)
					if not arg or not arg.Parent then
						return
					end
					local debugId = arg:GetDebugId()
					if tbl4[debugId] then
						return
					end
					tbl4[debugId] = true

					pcall(function()
						if arg:IsA("Model") or arg:IsA("Tool") then
							if typeof(arg.ScaleTo) == "function" then
								arg:ScaleTo(n28)
							else
								for _, descendant in ipairs(arg:GetDescendants()) do
									if descendant:IsA("BasePart") then
										descendant.Size = descendant.Size * n28
									elseif descendant:IsA("SpecialMesh") or descendant:IsA("BlockMesh") then
										descendant.Scale = descendant.Scale * n28
									elseif descendant:IsA("Weld") or descendant:IsA("Motor6D") then
										if descendant.C0 then
											local position = descendant.C0.Position
											local n33 = descendant.C0 - position
											descendant.C0 = CFrame.new(position * n28) * n33
										end

										if descendant.C1 then
											local position = descendant.C1.Position
											local n33 = descendant.C1 - position
											descendant.C1 = CFrame.new(position * n28) * n33
										end
									end
								end
							end
						elseif arg:IsA("BasePart") then
							arg.Size = arg.Size * n28
						end
					end)
				end

				local function fn35()
					if not flag21 then
						return
					end

					pcall(function()
						local character = localPlayer2.Character
						local backpack = localPlayer2:FindFirstChild("Backpack")
						local camera = Workspace:FindFirstChild("Camera")

						pcall(function()
							local inventory = require(ReplicatedStorage:WaitForChild("devv")).load("v3item").inventory

							if inventory and inventory.items then
								for _, item in pairs(inventory.items) do
									if typeof(item) == "Instance" then
										fn34(item)
										return
									end

									if type(item) == "table" then
										for _, v30 in ipairs({
											"tool",
											"model",
											"viewModel",
											"viewmodel",
											"instance",
											"object",
											"weapon",
											"gun",
											"equippedTool",
											"equippedModel",
											"handle",
											"weaponModel",
											"gunModel",
											"visual",
										}) do
											pcall(function()
												if typeof(item[v30]) == "Instance" then
													fn34(item[v30])
												end
											end)
										end

										pcall(function()
											for _, v30 in pairs(item) do
												if typeof(v30) == "Instance" then
													fn34(v30)
												end
											end
										end)
									end
								end
							end
						end)

						if character then
							for _, descendant in ipairs(character:GetDescendants()) do
								if descendant:IsA("Tool") then
									fn34(descendant)
								end

								if descendant:IsA("Model") then
									local str11 = descendant.Name:lower()

									if str11:find("gun") or str11:find("weapon") or str11:find("rifle") or str11:find("pistol") or str11:find("ak") or str11:find("ar") or str11:find("shotgun") or str11:find("sniper") or str11:find("smg") or str11:find("deagle") or str11:find("rpg") then
										fn34(descendant)
									end
								end
							end
						end

						if backpack then
							for _, descendant in ipairs(backpack:GetDescendants()) do
								if descendant:IsA("Tool") then
									fn34(descendant)
								end
							end
						end

						for _, descendant in ipairs(Workspace:GetDescendants()) do
							if descendant:IsA("Tool") then
								fn34(descendant)
							end
						end

						if camera then
							for _, descendant in ipairs(camera:GetDescendants()) do
								if descendant:IsA("Model") or descendant:IsA("Tool") then
									fn34(descendant)
								end

								if descendant:IsA("BasePart") then
									local debugId = descendant:GetDebugId()

									if not tbl4[debugId] then
										pcall(function()
											descendant.Size = descendant.Size * n28
										end)

										tbl4[debugId] = true
									end
								end
							end
						end
					end)
				end

				task.spawn(function()
					while true do
						fn35()
						task.wait(3)
					end
				end)

				RunService.Heartbeat:Connect(function()
					fn30()

					pcall(function()
						currentCamera.FieldOfView = fieldOfView
					end)
				end)

				local function fn36(arg, arg2, arg3)
					local tbl8 = {}

					for match in arg:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
						table.insert(tbl8, match)
					end

					local n33 = #tbl8
					local str11 = ""

					for i = 1, n33 do
						local n34 = (i - 1) / math.max(n33 - 1, 1)
						local n35 = arg2.G + (arg3.G - arg2.G) * n34
						local n36 = arg2.B + (arg3.B - arg2.B) * n34
						local v30 = tbl8[i]
						str11 ..= string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", math.floor((arg2.R + (arg3.R - arg2.R) * n34) * 255), math.floor(n35 * 255), math.floor(n36 * 255), v30)
					end

					return str11
				end

				local function fn37(arg)
					local color3 = Color3.fromRGB
					return fn36(arg, Color3.fromRGB(255, 255, 255), color3(255, 0, 0))
				end

				local colorSequence = ColorSequence.new
				local tbl8 = {}
				local v30 = ColorSequenceKeypoint.new(0, Color3.fromHex("FFFFFF"))
				local v31 = ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF88AA"))
				local new = ColorSequenceKeypoint.new
				local color3 = Color3.fromHex
				tbl8[1] = v30
				tbl8[2] = v31

				do
					local values = table.pack(new(1, color3("FF3344")))
					table.move(values, 1, values.n, 3, tbl8)
				end

				local v32 = colorSequence(tbl8)
				lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/Wind3"))()
				if not lib then
					StarterGui:SetCore("SendNotification", { Title = "错误", Text = "WindUI 加载失败", Duration = 5 })
					return
				end
				local str11 = nil
				local flag22 = false

				lib:Popup({
					Title = "Shell.lua",
					IconThemed = true,
					Content = "请选择语言 / Select Language" .. fn36(" Shell.lua", Color3.fromHex("#00FF87"), Color3.fromHex("#60EFFF")),
					Buttons = {
						{
							Title = "Chinese",
							Callback = function()
								str11 = "zh"
								flag22 = true
							end,
							Variant = "Secondary",
						},
						{
							Title = "English",
							Icon = "arrow-right",
							Callback = function()
								str11 = "en"
								flag22 = true
							end,
							Variant = "Primary",
						},
					},
					Background = "https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/quality_restoration_20260522215233585.jpg",
					BackgroundImageTransparency = 0.35,
				})

				repeat
					task.wait(0.1)
				until flag22

				tbl5 = {}

				if str11 == "zh" then
					tbl5.Player = "主要"
					tbl5.GlideFly = "滑行飞"
					tbl5.SmoothFly = "丝滑飞"
					tbl5.GlideSpeed = "滑行速度"
					tbl5.SmoothSpeed = "丝滑速度"
					tbl5.Combat = "合法"
					tbl5.Visual = "视觉"
					tbl5.Kill = "杀戮"
					tbl5.SilentAim = "美国子弹"
					tbl5.Hitbox = "Hitbox扩展"
					tbl5.HitboxSize = "Hitbox大小"
					tbl5.HitboxColor = "Hitbox颜色"
					tbl5.FOV = "FOV大小"
					tbl5.FOVShow = "显示FOV圈"
					tbl5.AimPart = "瞄准部位"
					tbl5.WallCheck = "墙壁检测"
					tbl5.HitChance = "命中率"
					tbl5.Triggerbot = "触发开火"
					tbl5.HitSound = "击中音效"
					tbl5.BulletTracer = "射击弹道"
					tbl5.TracerColor = "弹道颜色"
					tbl5.Chams = "彩虹透视"
					tbl5.CameraFOV = "视角FOV"
					tbl5.SkyTheme = "天空主题"
					tbl5.SkyDefault = "默认"
					tbl5.SkySunset = "日落"
					tbl5.SkyNebula = "星云"
					tbl5.Head = "头部"
					tbl5.HumanoidRootPart = "躯干"
					tbl5.Torso = "上身"
					tbl5.Random = "随机"
					tbl5.GunScale = "放大枪"
					tbl5.GunScaleMult = "放大倍数"
					tbl5.AutoATM = "自动ATM"
					tbl5.PunchType = "一拳类型"
					tbl5.NormalPunch = "普通拳"
					tbl5.SuperPunch = "超级拳"
					tbl5.AutoEquipFists = "自动装备拳头"
					tbl5.PunchAura = "一拳光环"
					tbl5.Blink = "闪现"
					tbl5.TPPlayer = "TP玩家"
					tbl5.OffsetX = "X偏移"
					tbl5.OffsetY = "Y偏移"
					tbl5.OffsetZ = "Z偏移"
					tbl5.SelectTarget = "选择目标玩家"
					tbl5.Ghost = "人物幽灵"
					tbl5.Stomp = "踩踏光环"
					tbl5.Grab = "抓取光环"
					tbl5.CounterAttack = "反击"
					tbl5.Armor = "自动护甲"
					tbl5.Heal = "自动回血"
					tbl5.HealThreshold = "回血触发血量"
					tbl5.Mask = "自动口罩"
					tbl5.MaskType = "口罩类型"
					tbl5.Escape = "残血逃跑"
					tbl5.EscapeHP = "逃跑血量"
					tbl5.AntiVoid = "防虚空"
					tbl5.AntiFreeze = "防僵直"
					tbl5.AntiKnock = "防倒地"
					tbl5.AntiSit = "防坐下"
					tbl5.AntiGrab = "防抓取"
					tbl5.SilentBlock = "静默格挡"
					tbl5.AntiAdmin = "防管理员"
					tbl5.RangeAttack = "全图杀戮"
					tbl5.RangeMode = "攻击模式"
					tbl5.RangeDist = "攻击距离"
					tbl5.Airdrop = "自动空投"
					tbl5.AutoMoney = "自动捡钱"
					tbl5.MinMoney = "最低钱数"
					tbl5.AutoSell = "自动售卖全部"
					tbl5.BulkSell = "批量销售"
					tbl5.BlackMarket = "自动黑市销售"
					tbl5.LuckyBlock = "自动开幸运方块"
					tbl5.MaterialBox = "自动开材料盒"
					tbl5.CaseBuy = "购买箱子"
					tbl5.CaseOpen = "开启箱子"
					tbl5.Animation = "自定义动画"
					tbl5.PoliceUniform = "警察制服"
					tbl5.ClownHat = "小丑帽子"
					tbl5.CraftRollie = "自动制作萝莉"
					tbl5.ClaimRollie = "自动领取萝莉"
					tbl5.StoreGems = "自动存放珠宝"
					tbl5.RentHouse = "自动租用房屋"
					tbl5.ClaimRewards = "自动领取奖励"
					tbl5.SlotMachine = "自动老虎机"
					tbl5.TruckCash = "自动运钞车"
					tbl5.CollectMaterials = "自动捡材料"
					tbl5.CollectGems = "自动捡珠宝"
					tbl5.CollectKeycards = "自动捡钥匙卡"
					tbl5.CollectPrinters = "自动捡打印机"
					tbl5.CollectNukes = "自动捡核弹"
					tbl5.CollectBalloons = "自动捡气球"
					tbl5.CollectCandy = "自动捡糖果"
					tbl5.CollectLucky = "自动捡幸运方块"
					tbl5.CollectPrecious = "自动捡贵重物品"
					tbl5.CollectVehicles = "自动捡载具"
					tbl5.CollectWeapons = "自动捡枪支"
					tbl5.Skin = "美化皮肤"
					tbl5.ApplySkin = "开启美化"
					tbl5.UnlockSkins = "解锁全皮肤"
					tbl5.FreeItem = "免费物品"
					tbl5.FreeCase = "免费箱子"
					tbl5.SkinWeapon = "武器皮肤"
					tbl5.MoneyCheat = "金钱修改"
					tbl5.Gingerbread = "姜饼人"
					tbl5.Data = "数据统计"
					tbl5.Teleport = "传送"
					tbl5.TeleportTo = "传送位置"
					tbl5.Respawn = "原地复活"
					tbl5.FastInteract = "快速互动"
					tbl5.RemoteBlackMarket = "远程黑市"
					tbl5.RemoteLocker = "远程储物柜"
					tbl5.IgnoreFireAcid = "无视火&酸"
					tbl5.Slot9 = "修改9物品栏"
					tbl5.PlayerList = "玩家列表"
					tbl5.Whitelist = "白名单"
					tbl5.Blacklist = "黑名单"
					tbl5.AddWhitelist = "添加白名单"
					tbl5.AddBlacklist = "添加黑名单"
					tbl5.AttackBlacklist = "攻击黑名单"
					tbl5.Protection = "防护"
					tbl5.Farming = "赚钱"
					tbl5.Items = "物品"
					tbl5.Cosmetics = "美化"
					tbl5.Cases = "箱子"
					tbl5.Teleportation = "传送"
					tbl5.DataStats = "数据"
					tbl5.Others = "其他"
					tbl5.Aura = "人物光环"
					tbl5.Hat = "人物帽子"
					tbl5.TailRing = "人物尾环"
				else
					tbl5.Player = "Player"
					tbl5.GlideFly = "Glide Fly"
					tbl5.SmoothFly = "Smooth Fly"
					tbl5.GlideSpeed = "Glide Speed"
					tbl5.SmoothSpeed = "Smooth Speed"
					tbl5.Combat = "Combat"
					tbl5.Visual = "Visual"
					tbl5.Kill = "Kill"
					tbl5.SilentAim = "Silent Aim"
					tbl5.Hitbox = "Hitbox Expander"
					tbl5.HitboxSize = "Hitbox Size"
					tbl5.HitboxColor = "Hitbox Color"
					tbl5.FOV = "FOV Size"
					tbl5.FOVShow = "Show FOV Circle"
					tbl5.AimPart = "Aim Part"
					tbl5.WallCheck = "Wall Check"
					tbl5.HitChance = "Hit Chance"
					tbl5.Triggerbot = "Triggerbot"
					tbl5.HitSound = "Hit Sound"
					tbl5.BulletTracer = "Bullet Tracer"
					tbl5.TracerColor = "Tracer Color"
					tbl5.Chams = "Chams"
					tbl5.CameraFOV = "Camera FOV"
					tbl5.SkyTheme = "Sky Theme"
					tbl5.SkyDefault = "Default"
					tbl5.SkySunset = "Sunset"
					tbl5.SkyNebula = "Nebula"
					tbl5.Head = "Head"
					tbl5.HumanoidRootPart = "HumanoidRootPart"
					tbl5.Torso = "Torso"
					tbl5.Random = "Random"
					tbl5.GunScale = "Gun Scale"
					tbl5.GunScaleMult = "Scale Multiplier"
					tbl5.AutoATM = "Auto ATM"
					tbl5.PunchType = "Punch Type"
					tbl5.NormalPunch = "Normal Punch"
					tbl5.SuperPunch = "Super Punch"
					tbl5.AutoEquipFists = "Auto Equip Fists"
					tbl5.PunchAura = "Punch Aura"
					tbl5.Blink = "Blink"
					tbl5.TPPlayer = "TP Player"
					tbl5.OffsetX = "Offset X"
					tbl5.OffsetY = "Offset Y"
					tbl5.OffsetZ = "Offset Z"
					tbl5.SelectTarget = "Select Target"
					tbl5.Ghost = "Ghost"
					tbl5.Stomp = "Stomp Aura"
					tbl5.Grab = "Grab Aura"
					tbl5.CounterAttack = "Counter Attack"
					tbl5.Armor = "Auto Armor"
					tbl5.Heal = "Auto Heal"
					tbl5.HealThreshold = "Heal Threshold"
					tbl5.Mask = "Auto Mask"
					tbl5.MaskType = "Mask Type"
					tbl5.Escape = "Escape at Low HP"
					tbl5.EscapeHP = "Escape HP"
					tbl5.AntiVoid = "Anti Void"
					tbl5.AntiFreeze = "Anti Freeze"
					tbl5.AntiKnock = "Anti Knock"
					tbl5.AntiSit = "Anti Sit"
					tbl5.AntiGrab = "Anti Grab"
					tbl5.SilentBlock = "Silent Block"
					tbl5.AntiAdmin = "Anti Admin"
					tbl5.RangeAttack = "Range Attack"
					tbl5.RangeMode = "Attack Mode"
					tbl5.RangeDist = "Attack Distance"
					tbl5.Airdrop = "Auto Airdrop"
					tbl5.AutoMoney = "Auto Pickup Money"
					tbl5.MinMoney = "Min Money"
					tbl5.AutoSell = "Auto Sell All"
					tbl5.BulkSell = "Bulk Sell"
					tbl5.BlackMarket = "Auto Black Market Sell"
					tbl5.LuckyBlock = "Auto Open Lucky Block"
					tbl5.MaterialBox = "Auto Open Material Box"
					tbl5.CaseBuy = "Buy Cases"
					tbl5.CaseOpen = "Open Cases"
					tbl5.Animation = "Custom Animation"
					tbl5.PoliceUniform = "Police Uniform"
					tbl5.ClownHat = "Clown Hat"
					tbl5.CraftRollie = "Auto Craft Rollie"
					tbl5.ClaimRollie = "Auto Claim Rollie"
					tbl5.StoreGems = "Auto Store Gems"
					tbl5.RentHouse = "Auto Rent House"
					tbl5.ClaimRewards = "Auto Claim Rewards"
					tbl5.SlotMachine = "Auto Slot Machine"
					tbl5.TruckCash = "Auto Truck Cash"
					tbl5.CollectMaterials = "Collect Materials"
					tbl5.CollectGems = "Collect Gems"
					tbl5.CollectKeycards = "Collect Keycards"
					tbl5.CollectPrinters = "Collect Printers"
					tbl5.CollectNukes = "Collect Nukes"
					tbl5.CollectBalloons = "Collect Balloons"
					tbl5.CollectCandy = "Collect Candy"
					tbl5.CollectLucky = "Collect Lucky Blocks"
					tbl5.CollectPrecious = "Collect Precious"
					tbl5.CollectVehicles = "Collect Vehicles"
					tbl5.CollectWeapons = "Collect Weapons"
					tbl5.Skin = "Skin"
					tbl5.ApplySkin = "Apply Skin"
					tbl5.UnlockSkins = "Unlock All Skins"
					tbl5.FreeItem = "Free Item"
					tbl5.FreeCase = "Free Cases"
					tbl5.SkinWeapon = "Weapon Skin"
					tbl5.MoneyCheat = "Money Cheat"
					tbl5.Gingerbread = "Gingerbread"
					tbl5.Data = "Data Stats"
					tbl5.Teleport = "Teleport"
					tbl5.TeleportTo = "Teleport To"
					tbl5.Respawn = "Respawn"
					tbl5.FastInteract = "Fast Interact"
					tbl5.RemoteBlackMarket = "Remote Black Market"
					tbl5.RemoteLocker = "Remote Locker"
					tbl5.IgnoreFireAcid = "Ignore Fire & Acid"
					tbl5.Slot9 = "Modify 9 Slots"
					tbl5.PlayerList = "Player List"
					tbl5.Whitelist = "Whitelist"
					tbl5.Blacklist = "Blacklist"
					tbl5.AddWhitelist = "Add Whitelist"
					tbl5.AddBlacklist = "Add Blacklist"
					tbl5.AttackBlacklist = "Attack Blacklist"
					tbl5.Protection = "Protection"
					tbl5.Farming = "Farming"
					tbl5.Items = "Items"
					tbl5.Cosmetics = "Cosmetics"
					tbl5.Cases = "Cases"
					tbl5.Teleportation = "Teleportation"
					tbl5.DataStats = "Data"
					tbl5.Others = "Others"
					tbl5.Aura = "Aura"
					tbl5.Hat = "Hat"
					tbl5.TailRing = "Tail Ring"
				end

				v26 = lib:CreateWindow({
					Title = fn37("Shell.lua"),
					IconThemed = true,
					Folder = "Sun",
					Size = UDim2.fromOffset(491, 238),
					Transparent = false,
					Theme = "Dark",
					NewElements = true,
					User = { Enabled = true, Anonymous = false },
					SideBarWidth = 185,
					ScrollBarEnabled = true,
					Background = "https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/quality_restoration_20260522215233585.jpg",
					BackgroundImageTransparency = 0.35,
				})

				v26:EditOpenButton({
					Title = fn37("Shell.lua"),
					CornerRadius = UDim.new(1, 2),
					StrokeThickness = 2,
					Color = v32,
					Draggable = true,
				})

				task.spawn(function()
					while true do
						task.wait(0.1)
						if not (v26.OpenButtonMain and v26.OpenButtonMain.Button) then
							continue
						end
						break
					end

					local uiStroke = v26.OpenButtonMain.Button:FindFirstChildWhichIsA("UIStroke")
					if not uiStroke then
						return
					end

					repeat
						task.wait(0.05)
					until uiStroke:FindFirstChildWhichIsA("UIGradient")

					local uiGradient = uiStroke:FindFirstChildWhichIsA("UIGradient")
					if not uiGradient then
						return
					end

					RunService.Heartbeat:Connect(function()
						if not uiGradient or not uiGradient.Parent then
							return
						end
						uiGradient.Rotation = tick() * 60 % 360
					end)
				end)

				v26:SetToggleKey(Enum.KeyCode.RightShift)

				pcall(function()
					lib:SetFont("rbxassetid://12187376739")
				end)

				local v33 = v26:Tab({ Title = tbl5.Player, Icon = "crown" })
				_G.SetSpeedFly = 50

				v33:Slider({
					Title = tbl5.GlideSpeed,
					Value = { Min = 20, Max = 500, Default = 50 },
					Step = 1,
					Callback = function(setSpeedFly)
						_G.SetSpeedFly = setSpeedFly
					end,
				})

				v33:Toggle({
					Title = tbl5.GlideFly,
					Value = false,
					Callback = function(startFly)
						_G.StartFly = startFly

						while _G.StartFly do
							local character = localPlayer2.Character

							if character and character:FindFirstChild("HumanoidRootPart") then
								local humanoidRootPart = character.HumanoidRootPart

								if not humanoidRootPart:FindFirstChild("BodyGyro") then
									local bodyGyro = Instance.new("BodyGyro", humanoidRootPart)
									bodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
									bodyGyro.P = 90000
									bodyGyro.CFrame = humanoidRootPart.CFrame
								end

								if not humanoidRootPart:FindFirstChild("BodyVelocity") then
									local bodyVelocity = Instance.new("BodyVelocity", humanoidRootPart)
									bodyVelocity.Velocity = Vector3.zero
									bodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
								end

								local moveVector = require(localPlayer2.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector()

								if humanoidRootPart:FindFirstChild("BodyVelocity") and humanoidRootPart:FindFirstChild("BodyGyro") then
									humanoidRootPart.BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
									humanoidRootPart.BodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
									humanoidRootPart.BodyGyro.CFrame = CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + Workspace.CurrentCamera.CFrame.LookVector)
									humanoidRootPart.BodyVelocity.Velocity = Vector3.new()

									if moveVector.X > 0 then
										humanoidRootPart.BodyVelocity.Velocity = humanoidRootPart.BodyVelocity.Velocity + currentCamera.CFrame.RightVector * moveVector.X * _G.SetSpeedFly
									end

									if moveVector.X < 0 then
										humanoidRootPart.BodyVelocity.Velocity = humanoidRootPart.BodyVelocity.Velocity + currentCamera.CFrame.RightVector * moveVector.X * _G.SetSpeedFly
									end

									if moveVector.Z > 0 then
										humanoidRootPart.BodyVelocity.Velocity = humanoidRootPart.BodyVelocity.Velocity - currentCamera.CFrame.LookVector * moveVector.Z * _G.SetSpeedFly
									end

									if moveVector.Z < 0 then
										humanoidRootPart.BodyVelocity.Velocity = humanoidRootPart.BodyVelocity.Velocity - currentCamera.CFrame.LookVector * moveVector.Z * _G.SetSpeedFly
									end
								end
							end

							task.wait()
						end

						local character = localPlayer2.Character

						if character and character:FindFirstChild("HumanoidRootPart") then
							local humanoidRootPart = character.HumanoidRootPart

							if humanoidRootPart:FindFirstChild("BodyGyro") then
								humanoidRootPart.BodyGyro:Destroy()
							end

							if humanoidRootPart:FindFirstChild("BodyVelocity") then
								humanoidRootPart.BodyVelocity:Destroy()
							end
						end

						lib:Notify({
							Title = "Shell.lua",
							Content = startFly and "Glide Fly Enabled" or "Glide Fly Disabled",
							Icon = startFly and "check" or "x",
							Duration = 2,
						})
					end,
				})

				local flag23 = false
				local f = 1
				local flag24 = false
				local connection = nil
				local connection2 = nil
				local connection3 = nil
				local connection4 = nil
				local v34 = UserInputService2

				local function fn38()
					while true do
						task.wait()
						if not (localPlayer2.Character and localPlayer2.Character:WaitForChild("HumanoidRootPart") and localPlayer2.Character:FindFirstChildOfClass("Humanoid")) then
							continue
						end
						break
					end

					repeat
						task.wait()
					until v34

					if connection or connection2 then
						connection:Disconnect()
						connection2:Disconnect()
					end

					local humanoidRootPart = localPlayer2.Character:WaitForChild("HumanoidRootPart")
					local tbl9 = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
					local tbl10 = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
					local n33 = f

					local function fn39()
						flag24 = true
						local bodyGyro = Instance.new("BodyGyro")
						local bodyVelocity = Instance.new("BodyVelocity")
						bodyGyro.P = 90000
						bodyGyro.Parent = humanoidRootPart
						bodyVelocity.Parent = humanoidRootPart
						bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
						bodyGyro.CFrame = humanoidRootPart.CFrame
						bodyVelocity.Velocity = Vector3.zero
						bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)

						task.spawn(function()
							while flag24 do
								task.wait()

								if not flag23 and localPlayer2.Character:FindFirstChildOfClass("Humanoid") then
									localPlayer2.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
								end

								if tbl9.L + tbl9.R ~= 0 or tbl9.F + tbl9.B ~= 0 or tbl9.Q + tbl9.E ~= 0 then
									n33 = f
								elseif not (tbl9.L + tbl9.R ~= 0 or tbl9.F + tbl9.B ~= 0 or tbl9.Q + tbl9.E ~= 0) and n33 ~= 0 then
									n33 = 0
								end

								if tbl9.L + tbl9.R ~= 0 or tbl9.F + tbl9.B ~= 0 or tbl9.Q + tbl9.E ~= 0 then
									local p = currentCamera.CoordinateFrame.p
									bodyVelocity.Velocity = (currentCamera.CoordinateFrame.lookVector * (tbl9.F + tbl9.B) + currentCamera.CoordinateFrame * CFrame.new(tbl9.L + tbl9.R, (tbl9.F + tbl9.B + tbl9.Q + tbl9.E) * 0.2, 0).p - p) * n33
									tbl10 = { F = tbl9.F, B = tbl9.B, L = tbl9.L, R = tbl9.R }
								elseif tbl9.L + tbl9.R == 0 and tbl9.F + tbl9.B == 0 and tbl9.Q + tbl9.E == 0 and n33 ~= 0 then
									local p = currentCamera.CoordinateFrame.p
									bodyVelocity.Velocity = (currentCamera.CoordinateFrame.lookVector * (tbl10.F + tbl10.B) + currentCamera.CoordinateFrame * CFrame.new(tbl10.L + tbl10.R, (tbl10.F + tbl10.B + tbl9.Q + tbl9.E) * 0.2, 0).p - p) * n33
								else
									bodyVelocity.Velocity = Vector3.zero
								end

								bodyGyro.CFrame = currentCamera.CoordinateFrame
							end

							tbl9 = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
							tbl10 = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
							n33 = 0
							bodyGyro:Destroy()
							bodyVelocity:Destroy()

							if localPlayer2.Character:FindFirstChildOfClass("Humanoid") then
								localPlayer2.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
							end
						end)
					end

					connection = v34.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Keyboard then
							local name = input.KeyCode.Name

							if name == "W" then
								tbl9.F = f
							elseif name == "S" then
								tbl9.B = -f
							elseif name == "A" then
								tbl9.L = -f
							elseif name == "D" then
								tbl9.R = f
							elseif name == "E" then
								tbl9.Q = f * 2
							elseif name == "Q" then
								tbl9.E = -f * 2
							end

							pcall(function()
								currentCamera.CameraType = Enum.CameraType.Track
							end)
						end
					end)

					connection2 = v34.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Keyboard then
							local name = input.KeyCode.Name

							if name == "W" then
								tbl9.F = 0
							elseif name == "S" then
								tbl9.B = 0
							elseif name == "A" then
								tbl9.L = 0
							elseif name == "D" then
								tbl9.R = 0
							elseif name == "E" then
								tbl9.Q = 0
							elseif name == "Q" then
								tbl9.E = 0
							end
						end
					end)

					fn39()
				end

				local function fn39()
					flag24 = false

					if connection then
						connection:Disconnect()
					end

					if connection2 then
						connection2:Disconnect()
					end

					if connection3 then
						connection3:Disconnect()
					end

					if connection4 then
						connection4:Disconnect()
					end

					if localPlayer2.Character:FindFirstChildOfClass("Humanoid") then
						localPlayer2.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
					end

					pcall(function()
						currentCamera.CameraType = Enum.CameraType.Custom
					end)
				end

				local function fn40()
					pcall(function()
						flag24 = false
						local humanoidRootPart = localPlayer2.Character:WaitForChild("HumanoidRootPart")

						if humanoidRootPart:FindFirstChild("BodyVelocity") then
							humanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
						end

						if humanoidRootPart:FindFirstChild("BodyGyro") then
							humanoidRootPart:FindFirstChild("BodyGyro"):Destroy()
						end

						if localPlayer2.Character:FindFirstChildWhichIsA("Humanoid") then
							localPlayer2.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
						end

						if connection3 then
							connection3:Disconnect()
						end

						if connection4 then
							connection4:Disconnect()
						end
					end)
				end

				local function fn41()
					fn40()
					flag24 = true
					local humanoidRootPart = localPlayer2.Character:WaitForChild("HumanoidRootPart")
					local currentCamera2 = Workspace.CurrentCamera
					local vector = Vector3.new()
					local vector2 = Vector3.zero
					local vector3 = Vector3.new(9e9, 9e9, 9e9)
					local ControlModule = require(localPlayer2.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
					local bodyVelocity = Instance.new("BodyVelocity")
					bodyVelocity.Name = "BodyVelocity"
					bodyVelocity.Parent = humanoidRootPart
					bodyVelocity.MaxForce = vector2
					bodyVelocity.Velocity = vector2
					local bodyGyro = Instance.new("BodyGyro")
					bodyGyro.Name = "BodyGyro"
					bodyGyro.Parent = humanoidRootPart
					bodyGyro.MaxTorque = vector3
					bodyGyro.P = 1000
					bodyGyro.D = 50

					connection3 = localPlayer2.CharacterAdded:Connect(function()
						local humanoidRootPart2 = localPlayer2.Character:WaitForChild("HumanoidRootPart")
						local bodyVelocity2 = Instance.new("BodyVelocity")
						bodyVelocity2.Name = "BodyVelocity"
						bodyVelocity2.Parent = humanoidRootPart2
						bodyVelocity2.MaxForce = vector2
						bodyVelocity2.Velocity = vector2
						local bodyGyro2 = Instance.new("BodyGyro")
						bodyGyro2.Name = "BodyGyro"
						bodyGyro2.Parent = humanoidRootPart2
						bodyGyro2.MaxTorque = vector3
						bodyGyro2.P = 1000
						bodyGyro2.D = 50
					end)

					connection4 = RunService.RenderStepped:Connect(function()
						humanoidRootPart = localPlayer2.Character:WaitForChild("HumanoidRootPart")
						currentCamera2 = Workspace.CurrentCamera

						if localPlayer2.Character:FindFirstChildWhichIsA("Humanoid") and humanoidRootPart and humanoidRootPart:FindFirstChild("BodyVelocity") and humanoidRootPart:FindFirstChild("BodyGyro") then
							local humanoid = localPlayer2.Character:FindFirstChildWhichIsA("Humanoid")
							local bodyVelocity2 = humanoidRootPart:FindFirstChild("BodyVelocity")
							local bodyGyro2 = humanoidRootPart:FindFirstChild("BodyGyro")
							bodyVelocity2.MaxForce = vector3
							bodyGyro2.MaxTorque = vector3
							humanoid.PlatformStand = true
							bodyGyro2.CFrame = currentCamera2.CoordinateFrame
							bodyVelocity2.Velocity = vector
							local moveVector = ControlModule:GetMoveVector()

							if moveVector.X > 0 then
								bodyVelocity2.Velocity = bodyVelocity2.Velocity + currentCamera2.CFrame.RightVector * moveVector.X * f * 50
							end

							if moveVector.X < 0 then
								bodyVelocity2.Velocity = bodyVelocity2.Velocity + currentCamera2.CFrame.RightVector * moveVector.X * f * 50
							end

							if moveVector.Z > 0 then
								bodyVelocity2.Velocity = bodyVelocity2.Velocity - currentCamera2.CFrame.LookVector * moveVector.Z * f * 50
							end

							if moveVector.Z < 0 then
								bodyVelocity2.Velocity = bodyVelocity2.Velocity - currentCamera2.CFrame.LookVector * moveVector.Z * f * 50
							end
						end
					end)
				end

				v33:Divider()

				v33:Slider({
					Title = tbl5.SmoothSpeed,
					Value = { Min = 1, Max = 20, Default = 1 },
					Step = 1,
					Callback = function(arg)
						f = arg

						if flag24 then
							task.spawn(function()
								while flag24 do
									task.wait(0.1)

									if UserInputService2.TouchEnabled then
										local humanoidRootPart = localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart")

										if humanoidRootPart and humanoidRootPart:FindFirstChild("BodyVelocity") then
											local bodyVelocity = humanoidRootPart:FindFirstChild("BodyVelocity")
											bodyVelocity.Velocity = bodyVelocity.Velocity.Unit * f * 50
										end
									end
								end
							end)
						end
					end,
				})

				v33:Toggle({
					Title = tbl5.SmoothFly,
					Value = false,
					Callback = function(arg)
						flag23 = arg

						if flag23 then
							if UserInputService2.TouchEnabled then
								fn41()
							else
								fn38()
							end
						else
							fn39()
							fn40()
						end

						lib:Notify({
							Title = "Shell.lua",
							Content = arg and "Smooth Fly Enabled" or "Smooth Fly Disabled",
							Icon = arg and "check" or "x",
							Duration = 2,
						})
					end,
				})

				v33:Toggle({
					Title = tbl5.AutoATM,
					Value = false,
					Callback = function(arg)
						if arg then
							task.spawn(function()
								while arg do
									local humanoidRootPart = localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart")

									if not humanoidRootPart then
										task.wait(0.5)
									else
										local atMs = Workspace:FindFirstChild("ATMs")

										if atMs then
											for _, child in pairs(atMs:GetChildren()) do
												if child:IsA("Model") and child:GetAttribute("health") and child:GetAttribute("health") ~= 0 then
													local main = child:FindFirstChild("Main")

													if main and main:IsA("BasePart") then
														humanoidRootPart.CFrame = CFrame.new(main.Position)
														task.wait(0.1)
														child:SetAttribute("health", 0)
														task.wait(0.3)
													end
												end
											end
										end

										local cashBundle = Workspace.Game and Workspace.Game.Entities and Workspace.Game.Entities:FindFirstChild("CashBundle")

										if cashBundle then
											for _, child in pairs(cashBundle:GetChildren()) do
												if child:IsA("Model") or child:IsA("BasePart") then
													local position = child:IsA("Model") and child.PrimaryPart and child.PrimaryPart.Position or child.Position

													if position then
														humanoidRootPart.CFrame = CFrame.new(position)
														task.wait(0.05)
													end
												end
											end
										end

										task.wait(0.5)
									end
								end
							end)
						end
					end,
				})

				local v35 = v26:Tab({ Title = tbl5.Combat, Icon = "crosshair" })

				v35:Toggle({
					Title = tbl5.SilentAim,
					Callback = function(arg)
						flag13 = arg
					end,
				})

				v35:Toggle({
					Title = tbl5.Hitbox,
					Default = false,
					Callback = function(arg)
						flag20 = arg

						if not arg then
							for k in pairs(tbl3) do
								fn29(k)
							end
						end
					end,
				})

				v35:Slider({
					Title = tbl5.HitboxSize,
					Step = 1,
					Value = { Min = 1, Max = 100, Default = 10 },
					Callback = function(arg)
						n27 = arg
					end,
				})

				v35:Colorpicker({
					Title = tbl5.HitboxColor,
					Default = color,
					Callback = function(arg)
						color = arg
					end,
				})

				v35:Slider({
					Title = tbl5.FOV,
					Step = 1,
					Value = { Min = 50, Max = 1000, Default = 250 },
					Callback = function(radius2)
						radius = radius2
						circle.Radius = radius2
					end,
				})

				v35:Toggle({
					Title = tbl5.FOVShow,
					Callback = function(visible)
						flag15 = visible
						circle.Visible = visible
					end,
				})

				v35:Dropdown({
					Title = tbl5.AimPart,
					Values = { tbl5.Head, tbl5.HumanoidRootPart, tbl5.Torso, tbl5.Random },
					Callback = function(arg)
						str9 = arg
					end,
				})

				v35:Toggle({
					Title = tbl5.WallCheck,
					Callback = function(arg)
						flag14 = arg
					end,
				})

				v35:Slider({
					Title = tbl5.HitChance,
					Step = 1,
					Value = { Min = 1, Max = 100, Default = 100 },
					Callback = function(arg)
						n26 = arg
					end,
				})

				v35:Toggle({
					Title = tbl5.Triggerbot,
					Callback = function(arg)
						flag16 = arg
					end,
				})

				v35:Toggle({
					Title = tbl5.HitSound,
					Callback = function(arg)
						flag17 = arg
					end,
				})

				v35:Toggle({
					Title = tbl5.BulletTracer,
					Callback = function(arg)
						flag18 = arg
					end,
				})

				v35:Colorpicker({
					Title = tbl5.TracerColor,
					Default = color2,
					Callback = function(arg)
						color2 = arg
					end,
				})

				v35:Toggle({
					Title = tbl5.GunScale,
					Default = false,
					Callback = function(arg)
						flag21 = arg

						if not arg then
							table.clear(tbl4)
						end
					end,
				})

				v35:Slider({
					Title = tbl5.GunScaleMult,
					Step = 1,
					Value = { Min = 2, Max = 50, Default = 10 },
					Callback = function(arg)
						n28 = tonumber(arg) or 10
						table.clear(tbl4)
					end,
				})

				local tbl9 = {
					["全图火焰喷射器"] = {
						weaponNames = { "Flamethrower" },
						fireEvent = "flameHit",
						attackDistance = 60,
						fireType = "auto",
						extraArgs = nil,
					},
					["全图硫酸"] = {
						weaponNames = { "Acid Gun" },
						fireEvent = "acidHit",
						attackDistance = 60,
						fireType = "auto",
						extraArgs = nil,
					},
					["全图RPG"] = {
						weaponNames = { "RPG" },
						fireEvent = "rocketHit",
						attackDistance = 100,
						fireType = "semi",
						extraArgs = { repeatCount = 5 },
					},
					["全图三叉戟"] = {
						weaponNames = { "Trident" },
						fireEvent = "rocketHit",
						attackDistance = 100,
						fireType = "semi",
						extraArgs = { repeatCount = 5 },
					},
					["全图喷雾"] = {
						weaponNames = { "Pepper Spray", "Fire Extinguisher" },
						fireEvent = "pepperSprayHit",
						attackDistance = 80,
						fireType = "auto",
						extraArgs = nil,
					},
				}

				local n33 = 60
				local str12 = "全图火焰喷射器"

				v35:Dropdown({
					Title = tbl5.RangeMode,
					Values = { "全图火焰喷射器", "全图硫酸", "全图RPG", "全图三叉戟", "全图喷雾" },
					Value = "全图火焰喷射器",
					Callback = function(arg)
						str12 = arg
						local v36 = tbl9[arg]

						if v36 then
							n33 = v36.attackDistance
						end
					end,
				})

				v35:Slider({
					Title = tbl5.RangeDist,
					Value = { Min = 1, Max = 5000, Default = 60 },
					Callback = function(arg)
						n33 = arg
					end,
				})

				v35:Toggle({
					Title = tbl5.RangeAttack,
					Value = false,
					Callback = function(arg)
						if arg then
							task.spawn(function()
								while arg do
									local v36 = v3item.inventory.getEquippedItem()

									if not v36 then
										task.wait(0.1)
									else
										local v37 = tbl9[str12]

										if not v37 then
											task.wait(0.1)
										else
											local flag25 = false

											for _, weaponName in pairs(v37.weaponNames) do
												if v36.name == weaponName then
													flag25 = true
													break
												else
													flag25 = false
												end
											end

											if not flag25 then
												task.wait(0.1)
											else
												local guid2 = v36.guid
												local tbl10 = {}

												for _, player in pairs(Players:GetPlayers()) do
													if player ~= localPlayer2 then
														local ok, result = pcall(function()
															return localPlayer2:IsFriendsWith(player.UserId)
														end)

														if ok and result then
															table.insert(tbl10, player.UserId)
														end
													end
												end

												for _, player in pairs(Players:GetPlayers()) do
													if arg then
														if player ~= localPlayer2 and player.Character then
															local character = player.Character
															local humanoid = character:FindFirstChild("Humanoid")
															local v38 = character:FindFirstChild(hitPart)

															if humanoid and v38 and humanoid.Health > 0 then
																local magnitude = (localPlayer2.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
																local flag26 = false

																for _, v39 in pairs(tbl10) do
																	if player.UserId == v39 then
																		flag26 = true
																		break
																	else
																		flag26 = false
																	end
																end

																if not flag26 and magnitude <= n33 then
																	local tbl11 = { guid() }
																	Signal.FireServer("replicateProjectiles", guid2, { { tbl11[1], v38.CFrame } }, v37.fireType)
																	local tbl12 = {}
																	local v39 = tbl11[1]
																	local v40 = guid()
																	local position = v38.Position
																	tbl12[1] = v39
																	tbl12[2] = v40
																	tbl12[3] = position

																	if v37.fireEvent == "flameHit" or v37.fireEvent == "acidHit" or v37.fireEvent == "rocketHit" then
																		if v37.extraArgs and v37.extraArgs.repeatCount then
																			for i = 1, v37.extraArgs.repeatCount do
																				Signal.FireServer(v37.fireEvent, unpack(tbl12))
																			end
																		else
																			Signal.FireServer(v37.fireEvent, unpack(tbl12))
																		end
																	end

																	local tbl13 = {
																		tbl11[1],
																		"player",
																		{
																			hitPart = v38,
																			hitPlayerId = player.UserId,
																			hitSize = v38.Size,
																			pos = v38.Position,
																		},
																	}

																	if v37.fireEvent == "pepperSprayHit" then
																		Signal.FireServer(v37.fireEvent, unpack(tbl13))
																	else
																		Signal.FireServer("projectileHit", unpack(tbl13))
																	end

																	Signal.InvokeServer("attemptPurchaseAmmo", v36.name)
																	Signal.FireServer("reload", guid2)
																end
															end
														end

														continue
													end

													break
												end

												task.wait(0.1)
											end
										end
									end
								end
							end)
						end
					end,
				})
			end

			do
				local v27 = v26:Tab({ Title = tbl5.Visual, Icon = "eye" })

				v27:Toggle({
					Title = tbl5.Chams,
					Callback = function(arg)
						flag19 = arg
					end,
				})

				v27:Slider({
					Title = tbl5.CameraFOV,
					Step = 1,
					Value = { Min = 1, Max = 140, Default = 70 },
					Callback = function(arg)
						fieldOfView = arg
					end,
				})

				v27:Dropdown({
					Title = tbl5.SkyTheme,
					Values = { tbl5.SkyDefault, tbl5.SkySunset, tbl5.SkyNebula },
					Callback = function(arg)
						fn25(arg)
					end,
				})

				local tbl6 = {
					AV_LocalPlayer = localPlayer2,
					AV_RunService = RunService,
					AV_Camera = currentCamera,
					AV_AuraEnabled = false,
					AV_AuraColor = Color3.fromRGB(129, 47, 47),
					AV_HatEnabled = false,
					AV_HatSettings = {
						hatColor = Color3.fromRGB(27, 36, 121),
						lightColor = Color3.fromRGB(199, 161, 161),
						lightBrightness = 0,
						lightRange = 12,
						scale = Vector3.new(1.7, 1.1, 1.7),
					},
					AV_CharacterChamsEnabled = false,
					AV_CharacterChamsColor = Color3.fromRGB(255, 255, 255),
					AV_CharacterChamsMaterial = Enum.Material.ForceField,
					AV_TailRingEnabled = false,
					AV_TailRingColor = Color3.fromRGB(255, 70, 70),
					AV_TailRingAttachment = nil,
					AV_TailRingEmitter = nil,
					AV_TailRingEmitterInner = nil,
					AV_TailRingSpinConnection = nil,
					AV_TailRingPart = nil,
					AV_TailRingPartInner = nil,
					AV_TailRingPartGhost = nil,
					AV_TailCore = nil,
					AV_TailGodBillboard = nil,
					AV_TailOrbitA = nil,
					AV_TailOrbitB = nil,
					AV_TailGodParts = {},
					AV_TailGodTrailParts = {},
				}

				AV_AttachAuraSafe = function(parent)
					if parent then
						parent = parent:FindFirstChild("UpperTorso") or parent:FindFirstChild("Torso")
					end

					if not parent then
						return
					end

					for _, child in ipairs(parent:GetChildren()) do
						if child.Name == "AuraSafe" then
							child:Destroy()
						end
					end

					local folder = Instance.new("Folder")
					folder.Name = "AuraSafe"
					folder.Parent = parent
					local pointLight = Instance.new("PointLight")
					pointLight.Range = 5
					pointLight.Brightness = 3
					pointLight.Color = tbl6.AV_AuraColor
					pointLight.Enabled = true
					pointLight.Shadows = false
					pointLight.Parent = folder
					local attachment = Instance.new("Attachment")
					attachment.Name = "Glow"
					attachment.CFrame = CFrame.new(0, 0, 0)
					attachment.Parent = folder
					local particleEmitter = Instance.new("ParticleEmitter")
					particleEmitter.Acceleration = Vector3.zero
					particleEmitter.Brightness = 1
					particleEmitter.Color = ColorSequence.new(tbl6.AV_AuraColor)
					particleEmitter.Drag = 0
					particleEmitter.EmissionDirection = Enum.NormalId.Back
					particleEmitter.Enabled = true
					particleEmitter.FlipbookFramerate = NumberRange.new(1, 1)
					particleEmitter.FlipbookLayout = Enum.ParticleFlipbookLayout.None
					particleEmitter.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
					particleEmitter.Lifetime = NumberRange.new(1, 1)
					particleEmitter.LightEmission = 1
					particleEmitter.LightInfluence = 1
					particleEmitter.LockedToPart = true
					particleEmitter.Orientation = Enum.ParticleOrientation.FacingCamera
					particleEmitter.Rate = 4
					particleEmitter.RotSpeed = NumberRange.new(0, 0)
					particleEmitter.Rotation = NumberRange.new(0, 0)
					particleEmitter.Shape = Enum.ParticleEmitterShape.Box
					particleEmitter.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
					particleEmitter.ShapePartial = 1
					particleEmitter.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
					local numberSequence = NumberSequence.new
					local tbl7 = {}
					local v28 = NumberSequenceKeypoint.new(0, 4.25)
					local v29 = NumberSequenceKeypoint.new(0.5, 0)
					local new = NumberSequenceKeypoint.new
					tbl7[1] = v28
					tbl7[2] = v29

					do
						local values = table.pack(new(1, 3.375))
						table.move(values, 1, values.n, 3, tbl7)
					end

					particleEmitter.Size = numberSequence(tbl7)
					particleEmitter.Speed = NumberRange.new(0.001, 0.001)
					particleEmitter.SpreadAngle = Vector2.new(0, 0)
					particleEmitter.Squash = NumberSequence.new(0, 0)
					particleEmitter.Texture = "rbxassetid://1075864321"
					particleEmitter.TimeScale = 1
					local numberSequence2 = NumberSequence.new
					local tbl8 = {}
					local v30 = NumberSequenceKeypoint.new(0, 1)
					local v31 = NumberSequenceKeypoint.new(0.5, 0)
					local new2 = NumberSequenceKeypoint.new
					tbl8[1] = v30
					tbl8[2] = v31

					do
						local values = table.pack(new2(1, 1))
						table.move(values, 1, values.n, 3, tbl8)
					end

					particleEmitter.Transparency = numberSequence2(tbl8)
					particleEmitter.VelocityInheritance = 0
					particleEmitter.WindAffectsDrag = false
					particleEmitter.ZOffset = -1
					particleEmitter.Parent = attachment
					local attachment2 = Instance.new("Attachment")
					attachment2.Name = "2"
					attachment2.CFrame = CFrame.new(0, 2.125, 0)
					attachment2.Parent = folder
					local attachment3 = Instance.new("Attachment")
					attachment3.Name = "2"
					attachment3.CFrame = CFrame.new(0, -3, 0)
					attachment3.Parent = folder

					local function fn27(texture, width0, textureLength, textureSpeed)
						local beam = Instance.new("Beam")
						beam.Attachment0 = attachment3
						beam.Attachment1 = attachment2
						beam.Brightness = 1
						beam.Color = ColorSequence.new(tbl6.AV_AuraColor)
						beam.CurveSize0 = 0
						beam.CurveSize1 = 0
						beam.Enabled = true
						beam.FaceCamera = true
						beam.LightEmission = 1
						beam.LightInfluence = 1
						beam.Segments = 10
						beam.Texture = texture
						beam.TextureLength = textureLength
						beam.TextureMode = Enum.TextureMode.Stretch
						beam.TextureSpeed = textureSpeed
						local numberSequence3 = NumberSequence.new
						local tbl9 = {}
						local v32 = NumberSequenceKeypoint.new(0, 1)
						local v33 = NumberSequenceKeypoint.new(0.5, 0)
						local new3 = NumberSequenceKeypoint.new
						tbl9[1] = v32
						tbl9[2] = v33

						do
							local values = table.pack(new3(1, 1))
							table.move(values, 1, values.n, 3, tbl9)
						end

						beam.Transparency = numberSequence3(tbl9)
						beam.Width0 = width0
						beam.Width1 = width0
						beam.ZOffset = 1
						beam.Parent = folder
					end

					fn27("rbxassetid://7673945506", 6, 0.3, 2)
					fn27("http://www.roblox.com/asset/?id=6045867277", 5, 0.1, 1)
					fn27("rbxassetid://1849531275", 6, 0.1, 1)
					local attachment4 = Instance.new("Attachment")
					attachment4.Name = "1TopSymbol"
					attachment4.CFrame = CFrame.new(0, 5.75001049, 1) * CFrame.fromMatrix(Vector3.zero, Vector3.new(0, 0, -1), Vector3.new(-1, 0, 0), Vector3.new(0, 1, 0))
					attachment4.Parent = folder
					local attachment5 = Instance.new("Attachment")
					attachment5.Name = "1BottomSymbol"
					attachment5.CFrame = CFrame.new(0, -1.24998808, 1) * CFrame.fromMatrix(Vector3.zero, Vector3.new(0, 0, -1), Vector3.new(-1, 0, 0), Vector3.new(0, 1, 0))
					attachment5.Parent = folder
					local beam = Instance.new("Beam")
					beam.Attachment0 = attachment4
					beam.Attachment1 = attachment5
					beam.Brightness = 1
					beam.Color = ColorSequence.new(tbl6.AV_AuraColor)
					beam.CurveSize0 = 0.5
					beam.CurveSize1 = 0.5
					beam.Enabled = true
					beam.FaceCamera = false
					beam.LightEmission = 1
					beam.LightInfluence = 1
					beam.Segments = 100
					beam.Texture = "rbxassetid://8285797183"
					beam.TextureLength = 1
					beam.TextureMode = Enum.TextureMode.Stretch
					beam.TextureSpeed = 0
					beam.Transparency = NumberSequence.new(0, 0)
					beam.Width0 = 7
					beam.Width1 = 7
					beam.ZOffset = 0
					beam.Parent = folder
				end

				AV_RemoveAuraSafe = function(arg)
					local upperTorso = arg and (arg:FindFirstChild("UpperTorso") or arg:FindFirstChild("Torso"))
					if not upperTorso then
						return
					end
					local auraSafe = upperTorso:FindFirstChild("AuraSafe")

					if auraSafe then
						auraSafe:Destroy()
					end
				end

				AV_CreateHat = function(parent)
					local head = parent and parent:FindFirstChild("Head")
					if not head then
						return
					end
					local chinaHat = parent:FindFirstChild("ChinaHat")

					if chinaHat then
						chinaHat:Destroy()
					end

					local part2 = Instance.new("Part")
					part2.Name = "ChinaHat"
					part2.Size = Vector3.one
					part2.Material = Enum.Material.Neon
					part2.Transparency = 0.2
					part2.Anchored = false
					part2.CanCollide = false
					part2.Color = tbl6.AV_HatSettings.hatColor
					local specialMesh = Instance.new("SpecialMesh")
					specialMesh.MeshType = Enum.MeshType.FileMesh
					specialMesh.MeshId = "rbxassetid://1033714"
					specialMesh.Scale = tbl6.AV_HatSettings.scale
					specialMesh.Parent = part2
					local weld = Instance.new("Weld")
					weld.Part0 = head
					weld.Part1 = part2
					weld.C0 = CFrame.new(0, 0.9, 0)
					weld.Parent = part2
					local pointLight = Instance.new("PointLight")
					pointLight.Color = tbl6.AV_HatSettings.lightColor
					pointLight.Brightness = tbl6.AV_HatSettings.lightBrightness
					pointLight.Range = tbl6.AV_HatSettings.lightRange
					pointLight.Shadows = true
					pointLight.Parent = part2
					part2.Parent = parent
				end

				AV_ApplyCharacterChams = function(arg)
					if not arg then
						return
					end

					for _, descendant in pairs(arg:GetDescendants()) do
						if descendant:IsA("BasePart") then
							if tbl6.AV_CharacterChamsEnabled then
								descendant.Material = tbl6.AV_CharacterChamsMaterial
								descendant.Color = tbl6.AV_CharacterChamsColor
							end
						end
					end
				end

				AV_RemoveTailRing = function(arg)
					if tbl6.AV_TailRingSpinConnection then
						tbl6.AV_TailRingSpinConnection:Disconnect()
					end

					if arg then
						arg = arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Torso") or arg:FindFirstChild("UpperTorso")
					end

					if arg then
						local atomicTailTrail = arg:FindFirstChild("AtomicTailTrail")

						if atomicTailTrail then
							atomicTailTrail:Destroy()
						end
					end

					tbl6.AV_TailRingAttachment = nil
					tbl6.AV_TailRingEmitter = nil
					tbl6.AV_TailRingEmitterInner = nil

					if tbl6.AV_TailRingPart then
						tbl6.AV_TailRingPart:Destroy()
					end

					if tbl6.AV_TailRingPartInner then
						tbl6.AV_TailRingPartInner:Destroy()
					end

					if tbl6.AV_TailRingPartGhost then
						tbl6.AV_TailRingPartGhost:Destroy()
					end

					if tbl6.AV_TailCore then
						tbl6.AV_TailCore:Destroy()
					end

					if tbl6.AV_TailGodBillboard then
						tbl6.AV_TailGodBillboard:Destroy()
					end

					if tbl6.AV_TailOrbitA then
						tbl6.AV_TailOrbitA:Destroy()
					end

					if tbl6.AV_TailOrbitB then
						tbl6.AV_TailOrbitB:Destroy()
					end

					for _, avTailGodPart in ipairs(tbl6.AV_TailGodParts) do
						if avTailGodPart and avTailGodPart.Parent then
							avTailGodPart:Destroy()
						end
					end

					tbl6.AV_TailGodParts = {}

					for _, avTailGodTrailPart in ipairs(tbl6.AV_TailGodTrailParts) do
						if avTailGodTrailPart and avTailGodTrailPart.Parent then
							avTailGodTrailPart:Destroy()
						end
					end

					tbl6.AV_TailGodTrailParts = {}
				end

				AV_CreateTailRing = function(arg)
					local humanoidRootPart = arg and (arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Torso") or arg:FindFirstChild("UpperTorso"))
					if not humanoidRootPart then
						return
					end
					AV_RemoveTailRing(arg)
					local folder = Instance.new("Folder")
					folder.Name = "AtomicTailTrail"
					folder.Parent = humanoidRootPart
					local attachment = Instance.new("Attachment")
					attachment.Name = "TrailLeft"
					attachment.Position = Vector3.new(-0.7, -1.25, 1.05)
					attachment.Parent = humanoidRootPart
					local attachment2 = Instance.new("Attachment")
					attachment2.Name = "TrailRight"
					attachment2.Position = Vector3.new(0.7, -1.25, 1.05)
					attachment2.Parent = humanoidRootPart
					local trail = Instance.new("Trail")
					trail.Name = "GodTrailOuter"
					trail.Attachment0 = attachment
					trail.Attachment1 = attachment2
					trail.Enabled = true
					trail.Lifetime = 0.85
					trail.MinLength = 0.02
					trail.LightEmission = 0.18
					trail.LightInfluence = 0
					trail.FaceCamera = true
					local numberSequence = NumberSequence.new
					local tbl7 = {}
					local v28 = NumberSequenceKeypoint.new(0, 0.45)
					local v29 = NumberSequenceKeypoint.new(0.4, 0.62)
					local new = NumberSequenceKeypoint.new
					tbl7[1] = v28
					tbl7[2] = v29

					do
						local values = table.pack(new(1, 1))
						table.move(values, 1, values.n, 3, tbl7)
					end

					trail.Transparency = numberSequence(tbl7)
					local colorSequence = ColorSequence.new
					local tbl8 = {}
					local v30 = ColorSequenceKeypoint.new(0, Color3.fromRGB(72, 36, 36))
					local v31 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 62, 62))
					local new2 = ColorSequenceKeypoint.new
					local color3 = Color3.fromRGB
					tbl8[1] = v30
					tbl8[2] = v31

					do
						local values = table.pack(new2(1, color3(150, 90, 90)))
						table.move(values, 1, values.n, 3, tbl8)
					end

					trail.Color = colorSequence(tbl8)
					local numberSequence2 = NumberSequence.new
					local tbl9 = {}
					local v32 = NumberSequenceKeypoint.new(0, 0.95)
					local v33 = NumberSequenceKeypoint.new(0.4, 0.7)
					local new3 = NumberSequenceKeypoint.new
					tbl9[1] = v32
					tbl9[2] = v33

					do
						local values = table.pack(new3(1, 0))
						table.move(values, 1, values.n, 3, tbl9)
					end

					trail.WidthScale = numberSequence2(tbl9)
					trail.Parent = folder
					local trail2 = Instance.new("Trail")
					trail2.Name = "GodTrailInner"
					trail2.Attachment0 = attachment
					trail2.Attachment1 = attachment2
					trail2.Enabled = true
					trail2.Lifetime = 0.55
					trail2.MinLength = 0.01
					trail2.LightEmission = 0.08
					trail2.LightInfluence = 0
					trail2.FaceCamera = true
					local numberSequence3 = NumberSequence.new
					local tbl10 = {}
					local v34 = NumberSequenceKeypoint.new(0, 0.6)
					local v35 = NumberSequenceKeypoint.new(0.3, 0.72)
					local new4 = NumberSequenceKeypoint.new
					tbl10[1] = v34
					tbl10[2] = v35

					do
						local values = table.pack(new4(1, 1))
						table.move(values, 1, values.n, 3, tbl10)
					end

					trail2.Transparency = numberSequence3(tbl10)
					local new5 = ColorSequenceKeypoint.new
					local color4 = Color3.fromRGB
					trail2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(170, 125, 125)), new5(1, color4(120, 80, 80)) })
					local numberSequence4 = NumberSequence.new
					local tbl11 = {}
					local v36 = NumberSequenceKeypoint.new(0, 0.3)
					local v37 = NumberSequenceKeypoint.new(0.5, 0.16)
					local new6 = NumberSequenceKeypoint.new
					tbl11[1] = v36
					tbl11[2] = v37

					do
						local values = table.pack(new6(1, 0))
						table.move(values, 1, values.n, 3, tbl11)
					end

					trail2.WidthScale = numberSequence4(tbl11)
					trail2.Parent = folder
					tbl6.AV_TailRingAttachment = folder
				end

				v27:Toggle({
					Title = tbl5.Aura,
					Value = false,
					Callback = function(avAuraEnabled)
						tbl6.AV_AuraEnabled = avAuraEnabled

						if avAuraEnabled then
							AV_AttachAuraSafe(tbl6.AV_LocalPlayer.Character)
						else
							AV_RemoveAuraSafe(tbl6.AV_LocalPlayer.Character)
						end
					end,
				})

				v27:Toggle({
					Title = tbl5.Hat,
					Value = false,
					Callback = function(avHatEnabled)
						tbl6.AV_HatEnabled = avHatEnabled

						if avHatEnabled then
							AV_CreateHat(tbl6.AV_LocalPlayer.Character)
						elseif tbl6.AV_LocalPlayer.Character then
							local chinaHat = tbl6.AV_LocalPlayer.Character:FindFirstChild("ChinaHat")

							if chinaHat then
								chinaHat:Destroy()
							end
						end
					end,
				})

				v27:Toggle({
					Title = tbl5.Ghost,
					Value = false,
					Callback = function(avCharacterChamsEnabled)
						tbl6.AV_CharacterChamsEnabled = avCharacterChamsEnabled
						AV_ApplyCharacterChams(tbl6.AV_LocalPlayer.Character)
					end,
				})

				v27:Toggle({
					Title = tbl5.TailRing,
					Value = false,
					Callback = function(avTailRingEnabled)
						tbl6.AV_TailRingEnabled = avTailRingEnabled

						if avTailRingEnabled then
							local character = tbl6.AV_LocalPlayer.Character or tbl6.AV_LocalPlayer.CharacterAdded:Wait()
							task.wait(0.1)
							AV_CreateTailRing(character)
						else
							local character = tbl6.AV_LocalPlayer.Character

							if character then
								AV_RemoveTailRing(character)
							end
						end
					end,
				})

				tbl6.AV_LocalPlayer.CharacterAdded:Connect(function(character)
					task.wait(0.5)

					if tbl6.AV_AuraEnabled then
						AV_AttachAuraSafe(character)
					end

					if tbl6.AV_HatEnabled then
						AV_CreateHat(character)
					end

					if tbl6.AV_CharacterChamsEnabled then
						AV_ApplyCharacterChams(character)
					end

					if tbl6.AV_TailRingEnabled then
						AV_CreateTailRing(character)
					end
				end)
			end

			do
				local v27 = v26:Tab({ Title = tbl5.Kill, Icon = "skull" })

				v27:Toggle({
					Title = tbl5.Grab,
					Value = false,
					Callback = function(arg)
						flag11 = arg

						if arg then
							task.spawn(fn23)
						end
					end,
				})

				v27:Toggle({
					Title = tbl5.Stomp,
					Value = false,
					Callback = function(arg)
						flag12 = arg

						if arg then
							task.spawn(fn24)
						end
					end,
				})

				local str10 = "meleepunch"

				v27:Dropdown({
					Title = tbl5.PunchType,
					Values = { tbl5.NormalPunch, tbl5.SuperPunch },
					Value = tbl5.NormalPunch,
					Callback = function(arg)
						str10 = arg == tbl5.NormalPunch and "meleepunch" or "meleemegapunch"
					end,
				})

				v27:Toggle({
					Title = tbl5.AutoEquipFists,
					Value = false,
					Callback = function(arg)
						if arg then
							task.spawn(function()
								while arg do
									local v28 = pairs
									local items = require(ReplicatedStorage.devv).load("v3item").inventory.items or {}

									for _, item in v28(items) do
										if item.name == "Fists" then
											Signal.FireServer("equip", item.guid)
											break
										end
									end

									task.wait(0.5)
								end
							end)
						end
					end,
				})

				local flag22 = false

				local function fn27()
					while flag22 do
						local character = localPlayer2.Character

						if character and character:FindFirstChild("HumanoidRootPart") then
							local v28 = pairs
							local items = require(ReplicatedStorage.devv).load("v3item").inventory.items or {}
							local guid2 = nil

							for _, item in v28(items) do
								if item.name == "Fists" then
									guid2 = item.guid
									break
								else
									guid2 = nil
								end
							end

							if guid2 then
								local position = character.HumanoidRootPart.Position
								local tbl6 = {}

								for _, player in ipairs(Players:GetPlayers()) do
									if player ~= localPlayer2 and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
										if (position - player.Character.HumanoidRootPart.Position).Magnitude <= 20 and not fn26(player) then
											table.insert(tbl6, { player = player, health = player.Character.Humanoid.Health })
										end
									end
								end

								table.sort(tbl6, function(arg, arg2)
									return arg.health > arg2.health
								end)

								for _, v29 in ipairs(tbl6) do
									if v29.health > 25 then
										Signal.FireServer("equip", guid2)
										Signal.FireServer("attackMeleeHit", "player", { meleeType = str10, hitPlayerId = v29.player.UserId, weaponGUID = guid2 })
										task.wait(0.05)
									end
								end
							end
						end

						task.wait(0.2)
					end
				end

				v27:Toggle({
					Title = tbl5.PunchAura,
					Value = false,
					Callback = function(arg)
						flag22 = arg

						if arg then
							task.spawn(fn27)
						end
					end,
				})

				local flag23 = false
				local flag24 = false
				local n29 = 0
				local n30 = 0
				local n31 = 5
				local v28 = nil
				local str11 = ""

				v27:Toggle({
					Title = tbl5.Blink,
					Value = false,
					Callback = function(arg)
						flag23 = arg
					end,
				})

				v27:Toggle({
					Title = tbl5.TPPlayer,
					Value = false,
					Callback = function(arg)
						flag24 = arg
					end,
				})

				v27:Slider({
					Title = tbl5.OffsetX,
					Step = 1,
					Value = { Min = -20, Max = 20, Default = 0 },
					Callback = function(arg)
						n29 = arg
					end,
				})

				v27:Slider({
					Title = tbl5.OffsetY,
					Step = 1,
					Value = { Min = -20, Max = 20, Default = 0 },
					Callback = function(arg)
						n30 = arg
					end,
				})

				v27:Slider({
					Title = tbl5.OffsetZ,
					Step = 1,
					Value = { Min = -20, Max = 20, Default = 5 },
					Callback = function(arg)
						n31 = arg
					end,
				})

				local v29 = nil

				local function fn28()
					local tbl6 = { "ALL" }

					for _, player in pairs(Players:GetPlayers()) do
						if player ~= localPlayer2 then
							table.insert(tbl6, player.Name)
						end
					end

					if v29 then
						v29:Refresh(tbl6, true)
					end
				end

				v29 = v27:Dropdown({
					Title = tbl5.SelectTarget,
					Values = { "ALL" },
					Value = { "ALL" },
					Multi = true,
					AllowNone = false,
					Callback = function(arg)
						str11 = arg

						if arg and arg[1] == "ALL" then
							v28 = nil
						else
							v28 = Players:FindFirstChild(arg[1])
						end
					end,
				})

				fn28()
				Players.PlayerAdded:Connect(fn28)
				Players.PlayerRemoving:Connect(fn28)
				local flag25 = false
				local v30 = nil
				local connection = nil

				local function fn29(arg)
					if not arg or not arg.Character then
						return
					end
					local character = localPlayer2.Character
					if not character then
						return
					end
					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart then
						return
					end
					local humanoidRootPart2 = arg.Character:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart2 then
						return
					end
					humanoidRootPart.CFrame = humanoidRootPart2.CFrame * CFrame.new(0, 2, 0)
					task.wait(0.1)
					local v31 = pairs
					local items = require(ReplicatedStorage.devv).load("v3item").inventory.items or {}
					local guid2 = nil

					for _, item in v31(items) do
						if item.name == "Fists" then
							guid2 = item.guid
							break
						else
							guid2 = nil
						end
					end

					if guid2 then
						Signal.FireServer("equip", guid2)
						Signal.FireServer("attackMeleeHit", "player", { meleeType = "meleemegapunch", hitPlayerId = arg.UserId, weaponGUID = guid2 })
					end
				end

				local function fn30()
					if not flag25 then
						return
					end
					local character = localPlayer2.Character
					if not character then
						return
					end

					if not character:FindFirstChildOfClass("Humanoid") then
						return
					end
					local huge = math.huge
					local v31 = nil

					for _, player in pairs(Players:GetPlayers()) do
						if player ~= localPlayer2 and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
							local magnitude = (character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude

							if magnitude < huge then
								huge = magnitude
								v31 = player
							end
						end
					end

					if v31 and huge < 100 and not fn26(v31) then
						v30 = v31

						if connection then
							connection:Disconnect()
						end

						local now2 = tick()

						connection = RunService.Heartbeat:Connect(function()
							if tick() - now2 > 10 or not flag25 then
								connection:Disconnect()
								connection = nil
								v30 = nil
								return
							end

							if v30 and v30.Character then
								fn29(v30)
							end
						end)
					end
				end

				localPlayer2.CharacterAdded:Connect(function(character)
					character:WaitForChild("Humanoid").HealthChanged:Connect(fn30)
				end)

				if localPlayer2.Character and localPlayer2.Character:FindFirstChild("Humanoid") then
					localPlayer2.Character.Humanoid.HealthChanged:Connect(fn30)
				end

				v27:Toggle({
					Title = tbl5.CounterAttack,
					Value = false,
					Callback = function(arg)
						flag25 = arg

						if not arg then
							if connection then
								connection:Disconnect()
								connection = nil
							end

							v30 = nil
						end
					end,
				})

				local tbl6 = {}
				local tbl7 = {}
				local flag26 = false

				v27:Toggle({
					Title = tbl5.AttackBlacklist,
					Value = false,
					Callback = function(arg)
						flag26 = arg

						if arg then
							task.spawn(function()
								while flag26 do
									for _, v31 in pairs(tbl7) do
										local v32 = Players:FindFirstChild(v31)

										if v32 and v32.Character and v32.Character:FindFirstChild("Humanoid") and v32.Character.Humanoid.Health > 0 then
											fn29(v32)
											task.wait(0.3)
										end
									end

									task.wait(0.5)
								end
							end)
						end
					end,
				})

				local v31 = v26:Tab({ Title = tbl5.PlayerList, Icon = "users" })
				local v32 = nil
				local v33 = nil

				local function fn31()
					local tbl8 = { "ALL" }

					for _, player in pairs(Players:GetPlayers()) do
						if player ~= localPlayer2 then
							table.insert(tbl8, player.Name)
						end
					end

					if v32 then
						v32:Refresh(tbl8, true)
					end

					if v33 then
						v33:Refresh(tbl8, true)
					end
				end

				v32 = v31:Dropdown({
					Title = tbl5.PlayerList,
					Values = { "ALL" },
					Value = { "ALL" },
					Multi = true,
					AllowNone = false,
					Callback = function()
					end,
				})

				fn31()
				Players.PlayerAdded:Connect(fn31)
				Players.PlayerRemoving:Connect(fn31)
				local str12 = ""

				v33 = v31:Dropdown({
					Title = "选择玩家",
					Values = { "ALL" },
					Value = "",
					Callback = function(arg)
						str12 = arg
					end,
				})

				fn31()
				Players.PlayerAdded:Connect(fn31)
				Players.PlayerRemoving:Connect(fn31)

				v31:Button({
					Title = tbl5.AddWhitelist,
					Callback = function()
						if str12 and str12 ~= "" and str12 ~= "ALL" then
							if not table.find(tbl6, str12) then
								table.insert(tbl6, str12)
							end

							for i, v34 in ipairs(tbl7) do
								if v34 == str12 then
									table.remove(tbl7, i)
									break
								end
							end

							lib:Notify({ Title = "Shell.lua", Content = "Added " .. str12 .. " to Whitelist", Duration = 2 })
						end
					end,
				})

				v31:Button({
					Title = tbl5.AddBlacklist,
					Callback = function()
						if str12 and str12 ~= "" and str12 ~= "ALL" then
							if not table.find(tbl7, str12) then
								table.insert(tbl7, str12)
							end

							for i, v34 in ipairs(tbl6) do
								if v34 == str12 then
									table.remove(tbl6, i)
									break
								end
							end

							lib:Notify({ Title = "Shell.lua", Content = "Added " .. str12 .. " to Blacklist", Duration = 2 })
						end
					end,
				})

				v31:Paragraph({ Title = "白名单", Desc = table.concat(tbl6, ", ") })
				v31:Paragraph({ Title = "黑名单", Desc = table.concat(tbl7, ", ") })

				v31:Button({
					Title = "刷新列表",
					Callback = function()
						fn31()
					end,
				})
			end

			do
				local v27 = v26:Tab({ Title = tbl5.Protection, Icon = "shield" })
				local flag22 = false
				local str10 = "Light Vest"
				local cframe = CFrame.new(660.421753, 3.41803741, -684.527832, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)

				v27:Toggle({
					Title = tbl5.Armor,
					Value = false,
					Callback = function(arg)
						flag22 = arg
						if not arg then
							return
						end

						task.spawn(function()
							while flag22 do
								local v28 = Signal
								local items = require(ReplicatedStorage.devv).load("v3item").inventory.items

								local function fn27()
									if not flag22 then
										return
									end
									local v29 = nil

									for _, v30 in items, nil, nil do
										if v30.name == str10 then
											v29 = v30
											break
										else
											v29 = nil
										end
									end

									if not v29 then
										local humanoidRootPart = localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart")

										if humanoidRootPart then
											local cFrame = humanoidRootPart.CFrame
											local magnitude = (humanoidRootPart.Position - cframe.Position).Magnitude

											if magnitude > 8 then
												humanoidRootPart.CFrame = cframe
												task.wait(0.04)
											end

											v28.InvokeServer("attemptPurchase", "Light Vest")
											task.wait(0.05)

											if magnitude > 8 then
												humanoidRootPart.CFrame = cFrame
											end
										end
									end

									for _, v30 in items, nil, nil do
										if v30.name == str10 then
											if (localPlayer2:GetAttribute("armor") or 0) <= 0 then
												v28.FireServer("equip", v30.guid)
												v28.FireServer("useConsumable", v30.guid)
												v28.FireServer("removeItem", v30.guid)
											end

											break
										end
									end
								end

								fn27()
								task.wait(0.01)
							end
						end)
					end,
				})

				local connection = nil
				local n29 = 50

				v27:Slider({
					Title = tbl5.HealThreshold,
					Value = { Min = 1, Max = 99, Default = 50 },
					Callback = function(arg)
						n29 = arg
					end,
				})

				v27:Toggle({
					Title = tbl5.Heal,
					Value = false,
					Callback = function(arg)
						if connection then
							connection:Disconnect()
						end

						if arg then
							local cframe2 = CFrame.new(1193.40015, 41.3713951, -748.65741, 0, 0, 1, 0, 1, 0, -1, 0, 0)

							connection = RunService.Heartbeat:Connect(function()
								task.wait(0.2)
								local character = localPlayer2.Character
								local humanoid = character and character:FindFirstChildOfClass("Humanoid")
								if not humanoid or humanoid.Health > n29 then
									return
								end
								local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
								if not humanoidRootPart then
									return
								end
								local magnitude = (humanoidRootPart.Position - cframe2.Position).Magnitude
								local cFrame = humanoidRootPart.CFrame

								if magnitude > 8 then
									humanoidRootPart.CFrame = cframe2
									task.wait(0.04)
								end

								Signal.InvokeServer("attemptPurchase", "Bandage")
								task.wait(0.05)

								if magnitude > 8 then
									humanoidRootPart.CFrame = cFrame
								end

								for _, v28 in next, require(ReplicatedStorage.devv).load("v3item").inventory.items, nil do
									if v28.name == "Bandage" then
										if humanoid.Health < humanoid.MaxHealth then
											Signal.FireServer("equip", v28.guid)
											Signal.FireServer("useConsumable", v28.guid)
											Signal.FireServer("removeItem", v28.guid)
										end

										break
									end
								end
							end)
						end
					end,
				})

				local str11 = "Surgeon Mask"

				local tbl6 = {
					["Surgeon Mask"] = CFrame.new(1160.00659, 4.65769672, -975.317871, 0, 0, -1, 0, 1, 0, 1, 0, 0),
					["Hockey Mask"] = CFrame.new(1438.61926, 6.60790443, -145.005386, 1, 0, 0, 0, 1, 0, 0, 0, 1),
					["Blue Bandana"] = CFrame.new(602.502808, 6.69542122, -1018.14532, 0, 0, -1, 0, 1, 0, 1, 0, 0),
					["Black Bandana"] = CFrame.new(602.502808, 6.69542122, -1018.14532, 0, 0, -1, 0, 1, 0, 1, 0, 0),
					["Red Bandana"] = CFrame.new(602.502808, 6.69542122, -1018.14532, 0, 0, -1, 0, 1, 0, 1, 0, 0),
				}

				local flag23 = false
				local flag24 = false

				v27:Dropdown({
					Title = tbl5.MaskType,
					Values = { "口罩", "杰森面具", "蓝色头巾", "黑色头巾", "红色头巾" },
					Value = "口罩",
					Callback = function(arg)
						if arg == "口罩" then
							str11 = "Surgeon Mask"
						elseif arg == "杰森面具" then
							str11 = "Hockey Mask"
						elseif arg == "蓝色头巾" then
							str11 = "Blue Bandana"
						elseif arg == "黑色头巾" then
							str11 = "Black Bandana"
						elseif arg == "红色头巾" then
							str11 = "Red Bandana"
						end

						flag24 = false
					end,
				})

				v27:Toggle({
					Title = tbl5.Mask,
					Value = false,
					Callback = function(arg)
						flag23 = arg
						if not arg then
							flag24 = false
							return
						end

						task.spawn(function()
							while flag23 do
								local v28 = Signal
								local items = require(ReplicatedStorage.devv).load("v3item").inventory.items
								local v29 = tbl6[str11]

								local function fn27()
									if not flag23 or flag24 then
										return
									end
									local v30 = nil

									for _, v31 in items, nil, nil do
										if v31.name == str11 then
											v30 = v31
											break
										else
											v30 = nil
										end
									end

									if not v30 then
										local humanoidRootPart = localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart")

										if humanoidRootPart and v29 then
											humanoidRootPart.CFrame = v29
											task.wait(0.4)
										end

										v28.InvokeServer("attemptPurchase", str11)
										task.wait(0.5)

										for _, v31 in items, nil, nil do
											if v31.name == str11 then
												v30 = v31
												break
											end
										end
									end

									if v30 then
										v28.FireServer("equip", v30.guid)
										v28.FireServer("wearMask", v30.guid)
										flag24 = true
									end
								end

								if localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart") then
									fn27()
								end

								task.wait(1)
							end
						end)
					end,
				})

				local n30 = 30
				local connection2 = nil

				v27:Slider({
					Title = tbl5.EscapeHP,
					Value = { Min = 1, Max = 99, Default = 30 },
					Callback = function(arg)
						n30 = arg
					end,
				})

				v27:Toggle({
					Title = tbl5.Escape,
					Value = false,
					Callback = function(autoEscape)
						getgenv().AutoEscape = autoEscape

						if connection2 then
							connection2:Disconnect()
						end

						if autoEscape then
							connection2 = RunService.Heartbeat:Connect(function()
								task.wait(0.2)
								local character = localPlayer2.Character
								if not character then
									return
								end
								local humanoid = character:FindFirstChildOfClass("Humanoid")
								if not humanoid then
									return
								end

								if humanoid.Health <= n30 then
									character:PivotTo(CFrame.new(1219, 77, -1045))
								end
							end)
						end
					end,
				})

				v27:Toggle({
					Title = tbl5.AntiVoid,
					Value = false,
					Callback = function(arg)
						task.spawn(function()
							while arg and task.wait(0.1) do
								local character = localPlayer2.Character

								if character and character:FindFirstChild("HumanoidRootPart") then
									if character.HumanoidRootPart.Position.Y < -200 then
										character.HumanoidRootPart.CFrame = CFrame.new(1339.9090576171875, 6.044891357421875, -660.32647705078125)
									end
								end
							end
						end)
					end,
				})

				v27:Toggle({
					Title = tbl5.AntiFreeze,
					Value = false,
					Callback = function(arg)
						task.spawn(function()
							while arg and task.wait(0.1) do
								local character = localPlayer2.Character

								if character and character:FindFirstChild("Humanoid") then
									local humanoid = character.Humanoid
									local frozen = Enum.HumanoidStateType.Frozen

									if humanoid:GetState() == frozen then
										humanoid:ChangeState(Enum.HumanoidStateType.Running)
									end
								end
							end
						end)
					end,
				})

				local flag25 = false

				v27:Toggle({
					Title = tbl5.AntiKnock,
					Value = false,
					Callback = function(arg)
						flag25 = arg

						if arg then
							task.spawn(function()
								local ClientReplicator = require(ReplicatedStorage.devv).load("ClientReplicator")

								while flag25 do
									if localPlayer2.Character and localPlayer2.Character:FindFirstChild("Humanoid") then
										ClientReplicator.Set(localPlayer2, "knocked", false)
										ClientReplicator.Replicate("knocked")
									end

									wait()
								end
							end)
						end
					end,
				})

				v27:Toggle({
					Title = tbl5.AntiSit,
					Value = false,
					Callback = function(arg)
						task.spawn(function()
							while arg and task.wait(0.1) do
								local character = localPlayer2.Character

								if character and character:FindFirstChild("Humanoid") then
									local humanoid = character.Humanoid
									local seated = Enum.HumanoidStateType.Seated

									if humanoid:GetState() == seated then
										humanoid.Sit = false
										humanoid:ChangeState(Enum.HumanoidStateType.Running)
									end
								end
							end
						end)
					end,
				})

				local flag26 = false

				v27:Toggle({
					Title = tbl5.AntiGrab,
					Value = false,
					Callback = function(arg)
						flag26 = arg

						if arg then
							task.spawn(function()
								local ClientReplicator = require(ReplicatedStorage.devv).load("ClientReplicator")

								while flag26 do
									if ClientReplicator.Get(localPlayer2, "carried") == true then
										ClientReplicator.Set(localPlayer2, "carried", false)
									end

									task.wait(0.1)
								end
							end)
						end
					end,
				})

				local flag27 = false

				v27:Toggle({
					Title = tbl5.SilentBlock,
					Value = false,
					Callback = function(arg)
						flag27 = arg

						if arg then
							task.spawn(function()
								local ClientReplicator = require(ReplicatedStorage.devv).load("ClientReplicator")

								while flag27 do
									if ClientReplicator.Get(localPlayer2, "blocking") == false then
										ClientReplicator.Set(localPlayer2, "blocking", true)
										ClientReplicator.Replicate("blocking")
									end

									task.wait(0.1)
								end
							end)
						end
					end,
				})

				local tbl7 = {
					"LightKorzo",
					"Kehcdc1",
					"kumamlkan1",
					"Realsigmadeeepseek",
					"Ping4HelP",
					"RedRubyyy611",
					"Recall612",
					"Davydevv",
				}

				local connection3 = nil

				local function fn27()
					for _, player in ipairs(Players:GetPlayers()) do
						for _, v28 in ipairs(tbl7) do
							if player.Name == v28 then
								pcall(function()
									if localPlayer2 and localPlayer2.Kick then
										localPlayer2:Kick("检测到管理员: " .. v28)
									end
								end)

								return
							end
						end
					end
				end

				v27:Toggle({
					Title = tbl5.AntiAdmin,
					Value = false,
					Callback = function(arg)
						if connection3 then
							connection3:Disconnect()
						end

						if arg then
							connection3 = RunService.Heartbeat:Connect(fn27)
						end
					end,
				})
			end

			do
				local v27 = v26:Tab({ Title = tbl5.Farming, Icon = "dollar-sign" })
				local flag22 = false

				v27:Toggle({
					Title = tbl5.Airdrop,
					Value = false,
					Callback = function(arg)
						flag22 = arg

						if arg then
							task.spawn(function()
								while flag22 do
									local flag23 = false
									local exitTo = nil

									for _, child in pairs(Workspace.Game.Airdrops:GetChildren()) do
										flag23 = false

										if flag22 then
											if child:FindFirstChild("Airdrop") and child.Airdrop:FindFirstChild("ProximityPrompt") then
												exitTo = 1
												break
											else
												flag23 = false
												continue
											end
										end

										break
									end

									if exitTo == 1 then
										local proximityPrompt = u4.Airdrop.ProximityPrompt
										proximityPrompt.RequiresLineOfSight = false
										proximityPrompt.HoldDuration = 0
										localPlayer2.Character.HumanoidRootPart.CFrame = CFrame.new(u4.Airdrop.Position)
										task.wait(0.1)

										for i = 1, 10 do
											fireproximityprompt(proximityPrompt)
											task.wait(0.02)
										end

										flag23 = true
									end

									if not flag23 then
										while flag22 do
											local flag24 = false

											for _, child in pairs(Workspace.Game.Airdrops:GetChildren()) do
												if child:FindFirstChild("Airdrop") and child.Airdrop:FindFirstChild("ProximityPrompt") then
													flag24 = true
													break
												else
													flag24 = false
												end
											end

											if not flag24 then
												task.wait(1)
												continue
											end
											break
										end
									else
										task.wait(0.5)
									end

									task.wait(0.5)
								end
							end)
						end
					end,
				})

				local tbl6 = { minMoney = 250, autoMoney = false }

				v27:Toggle({
					Title = tbl5.AutoMoney,
					Value = false,
					Callback = function(autoMoney)
						tbl6.autoMoney = autoMoney

						if autoMoney then
							task.spawn(function()
								while tbl6.autoMoney do
									local flag23 = false

									for _, child in pairs(Workspace.Game.Entities.CashBundle:GetChildren()) do
										if tbl6.autoMoney then
											local intValue2 = child:FindFirstChildWhichIsA("IntValue")

											if intValue2 and intValue2.Value >= tbl6.minMoney then
												localPlayer2.Character.HumanoidRootPart.CFrame = CFrame.new(child.Position)
												task.wait(0.1)
												flag23 = true
											end

											continue
										end

										break
									end

									if not flag23 then
										while tbl6.autoMoney do
											local flag24 = false

											for _, child in pairs(Workspace.Game.Entities.CashBundle:GetChildren()) do
												local intValue2 = child:FindFirstChildWhichIsA("IntValue")

												if intValue2 and intValue2.Value >= tbl6.minMoney then
													flag24 = true
													break
												else
													flag24 = false
												end
											end

											if not flag24 then
												task.wait(1)
												continue
											end
											break
										end
									end

									task.wait(0.5)
								end
							end)
						end
					end,
				})

				v27:Slider({
					Title = tbl5.MinMoney,
					Value = { Min = 250, Max = 1000, Default = 250 },
					Callback = function(minMoney)
						tbl6.minMoney = minMoney
					end,
				})

				local flag23 = false
				local thread = nil

				v27:Toggle({
					Title = tbl5.AutoSell,
					Value = false,
					Callback = function(arg)
						flag23 = arg

						if thread then
							task.cancel(thread)
						end

						if arg then
							thread = task.spawn(function()
								while flag23 do
									for _, item in pairs(v3item.inventory.items) do
										if flag23 then
											Signal.FireServer("equip", item.guid)
											Signal.FireServer("sellItem", item.guid)
											task.wait(0.05)
											continue
										end

										break
									end

									task.wait(1)
								end
							end)
						end
					end,
				})

				local flag24 = false

				v27:Toggle({
					Title = tbl5.BulkSell,
					Value = false,
					Callback = function(arg)
						flag24 = arg

						if arg then
							task.spawn(function()
								while flag24 do
									if v3item.inventory.ordered and #v3item.inventory.ordered > 20 then
										for _, v28 in pairs(v3item.inventory.ordered) do
											Signal.FireServer("sellItem", v28)
											task.wait(0.05)
										end
									end

									task.wait(1)
								end
							end)
						end
					end,
				})

				local flag25 = false

				v27:Toggle({
					Title = tbl5.BlackMarket,
					Value = false,
					Callback = function(arg)
						flag25 = arg

						if arg then
							task.spawn(function()
								local tbl7 = {
									"Dark Matter Gem",
									"Void Gem",
									"Diamond Ring",
									"Diamond",
									"Rollie",
									"Watch",
									"Glock 18",
									"AR-15",
									"Amethyst",
									"Topaz",
									"Emerald",
									"Gold Bar",
									"Sapphire",
									"Ruby",
									"Emerald Ring",
									"Topaz Ring",
									"Amethyst Ring",
									"Sapphire Ring",
									"Ruby Ring",
									"AK-47",
									"Glock",
									"Raygun",
									"Gold AK-47",
									"Gold Deagle",
									"AS Val",
									"AUG",
									"Acid Gun",
									"P90",
									"RPK",
									"Sawn Off",
									"Scar L",
									"Saiga 12",
									"Tommy Gun",
									"Double Barrel",
									"Deagle",
									"Dragunov",
									"Flamethrower",
									"M249 SAW",
									"MP7",
									"Minigun",
									"M4A1",
									"Barrett M107",
									"Gravity Gun",
									"Seashell",
									"Blue Seashell",
									"Purple Seashell",
								}

								while flag25 do
									local v28 = v3item.inventory.getEquippedItem()

									if v28 then
										for _, v29 in pairs(tbl7) do
											if v28.name == v29 then
												local dealer = Workspace.BlackMarket.Dealer.Dealer

												if dealer and dealer:FindFirstChild("ProximityPrompt") then
													fireproximityprompt(dealer.ProximityPrompt)
												end

												break
											end
										end
									end

									task.wait(0.5)
								end
							end)
						end
					end,
				})

				local flag26 = false

				v27:Toggle({
					Title = tbl5.LuckyBlock,
					Value = false,
					Callback = function(arg)
						flag26 = arg

						if arg then
							task.spawn(function()
								while flag26 do
									for _, item in pairs(v3item.inventory.items) do
										if flag26 then
											if item.name == "Green Lucky Block" or item.name == "Orange Lucky Block" or item.name == "Purple Lucky Block" then
												Signal.FireServer("equip", item.guid)
												task.wait(0.1)
												Signal.FireServer("useConsumable", item.guid)
												Signal.FireServer("removeItem", item.guid)
												break
											else
												continue
											end
										end

										break
									end

									task.wait(0.5)
								end
							end)
						end
					end,
				})

				local flag27 = false

				v27:Toggle({
					Title = tbl5.MaterialBox,
					Value = false,
					Callback = function(arg)
						flag27 = arg

						if arg then
							task.spawn(function()
								while flag27 do
									for _, item in pairs(v3item.inventory.items) do
										if flag27 then
											if item.name == "Electronics" or item.name == "Weapon Parts" then
												Signal.FireServer("equip", item.guid)
												task.wait(0.1)
												Signal.FireServer("useConsumable", item.guid)
												Signal.FireServer("removeItem", item.guid)
												break
											else
												continue
											end
										end

										break
									end

									task.wait(0.5)
								end
							end)
						end
					end,
				})

				local flag28 = false

				v27:Toggle({
					Title = tbl5.SlotMachine,
					Value = false,
					Callback = function(arg)
						flag28 = arg

						if arg then
							task.spawn(function()
								local proximityPrompt

								while flag28 do
									local cFrame = localPlayer2.Character.HumanoidRootPart.CFrame
									local exitTo = nil

									for _, descendant in pairs(Workspace.ServerFurniture:GetDescendants()) do
										if flag28 then
											if descendant:GetAttribute("furnitureName") == "SlotMachine" then
												proximityPrompt = descendant:FindFirstChild("Attachment", true).ProximityPrompt

												if proximityPrompt then
													exitTo = 1
													break
												else
													continue
												end
											else
												continue
											end
										end

										break
									end

									if exitTo == 1 then
										proximityPrompt.MaxActivationDistance = 40
										localPlayer2.Character.HumanoidRootPart.CFrame = CFrame.new(846.239685, 0.435377538, -919.226746, -0.999359787, 0.0311656408, 0.0175692085, 0.0265386514, 0.975102663, -0.220160127, -0.0239932127, -0.219552919, -0.975305498) * CFrame.new(10, -1.6, -5)

										while flag28 and localPlayer2:GetAttribute("slotSpins") > 0 do
											fireproximityprompt(proximityPrompt)
											task.wait(0.5)
										end
									end

									localPlayer2.Character.HumanoidRootPart.CFrame = cFrame
									task.wait(1)
								end
							end)
						end
					end,
				})

				local flag29 = false

				v27:Toggle({
					Title = tbl5.TruckCash,
					Value = false,
					Callback = function(arg)
						flag29 = arg

						if arg then
							task.spawn(function()
								while flag29 do
									for _, child in pairs(Workspace.Game.Vehicles:GetChildren()) do
										if flag29 then
											if child.Name == "Armored Truck" and child:FindFirstChild("TruckCash") then
												if (localPlayer2.Character.HumanoidRootPart.Position - child.PrimaryPart.Position).magnitude <= 100 then
													localPlayer2.Character.HumanoidRootPart.CFrame = child.PrimaryPart.CFrame
													local truckCash = child:FindFirstChild("TruckCash")

													if truckCash and truckCash:FindFirstChild("Main") then
														local proximityPrompt = truckCash.Main.Attachment.ProximityPrompt

														if proximityPrompt then
															proximityPrompt.RequiresLineOfSight = false
															proximityPrompt.HoldDuration = 0
															fireproximityprompt(proximityPrompt)
														end
													end

													task.wait(0.5)
												end
											end

											continue
										end

										break
									end

									task.wait(1)
								end
							end)
						end
					end,
				})

				local flag30 = false

				v27:Toggle({
					Title = tbl5.CraftRollie,
					Value = false,
					Callback = function(arg)
						flag30 = arg

						if arg then
							task.spawn(function()
								while flag30 do
									Signal.InvokeServer("beginCraft", "RollieCraft")
									task.wait(1)
								end
							end)
						end
					end,
				})

				local flag31 = false

				v27:Toggle({
					Title = tbl5.ClaimRollie,
					Value = false,
					Callback = function(arg)
						flag31 = arg

						if arg then
							task.spawn(function()
								while flag31 do
									Signal.InvokeServer("claimCraft", "RollieCraft")
									task.wait(1)
								end
							end)
						end
					end,
				})

				local flag32 = false

				v27:Toggle({
					Title = tbl5.StoreGems,
					Value = false,
					Callback = function(arg)
						flag32 = arg

						if arg then
							task.spawn(function()
								while flag32 do
									for _, item in pairs(v3item.inventory.items) do
										if flag32 then
											if item.name == "Diamond" or item.name == "Rollie" or item.name == "Dark Matter Gem" or item.name == "Diamond Ring" or item.name == "Void Gem" then
												for _, descendant in pairs(Workspace.HousingPlots:GetDescendants()) do
													if flag32 then
														if descendant:IsA("ProximityPrompt") and (descendant.ActionText == "Add Gem" or descendant.ActionText == "Equip a Gem") then
															local name = descendant.Parent.Parent.Name
															local name2 = descendant.Parent.Name
															Signal.FireServer("equip", item.guid)
															Signal.FireServer("updateGemDisplay", name, name2, item.guid)
															task.wait(0.1)
														end

														continue
													end

													break
												end
											end

											continue
										end

										break
									end

									task.wait(2)
								end
							end)
						end
					end,
				})

				local flag33 = false

				v27:Toggle({
					Title = tbl5.RentHouse,
					Value = false,
					Callback = function(arg)
						flag33 = arg

						if arg then
							task.spawn(function()
								while flag33 do
									for _, child in pairs(Workspace.HousingPlots:GetChildren()) do
										if flag33 then
											if not child:GetAttribute("Owner") then
												Signal.InvokeServer("rentHouse", child)
												break
											else
												continue
											end
										end

										break
									end

									task.wait(2)
								end
							end)
						end
					end,
				})

				local flag34 = false

				v27:Toggle({
					Title = tbl5.ClaimRewards,
					Value = false,
					Callback = function(arg)
						flag34 = arg

						if arg then
							task.spawn(function()
								while flag34 do
									for i = 1, 12 do
										Signal.InvokeServer("claimDailyReward", i)
										task.wait(0.05)
									end

									for i = 1, 3 do
										for i2 = 1, 6 do
											Signal.InvokeServer("claimPlaytimeReward", i, i2)
											task.wait(0.05)
										end
									end

									task.wait(60)
								end
							end)
						end
					end,
				})
			end

			do
				local v27 = v26:Tab({ Title = tbl5.Items, Icon = "package" })

				local tbl6 = {
					autocl = false,
					autobs = false,
					autohk = false,
					automn = false,
					autodj = false,
					autoqq = false,
					autoluck = false,
					autoprecious = false,
					autobluekey = false,
					autovehicle = false,
					autoweapon = false,
				}

				local tbl7 = {
					materials = { "Electronics", "Weapon Parts" },
					gems = {
						"Amethyst",
						"Sapphire",
						"Emerald",
						"Topaz",
						"Ruby",
						"Diamond Ring",
						"Rollie",
						"Gold Bar",
						"Golden Rose",
						"Diamond",
						"Dark Matter Gem",
						"Void Gem",
						"Requirements",
					},
					keycards = { "Military Armory Keycard", "Blue Keycard" },
					printers = { "Money Printer" },
					nukes = { "Suitcase Nuke", "Nuke Launcher", "Easter Basket" },
					balloons = {
						"Bunny Balloon",
						"Ghost Balloon",
						"Clover Balloon",
						"Bat Balloon",
						"Gold Clover Balloon",
						"Black Rose",
						"Heart Balloon",
					},
					candy = { "Blue Candy Cane", "Candy Cane" },
					luckyBlocks = { "Green Lucky Block", "Orange Lucky Block", "Purple Lucky Block" },
					vehicles = { "Car", "Helicopter" },
					weapons = { "RPG", "Scar L", "AS Val", "FN FAL", "P90", "Barrett M107", "AWP", "M249 SAW" },
				}

				local tbl8 = {}

				local function fn27()
					for _, v28 in pairs(tbl8) do
						if v28 then
							v28:Disconnect()
						end
					end

					tbl8 = {}
				end

				local function fn28(arg, arg2)
					if not tbl6[arg] then
						return false
					end
					local character = localPlayer2.Character
					if not character then
						return false
					end
					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart then
						return false
					end
					local flag22 = false

					for _, child in pairs(Workspace.Game.Entities.ItemPickup:GetChildren()) do
						for _, child2 in pairs(child:GetChildren()) do
							if child2:IsA("MeshPart") or child2:IsA("Part") then
								for _, child3 in pairs(child2:GetChildren()) do
									if child3:IsA("ProximityPrompt") then
										local exitTo = nil

										for _, v28 in ipairs(arg2) do
											if child3.ObjectText == v28 then
												exitTo = 1
												break
											end
										end

										if exitTo == 1 then
											humanoidRootPart.CFrame = child2.CFrame * CFrame.new(0, 2, 0)
											child3.RequiresLineOfSight = false
											child3.HoldDuration = 0

											for i = 1, 5 do
												fireproximityprompt(child3)
												task.wait(0.01)
											end

											flag22 = true
										end

										if not flag22 then
											continue
										end
									else
										continue
									end

									break
								end

								if not flag22 then
									continue
								end
							else
								continue
							end

							break
						end

						if not flag22 then
							continue
						end
						break
					end

					return flag22
				end

				local function fn29()
					if not localPlayer2.Character then
						return
					end
					local flag22 = false

					if tbl6.autocl then
						flag22 = fn28("autocl", tbl7.materials)
						flag22 = flag22 or false
					end

					if tbl6.autobs then
						flag22 = fn28("autobs", tbl7.gems) or flag22
					end

					if tbl6.autohk then
						flag22 = fn28("autohk", tbl7.keycards) or flag22
					end

					local automn

					if tbl6.automn then
						automn = fn28("automn", tbl7.printers) or flag22
					else
						automn = flag22
					end

					if tbl6.autodj then
						automn = fn28("autodj", tbl7.nukes) or automn
					end

					if tbl6.autoqq then
						automn = fn28("autoqq", tbl7.balloons) or automn
					end

					if tbl6.autoluck then
						automn = fn28("autoluck", tbl7.luckyBlocks) or automn
					end

					if tbl6.autoprecious then
						automn = fn28("autoprecious", tbl7.gems) or automn
					end

					if tbl6.autobluekey then
						automn = fn28("autobluekey", tbl7.keycards) or automn
					end

					if tbl6.autovehicle then
						automn = fn28("autovehicle", tbl7.vehicles) or automn
					end

					if tbl6.autoweapon then
						automn = fn28("autoweapon", tbl7.weapons) or automn
					end

					return automn
				end

				local function fn30(arg, arg2)
					if arg2 then
						if not tbl8[arg] then
							tbl8[arg] = RunService.Heartbeat:Connect(fn29)
						end
					else
						if tbl8[arg] then
							tbl8[arg]:Disconnect()
							tbl8[arg] = nil
						end

						local flag22 = false

						for _, v28 in pairs(tbl6) do
							if v28 then
								flag22 = true
								break
							end
						end

						if not flag22 then
							fn27()
						end
					end
				end

				v27:Toggle({
					Title = tbl5.CollectMaterials,
					Value = false,
					Callback = function(autocl)
						tbl6.autocl = autocl
						fn30("autocl", autocl)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectGems,
					Value = false,
					Callback = function(autobs)
						tbl6.autobs = autobs
						fn30("autobs", autobs)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectKeycards,
					Value = false,
					Callback = function(autohk)
						tbl6.autohk = autohk
						fn30("autohk", autohk)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectPrinters,
					Value = false,
					Callback = function(automn)
						tbl6.automn = automn
						fn30("automn", automn)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectNukes,
					Value = false,
					Callback = function(autodj)
						tbl6.autodj = autodj
						fn30("autodj", autodj)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectBalloons,
					Value = false,
					Callback = function(autoqq)
						tbl6.autoqq = autoqq
						fn30("autoqq", autoqq)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectCandy,
					Value = false,
					Callback = function(autocc)
						tbl6.autocc = autocc
						tbl6.autoblue = autocc
						fn30("autocc", autocc)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectLucky,
					Value = false,
					Callback = function(autoluck)
						tbl6.autoluck = autoluck
						fn30("autoluck", autoluck)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectPrecious,
					Value = false,
					Callback = function(autoprecious)
						tbl6.autoprecious = autoprecious
						fn30("autoprecious", autoprecious)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectVehicles,
					Value = false,
					Callback = function(autovehicle)
						tbl6.autovehicle = autovehicle
						fn30("autovehicle", autovehicle)
					end,
				})

				v27:Toggle({
					Title = tbl5.CollectWeapons,
					Value = false,
					Callback = function(autoweapon)
						tbl6.autoweapon = autoweapon
						fn30("autoweapon", autoweapon)
					end,
				})
			end

			do
				local v27 = v26:Tab({ Title = tbl5.Cosmetics, Icon = "box" })
				local str10 = "Void"

				v27:Dropdown({
					Title = tbl5.Skin,
					Values = {
						"烟火",
						"虚空",
						"纯金",
						"暗物质",
						"反物质",
						"神秘",
						"虚空神秘",
						"战术",
						"纯金战术",
						"白未来",
						"黑未来",
						"圣诞未来",
						"礼物包装",
						"猩红",
						"收割者",
						"虚空收割者",
						"圣诞玩具",
						"荒地",
						"隐形",
						"像素",
						"钻石像素",
						"黄金零下",
						"绿水晶",
						"生物",
						"樱花",
						"精英",
						"黑樱花",
						"彩虹激光",
						"蓝水晶",
						"紫水晶",
						"红水晶",
						"零下",
						"虚空射线",
						"冰冻钻石",
						"虚空梦魇",
						"金雪",
						"爱国者",
						"MM2",
						"声望",
						"酷化",
						"蒸汽",
						"海盗",
						"玫瑰",
						"黑玫瑰",
						"激光",
						"烟花",
						"诅咒背瓜",
						"大炮",
						"财富",
						"黄金大炮",
						"四叶草",
						"自由",
						"黑曜石",
						"赛博朋克",
					},
					Value = "虚空",
					Callback = function(arg)
						str10 = ({
							["烟火"] = "Sparkler",
							["虚空"] = "Void",
							["纯金"] = "Solid Gold",
							["暗物质"] = "Dark Matter",
							["反物质"] = "Anti Matter",
							["神秘"] = "Hystic",
							["虚空神秘"] = "Void Mystic",
							["战术"] = "Tactical",
							["纯金战术"] = "Solid Gold Tactical",
							["白未来"] = "Future White",
							["黑未来"] = "Future Black",
							["圣诞未来"] = "Christmas Future",
							["礼物包装"] = "Gift Wrapped",
							["猩红"] = "Crimson Blood",
							["收割者"] = "Reaper",
							["虚空收割者"] = "Void Reaper",
							["圣诞玩具"] = "Christmas Toy",
							["荒地"] = "Wasteland",
							["隐形"] = "Invisible",
							["像素"] = "Pixel",
							["钻石像素"] = "Diamond Pixel",
							["黄金零下"] = "Frozen-Gold",
							["绿水晶"] = "Atomic Nature",
							["生物"] = "Biohazard",
							["樱花"] = "Sakura",
							["精英"] = "Elite",
							["黑樱花"] = "Death Blossom-Gold",
							["彩虹激光"] = "Rainbowlaser",
							["蓝水晶"] = "Atomic Water",
							["紫水晶"] = "Atomic Amethyst",
							["红水晶"] = "Atomic Flame",
							["零下"] = "Sub-Zero",
							["虚空射线"] = "Void-Ray",
							["冰冻钻石"] = "Frozen Diamond",
							["虚空梦魇"] = "Void Nightmare",
							["金雪"] = "Golden Snow",
							["爱国者"] = "Patriot",
							MM2 = "MM2 Barrett",
							["声望"] = "Prestige Barnett",
							["酷化"] = "Skin Walter",
							["蒸汽"] = "Steampunk",
							["海盗"] = "Pirate",
							["玫瑰"] = "Rose",
							["黑玫瑰"] = "Black Rose",
							["激光"] = "Hyperlaser",
							["烟花"] = "Firework",
							["诅咒背瓜"] = "Cursed Pumpkin",
							["大炮"] = "Cannon",
							["财富"] = "Firework",
							["黄金大炮"] = "Gold Cannon",
							["四叶草"] = "Lucky Clover",
							["自由"] = "Freedom",
							["黑曜石"] = "Obsidian",
							["赛博朋克"] = "Cyberpunk",
						})[arg] or arg
					end,
				})

				v27:Toggle({
					Title = tbl5.ApplySkin,
					Value = false,
					Callback = function(arg)
						if arg then
							local inventory = require(ReplicatedStorage.devv).load("v3item").inventory

							for _, item in pairs(inventory.items) do
								if item.type == "Gun" then
									inventory.skinUpdate(item.name, str10)
								end
							end
						end
					end,
				})

				v27:Button({
					Title = tbl5.UnlockSkins,
					Callback = function()
						local devv = require(ReplicatedStorage.devv)
						local skins = devv.load("skins")
						local state = devv.load("state")
						local Signal2 = devv.load("Signal")
						local ownedSkins = state.data.ownedSkins

						for _, v28 in skins.compatabilities, nil, nil do
							if type(v28) == "table" then
								for _, v29 in v28, nil, nil do
									if type(v29) == "string" then
										if not ownedSkins[v29] then
											ownedSkins[v29] = {}
										end

										for k in skins.skinData, nil, nil do
											if skins.IsSkinCompatible(v29, k) then
												ownedSkins[v29][k] = 999
											end
										end
									end
								end
							end
						end

						local invokeServer = Signal2.InvokeServer

						Signal2.InvokeServer = newcclosure(function(arg, ...)
							if arg == "equipSkin" then
								return true
							end
							return invokeServer(arg, ...)
						end)

						lib:Notify({ Title = "Shell.lua", Content = "All Skins Unlocked", Duration = 3 })
					end,
				})

				local tbl6 = {
					["Golden Rose"] = "金玫瑰",
					["Black Rose"] = "黑玫瑰",
					["Dollar Balloon"] = "美元气球",
					["Bat Balloon"] = "蝙蝠气球",
					["Bunny Balloon"] = "兔子气球",
					["Clover Balloon"] = "三叶草气球",
					["Ghost Balloon"] = "幽灵气球",
					["Gold Clover Balloon"] = "金三叶草气球",
					["Heart Balloon"] = "爱心气球",
					["Skull Balloon"] = "骷髅气球",
					["Snowflake Balloon"] = "雪花气球",
					["Admin AK-47"] = "管理员黄金AK-47",
					["Admin Nuke Launcher"] = "管理员核弹发射器",
					["Admin RPG"] = "管理员RPG",
					["Void Gem"] = "虚空宝石",
					["Pulse Rifle"] = "脉冲步枪",
					["Unusual Money Printer"] = "异常印钞机",
					["Money Printer"] = "印钞机",
					Trident = "三叉戟",
					["NextBot Grenade"] = "NextBot手榴弹",
					["El Fuego"] = "烈焰喷射器",
				}

				local function fn27(arg)
					pcall(function()
						local inventory = require(ReplicatedStorage.devv).load("v3item").inventory

						if inventory.add then
							inventory.add({ name = arg, guid = arg:lower():gsub(" ", "_") .. "_" .. tostring(tick()), permanent = true }, false)

							if inventory.rerender then
								inventory:rerender()
							end
						end
					end)
				end

				local str11 = ""

				v27:Dropdown({
					Title = tbl5.FreeItem,
					Values = {
						"金玫瑰",
						"黑玫瑰",
						"美元气球",
						"蝙蝠气球",
						"兔子气球",
						"三叶草气球",
						"幽灵气球",
						"金三叶草气球",
						"爱心气球",
						"骷髅气球",
						"雪花气球",
						"管理员黄金AK-47",
						"管理员核弹发射器",
						"管理员RPG",
						"虚空宝石",
						"脉冲步枪",
						"异常印钞机",
						"印钞机",
						"三叉戟",
						"NextBot手榴弹",
						"烈焰喷射器",
					},
					Value = "",
					Callback = function(arg)
						for k, v28 in pairs(tbl6) do
							if v28 == arg then
								str11 = k
								break
							end
						end
					end,
				})

				v27:Button({
					Title = "获得选中物品",
					Callback = function()
						if str11 then
							fn27(str11)
						end
					end,
				})

				local tbl7 = {
					"AK-47",
					"Gold AK-47",
					"M4A1",
					"AS Val",
					"AUG",
					"P90",
					"RPK",
					"Scar L",
					"Tommy Gun",
					"MP7",
					"Barrett M107",
					"Deagle",
					"Gold Deagle",
					"Python",
					"Sawn Off",
					"Double Barrel",
					"Dragunov",
				}

				local str12 = "AK-47"

				v27:Dropdown({
					Title = tbl5.SkinWeapon,
					Values = tbl7,
					Value = "AK-47",
					Callback = function(arg)
						str12 = arg
					end,
				})

				v27:Button({
					Title = "解锁选中武器皮肤",
					Callback = function()
						local skins = require(ReplicatedStorage.devv).load("skins")
						local state = require(ReplicatedStorage.devv).load("state")

						if not state.data.ownedSkins[str12] then
							state.data.ownedSkins[str12] = {}
						end

						for k in skins.skinData, nil, nil do
							if skins.IsSkinCompatible(str12, k) then
								state.data.ownedSkins[str12][k] = 99
							end
						end
					end,
				})

				v27:Button({
					Title = "解锁所有武器皮肤",
					Callback = function()
						local skins = require(ReplicatedStorage.devv).load("skins")
						local state = require(ReplicatedStorage.devv).load("state")

						for _, v28 in ipairs(tbl7) do
							if not state.data.ownedSkins[v28] then
								state.data.ownedSkins[v28] = {}
							end

							for k in skins.skinData, nil, nil do
								if skins.IsSkinCompatible(v28, k) then
									state.data.ownedSkins[v28][k] = 99
								end
							end
						end
					end,
				})
			end

			do
				local v27 = v26:Tab({ Title = tbl5.Cases, Icon = "shopping-bag" })
				local tbl6 = {}

				pcall(function()
					for k, case in pairs(require(ReplicatedStorage.devv).load("skins").cases) do
						if case.cashPrice or case.candyPrice or case.gingerbreadPrice then
							table.insert(tbl6, k)
						end
					end
				end)

				if #tbl6 == 0 then
					tbl6 = { "Series3Heavy" }
				end

				local v28 = tbl6[1]
				local v29 = tbl6[1]
				local flag22 = false
				local flag23 = false
				local flag24 = false

				v27:Dropdown({
					Title = tbl5.CaseBuy,
					Values = tbl6,
					Callback = function(arg)
						v28 = arg
					end,
				})

				v27:Button({
					Title = "购买一次",
					Callback = function()
						Signal.InvokeServer("buyCases", v28, 1)
					end,
				})

				v27:Toggle({
					Title = "自动购买选中",
					Value = false,
					Callback = function(arg)
						flag22 = arg

						if arg then
							task.spawn(function()
								while flag22 do
									Signal.InvokeServer("buyCases", v28, 1)
									task.wait(0.5)
								end
							end)
						end
					end,
				})

				v27:Dropdown({
					Title = tbl5.CaseOpen,
					Values = tbl6,
					Callback = function(arg)
						v29 = arg
					end,
				})

				v27:Toggle({
					Title = "自动开启选中",
					Value = false,
					Callback = function(arg)
						flag23 = arg

						if arg then
							task.spawn(function()
								local state = require(ReplicatedStorage.devv).load("state")

								while flag23 do
									if (state.data.ownedCases[v29] or 0) > 0 then
										Signal.InvokeServer("openCase", v29)
										task.wait(0.5)
									else
										task.wait(1)
									end
								end
							end)
						end
					end,
				})

				v27:Toggle({
					Title = "自动开全部",
					Value = false,
					Callback = function(arg)
						flag24 = arg

						if arg then
							task.spawn(function()
								local state = require(ReplicatedStorage.devv).load("state")

								while flag24 do
									local v30 = pairs
									local ownedCases = state.data.ownedCases or {}

									for k, ownedCase in v30(ownedCases) do
										if ownedCase > 0 and not flag23 then
											Signal.InvokeServer("openCase", k)
											task.wait(0.3)
										end
									end

									task.wait(1)
								end
							end)
						end
					end,
				})

				v27:Button({
					Title = "获得999个选中箱子",
					Callback = function()
						local state = require(ReplicatedStorage.devv).load("state")

						if not state.data.ownedCases then
							state.data.ownedCases = {}
						end

						state.data.ownedCases[v28] = 999
					end,
				})

				v27:Button({
					Title = "获得所有箱子999个",
					Callback = function()
						local state = require(ReplicatedStorage.devv).load("state")

						if not state.data.ownedCases then
							state.data.ownedCases = {}
						end

						for _, v30 in ipairs(tbl6) do
							state.data.ownedCases[v30] = 999
						end
					end,
				})
			end

			do
				local v27 = v26:Tab({ Title = tbl5.Teleportation, Icon = "navigation" })

				v27:Dropdown({
					Title = tbl5.TeleportTo,
					Values = { "银行", "珠宝店", "警察局", "黑市", "军事基地", "隐藏区域", "地图外", "水下", "塔楼", "医院" },
					Callback = function(arg)
						local tbl6 = {
							["银行"] = CFrame.new(1089.2777099609375, 8.1697988510131836, -344.85955810546875),
							["珠宝店"] = CFrame.new(1598.3031005859375, 8.3697910308837891, -691.42877197265625),
							["警察局"] = CFrame.new(647.12847900390625, 9.0378026962280273, -862.6290283203125),
							["黑市"] = CFrame.new(726.16778564453125, -27.880531311035156, -112.65306854248047),
							["军事基地"] = CFrame.new(796.650390625, 25.265619277954102, -1368.020751953125),
							["隐藏区域"] = CFrame.new(1653.3216552734375, -16.953155517578125, -529.68560791015625),
							["地图外"] = CFrame.new(1884.9793701171875, 4.3523502349853516, -967.9786376953125),
							["水下"] = CFrame.new(369.20672607421875, -127.81851196289062, -423.20809936523438),
							["塔楼"] = CFrame.new(823.8939208984375, 83.439971923828125, -146.09941101074219),
							["医院"] = CFrame.new(1153.28955078125, 6.276763916015625, -975.0587158203125),
						}

						if tbl6[arg] then
							localPlayer2.Character.HumanoidRootPart.CFrame = tbl6[arg]
						end
					end,
				})

				local flag22 = false
				local n29 = 0.08

				v27:Toggle({
					Title = "防踩踏传送",
					Value = false,
					Callback = function(arg)
						flag22 = arg

						if arg then
							task.spawn(function()
								local v28

								while flag22 do
									local cFrame = localPlayer2.Character.HumanoidRootPart.CFrame

									if not localPlayer2.Character.Humanoid.Sit then
										TweenService:Create(localPlayer2.Character.HumanoidRootPart, TweenInfo.new(n29, Enum.EasingStyle.Exponential), { CFrame = CFrame.new(0, 0, 0) }):Play()
										task.wait(n29)
										TweenService:Create(localPlayer2.Character.HumanoidRootPart, v28, { CFrame = cFrame }):Play()
										task.wait(n29)
									else
										localPlayer2.Character.Humanoid.Jump = true
									end

									task.wait(0.1)
								end
							end)
						end
					end,
				})

				v27:Slider({
					Title = "传送速度",
					Value = { Min = 0.01, Max = 1, Default = 0.08 },
					Callback = function(arg)
						n29 = arg
					end,
				})
			end

			do
				local v27 = v26:Tab({ Title = tbl5.DataStats, Icon = "album" })
				local data = require(ReplicatedStorage.devv.datum.state).data
				v27:Paragraph({ Title = "当前钱数", Desc = tostring(data.money) })
				v27:Paragraph({ Title = "历史总钱数", Desc = tostring(data.totalMoneyEarned) })
				v27:Paragraph({ Title = "Robux花费", Desc = tostring(data.robuxSpent) })
				v27:Paragraph({ Title = "ATM抢劫", Desc = tostring(data.atmsRobbed) })
				v27:Paragraph({ Title = "宝石抢劫", Desc = tostring(data.gemsRobbed) })
				v27:Paragraph({ Title = "最高连续登陆", Desc = tostring(data.topLoginStreak) })
				v27:Paragraph({ Title = "工作赚钱", Desc = tostring(data.jobEarnings) })
			end

			local v27 = v26:Tab({ Title = tbl5.Others, Icon = "folder" })

			v27:Toggle({
				Title = tbl5.Respawn,
				Value = false,
				Callback = function(arg)
					if arg then
						_G.RespawnConnection = RunService.Heartbeat:Connect(function()
							local character = localPlayer2.Character
							if not character then
								return
							end
							local humanoid = character:FindFirstChildOfClass("Humanoid")
							if not humanoid then
								return
							end

							if humanoid.Health == 0 and not character:FindFirstChild("RespawnTag") then
								local cFrame = character.HumanoidRootPart.CFrame
								local boolValue = Instance.new("BoolValue")
								boolValue.Name = "RespawnTag"
								boolValue.Parent = character

								while true do
									task.wait()
									if not (character and boolValue.Parent ~= character) then
										continue
									end
									break
								end

								task.wait(1)

								if character and character:FindFirstChild("HumanoidRootPart") then
									character.HumanoidRootPart.CFrame = cFrame
								end
							end
						end)
					elseif _G.RespawnConnection then
						_G.RespawnConnection:Disconnect()
						_G.RespawnConnection = nil
					end
				end,
			})

			v27:Toggle({
				Title = tbl5.FastInteract,
				Value = false,
				Callback = function(arg)
					if arg then
						game.ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
							prompt.HoldDuration = 0
						end)
					end
				end,
			})

			v27:Toggle({
				Title = tbl5.RemoteBlackMarket,
				Value = false,
				Callback = function(arg)
					local dealer = Workspace:FindFirstChild("BlackMarket") and Workspace.BlackMarket:FindFirstChild("Dealer") and Workspace.BlackMarket.Dealer:FindFirstChild("Dealer")

					if dealer then
						local proximityPrompt = dealer:FindFirstChild("ProximityPrompt")

						if proximityPrompt then
							proximityPrompt.MaxActivationDistance = arg and 100000 or 20
						end
					end
				end,
			})

			v27:Toggle({
				Title = tbl5.RemoteLocker,
				Value = false,
				Callback = function(visible)
					local locker = localPlayer2:FindFirstChild("PlayerGui"):FindFirstChild("Backpack"):FindFirstChild("Holder"):FindFirstChild("Locker")

					if locker then
						locker.Visible = visible
					end
				end,
			})

			v27:Button({
				Title = tbl5.IgnoreFireAcid,
				Callback = function()
					local fireHit = ReplicatedStorage.devv.remoteStorage.fireHit
					local acidHit = ReplicatedStorage.devv.remoteStorage.acidHit

					if fireHit and acidHit then
						fireHit:Destroy()
						acidHit:Destroy()
					end
				end,
			})

			v27:Button({
				Title = tbl5.Slot9,
				Callback = function()
					require(ReplicatedStorage.devv.client.Objects.v3item).inventory.numSlots = 9
				end,
			})

			v26:OnClose(function()
				print("Closed")
			end)

			print("Shell.lua!!!")
		elseif game.PlaceId == 101272402522756 then
			local tbl3 = {
				KillAura = false,
				AutoEat = true,
				KillFarm = false,
				AttackDelay = 0.05,
				MaxDist = 60,
				FarmSpeed = 300,
			}

			local Players = game:GetService("Players")
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			game:GetService("UserInputService")
			local RunService = game:GetService("RunService")
			local localPlayer2 = Players.LocalPlayer
			local hitreg = ReplicatedStorage.Remotes.Hitreg
			local eat = ReplicatedStorage.Remotes.Eat
			local n26 = 0
			local n27 = 0
			local cFrame = nil
			local part2 = nil
			local vector = Vector3.new(-162, 176, -265)
			local part3 = Instance.new("Part")
			part3.Name = "H"
			part3.Size = Vector3.new(15, 1, 15)
			part3.Anchored = true
			part3.CanCollide = true
			part3.Transparency = 0.3
			part3.Color = Color3.fromRGB(240, 240, 240)
			part3.Material = Enum.Material.SmoothPlastic
			part3.CFrame = CFrame.new(Vector3.new(-162, 176, -265))
			part3.Parent = workspace
			local vector2 = Vector3.new(-103, 151, -40)
			local vector3 = Vector3.new(-3, 211, 215)

			local function fn23()
				return localPlayer2.Character
			end

			local function fn24()
				local v26 = fn23()
				return v26 and v26:FindFirstChild("HumanoidRootPart")
			end

			local function fn25()
				local v26 = fn23()
				return v26 and v26:FindFirstChildWhichIsA("Tool")
			end

			local function fn26(...)
				error("devirt: could not lift closure: symbolic value of a VM local carried between instructions (None)")
			end

			local function fn27(arg)
				return arg.X >= vector2.X and arg.X <= vector3.X and arg.Y >= vector2.Y and arg.Y <= vector3.Y and arg.Z >= vector2.Z and arg.Z <= vector3.Z
			end

			local function fn28()
				local v26 = fn24()
				if not v26 then
					return nil
				end
				local position = v26.Position
				local maxDist = tbl3.MaxDist
				local tbl4 = nil

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= localPlayer2 and player.Character then
						local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
						local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

						if humanoidRootPart and humanoid and humanoid.Health > 0 then
							if not fn27(humanoidRootPart.Position) then
								local magnitude = (humanoidRootPart.Position - position).Magnitude

								if magnitude < maxDist then
									tbl4 = { HRP = humanoidRootPart, Char = player.Character }
									maxDist = magnitude
								end
							end
						end
					end
				end

				return tbl4
			end

			local function fn29()
				local v26 = fn24()
				if not v26 then
					return nil
				end
				local position = v26.Position
				local huge = math.huge
				local tbl4 = nil

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= localPlayer2 and player.Character then
						local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
						local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

						if humanoidRootPart and humanoid and humanoid.Health > 0 then
							if not fn27(humanoidRootPart.Position) then
								local magnitude = (humanoidRootPart.Position - position).Magnitude

								if magnitude < huge then
									tbl4 = { HRP = humanoidRootPart, Char = player.Character }
									huge = magnitude
								end
							end
						end
					end
				end

				return tbl4
			end

			local function fn30(arg)
				local v26 = fn23()
				if not v26 then
					return
				end
				local humanoidRootPart = v26:FindFirstChild("HumanoidRootPart")
				local humanoid = v26:FindFirstChildOfClass("Humanoid")
				if not humanoidRootPart then
					return
				end
				local position = arg.HRP.Position
				local vector4 = Vector3.new(position.X, humanoidRootPart.Position.Y, position.Z)
				humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, vector4)

				if humanoid then
					humanoid.AutoRotate = false

					task.delay(0.2, function()
						if humanoid and humanoid.Parent then
							humanoid.AutoRotate = true
						end
					end)
				end
			end

			local function fn31(arg)
				n26 += 1
				local v26 = fn24()
				if not v26 then
					return
				end
				local position = v26.Position
				local position2 = arg.HRP.Position
				local unit = (position2 - position).Unit

				if unit.Magnitude == 0 then
					unit = Vector3.new(0, 0, -1)
				end

				local cframe = CFrame.new(position, position2)
				local now2 = tick()

				pcall(function()
					hitreg.SwingInit:FireServer(n26, unit)
				end)

				pcall(function()
					hitreg.RegisterHit:FireServer(arg.HRP, now2, cframe, n26, unit)
				end)
			end

			local function fn32()
				local attackDelay = tbl3.AttackDelay
				if tick() - n27 < attackDelay then
					return
				end
				local v26 = fn28()
				if not v26 then
					return
				end
				n27 = tick()
				fn30(v26)
				fn31(v26)
			end

			local function fn33()
				local v26 = fn25()

				if v26 then
					pcall(function()
						eat:FireServer(v26)
					end)
				end
			end

			local function fn34(arg, canCollide)
				for _, descendant in ipairs(arg:GetDescendants()) do
					if descendant:IsA("BasePart") then
						descendant.CanCollide = canCollide
					end
				end
			end

			local function fn35()
				if part2 then
					return
				end
				part2 = Instance.new("Part")
				part2.Name = "P"
				part2.Size = Vector3.new(12, 1, 12)
				part2.Anchored = true
				part2.CanCollide = true
				part2.Transparency = 0.3
				part2.Color = Color3.fromRGB(240, 240, 240)
				part2.Material = Enum.Material.SmoothPlastic
				part2.Parent = workspace
			end

			local function fn36()
				if part2 then
					part2:Destroy()
					part2 = nil
				end
			end

			local function fn37(arg)
				if not tbl3.KillFarm then
					fn36()

					if cFrame then
						local v26 = fn24()
						local v27 = fn23()

						if v26 then
							v26.CFrame = cFrame
						end

						if v27 then
							fn34(v27, true)
							local humanoid = v27:FindFirstChildOfClass("Humanoid")

							if humanoid then
								humanoid.AutoRotate = true
							end
						end

						cFrame = nil
					end

					return
				end

				fn35()
				local v26 = fn24()

				if not cFrame and v26 then
					cFrame = v26.CFrame
				end

				if not v26 then
					return
				end

				if fn27(v26.Position) then
					v26.CFrame = CFrame.new(Vector3.new(179, 177, 15))
					return
				end
				local v27 = fn29()
				local v28 = fn23()

				if part2 then
					part2.CFrame = CFrame.new(v26.Position.X, v26.Position.Y - 3.5, v26.Position.Z)
				end

				if not v27 or not v28 then
					v26.CFrame = CFrame.new(vector + Vector3.new(0, 3, 0))
					return
				end
				local humanoid = v28:FindFirstChildOfClass("Humanoid")

				if humanoid then
					humanoid.AutoRotate = false
				end

				fn34(v28, false)
				local n28 = v27.HRP.Position - Vector3.new(0, 10, 0)
				if fn27(n28) then
					return
				end
				local n29 = n28 - v26.Position
				local magnitude = n29.Magnitude

				if magnitude > 0.5 then
					v26.CFrame = v26.CFrame + n29.Unit * math.min(tbl3.FarmSpeed * arg, magnitude)
				end

				fn31(v27)
			end

			localPlayer2.CharacterAdded:Connect(function()
				if tbl3.KillFarm then
					task.wait(0.5)
					local v26 = fn24()

					if v26 and fn27(v26.Position) then
						v26.CFrame = CFrame.new(Vector3.new(179, 177, 15))
					end
				end
			end)

			fn26()

			RunService.Heartbeat:Connect(function(deltaTime)
				fn26()

				if tbl3.KillAura then
					fn32()
				end

				if tbl3.AutoEat then
					fn33()
				end

				fn37(deltaTime)
			end)

			local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/Wind3"))()
			local str9 = nil
			local flag11 = false

			gradient = function(arg, arg2, arg3)
				local tbl4 = {}

				for match in arg:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
					table.insert(tbl4, match)
				end

				local n28 = #tbl4
				local str10 = ""

				for i = 1, n28 do
					local n29 = (i - 1) / math.max(n28 - 1, 1)
					local n30 = arg2.R + (arg3.R - arg2.R) * n29
					local n31 = arg2.G + (arg3.G - arg2.G) * n29
					local n32 = arg2.B + (arg3.B - arg2.B) * n29
					local v26 = tbl4[i]
					str10 ..= string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", math.floor(n30 * 255), math.floor(n31 * 255), math.floor(n32 * 255), v26)
				end

				return str10
			end

			redWhiteGradient = function(arg)
				local color = Color3.fromRGB
				return gradient(arg, Color3.fromRGB(255, 0, 0), color(255, 255, 255))
			end

			whiteRedGradient = function(...)
				error("devirt: could not lift closure: symbolic value of a VM local carried between instructions (None)")
			end

			local colorSequence = ColorSequence.new
			local tbl4 = {}
			local v26 = ColorSequenceKeypoint.new(0, Color3.fromHex("FFFFFF"))
			local v27 = ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF88AA"))
			local new = ColorSequenceKeypoint.new
			local color = Color3.fromHex
			tbl4[1] = v26
			tbl4[2] = v27

			do
				local values = table.pack(new(1, color("FF3344")))
				table.move(values, 1, values.n, 3, tbl4)
			end

			local v28 = colorSequence(tbl4)
			local color2 = Color3.fromHex

			lib:Popup({
				Title = "Shell.lua",
				IconThemed = true,
				Content = "请选择语言 / Select Language" .. gradient("Shell.lua", Color3.fromHex("#00FF87"), color2("#60EFFF")),
				Buttons = {
					{
						Title = "Chinese",
						Callback = function()
							str9 = "zh"
							flag11 = true
						end,
						Variant = "Secondary",
					},
					{
						Title = "English",
						Icon = "arrow-right",
						Callback = function()
							str9 = "en"
							flag11 = true
						end,
						Variant = "Primary",
					},
				},
				Background = "https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/quality_restoration_20260522215233585.jpg",
				BackgroundImageTransparency = 0.35,
			})

			repeat
				task.wait(0.1)
			until flag11

			local tbl5 = {}

			if str9 == "zh" then
				tbl5.Main = "主要"
				tbl5.KillAura = "杀戮光环"
				tbl5.AutoEat = "自动吃"
				tbl5.KillFarm = "杀戮农场"
				tbl5.AttackDelay = "攻击延迟"
				tbl5.MaxDist = "最大距离"
				tbl5.FarmSpeed = "农场速度"
			else
				tbl5.Main = "Main"
				tbl5.KillAura = "Kill Aura"
				tbl5.AutoEat = "Auto Eat"
				tbl5.KillFarm = "Kill Farm"
				tbl5.AttackDelay = "Attack Delay"
				tbl5.MaxDist = "Max Distance"
				tbl5.FarmSpeed = "Farm Speed"
			end

			if getgenv().TransparencyEnabled == nil then
				getgenv().TransparencyEnabled = false
			end

			local v29 = lib:CreateWindow({
				Title = whiteRedGradient("Shell.lua"),
				IconThemed = true,
				Folder = "Shell",
				Size = UDim2.fromOffset(491, 238),
				Transparent = getgenv().TransparencyEnabled,
				Theme = "Dark",
				NewElements = true,
				User = { Enabled = true, Anonymous = false },
				SideBarWidth = 185,
				ScrollBarEnabled = true,
				Background = "https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/quality_restoration_20260522215233585.jpg",
				BackgroundImageTransparency = 0.35,
			})

			v29:EditOpenButton({
				Title = whiteRedGradient("Sun.Lua"),
				CornerRadius = UDim.new(1, 2),
				StrokeThickness = 2,
				Color = v28,
				Draggable = true,
			})

			task.spawn(function()
				while true do
					task.wait(0.1)
					if not (v29.OpenButtonMain and v29.OpenButtonMain.Button) then
						continue
					end
					break
				end

				local uiStroke = v29.OpenButtonMain.Button:FindFirstChildWhichIsA("UIStroke")
				if not uiStroke then
					return
				end

				repeat
					task.wait(0.05)
				until uiStroke:FindFirstChildWhichIsA("UIGradient")

				local uiGradient = uiStroke:FindFirstChildWhichIsA("UIGradient")
				if not uiGradient then
					return
				end

				game:GetService("RunService").Heartbeat:Connect(function()
					if not uiGradient or not uiGradient.Parent then
						return
					end
					uiGradient.Rotation = tick() * 60 % 360
				end)
			end)

			v29:SetToggleKey(Enum.KeyCode.RightShift)

			pcall(function()
				lib:SetFont("rbxassetid://12187376739")
			end)

			local v30 = v29:Tab({ Title = tbl5.Main, Icon = "sliders" })

			v30:Toggle({
				Title = tbl5.KillAura,
				Default = tbl3.KillAura,
				Callback = function(killAura)
					tbl3.KillAura = killAura
				end,
			})

			v30:Toggle({
				Title = tbl5.AutoEat,
				Default = tbl3.AutoEat,
				Callback = function(autoEat)
					tbl3.AutoEat = autoEat
				end,
			})

			v30:Toggle({
				Title = tbl5.KillFarm,
				Default = tbl3.KillFarm,
				Callback = function(killFarm)
					tbl3.KillFarm = killFarm
				end,
			})

			v30:Slider({
				Title = tbl5.AttackDelay,
				Step = 0.01,
				Value = { Min = 0, Max = 1, Default = tbl3.AttackDelay },
				Callback = function(attackDelay)
					tbl3.AttackDelay = attackDelay
				end,
			})

			v30:Slider({
				Title = tbl5.MaxDist,
				Step = 1,
				Value = { Min = 1, Max = 200, Default = tbl3.MaxDist },
				Callback = function(maxDist)
					tbl3.MaxDist = maxDist
				end,
			})

			v30:Slider({
				Title = tbl5.FarmSpeed,
				Step = 10,
				Value = { Min = 10, Max = 1000, Default = tbl3.FarmSpeed },
				Callback = function(farmSpeed)
					tbl3.FarmSpeed = farmSpeed
				end,
			})
		elseif game.PlaceId == 12137249458 then
			local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/%E4%BA%8C%E6%94%B9Library.lua"))()
			local lib2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/addons/ThemeManager.lua"))()
			local lib3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/addons/SaveManager.lua"))()
			local options = lib.Options
			lib.ShowToggleFrameInKeybinds = true
			lib.ShowCustomCursor = true
			lib.NotifySide = "Left"

			local v26 = lib:CreateWindow({
				Title = "Shell.Lua",
				Footer = "Shell.Lua 枪地FFA",
				CornerRadius = 16,
				Center = true,
				AutoShow = true,
				Resizable = true,
				ShowCustomCursor = true,
				UnlockMouseWhileOpen = true,
				NotifySide = "Left",
				TabPadding = 8,
				MenuFadeTime = 0.2,
			})

			local tbl3 = { Main = v26:AddTab("主要", "info"), Settings = v26:AddTab("设置", "settings") }
			local v27 = tbl3.Main:AddLeftGroupbox("自瞄")
			local v28 = tbl3.Main:AddRightGroupbox("FOV ")
			local esp = tbl3.Main:AddLeftGroupbox("ESP")
			local Hitbox = tbl3.Main:AddRightGroupbox("Hitbox")
			local v29 = tbl3.Main:AddLeftGroupbox("暴力")
			local fly = tbl3.Main:AddRightGroupbox("fly")

			local tbl4 = {
				Enabled = false,
				WallCheck = false,
				DeadCheck = false,
				ShowFOV = false,
				FOVRadius = 100,
				FOVColor = Color3.fromRGB(255, 255, 255),
			}

			local tbl5 = {
				Enabled = false,
				Boxes = false,
				Skeletons = false,
				Tracers = false,
				Highlights = false,
				Names = false,
				Health = false,
				Distance = false,
			}

			local tbl6 = { Enabled = false, Size = 2, Color = Color3.fromRGB(255, 0, 0), CanCollide = false }

			local tbl7 = {
				Enabled = false,
				Wallbang = false,
				MultiTarget = false,
				FireRate = 0.001,
				MaxRange = 600,
				SoundID = "rbxassetid://6534948092",
				TextureID = "rbxassetid://18722421816",
			}

			local tbl8 = { Enabled = false, Speed = 30 }

			v27:AddToggle("AimbotEnabled", {
				Text = "开启自瞄",
				Default = false,
				Callback = function(enabled)
					tbl4.Enabled = enabled
				end,
			})

			v27:AddToggle("DeadCheckEnabled", {
				Text = "启用死亡检测",
				Default = true,
				Callback = function(deadCheck)
					tbl4.DeadCheck = deadCheck
				end,
			})

			v27:AddToggle("WallCheckEnabled", {
				Text = "启用墙壁检测",
				Default = true,
				Callback = function(wallCheck)
					tbl4.WallCheck = wallCheck
				end,
			})

			v28:AddToggle("ShowFOV", {
				Text = "显示 FOV 范围圈",
				Default = false,
				Callback = function(showFOV)
					tbl4.ShowFOV = showFOV
				end,
			})

			v28:AddSlider("FOVRadiusSlider", {
				Text = "FOV 大小",
				Default = 100,
				Min = 10,
				Max = 600,
				Rounding = 0,
				Callback = function(fovRadius)
					tbl4.FOVRadius = fovRadius
				end,
			})

			v28:AddLabel("FOV 圈颜色"):AddColorPicker("FOVColorPicker", {
				Default = Color3.fromRGB(255, 255, 255),
				Title = "FOV 圈颜色",
				Callback = function(fovColor)
					tbl4.FOVColor = fovColor
				end,
			})

			esp:AddToggle("ESPEnabled", {
				Text = "开启 ESP ",
				Default = false,
				Callback = function(enabled)
					tbl5.Enabled = enabled
				end,
			})

			esp:AddToggle("ESPBoxes", {
				Text = "显示 方框",
				Default = false,
				Callback = function(boxes)
					tbl5.Boxes = boxes
				end,
			})

			esp:AddToggle("ESPSkeletons", {
				Text = "显示 骨骼",
				Default = false,
				Callback = function(skeletons)
					tbl5.Skeletons = skeletons
				end,
			})

			esp:AddToggle("ESPTracers", {
				Text = "显示 射线",
				Default = false,
				Callback = function(tracers)
					tbl5.Tracers = tracers
				end,
			})

			esp:AddToggle("ESPHighlights", {
				Text = "显示 高光",
				Default = false,
				Callback = function(highlights)
					tbl5.Highlights = highlights
				end,
			})

			esp:AddToggle("ESPNames", {
				Text = "显示 名字",
				Default = false,
				Callback = function(names)
					tbl5.Names = names
				end,
			})

			esp:AddToggle("ESPHealth", {
				Text = "显示 血量",
				Default = false,
				Callback = function(health)
					tbl5.Health = health
				end,
			})

			esp:AddToggle("ESPDistance", {
				Text = "显示 距离",
				Default = false,
				Callback = function(distance)
					tbl5.Distance = distance
				end,
			})

			Hitbox:AddToggle("HitboxEnabled", {
				Text = "开启Hitbox",
				Default = false,
				Callback = function(enabled)
					tbl6.Enabled = enabled
				end,
			})

			Hitbox:AddSlider("HitboxSizeSlider", {
				Text = "Hitbox尺寸",
				Default = 2,
				Min = 1,
				Max = 200,
				Rounding = 1,
				Callback = function(size)
					tbl6.Size = size
				end,
			})

			Hitbox:AddToggle("HitboxCollide", {
				Text = "可以触碰",
				Default = false,
				Callback = function(canCollide)
					tbl6.CanCollide = canCollide
				end,
			})

			Hitbox:AddLabel("Hitbox 颜色"):AddColorPicker("HitboxColorPicker", {
				Default = Color3.fromRGB(255, 0, 0),
				Title = "Hitbox 颜色",
				Callback = function(color)
					tbl6.Color = color
				end,
			})

			v29:AddToggle("RageEnabled", {
				Text = "开启 Ragebot",
				Default = false,
				Callback = function(enabled)
					tbl7.Enabled = enabled
				end,
			})

			v29:AddToggle("RageWallbang", {
				Text = "Wallbang",
				Default = false,
				Callback = function(wallbang)
					tbl7.Wallbang = wallbang
				end,
			})

			v29:AddToggle("RageMultiTarget", {
				Text = "攻击多目标",
				Default = false,
				Callback = function(multiTarget)
					tbl7.MultiTarget = multiTarget
				end,
			})

			fly:AddToggle("FlyEnabledToggle", {
				Text = "开启飞行",
				Default = false,
				Callback = function(enabled)
					tbl8.Enabled = enabled
				end,
			})

			fly:AddSlider("FlySpeedSlider", {
				Text = "飞行速度",
				Default = 30,
				Min = 16,
				Max = 50,
				Rounding = 0,
				Callback = function(speed)
					tbl8.Speed = speed
				end,
			})

			local Players = game:GetService("Players")
			local RunService = game:GetService("RunService")
			local currentCamera = workspace.CurrentCamera
			local localPlayer2 = Players.LocalPlayer
			local v30 = workspace
			Random.new()
			local TweenService = game:GetService("TweenService")

			local tbl9 = {
				BoxThickness = 1.5,
				SkeletonThickness = 1,
				SkeletonColor = Color3.fromRGB(255, 255, 255),
				TextSize = 13,
				Font = Drawing.Fonts.UI,
			}

			local tbl10 = {
				R15 = {
					{ "UpperTorso", "Head" },
					{ "UpperTorso", "LowerTorso" },
					{ "UpperTorso", "LeftUpperArm" },
					{ "LeftUpperArm", "LeftLowerArm" },
					{ "LeftLowerArm", "LeftHand" },
					{ "UpperTorso", "RightUpperArm" },
					{ "RightUpperArm", "RightLowerArm" },
					{ "RightLowerArm", "RightHand" },
					{ "LowerTorso", "LeftUpperLeg" },
					{ "LeftUpperLeg", "LeftLowerLeg" },
					{ "LeftLowerLeg", "LeftFoot" },
					{ "LowerTorso", "RightUpperLeg" },
					{ "RightUpperLeg", "RightLowerLeg" },
					{ "RightLowerLeg", "RightFoot" },
				},
				R6 = {
					{ "Torso", "Head" },
					{ "Torso", "Left Arm" },
					{ "Torso", "Right Arm" },
					{ "Torso", "Left Leg" },
					{ "Torso", "Right Leg" },
				},
			}

			local circle = nil

			if Drawing then
				circle = Drawing.new("Circle")
				circle.Thickness = 1
				circle.NumSides = 60
				circle.Filled = false
				circle.Visible = false
			end

			local function fn23(arg)
				if not arg then
					return false
				end
				local humanoid = arg:FindFirstChildOfClass("Humanoid")
				return humanoid and humanoid.Health > 0
			end

			local folder = nil

			local function fn24(position, position2)
				if not folder or not folder.Parent then
					folder = Instance.new("Folder")
					folder.Name = "RagebotBeams_" .. math.random(1000, 9999)
					folder.Parent = v30
				end

				if (position2 - position).Magnitude < 0.1 then
					return
				end
				local part2 = Instance.new("Part")
				part2.Anchored = true
				part2.CanCollide = false
				part2.Transparency = 1
				part2.Size = Vector3.new(0.1, 0.1, 0.1)
				part2.Position = position
				part2.Parent = folder
				local part3 = Instance.new("Part")
				part3.Anchored = true
				part3.CanCollide = false
				part3.Transparency = 1
				part3.Size = Vector3.new(0.1, 0.1, 0.1)
				part3.Position = position2
				part3.Parent = folder
				local attachment = Instance.new("Attachment", part2)
				local attachment2 = Instance.new("Attachment", part3)
				local beam = Instance.new("Beam")
				local colorSequence = ColorSequence.new
				local tbl11 = {}
				local v31 = ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 220, 255))
				local v32 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255))
				local new = ColorSequenceKeypoint.new
				local color = Color3.fromRGB
				tbl11[1] = v31
				tbl11[2] = v32

				do
					local values = table.pack(new(1, color(0, 100, 255)))
					table.move(values, 1, values.n, 3, tbl11)
				end

				beam.Color = colorSequence(tbl11)
				beam.Transparency = NumberSequence.new(0)
				beam.Width0 = 0.08
				beam.Width1 = 0.08
				beam.Texture = tbl7.TextureID
				beam.TextureSpeed = 5
				beam.TextureMode = Enum.TextureMode.Wrap
				beam.Brightness = 5
				beam.LightEmission = 1
				beam.FaceCamera = true
				beam.Attachment0 = attachment
				beam.Attachment1 = attachment2
				beam.Parent = part2
				local flag11 = true

				task.spawn(function()
					local now2 = tick()

					while flag11 and part2 and part2.Parent do
						pcall(function()
							local n26 = tick() - now2
							local n27 = math.sin(n26 * 15) * 0.25
							local n28 = math.cos(n26 * 12) * 0.25
							attachment.Position = Vector3.new(n27, n28, n27)
							attachment2.Position = Vector3.new(n28, n27, n28)
						end)

						task.wait(0.02)
					end
				end)

				local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local numberValue = Instance.new("NumberValue")
				numberValue.Value = 0
				numberValue.Parent = part2
				TweenService:Create(numberValue, tweenInfo, { Value = 1 }):Play()
				local connection = nil

				connection = RunService.RenderStepped:Connect(function()
					if not beam or not beam.Parent then
						if connection then
							connection:Disconnect()
						end

						return
					end

					local value = numberValue.Value
					beam.Transparency = NumberSequence.new(value)
					beam.Width0 = 0.08 * (1 - value)
					beam.Width1 = 0.08 * (1 - value)
				end)

				task.delay(1.5, function()
					flag11 = false

					if connection then
						connection:Disconnect()
					end

					pcall(function()
						part2:Destroy()
						part3:Destroy()
					end)
				end)
			end

			local function fn25(parent)
				pcall(function()
					local sound2 = Instance.new("Sound")
					sound2.SoundId = tbl7.SoundID
					sound2.Volume = 1.5
					sound2.PlayOnRemove = true
					sound2.Parent = parent
					sound2:Play()
					sound2:Destroy()
				end)
			end

			local function fn26(arg)
				if not arg then
					return nil
				end
				local tbl11 = { "Head", "Torso", "HumanoidRootPart" }

				for i = 1, #tbl11 do
					local v31 = arg:FindFirstChild(tbl11[i])
					if v31 then
						return v31
					end
				end

				return arg:FindFirstChildOfClass("Part")
			end

			local function fn27(arg)
				local tbl11 = {}
				local position = arg.Position

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= localPlayer2 then
						local character = player.Character

						if not (not character or not fn23(character)) then
							local v31 = fn26(character)

							if v31 then
								if (v31.Position - position).Magnitude <= tbl7.MaxRange then
									if not tbl7.Wallbang then
										local raycastParams = RaycastParams.new()
										raycastParams.FilterType = Enum.RaycastFilterType.Exclude
										raycastParams.FilterDescendantsInstances = { localPlayer2.Character, character }
										if v30:Raycast(currentCamera.CFrame.Position, (v31.Position - currentCamera.CFrame.Position).Unit * (v31.Position - currentCamera.CFrame.Position).Magnitude, raycastParams) then
											continue
										end
									end

									table.insert(tbl11, v31)
								end
							end
						end
					end
				end

				if #tbl11 > 1 and not tbl7.MultiTarget then
					local huge = math.huge
					local v31 = nil

					for _, v32 in ipairs(tbl11) do
						local magnitude = (v32.Position - position).Magnitude

						if magnitude < huge then
							huge = magnitude
							v31 = v32
						end
					end

					return v31 and { v31 } or {}
				end

				return tbl11
			end

			local function fn28()
				local fovRadius = tbl4.FOVRadius
				local vector2 = Vector2.new(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y / 2)
				local v31 = nil

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= localPlayer2 and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
						local character = player.Character
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						local humanoidRootPart = character.HumanoidRootPart

						if not (tbl4.DeadCheck and humanoid and humanoid.Health <= 0) then
							local v32, v33 = currentCamera:WorldToViewportPoint(humanoidRootPart.Position)

							if v33 then
								local magnitude = (Vector2.new(v32.X, v32.Y) - vector2).Magnitude

								if magnitude < fovRadius then
									if tbl4.WallCheck then
										local raycastParams = RaycastParams.new()
										raycastParams.FilterType = Enum.RaycastFilterType.Exclude
										raycastParams.FilterDescendantsInstances = { localPlayer2.Character, character }

										if not v30:Raycast(currentCamera.CFrame.Position, (humanoidRootPart.Position - currentCamera.CFrame.Position).Unit * (humanoidRootPart.Position - currentCamera.CFrame.Position).Magnitude, raycastParams) then
											fovRadius = magnitude
											v31 = humanoidRootPart
										end
									else
										fovRadius = magnitude
										v31 = humanoidRootPart
									end
								end
							end
						end
					end
				end

				return v31
			end

			local function fn29(player)
				if player == localPlayer2 then
					return
				end
				local tbl11 = {}
				local highlight = nil
				local tbl12 = { BoxOutline = Drawing.new("Square") }
				tbl12.BoxOutline.Thickness = 3
				tbl12.BoxOutline.Filled = false
				tbl12.BoxOutline.Color = Color3.new(0, 0, 0)
				tbl12.Box = Drawing.new("Square")
				tbl12.Box.Thickness = 1
				tbl12.Box.Filled = false
				tbl12.Info = Drawing.new("Text")
				tbl12.Info.Center = true
				tbl12.Info.Outline = true
				tbl12.Info.Size = tbl9.TextSize
				tbl12.Info.Font = tbl9.Font
				tbl12.Tracer = Drawing.new("Line")
				tbl12.Tracer.Thickness = 1.5

				for i = 1, 15 do
					local line = Drawing.new("Line")
					line.Thickness = tbl9.SkeletonThickness
					line.Color = tbl9.SkeletonColor
					line.Visible = false
					table.insert(tbl11, line)
				end

				local function fn30()
					for _, v31 in pairs(tbl12) do
						v31:Remove()
					end

					for _, v31 in ipairs(tbl11) do
						v31:Remove()
					end

					if highlight then
						highlight:Destroy()
					end
				end

				local connection = nil

				local function fn31(parent)
					if highlight then
						highlight:Destroy()
					end

					highlight = Instance.new("Highlight")
					highlight.Name = "Elite_ESP_Highlight"
					highlight.FillTransparency = 0.6
					highlight.OutlineTransparency = 0
					highlight.Parent = parent

					if connection then
						connection:Disconnect()
					end

					connection = RunService.RenderStepped:Connect(function()
						if not tbl5.Enabled or not parent:IsDescendantOf(workspace) or not parent:FindFirstChild("HumanoidRootPart") or not parent:FindFirstChild("Humanoid") then
							for _, v31 in pairs(tbl12) do
								v31.Visible = false
							end

							for _, v31 in ipairs(tbl11) do
								v31.Visible = false
							end

							if highlight then
								highlight.Enabled = false
							end

							return
						end

						local humanoidRootPart = parent.HumanoidRootPart
						local humanoid = parent.Humanoid

						if humanoid.Health <= 0 then
							for _, v31 in pairs(tbl12) do
								v31.Visible = false
							end

							for _, v31 in ipairs(tbl11) do
								v31.Visible = false
							end

							if highlight then
								highlight.Enabled = false
							end

							return
						end

						local v31, v32 = currentCamera:WorldToViewportPoint(humanoidRootPart.Position)

						if v32 then
							local magnitude = (currentCamera.CFrame.Position - humanoidRootPart.Position).Magnitude
							local n26 = 1 / v31.Z * math.tan(math.rad(currentCamera.FieldOfView / 2)) * 1000
							local n27 = n26 * 1.5
							local n28 = n26 * 2.2
							local color = Color3.fromHSV(math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1) * 0.3, 0.8, 1)

							if highlight then
								highlight.Enabled = tbl5.Highlights
								highlight.FillColor = color
								highlight.OutlineColor = color
							end

							tbl12.BoxOutline.Size = Vector2.new(n27, n28)
							tbl12.BoxOutline.Position = Vector2.new(v31.X - n27 / 2, v31.Y - n28 / 2)
							tbl12.BoxOutline.Visible = tbl5.Boxes
							tbl12.Box.Size = Vector2.new(n27, n28)
							tbl12.Box.Position = Vector2.new(v31.X - n27 / 2, v31.Y - n28 / 2)
							tbl12.Box.Color = color
							tbl12.Box.Visible = tbl5.Boxes
							tbl12.Tracer.From = Vector2.new(currentCamera.ViewportSize.X / 2, 0)
							tbl12.Tracer.To = Vector2.new(v31.X, v31.Y - n28 / 2)
							tbl12.Tracer.Color = color
							tbl12.Tracer.Visible = tbl5.Tracers
							local text = ""

							if tbl5.Names then
								text = "" .. string.format("《%s》\n", player.DisplayName)
							end

							if tbl5.Health then
								text ..= string.format("%d HP ", math.floor(humanoid.Health))
							end

							if tbl5.Distance then
								if tbl5.Health then
									text ..= "| "
								end

								text ..= string.format("%dm", math.floor(magnitude))
							end

							tbl12.Info.Text = text
							tbl12.Info.Position = Vector2.new(v31.X, v31.Y - n28 / 2 - 25)
							tbl12.Info.Visible = tbl5.Names or tbl5.Health or tbl5.Distance
							local r15 = humanoid.RigType == Enum.HumanoidRigType.R15 and tbl10.R15 or tbl10.R6

							for _, v33 in ipairs(tbl11) do
								v33.Visible = false
							end

							if tbl5.Skeletons then
								for i, v33 in ipairs(r15) do
									local v34 = parent:FindFirstChild(v33[1])
									local v35 = parent:FindFirstChild(v33[2])

									if v34 and v35 then
										local v36, v37 = currentCamera:WorldToViewportPoint(v34.Position)
										local v38, v39 = currentCamera:WorldToViewportPoint(v35.Position)

										if v37 and v39 then
											local v40 = tbl11[i]

											if v40 then
												v40.From = Vector2.new(v36.X, v36.Y)
												v40.To = Vector2.new(v38.X, v38.Y)
												v40.Visible = true
											end
										end
									end
								end
							end
						else
							for _, v33 in pairs(tbl12) do
								v33.Visible = false
							end

							for _, v33 in ipairs(tbl11) do
								v33.Visible = false
							end

							if highlight then
								highlight.Enabled = false
							end
						end
					end)
				end

				player.CharacterAdded:Connect(function(character)
					task.wait(0.1)
					fn31(character)
				end)

				if player.Character then
					task.spawn(fn31, player.Character)
				end

				player.AncestryChanged:Connect(function(child, parent)
					if not parent then
						fn30()

						if connection then
							connection:Disconnect()
						end
					end
				end)
			end

			local ControlModule = nil

			local function fn30(arg)
				if arg and arg:FindFirstChildOfClass("Humanoid") then
					return arg:FindFirstChildOfClass("Humanoid").RootPart
				end
				return nil
			end

			local function fn31()
				local tbl11 = {}

				for i = 1, math.random(10, 20) do
					tbl11[i] = string.char(math.random(32, 126))
				end

				return table.concat(tbl11)
			end

			local v31 = fn31()
			local v32 = fn31()

			pcall(function()
				ControlModule = require(localPlayer2.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
			end)

			localPlayer2.CharacterAdded:Connect(function(character)
				task.wait(0.5)
				local v33 = fn30(character)

				if v33 and tbl8.Enabled then
					local bodyVelocity = Instance.new("BodyVelocity")
					bodyVelocity.Name = v31
					bodyVelocity.Parent = v33
					bodyVelocity.MaxForce = Vector3.zero
					bodyVelocity.Velocity = Vector3.zero
					local bodyGyro = Instance.new("BodyGyro")
					bodyGyro.Name = v32
					bodyGyro.Parent = v33
					bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
					bodyGyro.P = 1000
					bodyGyro.D = 50
				end
			end)

			local n26 = 0

			RunService.RenderStepped:Connect(function()
				local vector2 = Vector2.new(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y / 2)

				if circle then
					circle.Visible = tbl4.ShowFOV
					circle.Radius = tbl4.FOVRadius
					circle.Color = tbl4.FOVColor
					circle.Position = vector2
				end

				if tbl4.Enabled then
					local v33 = fn28()

					if v33 then
						currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, v33.Position)
					end
				end

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= localPlayer2 and player.Character then
						local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
						local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

						if humanoidRootPart and humanoid and humanoid.Health > 0 then
							if tbl6.Enabled then
								humanoidRootPart.Size = Vector3.new(tbl6.Size, tbl6.Size, tbl6.Size)
								humanoidRootPart.Color = tbl6.Color
								humanoidRootPart.CanCollide = tbl6.CanCollide
								humanoidRootPart.Material = Enum.Material.Neon
								humanoidRootPart.Transparency = 0.5
							else
								humanoidRootPart.Size = Vector3.new(2, 2, 1)
								humanoidRootPart.CanCollide = false
								humanoidRootPart.Transparency = 1
							end
						end
					end
				end

				local enabled = tbl7.Enabled

				if enabled then
					local fireRate = tbl7.FireRate
					enabled = tick() - n26 >= fireRate
				end

				if enabled then
					local character = localPlayer2.Character

					if character then
						local humanoidRootPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")
						local tool = character:FindFirstChildOfClass("Tool")

						if humanoidRootPart and tool then
							local remotes = tool:FindFirstChild("Remotes")
							local checkShot = remotes and remotes:FindFirstChild("CheckShot")
							local configuration2 = tool:FindFirstChild("Configuration")
							local seed = tool:FindFirstChild("Seed")

							if checkShot and configuration2 and seed then
								local v33 = fn27(humanoidRootPart)

								if #v33 > 0 then
									n26 = tick()
									fn25(humanoidRootPart)
									local n27 = humanoidRootPart.Position - humanoidRootPart.CFrame.LookVector * 0.3 + Vector3.new(math.random(-15, 15) / 100, math.random(0, 15) / 100, math.random(-15, 15) / 100)

									if not _G.GlobalBulletID then
										_G.GlobalBulletID = 50000
									end

									for _, v34 in ipairs(v33) do
										local position = v34.Position
										task.spawn(fn24, n27, position)
										_G.GlobalBulletID = _G.GlobalBulletID + 1
										local tbl11 = {}
										local value = configuration2.Ammo.Value
										local value2 = configuration2.spread.Value
										local value3 = configuration2.Ammo.Value
										local value4 = configuration2.reloadTime.Value
										local cframe = CFrame.lookAt(position + Vector3.new(0, 2, 0), position)
										local globalBulletID = _G.GlobalBulletID
										local v35 = tick
										tbl11[1] = value
										tbl11[2] = value2
										tbl11[3] = value3
										tbl11[4] = value4
										tbl11[5] = cframe
										tbl11[6] = position
										tbl11[7] = v34
										tbl11[8] = globalBulletID

										do
											local values = table.pack(v35())
											table.move(values, 1, values.n, 9, tbl11)
										end

										pcall(function()
											checkShot:FireServer(unpack(tbl11))
										end)
									end
								end
							end
						end
					end
				end

				local character = localPlayer2.Character

				if character then
					local v33 = fn30(character)
					local humanoid = character:FindFirstChildOfClass("Humanoid")

					if v33 and humanoid and humanoid.Health > 0 then
						local bodyVelocity = v33:FindFirstChild(v31)
						local bodyGyro = v33:FindFirstChild(v32)

						if tbl8.Enabled then
							if not bodyVelocity then
								bodyVelocity = Instance.new("BodyVelocity")
								bodyVelocity.Name = v31
								bodyVelocity.Parent = v33
							end

							if not bodyGyro then
								bodyGyro = Instance.new("BodyGyro")
								bodyGyro.Name = v32
								bodyGyro.Parent = v33
							end

							bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
							bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
							humanoid.PlatformStand = true
							bodyGyro.CFrame = currentCamera.CoordinateFrame

							if ControlModule then
								local moveVector = ControlModule:GetMoveVector()

								if moveVector.Magnitude > 0 then
									bodyVelocity.Velocity = (currentCamera.CFrame.RightVector * moveVector.X + currentCamera.CFrame.LookVector * -moveVector.Z) * tbl8.Speed
								else
									bodyVelocity.Velocity = Vector3.zero
								end
							else
								bodyVelocity.Velocity = Vector3.zero
							end
						else
							if humanoid.PlatformStand then
								humanoid.PlatformStand = false
							end

							if bodyVelocity then
								bodyVelocity:Destroy()
							end

							if bodyGyro then
								bodyGyro:Destroy()
							end
						end
					end
				end
			end)

			for _, player in ipairs(Players:GetPlayers()) do
				fn29(player)
			end

			Players.PlayerAdded:Connect(fn29)
			local v33 = tbl3.Settings:AddLeftGroupbox("菜单")

			v33:AddButton("卸载脚本", function()
				if circle then
					circle:Remove()
				end

				tbl8.Enabled = false
				local character = localPlayer2.Character

				if character then
					local humanoid = character:FindFirstChildOfClass("Humanoid")
					local v34 = fn30(character)

					if humanoid then
						humanoid.PlatformStand = false
					end

					if v34 then
						local v35 = v34:FindFirstChild(v31)
						local v36 = v34:FindFirstChild(v32)

						if v35 then
							v35:Destroy()
						end

						if v36 then
							v36:Destroy()
						end
					end
				end

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= localPlayer2 and player.Character then
						local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")

						if humanoidRootPart then
							humanoidRootPart.Size = Vector3.new(2, 2, 1)
							humanoidRootPart.CanCollide = false
							humanoidRootPart.Transparency = 1
						end
					end
				end

				lib:Unload()
			end)

			v33:AddLabel("菜单快捷键"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
			lib.ToggleKeybind = options.MenuKeybind
			lib2:SetLibrary(lib)
			lib3:SetLibrary(lib)
			lib3:IgnoreThemeSettings()
			lib2:SetFolder("MyScriptTheme")
			lib3:SetFolder("MyScriptConfig")
			lib3:BuildConfigSection(tbl3.Settings)
			lib2:ApplyToTab(tbl3.Settings)
		elseif game.PlaceId == 14438406081 then
			local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/Wind3"))()
			local str9 = nil
			local flag11 = false

			gradient = function(arg, arg2, arg3)
				local tbl3 = {}

				for match in arg:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
					table.insert(tbl3, match)
				end

				local n26 = #tbl3
				local str10 = ""

				for i = 1, n26 do
					local n27 = (i - 1) / math.max(n26 - 1, 1)
					local n28 = arg2.G + (arg3.G - arg2.G) * n27
					local n29 = arg2.B + (arg3.B - arg2.B) * n27
					local v26 = tbl3[i]
					str10 ..= string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", math.floor((arg2.R + (arg3.R - arg2.R) * n27) * 255), math.floor(n28 * 255), math.floor(n29 * 255), v26)
				end

				return str10
			end

			redWhiteGradient = function(...)
				error("devirt: could not lift closure: symbolic value of a VM local carried between instructions (None)")
			end

			whiteRedGradient = function(...)
				error("devirt: could not lift closure: symbolic value of a VM local carried between instructions (None)")
			end

			local colorSequence = ColorSequence.new
			local tbl3 = {}
			local v26 = ColorSequenceKeypoint.new(0, Color3.fromHex("FFFFFF"))
			local v27 = ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF88AA"))
			local new = ColorSequenceKeypoint.new
			local color = Color3.fromHex
			tbl3[1] = v26
			tbl3[2] = v27

			do
				local values = table.pack(new(1, color("FF3344")))
				table.move(values, 1, values.n, 3, tbl3)
			end

			local v28 = colorSequence(tbl3)
			local color2 = Color3.fromHex

			lib:Popup({
				Title = "Shell.Lua",
				IconThemed = true,
				Content = "请选择语言 / Select Language" .. gradient(" Shell.Lua", Color3.fromHex("#00FF87"), color2("#60EFFF")),
				Buttons = {
					{
						Title = "Chinese",
						Callback = function()
							str9 = "zh"
							flag11 = true
						end,
						Variant = "Secondary",
					},
					{
						Title = "English",
						Icon = "arrow-right",
						Callback = function()
							str9 = "en"
							flag11 = true
						end,
						Variant = "Primary",
					},
				},
				Background = "https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/quality_restoration_20260522215233585.jpg",
				BackgroundImageTransparency = 0.35,
			})

			repeat
				task.wait(0.1)
			until flag11

			local tbl4 = {}

			if str9 == "zh" then
				tbl4.MainTab = "刷钱"
				tbl4.FlingTab = "合法"
				tbl4.ESPTab = "透视"
				tbl4.AutoATM = "自动打取款机"
				tbl4.AutoRegister = "自动打收银机"
				tbl4.AutoSafe = "自动开保险箱"
				tbl4.AutoLoot = "自动捡物品"
				tbl4.AutoSell = "自动出售物品"
				tbl4.AutoCash = "自动捡现金"
				tbl4.EnableFling = "甩车"
				tbl4.FlingMode = "甩车方式"
				tbl4.VehicleMode = "车辆"
				tbl4.ManualMode = "人为"
				tbl4.TargetList = "目标车辆"
				tbl4.NearestTarget = "最近车辆"
				tbl4.LaunchForce = "顶飞力"
				tbl4.CycleInterval = "速度"
				tbl4.ManualFrequency = "甩频"
				tbl4.EnableFly = "飞车"
				tbl4.FlySpeed = "飞行速度"
				tbl4.EnablePlayerESP = "玩家透视"
				tbl4.PlayerESPColor = "玩家透视颜色"
				tbl4.EnableATMESP = "ATM透视"
				tbl4.ATMESPColor = "ATM透视颜色"
				tbl4.EnableVehicleESP = "汽车透视"
				tbl4.VehicleESPColor = "汽车透视颜色"
				tbl4.ESPRefresh = "透视刷新"
			else
				tbl4.MainTab = "Main"
				tbl4.FlingTab = "Fling"
				tbl4.ESPTab = "ESP"
				tbl4.AutoATM = "Auto ATM"
				tbl4.AutoRegister = "Auto Register"
				tbl4.AutoSafe = "Auto Safe"
				tbl4.AutoLoot = "Auto Loot"
				tbl4.AutoSell = "Auto Sell"
				tbl4.AutoCash = "Auto Cash"
				tbl4.EnableFling = "Enable Fling"
				tbl4.FlingMode = "Fling Mode"
				tbl4.VehicleMode = "Vehicle Auto"
				tbl4.ManualMode = "Manual"
				tbl4.TargetList = "Target Vehicle"
				tbl4.NearestTarget = "Nearest Vehicle"
				tbl4.LaunchForce = "Fling Force"
				tbl4.CycleInterval = "Cycle Interval"
				tbl4.ManualFrequency = "Manual Frequency"
				tbl4.EnableFly = "Enable Fly"
				tbl4.FlySpeed = "Fly Speed"
				tbl4.EnablePlayerESP = "Player ESP"
				tbl4.PlayerESPColor = "Player ESP Color"
				tbl4.EnableATMESP = "ATM ESP"
				tbl4.ATMESPColor = "ATM ESP Color"
				tbl4.EnableVehicleESP = "Vehicle ESP"
				tbl4.VehicleESPColor = "Vehicle ESP Color"
				tbl4.ESPRefresh = "ESP Refresh Rate"
			end

			if getgenv().TransparencyEnabled == nil then
				getgenv().TransparencyEnabled = false
			end

			local v29 = lib:CreateWindow({
				Title = whiteRedGradient("Shell.Lua"),
				IconThemed = true,
				Folder = "Shell",
				Size = UDim2.fromOffset(491, 300),
				Transparent = getgenv().TransparencyEnabled,
				Theme = "Dark",
				NewElements = true,
				User = { Enabled = true, Anonymous = false },
				SideBarWidth = 185,
				ScrollBarEnabled = true,
				Background = "https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/quality_restoration_20260522215233585.jpg",
				BackgroundImageTransparency = 0.35,
			})

			v29:EditOpenButton({
				Title = whiteRedGradient("Shell.Lua"),
				CornerRadius = UDim.new(1, 2),
				StrokeThickness = 2,
				Color = v28,
				Draggable = true,
			})

			task.spawn(function()
				while true do
					task.wait(0.1)
					if not (v29.OpenButtonMain and v29.OpenButtonMain.Button) then
						continue
					end
					break
				end

				local uiStroke = v29.OpenButtonMain.Button:FindFirstChildWhichIsA("UIStroke")
				if not uiStroke then
					return
				end

				repeat
					task.wait(0.05)
				until uiStroke:FindFirstChildWhichIsA("UIGradient")

				local uiGradient = uiStroke:FindFirstChildWhichIsA("UIGradient")
				if not uiGradient then
					return
				end

				game:GetService("RunService").Heartbeat:Connect(function()
					if not uiGradient or not uiGradient.Parent then
						return
					end
					uiGradient.Rotation = tick() * 60 % 360
				end)
			end)

			v29:SetToggleKey(Enum.KeyCode.RightShift)

			pcall(function()
				lib:SetFont("rbxassetid://12187376739")
			end)

			local Players = game:GetService("Players")
			local v30 = workspace
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local RunService = game:GetService("RunService")
			local StarterGui2 = game:GetService("StarterGui")
			local Network = require(ReplicatedStorage:WaitForChild("Devv")).load("Network")
			local localPlayer2 = Players.LocalPlayer
			local tbl5 = { atm = false, register = false, safe = false, loot = false, sell = false, cash = false }
			local flag12 = false
			local str10 = "Vehicle"
			local n26 = 500
			local n27 = 0.5
			local n28 = 0.05
			local v31 = nil
			local flag13 = true
			local flag14 = false
			local n29 = 50
			local linearVelocity = nil
			local attachment = nil
			local connection = nil
			local v32 = nil

			local tbl6 = {
				playerEnabled = false,
				playerColor = Color3.fromRGB(255, 0, 0),
				atmEnabled = false,
				atmColor = Color3.fromRGB(0, 255, 0),
				vehicleEnabled = false,
				vehicleColor = Color3.fromRGB(0, 0, 255),
				refreshRate = 1,
			}

			local tbl7 = {}

			local function fn23()
				local character = localPlayer2.Character
				if not character then
					return
				end
				return character:FindFirstChild("HumanoidRootPart")
			end

			local function fn24()
				local local_ = v30:FindFirstChild("Local")
				if not local_ then
					return
				end
				return local_:FindFirstChild("Gizmos")
			end

			local function fn25()
				local vehicles = v30:FindFirstChild("Vehicles")
				if vehicles then
					return vehicles
				end

				for _, descendant in ipairs(v30:GetDescendants()) do
					if descendant:IsA("Folder") and descendant.Name == "Vehicles" then
						return descendant
					end
				end

				return nil
			end

			local function fn26()
				local v33 = fn25()
				if not v33 then
					return {}
				end
				local tbl8 = {}

				for _, child in ipairs(v33:GetChildren()) do
					if child:IsA("Model") then
						table.insert(tbl8, child)
					end
				end

				return tbl8
			end

			local function fn27(arg)
				if not arg then
					return nil
				end

				if arg:IsA("BasePart") then
					return arg
				end

				if arg.PrimaryPart then
					return arg.PrimaryPart
				end

				for _, descendant in ipairs(arg:GetDescendants()) do
					if descendant:IsA("BasePart") then
						pcall(function()
							arg.PrimaryPart = descendant
						end)

						return descendant
					end
				end

				return nil
			end

			local function fn28()
				local character = localPlayer2.Character
				if not character then
					return nil
				end
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				if not humanoid then
					return nil
				end

				if humanoid.SeatPart then
					local parent = humanoid.SeatPart.Parent

					while parent and parent ~= v30 do
						if parent:IsA("Model") then
							local v33 = fn25()
							if v33 and parent:IsDescendantOf(v33) then
								return parent
							end

							if parent:FindFirstChildOfClass("VehicleSeat") then
								return parent
							end
						end

						parent = parent.Parent
					end
				end

				local position = character:GetPivot().Position
				local v33 = fn26()
				local n30 = 5
				local v34 = nil

				for _, v35 in ipairs(v33) do
					local v36 = fn27(v35)

					if v36 then
						local magnitude = (v36.Position - position).Magnitude

						if magnitude < n30 then
							n30 = magnitude
							v34 = v35
						end
					end
				end

				return v34
			end

			local function fn29(arg, arg2, arg3)
				return {
					normal = Vector3.new(0, 1, 0),
					direction = Vector3.new(0, -1, 0),
					hitName = arg3.Name,
					id = arg,
					material = Enum.Material.Metal,
					source = { sourceType = "Melee" },
					collisionPoint = arg3.Position,
					processedPlayerId = localPlayer2.UserId,
					hit = arg3,
					speed = 0.92738896608352661,
					gizmoType = arg2,
					position = arg3.Position,
					hitType = "gizmo",
				}
			end

			local function fn30()
				if not tbl5.atm then
					return
				end
				local v33 = fn23()
				if not v33 then
					return
				end
				local v34 = fn24()
				if not v34 then
					return
				end
				local v35 = next
				local children, v36 = v34:GetChildren()

				for _, v37 in v35, children, v36 do
					local attribute2 = v37:GetAttribute("gizmoType")

					if attribute2 == "ATM" then
						local attribute3 = v37:GetAttribute("objectId")

						if attribute3 then
							local primaryPart = v37:IsA("Model") and v37.PrimaryPart or v37:FindFirstChildWhichIsA("BasePart")

							if primaryPart then
								if not ((primaryPart.Position - v33.Position).Magnitude > 35) then
									Network.FireServer("registerMeleeHits", { fn29(attribute3, attribute2, primaryPart) })
								end
							end
						end
					end
				end
			end

			local function fn31()
				if not tbl5.register then
					return
				end
				local v33 = fn23()
				if not v33 then
					return
				end
				local v34 = fn24()
				if not v34 then
					return
				end
				local v35 = next
				local children, v36 = v34:GetChildren()

				for _, v37 in v35, children, v36 do
					local attribute2 = v37:GetAttribute("gizmoType")

					if attribute2 == "Register" then
						local attribute3 = v37:GetAttribute("objectId")

						if attribute3 then
							local primaryPart = v37:IsA("Model") and v37.PrimaryPart or v37:FindFirstChildWhichIsA("BasePart")

							if primaryPart then
								if not ((primaryPart.Position - v33.Position).Magnitude > 35) then
									Network.FireServer("registerMeleeHits", { fn29(attribute3, attribute2, primaryPart) })
								end
							end
						end
					end
				end
			end

			local function fn32()
				if not tbl5.safe then
					return
				end
				local v33 = fn23()
				if not v33 then
					return
				end
				local v34 = fn24()
				if not v34 then
					return
				end
				local v35 = next
				local children, v36 = v34:GetChildren()

				for _, v37 in v35, children, v36 do
					local attribute2 = v37:GetAttribute("gizmoType")

					if not (not attribute2 or not string.find(attribute2, "Safe")) then
						local attribute3 = v37:GetAttribute("objectId")

						if attribute3 then
							local primaryPart = v37:IsA("Model") and v37.PrimaryPart or v37:FindFirstChildWhichIsA("BasePart")

							if primaryPart then
								if not ((primaryPart.Position - v33.Position).Magnitude > 35) then
									Network.FireServer("gizmoInteraction", attribute3, "OpenSafe")
								end
							end
						end
					end
				end
			end

			local function fn33()
				if not tbl5.loot then
					return
				end
				local v33 = fn23()
				if not v33 then
					return
				end
				local v34 = fn24()
				if not v34 then
					return
				end
				local v35 = next
				local children, v36 = v34:GetChildren()

				for _, v37 in v35, children, v36 do
					local attribute2 = v37:GetAttribute("gizmoType")

					if attribute2 then
						if not (attribute2 == "ATM" or attribute2 == "Register" or string.find(attribute2, "Safe")) then
							local attribute3 = v37:GetAttribute("objectId")

							if attribute3 then
								local primaryPart = v37:IsA("Model") and v37.PrimaryPart or v37:FindFirstChildWhichIsA("BasePart")

								if primaryPart then
									if not ((primaryPart.Position - v33.Position).Magnitude > 35) then
										Network.InvokeServer("collectLoot", attribute3)
									end
								end
							end
						end
					end
				end
			end

			local function fn34()
				if not tbl5.sell then
					return
				end
				Network.InvokeServer("sellLoot", "Ofy")
			end

			local function fn35()
				if not tbl5.cash then
					return
				end
				local v33 = fn23()
				if not v33 then
					return
				end
				local v34 = fn24()
				if not v34 then
					return
				end
				local tbl8 = {}
				local v35 = next
				local children, v36 = v34:GetChildren()

				for _, v37 in v35, children, v36 do
					if v37.Name == "Cash" then
						local attribute2 = v37:GetAttribute("objectId")

						if attribute2 then
							local primaryPart = v37:IsA("Model") and v37.PrimaryPart or v37:FindFirstChildWhichIsA("BasePart")

							if primaryPart then
								if not ((v33.Position - primaryPart.Position).Magnitude > 35) then
									tbl8[#tbl8 + 1] = attribute2
								end
							end
						end
					end
				end

				Network.InvokeServer("collectCurrency", tbl8)
			end

			task.spawn(function()
				while task.wait(0.1) do
					fn30()
					fn31()
					fn32()
					fn33()
					fn34()
					fn35()
				end
			end)

			local function fn36()
				flag14 = false

				if connection then
					connection:Disconnect()
					connection = nil
				end

				if linearVelocity then
					linearVelocity:Destroy()
					linearVelocity = nil
				end

				if attachment then
					attachment:Destroy()
					attachment = nil
				end

				v32 = nil
			end

			local function fn37()
				local v33 = fn28()
				if not v33 then
					return
				end
				local v34 = fn27(v33)
				if not v34 then
					return
				end
				fn36()
				v32 = v33
				attachment = Instance.new("Attachment", v34)
				attachment.Name = "FlyAttachment"
				linearVelocity = Instance.new("LinearVelocity")
				linearVelocity.VectorVelocity = Vector3.zero
				linearVelocity.MaxForce = 9e9
				linearVelocity.Attachment0 = attachment
				linearVelocity.Parent = v34

				connection = RunService.Heartbeat:Connect(function()
					if not flag14 or not v32 or not v32:IsDescendantOf(v30) then
						fn36()
						return
					end
					local character = localPlayer2.Character
					if not character then
						return
					end
					local moveVector = require(localPlayer2.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector()

					if moveVector.Magnitude == 0 and character:FindFirstChildOfClass("Humanoid") then
						moveVector = character.Humanoid.MoveDirection
					end

					local currentCamera = v30.CurrentCamera
					local n30 = currentCamera.CFrame.LookVector * -moveVector.Z + currentCamera.CFrame.RightVector * moveVector.X

					if moveVector.Y ~= 0 then
						n30 += Vector3.new(0, moveVector.Y, 0)
					end

					if n30.Magnitude > 0 then
						linearVelocity.VectorVelocity = n30.Unit * n29
					else
						linearVelocity.VectorVelocity = Vector3.zero
					end
				end)

				flag14 = true
			end

			local function fn38(parent)
				local bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.Velocity = Vector3.new(0, n26, 0)
				bodyVelocity.MaxForce = Vector3.new(1e9, 1e9, 1e9)
				bodyVelocity.Parent = parent
				game.Debris:AddItem(bodyVelocity, 0.5)
				task.wait(0.1)
				local bodyVelocity2 = Instance.new("BodyVelocity")
				bodyVelocity2.Velocity = Vector3.new(0, n26 * 0.8, 0)
				bodyVelocity2.MaxForce = Vector3.new(1e9, 1e9, 1e9)
				bodyVelocity2.Parent = parent
				game.Debris:AddItem(bodyVelocity2, 0.5)
			end

			task.spawn(function()
				local flag15

				while true do
					task.wait(0.1)

					if flag12 then
						if str10 == "Vehicle" then
							local v33 = fn28()
							if not v33 then
								continue
							end
							local v34 = fn27(v33)
							if not v34 then
								continue
							end
							local tbl8 = {}

							for _, v35 in ipairs(fn26()) do
								if v35 == v33 then
									continue
								end
								local v36 = fn27(v35)

								if v36 then
									table.insert(tbl8, { primary = v36, dist = (v36.Position - v34.Position).Magnitude })
								end
							end

							if #tbl8 == 0 then
								continue
							end

							table.sort(tbl8, function(arg, arg2)
								return arg.dist < arg2.dist
							end)

							local v35

							if flag13 or not v31 then
								v35 = tbl8[1]
							else
								v35 = nil

								for _, v36 in ipairs(tbl8) do
									if v36.primary.Parent == v31 then
										v35 = v36
										break
									end
									v35 = nil
								end

								v35 = v35 or tbl8[1]
							end

							local primary = v35.primary
							local y = primary.Position.Y
							fn38(primary)
							local now2 = tick()

							while true do
								flag15 = false

								if tick() - now2 < 3 then
									task.wait(0.1)
									if primary.AssemblyLinearVelocity.Y > 10 or primary.Position.Y > y + 10 then
										flag15 = true
										break
									end
								else
									break
								end
							end

							if flag15 then
								task.wait(n27)
								continue
							end
							continue
						end

						if str10 ~= "Manual" then
							continue
						end
						local v33 = fn23()
						if not v33 then
							continue
						end
						local v34 = fn26()
						local tbl8 = {}

						for _, v35 in ipairs(v34) do
							local v36 = fn27(v35)

							if v36 then
								table.insert(tbl8, { primary = v36, dist = (v36.Position - v33.Position).Magnitude })
							end
						end

						if #tbl8 == 0 then
							continue
						end

						table.sort(tbl8, function(arg, arg2)
							return arg.dist < arg2.dist
						end)

						local primary = tbl8[1].primary
						local position = primary.Position
						local n30 = math.random(0, 1) == 0 and 5 or -5
						v33.CFrame = CFrame.new(position + Vector3.new(n30, 0, 0))
						task.wait(n28)
						v33.CFrame = CFrame.new(position - Vector3.new(n30, 0, 0))
						task.wait(n28)
						local bodyVelocity = Instance.new("BodyVelocity")
						bodyVelocity.Velocity = Vector3.new(0, n26, 0)
						bodyVelocity.MaxForce = Vector3.new(1e9, 1e9, 1e9)
						bodyVelocity.Parent = primary
						game.Debris:AddItem(bodyVelocity, 0.5)
						task.wait(n27)
					end
				end
			end)

			local function fn39()
				local tbl8 = {}

				if tbl6.playerEnabled then
					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer2 and player.Character then
							local str11 = "Player_" .. player.UserId
							tbl8[str11] = true

							if not tbl7[str11] or not tbl7[str11].Parent then
								local highlight = Instance.new("Highlight")
								highlight.Name = "ESP_Player"
								highlight.FillColor = tbl6.playerColor
								highlight.OutlineColor = tbl6.playerColor
								highlight.FillTransparency = 0.5
								highlight.OutlineTransparency = 0
								highlight.Adornee = player.Character
								highlight.Parent = player.Character
								tbl7[str11] = highlight
							else
								tbl7[str11].FillColor = tbl6.playerColor
								tbl7[str11].OutlineColor = tbl6.playerColor
							end
						end
					end
				end

				if tbl6.atmEnabled then
					local v33 = fn24()

					if v33 then
						for _, child in ipairs(v33:GetChildren()) do
							if child:GetAttribute("gizmoType") == "ATM" then
								local str11 = "ATM_" .. tostring(child:GetAttribute("objectId") or child:GetDebugId())
								tbl8[str11] = true

								if not tbl7[str11] or not tbl7[str11].Parent then
									local highlight = Instance.new("Highlight")
									highlight.Name = "ESP_ATM"
									highlight.FillColor = tbl6.atmColor
									highlight.OutlineColor = tbl6.atmColor
									highlight.FillTransparency = 0.5
									highlight.OutlineTransparency = 0
									highlight.Adornee = child
									highlight.Parent = child
									tbl7[str11] = highlight
								else
									tbl7[str11].FillColor = tbl6.atmColor
									tbl7[str11].OutlineColor = tbl6.atmColor
								end
							end
						end
					end
				end

				if tbl6.vehicleEnabled then
					for _, v33 in ipairs(fn26()) do
						local str11 = "Vehicle_" .. v33:GetDebugId()
						tbl8[str11] = true

						if not tbl7[str11] or not tbl7[str11].Parent then
							local highlight = Instance.new("Highlight")
							highlight.Name = "ESP_Vehicle"
							highlight.FillColor = tbl6.vehicleColor
							highlight.OutlineColor = tbl6.vehicleColor
							highlight.FillTransparency = 0.5
							highlight.OutlineTransparency = 0
							highlight.Adornee = v33
							highlight.Parent = v33
							tbl7[str11] = highlight
						else
							tbl7[str11].FillColor = tbl6.vehicleColor
							tbl7[str11].OutlineColor = tbl6.vehicleColor
						end
					end
				end

				for k, v33 in pairs(tbl7) do
					if not tbl8[k] then
						if v33 and v33.Parent then
							v33:Destroy()
						end

						tbl7[k] = nil
					end
				end
			end

			task.spawn(function()
				while true do
					task.wait(tbl6.refreshRate)
					fn39()
				end
			end)

			local v33 = v29:Tab({ Title = tbl4.MainTab, Icon = "zap" })
			local v34 = v29:Tab({ Title = tbl4.FlingTab, Icon = "car" })
			local v35 = v29:Tab({ Title = tbl4.ESPTab, Icon = "eye" })

			v33:Toggle({
				Title = tbl4.AutoATM,
				Callback = function(atm)
					tbl5.atm = atm
				end,
			})

			v33:Toggle({
				Title = tbl4.AutoRegister,
				Callback = function(register)
					tbl5.register = register
				end,
			})

			v33:Toggle({
				Title = tbl4.AutoSafe,
				Callback = function(safe)
					tbl5.safe = safe
				end,
			})

			v33:Toggle({
				Title = tbl4.AutoLoot,
				Callback = function(loot)
					tbl5.loot = loot
				end,
			})

			v33:Toggle({
				Title = tbl4.AutoSell,
				Callback = function(sell)
					tbl5.sell = sell
				end,
			})

			v33:Toggle({
				Title = tbl4.AutoCash,
				Callback = function(cash)
					tbl5.cash = cash
				end,
			})

			v34:Toggle({
				Title = tbl4.EnableFling,
				Callback = function(arg)
					flag12 = arg
				end,
			})

			v34:Dropdown({
				Title = tbl4.FlingMode,
				Values = { tbl4.VehicleMode, tbl4.ManualMode },
				Callback = function(arg)
					if arg == tbl4.VehicleMode then
						str10 = "Vehicle"
					else
						str10 = "Manual"
					end
				end,
			})

			local v36 = v34:Dropdown({
				Title = tbl4.TargetList,
				Values = { tbl4.NearestTarget },
				Callback = function(arg)
					if arg == tbl4.NearestTarget then
						flag13 = true
						v31 = nil
					else
						flag13 = false

						for _, v36 in ipairs(fn26()) do
							if v36.Name == arg then
								v31 = v36
								break
							end
						end
					end
				end,
			})

			v34:Slider({
				Title = tbl4.LaunchForce,
				Step = 10,
				Value = { Min = 100, Max = 2000, Default = 500 },
				Callback = function(arg)
					n26 = arg
				end,
			})

			v34:Slider({
				Title = tbl4.CycleInterval,
				Step = 0.1,
				Value = { Min = 0.1, Max = 3, Default = 0.5 },
				Callback = function(arg)
					n27 = arg
				end,
			})

			v34:Slider({
				Title = tbl4.ManualFrequency,
				Step = 0.01,
				Value = { Min = 0.01, Max = 0.5, Default = 0.05 },
				Callback = function(arg)
					n28 = arg
				end,
			})

			v34:Toggle({
				Title = tbl4.EnableFly,
				Callback = function(arg)
					if arg then
						fn37()
					else
						fn36()
					end
				end,
			})

			v34:Slider({
				Title = tbl4.FlySpeed,
				Step = 1,
				Value = { Min = 1, Max = 500, Default = 50 },
				Callback = function(arg)
					n29 = arg
				end,
			})

			v35:Toggle({
				Title = tbl4.EnablePlayerESP,
				Callback = function(playerEnabled)
					tbl6.playerEnabled = playerEnabled
					fn39()
				end,
			})

			v35:Colorpicker({
				Title = tbl4.PlayerESPColor,
				Default = tbl6.playerColor,
				Callback = function(playerColor)
					tbl6.playerColor = playerColor
					fn39()
				end,
			})

			v35:Toggle({
				Title = tbl4.EnableATMESP,
				Callback = function(atmEnabled)
					tbl6.atmEnabled = atmEnabled
					fn39()
				end,
			})

			v35:Colorpicker({
				Title = tbl4.ATMESPColor,
				Default = tbl6.atmColor,
				Callback = function(atmColor)
					tbl6.atmColor = atmColor
					fn39()
				end,
			})

			v35:Toggle({
				Title = tbl4.EnableVehicleESP,
				Callback = function(vehicleEnabled)
					tbl6.vehicleEnabled = vehicleEnabled
					fn39()
				end,
			})

			v35:Colorpicker({
				Title = tbl4.VehicleESPColor,
				Default = tbl6.vehicleColor,
				Callback = function(vehicleColor)
					tbl6.vehicleColor = vehicleColor
					fn39()
				end,
			})

			v35:Slider({
				Title = tbl4.ESPRefresh,
				Step = 0.5,
				Value = { Min = 0.5, Max = 10, Default = 1 },
				Callback = function(refreshRate)
					tbl6.refreshRate = refreshRate
				end,
			})

			local function fn40()
				if not v36 or not v36.SetValues then
					return
				end
				local v37 = fn26()
				local tbl8 = { tbl4.NearestTarget }

				for _, v38 in ipairs(v37) do
					table.insert(tbl8, v38.Name)
				end

				pcall(function()
					v36:SetValues(tbl8)
				end)
			end

			task.spawn(function()
				while true do
					task.wait(1)

					if flag12 then
						fn40()
					end
				end
			end)

			localPlayer2.CharacterAdded:Connect(function()
				if flag14 then
					fn36()
					fn37()
				end
			end)

			task.wait(1)

			StarterGui2:SetCore("SendNotification", {
				Title = "Shell.Lua",
				Text = str9 == "zh" and "所有功能已成功加载" or "Loaded Successfully",
				Duration = 2,
			})
		elseif game.PlaceId == 14259168147 then
			gradient = function(arg, arg2, arg3)
				local tbl3 = {}

				for match in arg:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
					table.insert(tbl3, match)
				end

				local n26 = #tbl3
				local str9 = ""

				for i = 1, n26 do
					local n27 = (i - 1) / math.max(n26 - 1, 1)
					local n28 = arg2.R + (arg3.R - arg2.R) * n27
					local n29 = arg2.G + (arg3.G - arg2.G) * n27
					local n30 = arg2.B + (arg3.B - arg2.B) * n27
					local v26 = tbl3[i]
					str9 ..= string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", math.floor(n28 * 255), math.floor(n29 * 255), math.floor(n30 * 255), v26)
				end

				return str9
			end

			redWhiteGradient = function(arg)
				local color = Color3.fromRGB
				return gradient(arg, Color3.fromRGB(255, 0, 0), color(255, 255, 255))
			end

			whiteRedGradient = function(...)
				error("devirt: could not lift closure: symbolic value of a VM local carried between instructions (None)")
			end

			blueWhiteGradient = function(arg)
				local color = Color3.fromRGB
				return gradient(arg, Color3.fromRGB(0, 0, 255), color(255, 255, 255))
			end

			local colorSequence = ColorSequence.new
			local tbl3 = {}
			local v26 = ColorSequenceKeypoint.new(0, Color3.fromHex("FFFFFF"))
			local v27 = ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF88AA"))
			local new = ColorSequenceKeypoint.new
			local color = Color3.fromHex
			tbl3[1] = v26
			tbl3[2] = v27

			do
				local values = table.pack(new(1, color("FF3344")))
				table.move(values, 1, values.n, 3, tbl3)
			end

			local v28 = colorSequence(tbl3)

			getgenv = getgenv or function()
				return _G
			end

			if getgenv().TransparencyEnabled == nil then
				getgenv().TransparencyEnabled = false
			end

			local str9 = "zh"
			local flag11 = false
			local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/Wind3"))()
			local color2 = Color3.fromHex

			lib:Popup({
				Title = "Shell",
				IconThemed = true,
				Content = "请选择语言 / Select Language" .. gradient(" WindUI", Color3.fromHex("#00FF87"), color2("#60EFFF")),
				Background = "https://chaton-images.s3.us-east-2.amazonaws.com/2Ig5V8B683X0CSHUHG5t9QvIrF8cj0h90NOyYVsRksg50JL4AldotWIDUU8AxCnm_2956x2217x7956684.png",
				BackgroundImageTransparency = 0.3,
				Buttons = {
					{
						Title = "Chinese",
						Callback = function()
							str9 = "zh"
							flag11 = true
						end,
						Variant = "Secondary",
					},
					{
						Title = "English",
						Icon = "arrow-right",
						Callback = function()
							str9 = "en"
							flag11 = true
						end,
						Variant = "Primary",
					},
				},
			})

			repeat
				task.wait(0.1)
			until flag11

			local tbl4 = {}

			if str9 == "en" then
				tbl4.MainTab = "Features"
				tbl4.VisualTab = "Visuals"
				tbl4.AboutTab = "About"
				tbl4.AutoGreen = "Auto Green"
				tbl4.ShotTiming = "Shot Timing"
				tbl4.SpeedBoost = "Speed Boost"
				tbl4.SpeedAmount = "Speed Amount"
				tbl4.BallMagnet = "Ball Magnet"
				tbl4.MagnetDist = "Magnet Distance"
				tbl4.AutoRebound = "Auto Rebound"
				tbl4.ReboundOffset = "Rebound Offset"
				tbl4.StealReach = "Steal Reach"
				tbl4.ReachMult = "Reach Multiplier"
				tbl4.AutoGuard = "Auto Guard"
				tbl4.GuardDist = "Guard Distance"
				tbl4.Prediction = "Prediction"
				tbl4.PostAimbot = "Post Aimbot"
				tbl4.PostDist = "Post Activation Distance"
				tbl4.AntiPost = "Anti Post"
				tbl4.AntiAnkle = "Anti Ankle Breaker"
				tbl4.AntiScreen = "Anti Screen"
				tbl4.AntiPush = "Anti Push"
				tbl4.AntiAFK = "Anti AFK"
				tbl4.SmartShoot = "Smart Shoot"
				tbl4.ESPPixel = "Pixel ESP"
				tbl4.ESPColor = "ESP Color"
				tbl4.Fullbright = "Fullbright"
				tbl4.FOVChanger = "FOV Changer"
				tbl4.FOVValue = "FOV Value"
				tbl4.FollowBall = "Follow Ball Carrier"
				tbl4.FollowOffset = "Follow Offset"
				tbl4.AboutTitle = "Shell.lua"
				tbl4.AboutDesc = "Shell Script"
				tbl4.AuthorInfo = "Author: 梅西 | QQ:3562501187"
				tbl4.Note = "All features collected from open-source scripts"
			else
				tbl4.MainTab = "功能"
				tbl4.VisualTab = "视觉"
				tbl4.AboutTab = "关于"
				tbl4.AutoGreen = "自动完美投篮"
				tbl4.ShotTiming = "投篮时机"
				tbl4.SpeedBoost = "速度提升"
				tbl4.SpeedAmount = "速度数值"
				tbl4.BallMagnet = "吸球"
				tbl4.MagnetDist = "吸球距离"
				tbl4.AutoRebound = "自动篮板"
				tbl4.ReboundOffset = "篮板偏移"
				tbl4.StealReach = "抢断范围"
				tbl4.ReachMult = "范围倍数"
				tbl4.AutoGuard = "自动防守"
				tbl4.GuardDist = "防守距离"
				tbl4.Prediction = "预测"
				tbl4.PostAimbot = "背打瞄准"
				tbl4.PostDist = "背打激活距离"
				tbl4.AntiPost = "抗背打"
				tbl4.AntiAnkle = "抗脚踝终结者"
				tbl4.AntiScreen = "抗挡拆"
				tbl4.AntiPush = "抗推人"
				tbl4.AntiAFK = "防挂机"
				tbl4.SmartShoot = "智能投篮"
				tbl4.ESPPixel = "像素透视"
				tbl4.ESPColor = "透视颜色"
				tbl4.Fullbright = "全亮"
				tbl4.FOVChanger = "视野修改"
				tbl4.FOVValue = "视野数值"
				tbl4.FollowBall = "跟随持球者"
				tbl4.FollowOffset = "跟随偏移"
				tbl4.AboutTitle = "Shell.lua"
				tbl4.AboutDesc = "Shell.lua牛逼"
				tbl4.AuthorInfo = "作者: 梅西 | QQ:3562501187"
				tbl4.Note = "shell.lua on top of China"
			end

			local v29 = lib:CreateWindow({
				Title = whiteRedGradient("Sun.Lua"),
				IconThemed = true,
				Folder = "Sun",
				Size = UDim2.fromOffset(491, 238),
				Transparent = getgenv().TransparencyEnabled,
				Theme = "Dark",
				NewElements = true,
				HideSearchBar = false,
				User = { Enabled = true, Anonymous = false },
				SideBarWidth = 185,
				ScrollBarEnabled = true,
				Background = "https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/quality_restoration_20260522215233585.jpg",
				BackgroundImageTransparency = 0.35,
			})

			v29:EditOpenButton({
				Title = whiteRedGradient("Sun.Lua"),
				CornerRadius = UDim.new(1, 2),
				StrokeThickness = 2,
				Color = v28,
				Draggable = true,
			})

			task.spawn(function()
				while true do
					task.wait(0.1)
					if not (v29.OpenButtonMain and v29.OpenButtonMain.Button) then
						continue
					end
					break
				end

				local uiStroke = v29.OpenButtonMain.Button:FindFirstChildWhichIsA("UIStroke")
				if not uiStroke then
					return
				end

				repeat
					task.wait(0.05)
				until uiStroke:FindFirstChildWhichIsA("UIGradient")

				local uiGradient = uiStroke:FindFirstChildWhichIsA("UIGradient")
				if not uiGradient then
					return
				end

				game:GetService("RunService").Heartbeat:Connect(function()
					if not uiGradient or not uiGradient.Parent then
						return
					end
					uiGradient.Rotation = tick() * 60 % 360
				end)
			end)

			v29:SetToggleKey(Enum.KeyCode.F, true)

			v29:OnClose(function()
			end)

			v29:Tab({ Title = tbl4.AboutTab, Icon = "crown" }):Paragraph({
				Title = "梅西",
				Desc = "Shell.lua by mess",
				ImageSize = 78,
				Thumbnail = "https://github.com/sdxs221/sd/blob/main/Image_1787998415322_238.jpg",
				ThumbnailSize = 290,
			})

			local Players = game:GetService("Players")
			local RunService = game:GetService("RunService")
			local UserInputService2 = game:GetService("UserInputService")
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local localPlayer2 = Players.LocalPlayer
			local character = localPlayer2.Character or localPlayer2.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			local humanoid = character:WaitForChild("Humanoid")
			local shooting = localPlayer2.PlayerGui:WaitForChild("Visual"):WaitForChild("Shooting")
			local shoot = ReplicatedStorage.Packages.Knit.Services.ControlService.RE.Shoot

			local function fn23()
				return workspace:WaitForChild("Game"):FindFirstChild("Courts") ~= nil
			end

			local v30 = fn23()

			local function fn24(arg)
				for _, player in pairs(Players:GetPlayers()) do
					if player.Character == arg then
						return player
					end
				end

				return nil
			end

			local function fn25(arg)
				local v31 = fn24(arg)
				if not v31 then
					return false
				end

				if not localPlayer2.Team or not v31.Team then
					return v31 ~= localPlayer2
				end
				return localPlayer2.Team ~= v31.Team
			end

			local function fn26()
				if v30 then
					local huge = math.huge
					local v31 = nil

					for _, child in pairs(workspace:GetChildren()) do
						if child:IsA("Model") and child:FindFirstChild("HumanoidRootPart") and child ~= localPlayer2.Character then
							local basketball = child:FindFirstChild("Basketball")

							if basketball and basketball:IsA("Tool") then
								local magnitude = (child.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude

								if magnitude < huge then
									huge = magnitude
									v31 = child
								end
							end
						end
					end

					if v31 then
						return v31, v31.HumanoidRootPart
					end
					return nil, nil
				end

				for _, child in pairs(workspace:GetChildren()) do
					if child:IsA("Model") and child:FindFirstChild("HumanoidRootPart") and child ~= localPlayer2.Character and fn25(child) then
						if child:FindFirstChild("Basketball") then
							return child, child.HumanoidRootPart
						end
					end
				end

				return nil, nil
			end

			local function fn27()
				local character2 = localPlayer2.Character
				if not character2 then
					return false
				end
				local basketball = character2:FindFirstChild("Basketball")
				return basketball and basketball:IsA("Tool")
			end

			local function fn28()
				local character2 = localPlayer2.Character
				if not character2 then
					return "right"
				end
				local basketball = character2:FindFirstChild("Basketball")

				if basketball then
					local handle = basketball:FindFirstChild("Handle")
					if handle and humanoidRootPart then
						return humanoidRootPart.CFrame:ToObjectSpace(handle.CFrame).X > 0 and "right" or "left"
					end
				end

				return "right"
			end

			local function fn29()
				local character2 = localPlayer2.Character
				if not character2 or not character2:FindFirstChild("HumanoidRootPart") then
					return nil
				end
				local humanoidRootPart2 = character2.HumanoidRootPart
				local n26 = 10
				local humanoidRootPart3 = nil

				for _, player in pairs(Players:GetPlayers()) do
					if player ~= localPlayer2 and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and fn25(player.Character) then
						local magnitude = (player.Character.HumanoidRootPart.Position - humanoidRootPart2.Position).Magnitude

						if magnitude < n26 then
							humanoidRootPart3 = player.Character.HumanoidRootPart
							n26 = magnitude
						end
					end
				end

				return humanoidRootPart3
			end

			local tbl5 = {
				autoShootEnabled = false,
				shootPower = 0.8,
				speedEnabled = false,
				desiredSpeed = 30,
				magnetEnabled = false,
				magnetDistance = 30,
				teleportEnabled = false,
				offsetDistance = 3,
				stealReachEnabled = false,
				stealReachMultiplier = 1.5,
				autoGuardEnabled = false,
				guardDistance = 10,
				predictionTime = 0.3,
				postAimbotEnabled = false,
				postHoldActive = false,
				postActivationDistance = 10,
				espEnabled = false,
				espColor = Color3.fromRGB(255, 0, 0),
				followEnabled = false,
				followOffset = -10,
				antiPostEnabled = false,
				antiAnkleEnabled = false,
				antiScreenEnabled = false,
				antiPushEnabled = false,
				antiAfkEnabled = false,
				smartShootEnabled = false,
				smartShootRadius = 10,
				fullbrightEnabled = false,
				fovEnabled = false,
				fovValue = 70,
			}

			local connection = nil

			local function fn30()
				if connection then
					return
				end

				connection = shooting:GetPropertyChangedSignal("Visible"):Connect(function()
					if tbl5.autoShootEnabled and shooting.Visible == true then
						task.wait(0.25)
						shoot:FireServer(tbl5.shootPower)
					end
				end)
			end

			local function fn31()
				if connection then
					connection:Disconnect()
					connection = nil
				end
			end

			local v31 = nil

			local function fn32(...)
				error("devirt: could not lift closure: symbolic value of a VM local carried between instructions (None)")
			end

			local function fn33()
				if v31 then
					v31()
					v31 = nil
				end
			end

			RunService.Heartbeat:Connect(function()
				if not tbl5.magnetEnabled then
					return
				end
				local character2 = localPlayer2.Character
				if not character2 or not character2:FindFirstChild("HumanoidRootPart") then
					return
				end
				local humanoidRootPart2 = character2.HumanoidRootPart

				for _, descendant in ipairs(workspace:GetDescendants()) do
					if descendant:IsA("BasePart") and descendant.Name == "Basketball" then
						if (humanoidRootPart2.Position - descendant.Position).Magnitude <= tbl5.magnetDistance then
							local touchTransmitter = descendant:FindFirstChildOfClass("TouchTransmitter")

							if not touchTransmitter then
								for _, descendant2 in ipairs(descendant:GetDescendants()) do
									if descendant2:IsA("TouchTransmitter") then
										touchTransmitter = descendant2
										break
									end
								end
							end

							if touchTransmitter then
								firetouchinterest(humanoidRootPart2, descendant, 0)
								firetouchinterest(humanoidRootPart2, descendant, 1)
							end
						end
					end
				end
			end)

			RunService.RenderStepped:Connect(function()
				if not tbl5.teleportEnabled then
					return
				end
				local character2 = localPlayer2.Character
				if not character2 or not character2:FindFirstChild("HumanoidRootPart") then
					return
				end
				local humanoidRootPart2 = character2.HumanoidRootPart
				local huge = math.huge
				local v32 = nil

				for _, child in ipairs(workspace:GetChildren()) do
					if child.Name == "Basketball" then
						local isBasePart = child:IsA("BasePart") and child or child:FindFirstChildWhichIsA("BasePart")

						if isBasePart then
							local magnitude = (isBasePart.Position - humanoidRootPart2.Position).Magnitude

							if magnitude < huge then
								huge = magnitude
								v32 = isBasePart
							end
						end
					end
				end

				if v32 then
					humanoidRootPart2.CFrame = CFrame.new(v32.Position + v32.CFrame.LookVector * tbl5.offsetDistance)
				end
			end)

			local connection2 = nil

			local function fn34()
				if connection2 then
					return
				end

				connection2 = RunService.Heartbeat:Connect(function()
					if not tbl5.followEnabled then
						return
					end
					local character2 = localPlayer2.Character
					if not character2 or not character2:FindFirstChild("HumanoidRootPart") then
						return
					end
					local humanoidRootPart2 = character2.HumanoidRootPart
					local v32
					v32, v32 = fn26()

					if v32 then
						humanoidRootPart2.CFrame = v32.CFrame * CFrame.new(0, 0, tbl5.followOffset)
					end
				end)
			end

			local function fn35()
				if connection2 then
					connection2:Disconnect()
					connection2 = nil
				end
			end

			local size = nil
			local size2 = nil

			local function fn36()
				local character2 = localPlayer2.Character
				if not character2 then
					return
				end
				local rightArm = character2:FindFirstChild("Right Arm") or character2:FindFirstChild("RightHand") or character2:FindFirstChild("RightLowerArm")
				local leftArm = character2:FindFirstChild("Left Arm") or character2:FindFirstChild("LeftHand") or character2:FindFirstChild("LeftLowerArm")

				if tbl5.stealReachEnabled then
					if rightArm then
						if not size then
							size = rightArm.Size
						end

						rightArm.Size = size * tbl5.stealReachMultiplier
						rightArm.Transparency = 1
						rightArm.CanCollide = false
						rightArm.Massless = true
					end

					if leftArm then
						if not size2 then
							size2 = leftArm.Size
						end

						leftArm.Size = size2 * tbl5.stealReachMultiplier
						leftArm.Transparency = 1
						leftArm.CanCollide = false
						leftArm.Massless = true
					end
				else
					if rightArm and size then
						rightArm.Size = size
						rightArm.Transparency = 0
						rightArm.Massless = false
						size = nil
					end

					if leftArm and size2 then
						leftArm.Size = size2
						leftArm.Transparency = 0
						leftArm.Massless = false
						size2 = nil
					end
				end
			end

			RunService.RenderStepped:Connect(function()
				if tbl5.stealReachEnabled then
					fn36()
				end
			end)

			local n26 = 0
			local connection3 = nil

			local function fn37()
				if tick() - n26 < 0.033 then
					return
				end
				n26 = tick()
				if not tbl5.postHoldActive then
					return
				end
				local character2 = localPlayer2.Character
				if not character2 or not character2:FindFirstChild("HumanoidRootPart") then
					return
				end
				local humanoidRootPart2 = character2.HumanoidRootPart
				local v32 = fn29()

				if v32 then
					local cframe = CFrame.new(humanoidRootPart2.Position, humanoidRootPart2.Position + (v32.Position - humanoidRootPart2.Position).Unit)

					if fn27() then
						humanoidRootPart2.CFrame = cframe * CFrame.Angles(0, math.rad(fn28() == "left" and 90 or -90), 0)
					else
						humanoidRootPart2.CFrame = cframe
					end
				end
			end

			UserInputService2.InputBegan:Connect(function(input, gameProcessed)
				if input.KeyCode == Enum.KeyCode.P and not gameProcessed and tbl5.postAimbotEnabled then
					tbl5.postHoldActive = true

					if not connection3 then
						connection3 = RunService.Heartbeat:Connect(fn37)
					end
				end
			end)

			UserInputService2.InputEnded:Connect(function(input)
				if input.KeyCode == Enum.KeyCode.P then
					tbl5.postHoldActive = false

					if connection3 then
						connection3:Disconnect()
						connection3 = nil
					end
				end
			end)

			local connection4 = nil
			local tbl6 = {}

			local function fn38()
				if not tbl5.autoGuardEnabled then
					return
				end
				local character2 = localPlayer2.Character
				if not character2 then
					return
				end
				local humanoid2 = character2:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
				if not humanoid2 or not humanoidRootPart2 then
					return
				end
				local v32, v33 = fn26()

				if v32 and v33 then
					local position = v33.Position
					local vector = Vector3.zero

					if tbl6[v32] then
						vector = (position - tbl6[v32]) * 10
					end

					tbl6[v32] = position
					local n27 = position + vector * tbl5.predictionTime
					local unit = (n27 - humanoidRootPart2.Position).Unit
					local vector2 = Vector3.new((n27 - unit * 5).X, humanoidRootPart2.Position.Y, (n27 - unit * 5).Z)
					local magnitude = (humanoidRootPart2.Position - v33.Position).Magnitude

					if magnitude <= tbl5.guardDistance then
						humanoid2:MoveTo(vector2)
						local VirtualInputManager = game:GetService("VirtualInputManager")

						if magnitude <= 10 then
							VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F, false, game)
						else
							VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F, false, game)
						end
					else
						game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.F, false, game)
					end
				else
					game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.F, false, game)
				end
			end

			local tbl7 = {}

			local function fn39(player)
				if player == localPlayer2 then
					return
				end

				if not player.Character then
					return
				end
				local highlight = Instance.new("Highlight")
				highlight.Name = "SunLuaESP"
				highlight.Adornee = player.Character
				highlight.Enabled = true
				highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				highlight.FillColor = tbl5.espColor
				highlight.FillTransparency = 0.6
				highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
				highlight.OutlineTransparency = 0.3
				highlight.Parent = player.Character
				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "SunLuaTag"
				billboardGui.AlwaysOnTop = true
				billboardGui.Size = UDim2.new(0, 100, 0, 20)
				billboardGui.StudsOffset = Vector3.new(0, 3, 0)
				billboardGui.Adornee = player.Character:FindFirstChild("Head") or player.Character:FindFirstChild("HumanoidRootPart")
				billboardGui.Parent = player.Character
				local textLabel = Instance.new("TextLabel")
				textLabel.Name = "PixelTag"
				textLabel.Size = UDim2.new(1, 0, 1, 0)
				textLabel.BackgroundTransparency = 1
				textLabel.Text = player.Name
				textLabel.TextColor3 = tbl5.espColor
				textLabel.TextStrokeTransparency = 0.5
				textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				textLabel.TextScaled = true
				textLabel.Font = Enum.Font.Code
				textLabel.Parent = billboardGui
			end

			local function fn40()
				for _, v32 in pairs(tbl7) do
					v32:Disconnect()
				end

				tbl7 = {}

				for _, player in pairs(Players:GetPlayers()) do
					if player.Character then
						local sunLuaESP = player.Character:FindFirstChild("SunLuaESP")

						if sunLuaESP then
							sunLuaESP:Destroy()
						end

						local sunLuaTag = player.Character:FindFirstChild("SunLuaTag")

						if sunLuaTag then
							sunLuaTag:Destroy()
						end
					end
				end
			end

			local function fn41()
				if not tbl5.espEnabled then
					return
				end

				for _, player in pairs(Players:GetPlayers()) do
					if player ~= localPlayer2 and player.Character then
						if not player.Character:FindFirstChild("SunLuaESP") then
							fn39(player)
						end
					end
				end
			end

			local v32 = v29:Tab({ Title = tbl4.MainTab, Icon = "crosshair" })

			v32:Toggle({
				Title = tbl4.AutoGreen,
				Callback = function(autoShootEnabled)
					tbl5.autoShootEnabled = autoShootEnabled

					if autoShootEnabled then
						fn30()
					else
						fn31()
					end
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.ShotTiming,
				Desc = "50-100%",
				Step = 1,
				Value = { Min = 50, Max = 100, Default = 80 },
				Callback = function(arg)
					tbl5.shootPower = arg / 100
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.SpeedBoost,
				Callback = function(speedEnabled)
					tbl5.speedEnabled = speedEnabled

					if speedEnabled then
						fn32()
					else
						fn33()
					end
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.SpeedAmount,
				Step = 1,
				Value = { Min = 16, Max = 100, Default = 30 },
				Callback = function(desiredSpeed)
					tbl5.desiredSpeed = desiredSpeed
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.BallMagnet,
				Callback = function(magnetEnabled)
					tbl5.magnetEnabled = magnetEnabled
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.MagnetDist,
				Step = 5,
				Value = { Min = 10, Max = 85, Default = 30 },
				Callback = function(magnetDistance)
					tbl5.magnetDistance = magnetDistance
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.AutoRebound,
				Callback = function(teleportEnabled)
					tbl5.teleportEnabled = teleportEnabled
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.ReboundOffset,
				Step = 1,
				Value = { Min = 0, Max = 6, Default = 3 },
				Callback = function(offsetDistance)
					tbl5.offsetDistance = offsetDistance
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.StealReach,
				Callback = function(stealReachEnabled)
					tbl5.stealReachEnabled = stealReachEnabled
					fn36()
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.ReachMult,
				Step = 1,
				Value = { Min = 10, Max = 30, Default = 15 },
				Callback = function(arg)
					tbl5.stealReachMultiplier = arg / 10

					if tbl5.stealReachEnabled then
						fn36()
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.AutoGuard,
				Callback = function(autoGuardEnabled)
					tbl5.autoGuardEnabled = autoGuardEnabled

					if autoGuardEnabled then
						if not connection4 then
							connection4 = RunService.Heartbeat:Connect(fn38)
						end
					else
						if connection4 then
							connection4:Disconnect()
							connection4 = nil
						end

						tbl6 = {}
						game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.F, false, game)
					end
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.GuardDist,
				Step = 1,
				Value = { Min = 5, Max = 20, Default = 10 },
				Callback = function(guardDistance)
					tbl5.guardDistance = guardDistance
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.Prediction,
				Step = 1,
				Value = { Min = 0, Max = 10, Default = 3 },
				Callback = function(arg)
					tbl5.predictionTime = arg / 10
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.PostAimbot,
				Callback = function(postAimbotEnabled)
					tbl5.postAimbotEnabled = postAimbotEnabled

					if not postAimbotEnabled then
						tbl5.postHoldActive = false

						if connection3 then
							connection3:Disconnect()
							connection3 = nil
						end
					end
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.PostDist,
				Step = 1,
				Value = { Min = 5, Max = 25, Default = 10 },
				Callback = function(postActivationDistance)
					tbl5.postActivationDistance = postActivationDistance
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.AntiPost,
				Callback = function(antiPostEnabled)
					tbl5.antiPostEnabled = antiPostEnabled

					if antiPostEnabled then
						enableAntiPost()
					else
						disableAntiPost()
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.AntiAnkle,
				Callback = function(antiAnkleEnabled)
					tbl5.antiAnkleEnabled = antiAnkleEnabled

					if antiAnkleEnabled then
						enableAntiAnkle()
					else
						disableAntiAnkle()
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.AntiScreen,
				Callback = function(antiScreenEnabled)
					tbl5.antiScreenEnabled = antiScreenEnabled

					if antiScreenEnabled then
						enableAntiScreen()
					else
						disableAntiScreen()
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.AntiPush,
				Callback = function(antiPushEnabled)
					tbl5.antiPushEnabled = antiPushEnabled

					if antiPushEnabled then
						enableAntiPush()
					else
						disableAntiPush()
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.AntiAFK,
				Callback = function(antiAfkEnabled)
					tbl5.antiAfkEnabled = antiAfkEnabled

					if antiAfkEnabled then
						enableAntiAfk()
					else
						disableAntiAfk()
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.SmartShoot,
				Callback = function(smartShootEnabled)
					tbl5.smartShootEnabled = smartShootEnabled

					if smartShootEnabled then
						enableSmartShoot()
					else
						disableSmartShoot()
					end
				end,
			})

			v32:Space()

			v32:Slider({
				Title = "Defender Check Radius",
				Desc = str9 == "zh" and "防守者检测半径" or "Defender detection radius",
				Step = 1,
				Value = { Min = 3, Max = 20, Default = 10 },
				Callback = function(smartShootRadius)
					tbl5.smartShootRadius = smartShootRadius
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.FollowBall,
				Callback = function(followEnabled)
					tbl5.followEnabled = followEnabled

					if followEnabled then
						fn34()
					else
						fn35()
					end
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.FollowOffset,
				Step = 1,
				Value = { Min = -15, Max = 15, Default = -10 },
				Callback = function(followOffset)
					tbl5.followOffset = followOffset
				end,
			})

			local v33 = v29:Tab({ Title = tbl4.VisualTab, Icon = "eye" })

			v33:Toggle({
				Title = tbl4.ESPPixel,
				Callback = function(espEnabled)
					tbl5.espEnabled = espEnabled

					if espEnabled then
						for _, player in pairs(Players:GetPlayers()) do
							if player ~= localPlayer2 then
								fn39(player)
							end
						end

						table.insert(tbl7, Players.PlayerAdded:Connect(fn39))
						table.insert(tbl7, RunService.Heartbeat:Connect(fn41))
					else
						fn40()
					end
				end,
			})

			v33:Space()

			v33:Colorpicker({
				Title = tbl4.ESPColor,
				Default = Color3.fromHex("FF0000"),
				Callback = function(espColor)
					tbl5.espColor = espColor

					if tbl5.espEnabled then
						for _, player in pairs(Players:GetPlayers()) do
							if player.Character then
								local sunLuaESP = player.Character:FindFirstChild("SunLuaESP")

								if sunLuaESP then
									sunLuaESP.FillColor = espColor
								end

								local sunLuaTag = player.Character:FindFirstChild("SunLuaTag")

								if sunLuaTag then
									local pixelTag = sunLuaTag:FindFirstChild("PixelTag")

									if pixelTag then
										pixelTag.TextColor3 = espColor
									end
								end
							end
						end
					end
				end,
			})

			v33:Space()

			v33:Toggle({
				Title = tbl4.Fullbright,
				Callback = function(fullbrightEnabled)
					tbl5.fullbrightEnabled = fullbrightEnabled

					if fullbrightEnabled then
						enableFullbright()
					else
						disableFullbright()
					end
				end,
			})

			v33:Space()

			v33:Toggle({
				Title = tbl4.FOVChanger,
				Callback = function(fovEnabled)
					tbl5.fovEnabled = fovEnabled

					if fovEnabled then
						enableFov()
					else
						disableFov()
					end
				end,
			})

			v33:Space()

			v33:Slider({
				Title = tbl4.FOVValue,
				Step = 1,
				Value = { Min = 30, Max = 120, Default = 70 },
				Callback = function(fovValue)
					tbl5.fovValue = fovValue
				end,
			})

			localPlayer2.CharacterAdded:Connect(function(character2)
				character = character2
				humanoidRootPart = character2:WaitForChild("HumanoidRootPart")
				humanoid = character2:WaitForChild("Humanoid")
				size = nil
				size2 = nil

				if tbl5.autoShootEnabled then
					task.delay(1, fn30)
				end

				if tbl5.speedEnabled then
					task.delay(1, fn32)
				end

				if tbl5.espEnabled then
					task.delay(1, function()
						for _, player in pairs(Players:GetPlayers()) do
							if player ~= localPlayer2 and player.Character then
								fn39(player)
							end
						end
					end)
				end

				if tbl5.antiAfkEnabled then
					task.delay(1, enableAntiAfk)
				end

				if tbl5.antiPostEnabled then
					task.delay(1, enableAntiPost)
				end

				if tbl5.antiAnkleEnabled then
					task.delay(1, enableAntiAnkle)
				end

				if tbl5.antiScreenEnabled then
					task.delay(1, enableAntiScreen)
				end

				if tbl5.antiPushEnabled then
					task.delay(1, enableAntiPush)
				end

				if tbl5.smartShootEnabled then
					task.delay(1, enableSmartShoot)
				end

				if tbl5.fullbrightEnabled then
					task.delay(1, enableFullbright)
				end

				if tbl5.fovEnabled then
					task.delay(1, enableFov)
				end
			end)

			local v34 = nil

			local function fn42()
				if v34 then
					v34:Disconnect()
					v34 = nil
				end
			end

			local v35 = nil

			local function fn43()
				if v35 then
					v35:Disconnect()
					v35 = nil
				end
			end

			local v36 = nil

			local function fn44()
				if v36 then
					v36:Disconnect()
					v36 = nil
				end
			end

			local v37 = nil

			local function fn45()
				if v37 then
					v37:Disconnect()
					v37 = nil
				end
			end

			local v38 = nil

			local function fn46()
				if v38 then
					v38:Disconnect()
					v38 = nil
				end
			end

			local v39 = nil

			local function fn47()
				if v39 then
					v39:Disconnect()
					v39 = nil
				end
			end

			local v40 = nil
			local tbl8 = {}

			local function fn48()
				if v40 then
					v40:Disconnect()
					v40 = nil
				end

				local Lighting = game:GetService("Lighting")
				Lighting.Brightness = tbl8.brightness or 1
				Lighting.FogEnd = tbl8.fogEnd or 100000
				Lighting.FogStart = tbl8.fogStart or 0
				Lighting.GlobalShadows = tbl8.globalShadows ~= nil and tbl8.globalShadows or true
				Lighting.TimeOfDay = tbl8.timeOfDay or "13:00:00"
			end

			local v41 = nil

			local function fn49()
				if v41 then
					v41:Disconnect()
					v41 = nil
				end

				workspace.CurrentCamera.FieldOfView = 70
			end

			game:GetService("CoreGui").ChildRemoved:Connect(function(child)
				if child.Name == "WindUI" then
					fn31()
					fn47()
					fn33()
					fn42()
					fn43()
					fn44()
					fn45()
					fn46()
					fn48()
					fn49()

					if connection4 then
						connection4:Disconnect()
					end

					if connection3 then
						connection3:Disconnect()
					end

					if connection2 then
						connection2:Disconnect()
					end

					fn40()
					game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.F, false, game)
				end
			end)

			pcall(function()
				lib:SetFont("rbxassetid://12187376739")
			end)

			local font = nil

			pcall(function()
				font = Font.new("rbxassetid://12187374765", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			end)

			local function fn50()
				pcall(function()
					local topbar = v29.UIElements.Main.Main:WaitForChild("Topbar", 3)

					for _, descendant in ipairs(topbar:GetDescendants()) do
						pcall(function()
							if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
								if font then
									descendant.FontFace = font
								end
							end
						end)
					end

					topbar.DescendantAdded:Connect(function(descendant)
						pcall(function()
							if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
								if font then
									descendant.FontFace = font
								end
							end
						end)
					end)
				end)
			end

			local function fn51()
				task.spawn(function()
					while true do
						task.wait(0.1)
						if not (v29.OpenButtonMain and v29.OpenButtonMain.Button) then
							continue
						end
						break
					end

					local button = v29.OpenButtonMain.Button

					for _, descendant in ipairs(button:GetDescendants()) do
						pcall(function()
							if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
								if font then
									descendant.FontFace = font
								end
							end
						end)
					end

					button.DescendantAdded:Connect(function(descendant)
						pcall(function()
							if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
								if font then
									descendant.FontFace = font
								end
							end
						end)
					end)
				end)
			end

			fn50()
			fn51()
		elseif game.PlaceId == 114696249619065 then
			local Players = game:GetService("Players")
			local RunService = game:GetService("RunService")
			local Workspace = game:GetService("Workspace")
			local UserInputService2 = game:GetService("UserInputService")
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			game:GetService("TweenService")
			local Lighting = game:GetService("Lighting")
			local CoreGui = game:GetService("CoreGui")
			local VirtualInputManager = pcall(game.GetService, game, "VirtualInputManager") and game:GetService("VirtualInputManager") or nil
			game:GetService("HttpService")
			local localPlayer2 = Players.LocalPlayer
			local character = localPlayer2.Character or localPlayer2.CharacterAdded:Wait()
			local humanoid = character:WaitForChild("Humanoid")
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			local currentCamera = Workspace.CurrentCamera
			local mouse = localPlayer2:GetMouse()
			local tbl3 = {}

			local function fn23()
				local tbl4 = {}
				local tbl5 = {}
				local remotes = ReplicatedStorage:FindFirstChild("Remotes")
				local remoteEvents = ReplicatedStorage:FindFirstChild("RemoteEvents")
				local remoteFunctions = ReplicatedStorage:FindFirstChild("RemoteFunctions")
				local rngRemotes = ReplicatedStorage:FindFirstChild("RNG_Remotes")
				local battleRemotes = ReplicatedStorage:FindFirstChild("BattleRemotes")
				local network = ReplicatedStorage:FindFirstChild("Network")
				local knit = ReplicatedStorage:FindFirstChild("Knit")
				local findFirstChild = ReplicatedStorage.FindFirstChild
				tbl5[1] = remotes
				tbl5[2] = remoteEvents
				tbl5[3] = remoteFunctions
				tbl5[4] = rngRemotes
				tbl5[5] = battleRemotes
				tbl5[6] = network
				tbl5[7] = knit

				do
					local values = table.pack(findFirstChild(ReplicatedStorage, "KNIT_REMOTE"))
					table.move(values, 1, values.n, 8, tbl5)
				end

				for _, v26 in ipairs(tbl5) do
					if v26 then
						for _, child in ipairs(v26:GetChildren()) do
							if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") or child:IsA("UnreliableRemoteEvent") then
								table.insert(tbl4, child)
								tbl3[child.Name] = child
							end
						end
					end
				end

				for _, child in ipairs(ReplicatedStorage:GetChildren()) do
					if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") or child:IsA("UnreliableRemoteEvent") then
						tbl3[child.Name] = child
						table.insert(tbl4, child)
					end
				end

				return tbl4
			end

			task.spawn(function()
				task.wait(2)
				pcall(fn23)
			end)

			local function fn24(arg)
				if tbl3[arg] then
					return tbl3[arg]
				end
				local v26 = fn23()

				for _, v27 in ipairs(v26) do
					if v27.Name:lower() == arg:lower() then
						return v27
					end
				end

				for _, v27 in ipairs(v26) do
					if v27.Name:lower():find(arg:lower()) then
						return v27
					end
				end

				return nil
			end

			local function fn25(arg, ...)
				pcall(function(...)
					local v26 = fn24(arg)

					if v26 then
						if v26:IsA("RemoteEvent") or v26:IsA("UnreliableRemoteEvent") then
							v26:FireServer(...)
						elseif v26:IsA("RemoteFunction") then
							v26:InvokeServer(...)
						end
					end
				end, ...)
			end

			localPlayer2.CharacterAdded:Connect(function(character2)
				character = character2
				local humanoid2 = character2:WaitForChild("Humanoid", 5)

				if humanoid2 then
					humanoid = humanoid2
				end

				local humanoidRootPart2 = character2:WaitForChild("HumanoidRootPart", 5)

				if humanoidRootPart2 then
					humanoidRootPart = humanoidRootPart2
				end

				if noclipEnabled then
					toggleNoclip(false)
					task.wait(0.1)
					toggleNoclip(true)
				end

				if flyEnabled then
					task.wait(0.3)
					refly()
				end

				if savedWalkSpeed ~= 16 and humanoid then
					humanoid.WalkSpeed = savedWalkSpeed
				end

				if savedJumpPower ~= 50 and humanoid then
					humanoid.JumpPower = savedJumpPower
					humanoid.UseJumpPower = true
				end
			end)

			pcall(function()
				if getgenv then
					local genv = getgenv()

					if genv then
						genv.spawn = genv.spawn or task.spawn
						genv.delay = genv.delay or task.delay
						genv.wait = genv.wait or task.wait
					end
				end

				if _G then
					_G.spawn = _G.spawn or task.spawn
					_G.delay = _G.delay or task.delay
					_G.wait = _G.wait or task.wait
				end

				if shared then
					shared.spawn = shared.spawn or task.spawn
					shared.delay = shared.delay or task.delay
					shared.wait = shared.wait or task.wait
				end
			end)

			local lib = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

			local v26 = lib:CreateWindow({
				Title = "Shell.lua",
				Author = "mess",
				Folder = "sh",
				Size = UDim2.fromOffset(600, 420),
				Transparent = false,
				Theme = "Dark",
				NewElements = false,
				HideSearchBar = false,
				User = {
					Enabled = true,
					Callback = function()
					end,
					Anonymous = false,
				},
				SideBarWidth = 180,
				ScrollBarEnabled = false,
				BackgroundImageTransparency = 0,
			})

			local colorSequence = ColorSequence.new
			local tbl4 = {}
			local v27 = ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 60))
			local v28 = ColorSequenceKeypoint.new(0.3, Color3.fromRGB(0, 255, 140))
			local v29 = ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255, 255, 255))
			local new = ColorSequenceKeypoint.new
			local color = Color3.fromRGB
			tbl4[1] = v27
			tbl4[2] = v28
			tbl4[3] = v29

			do
				local values = table.pack(new(1, color(0, 180, 255)))
				table.move(values, 1, values.n, 4, tbl4)
			end

			local v30 = colorSequence(tbl4)
			local uiStroke = nil
			local connection = nil

			local function fn26()
				if connection then
					connection:Disconnect()
					connection = nil
				end

				local main = v26.UIElements and v26.UIElements.Main
				if not main then
					return
				end

				if uiStroke and uiStroke.Parent then
					uiStroke:Destroy()
				end

				if not main:FindFirstChildOfClass("UICorner") then
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 10)
					uiCorner.Parent = main
				end

				uiStroke = Instance.new("UIStroke")
				uiStroke.Name = "Shell.lua"
				uiStroke.Thickness = 2
				uiStroke.Color = Color3.new(1, 1, 1)
				uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				uiStroke.LineJoinMode = Enum.LineJoinMode.Round
				uiStroke.Parent = main
				local uiGradient = Instance.new("UIGradient")
				uiGradient.Color = v30
				uiGradient.Parent = uiStroke

				connection = game:GetService("RunService").Heartbeat:Connect(function()
					local main2 = v26.UIElements and v26.UIElements.Main
					if not main2 or not main2.Visible then
						return
					end
					uiGradient.Rotation = tick() * 60 % 360
				end)
			end

			local function fn27()
				if connection then
					connection:Disconnect()
					connection = nil
				end
			end

			task.spawn(function()
				while true do
					task.wait(0.1)
					if not (v26.UIElements and v26.UIElements.Main) then
						continue
					end
					break
				end

				fn26()
				local main = v26.UIElements and v26.UIElements.Main

				if main then
					main:GetPropertyChangedSignal("Visible"):Connect(function()
						if main.Visible then
							fn26()
						else
							fn27()
						end
					end)
				end
			end)

			v26:EditOpenButton({
				Title = "Sheel.lua",
				Icon = "https://chaton-images.s3.us-east-2.amazonaws.com/FGI96MkDWpVCCTp9wp7fcS2GxX42ncuX45I5UEhCyvdJ5gIe8cEWTkYJKcwnar1w_2048x2048x1353073.png",
				CornerRadius = UDim.new(1, 0),
				StrokeThickness = 2,
				Color = v30,
				Draggable = true,
			})

			task.spawn(function()
				while true do
					task.wait(0.1)
					if not (v26.OpenButtonMain and v26.OpenButtonMain.Button) then
						continue
					end
					break
				end

				local uiStroke2 = v26.OpenButtonMain.Button:FindFirstChildWhichIsA("UIStroke")
				if not uiStroke2 then
					return
				end

				repeat
					task.wait(0.05)
				until uiStroke2:FindFirstChildWhichIsA("UIGradient")

				local uiGradient = uiStroke2:FindFirstChildWhichIsA("UIGradient")
				if not uiGradient then
					return
				end

				game:GetService("RunService").Heartbeat:Connect(function()
					if not uiGradient or not uiGradient.Parent then
						return
					end
					uiGradient.Rotation = tick() * 60 % 360
				end)
			end)

			local str9 = "zh"
			local flag11 = false

			lib:Popup({
				Title = "Sheel.lua",
				IconThemed = true,
				Content = "请选择语言 / Select Language",
				Buttons = {
					{
						Title = "Chinese",
						Callback = function()
							str9 = "zh"
							flag11 = true
						end,
						Variant = "Secondary",
					},
					{
						Title = "English",
						Icon = "arrow-right",
						Callback = function()
							str9 = "en"
							flag11 = true
						end,
						Variant = "Primary",
					},
				},
			})

			repeat
				task.wait(0.1)
			until flag11

			local tbl5 = {}

			if str9 == "en" then
				tbl5.Main = "Main"
				tbl5.Combat = "Combat"
				tbl5.Movement = "Movement"
				tbl5.AutoRoll = "Auto Roll"
				tbl5.AutoRollDesc = "Automatically roll for new items"
				tbl5.HitboxExpander = "Hitbox Expander"
				tbl5.HitboxDesc = "Expand player hitboxes"
				tbl5.AutoFarm = "Auto Farm Player"
				tbl5.AutoFarmDesc = "Teleport to and attack nearest player"
				tbl5.ESP = "Player ESP"
				tbl5.ESPDesc = "Pixel-style player ESP with highlights"
				tbl5.ESPTeamCheck = "ESP Team Check"
				tbl5.ESPTeamDesc = "Don't show ESP for teammates"
				tbl5.ESPTracers = "ESP Tracers"
				tbl5.ESPNames = "ESP Names"
				tbl5.Walkspeed = "Walk Speed"
				tbl5.JumpPower = "Jump Power"
				tbl5.Noclip = "Noclip"
				tbl5.NoclipDesc = "Walk through walls"
				tbl5.InfJump = "Infinite Jump"
				tbl5.InfJumpDesc = "Jump infinitely in the air"
				tbl5.Fly = "Fly"
				tbl5.FlyDesc = "Fly around the map"
				tbl5.FlySpeed = "Fly Speed"
				tbl5.TPWalk = "TP Walk"
				tbl5.TPWalkDesc = "Teleport while walking"
				tbl5.TPWalkSpeed = "TP Walk Speed"
				tbl5.Teleport = "Teleport to Random"
				tbl5.TeleportDesc = "Teleport to a random location"
				tbl5.AntiVoid = "Anti Void"
				tbl5.AntiVoidDesc = "Prevent falling into void"
				tbl5.SafePos = "Save Position"
				tbl5.SafePosDesc = "Save current position"
				tbl5.LoadPos = "Load Position"
				tbl5.LoadPosDesc = "Teleport to saved position"
				tbl5.AutoAura = "Auto Equip Best Aura"
				tbl5.AutoAuraDesc = "Automatically equip best aura"
				tbl5.AutoCraft = "Auto Craft"
				tbl5.AutoCraftDesc = "Automatically craft items"
				tbl5.AutoBuff = "Auto Buff"
				tbl5.AutoBuffDesc = "Automatically apply buffs"
				tbl5.AntiVoidHeight = "Anti Void Height"
				tbl5.PrintData = "Print Player Data"
				tbl5.HitboxSize = "Hitbox Size"
				tbl5.HitboxSizeDesc = "Set expanded hitbox size"
				tbl5.KillAura = "Kill Aura"
				tbl5.KillAuraDesc = "Auto attack nearby players"
				tbl5.KillAuraRange = "Kill Aura Range"
				tbl5.AutoClick = "Auto Click"
				tbl5.AutoClickDesc = "Rapid auto clicking"
				tbl5.AutoDodge = "Auto Dodge"
				tbl5.AutoDodgeDesc = "Auto teleport away from enemies"
				tbl5.InstantKill = "Instant Kill"
				tbl5.InstantKillDesc = "One-shot nearby enemies"
				tbl5.Fullbright = "Fullbright"
				tbl5.FullbrightDesc = "Max brightness everywhere"
				tbl5.SpeedBoost = "Speed Boost"
				tbl5.SpeedBoostDesc = "Extra walk speed boost"
				tbl5.BunnyHop = "Bunny Hop"
				tbl5.BunnyHopDesc = "Auto hop while moving"
				tbl5.SpinBot = "Spin Bot"
				tbl5.SpinBotDesc = "Spin your character"
				tbl5.SpinSpeed = "Spin Speed"
				tbl5.AutoCollect = "Auto Collect Drops"
				tbl5.AutoCollectDesc = "Automatically collect nearby drops"
				tbl5.ESPHealthBars = "ESP Health Bars"
				tbl5.ESPHealthBarsDesc = "Show health bars above players"
				tbl5.AutoEquip = "Auto Equip Best Tool"
				tbl5.AutoEquipDesc = "Auto equip strongest weapon"
				tbl5.AutoUpgrade = "Auto Upgrade"
				tbl5.AutoUpgradeDesc = "Auto upgrade stats"
				tbl5.AutoBattle = "Auto Join Battle"
				tbl5.AutoBattleDesc = "Auto join matchmaking"
				tbl5.AntiAFK = "Anti AFK"
				tbl5.ServerHop = "Server Hop"
				tbl5.RejoinServer = "Rejoin Server"
				tbl5.PlayerStats = "Player Stats"
				tbl5.AutoSell = "Auto Sell Duplicates"
				tbl5.AutoSellDesc = "Auto sell duplicate items"
				tbl5.AutoHeal = "Auto Heal"
				tbl5.AutoHealDesc = "Auto heal when low HP"
				tbl5.HealThreshold = "Heal Threshold (%)"
				tbl5.GodMode = "God Mode"
				tbl5.GodModeDesc = "Set health to infinite"
				tbl5.Dash = "Dash"
				tbl5.DashDesc = "Quick speed burst"
			else
				tbl5.Main = "主要"
				tbl5.Combat = "战斗"
				tbl5.Movement = "移动"
				tbl5.AutoRoll = "自动抽取"
				tbl5.AutoRollDesc = "自动抽取新物品"
				tbl5.HitboxExpander = "命中框扩大"
				tbl5.HitboxDesc = "扩大玩家命中框"
				tbl5.AutoFarm = "自动刷玩家"
				tbl5.AutoFarmDesc = "传送并攻击最近玩家"
				tbl5.ESP = "玩家透视"
				tbl5.ESPDesc = "像素风格玩家透视"
				tbl5.ESPTeamCheck = "透视队友过滤"
				tbl5.ESPTeamDesc = "不显示队友透视"
				tbl5.ESPTracers = "透视追踪线"
				tbl5.ESPNames = "透视名字"
				tbl5.Walkspeed = "移动速度"
				tbl5.JumpPower = "跳跃力量"
				tbl5.Noclip = "穿墙"
				tbl5.NoclipDesc = "穿过墙壁"
				tbl5.InfJump = "无限跳跃"
				tbl5.InfJumpDesc = "在空中无限跳跃"
				tbl5.Fly = "飞行"
				tbl5.FlyDesc = "在地图中飞行"
				tbl5.FlySpeed = "飞行速度"
				tbl5.TPWalk = "传送行走"
				tbl5.TPWalkDesc = "边走边传送"
				tbl5.TPWalkSpeed = "传送速度"
				tbl5.Teleport = "随机传送"
				tbl5.TeleportDesc = "传送到随机位置"
				tbl5.AntiVoid = "防虚空"
				tbl5.AntiVoidDesc = "防止掉入虚空"
				tbl5.SafePos = "保存位置"
				tbl5.SafePosDesc = "保存当前位置"
				tbl5.LoadPos = "加载位置"
				tbl5.LoadPosDesc = "传送到保存的位置"
				tbl5.AutoAura = "自动装备最佳光环"
				tbl5.AutoAuraDesc = "自动装备最佳光环"
				tbl5.AutoCraft = "自动合成"
				tbl5.AutoCraftDesc = "自动合成物品"
				tbl5.AutoBuff = "自动增益"
				tbl5.AutoBuffDesc = "自动应用增益效果"
				tbl5.HitboxSize = "命中框大小"
				tbl5.HitboxSizeDesc = "设置扩大的命中框大小"
				tbl5.KillAura = "击杀光环"
				tbl5.KillAuraDesc = "自动攻击附近玩家"
				tbl5.KillAuraRange = "击杀光环范围"
				tbl5.AutoClick = "自动点击"
				tbl5.AutoClickDesc = "快速自动点击"
				tbl5.AutoDodge = "自动闪避"
				tbl5.AutoDodgeDesc = "自动传送到安全位置"
				tbl5.InstantKill = "瞬间击杀"
				tbl5.InstantKillDesc = "一击必杀附近敌人"
				tbl5.Fullbright = "全亮模式"
				tbl5.FullbrightDesc = "全局最大亮度"
				tbl5.SpeedBoost = "速度加成"
				tbl5.SpeedBoostDesc = "额外移动速度"
				tbl5.BunnyHop = "兔子跳"
				tbl5.BunnyHopDesc = "移动时自动跳跃"
				tbl5.SpinBot = "旋转机器人"
				tbl5.SpinBotDesc = "角色自动旋转"
				tbl5.SpinSpeed = "旋转速度"
				tbl5.AutoCollect = "自动收集掉落"
				tbl5.AutoCollectDesc = "自动收集附近掉落物"
				tbl5.ESPHealthBars = "透视血条"
				tbl5.ESPHealthBarsDesc = "在玩家头顶显示血条"
				tbl5.AutoEquip = "自动装备最佳工具"
				tbl5.AutoEquipDesc = "自动装备最强武器"
				tbl5.AutoUpgrade = "自动升级"
				tbl5.AutoUpgradeDesc = "自动升级属性"
				tbl5.AutoBattle = "自动加入战斗"
				tbl5.AutoBattleDesc = "自动加入匹配"
				tbl5.AntiAFK = "防挂机"
				tbl5.ServerHop = "切换服务器"
				tbl5.RejoinServer = "重新加入"
				tbl5.PlayerStats = "玩家数据"
				tbl5.AutoSell = "自动出售重复"
				tbl5.AutoSellDesc = "自动出售重复物品"
				tbl5.AutoHeal = "自动回血"
				tbl5.AutoHealDesc = "低血量时自动回血"
				tbl5.HealThreshold = "回血阈值 (%)"
				tbl5.GodMode = "无敌模式"
				tbl5.GodModeDesc = "设置无限血量"
				tbl5.Dash = "冲刺"
				tbl5.DashDesc = "快速冲刺"
			end

			local cFrame = nil
			local enabled = false
			local flag12 = false
			local flag13 = false
			local enabled2 = false
			local flag14 = false
			local tbl6 = {}
			local tbl7 = {}
			local tbl8 = {}
			local flag15 = false
			local n26 = 20
			local n27 = 16
			local n28 = 50
			local tbl9 = {}
			local flag16 = false
			local connection2 = nil
			local flag17 = false
			local connection3 = nil
			local flag18 = false
			local n29 = 100
			local v31 = nil
			local v32 = nil
			local connection4 = nil
			local connection5 = nil
			local connection6 = nil
			local flag19 = false
			local n30 = 5
			local connection7 = nil
			local flag20 = false
			local flag21 = false
			local connection8 = nil
			local flag22 = false
			local thread = nil
			local flag23 = false
			local thread2 = nil
			local flag24 = false
			local thread3 = nil
			local flag25 = false
			local connection9 = nil
			local n31 = -50
			local tbl10 = { W = false, A = false, S = false, D = false, Space = false, LeftShift = false }

			local function fn28(arg)
				return arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Torso") or arg:FindFirstChild("UpperTorso")
			end

			local function fn29(arg)
				if localPlayer2.Team and arg.Team and localPlayer2.Team == arg.Team then
					return Color3.fromRGB(0, 255, 100)
				end
				return Color3.fromRGB(255, 50, 50)
			end

			local function fn30(arg)
				if localPlayer2.Team and arg.Team and localPlayer2.Team == arg.Team then
					return Color3.fromRGB(0, 255, 100)
				end
				return Color3.fromRGB(255, 0, 0)
			end

			local folder = Instance.new("Folder")
			folder.Name = "SHELL_ESP_Folder"
			folder.Parent = CoreGui

			local function fn31(arg)
				if arg == localPlayer2 then
					return
				end

				if flag12 and arg.Team and localPlayer2.Team and arg.Team == localPlayer2.Team then
					return
				end

				if tbl6[arg] then
					return
				end
				local character2 = arg.Character
				if not character2 then
					return
				end
				local v33 = fn28(character2)
				if not v33 then
					return
				end
				local folder2 = Instance.new("Folder")
				folder2.Name = "ESP_" .. arg.Name
				folder2.Parent = folder
				local highlight = Instance.new("Highlight")
				highlight.Name = "ESPHighlight"
				highlight.FillColor = fn30(arg)
				highlight.FillTransparency = 0.5
				highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
				highlight.OutlineTransparency = 0
				highlight.Adornee = character2
				highlight.Parent = folder2
				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "ESPNameBillboard"
				billboardGui.AlwaysOnTop = true
				billboardGui.Size = UDim2.new(0, 200, 0, 60)
				billboardGui.StudsOffset = Vector3.new(0, 3.5, 0)
				billboardGui.Adornee = v33
				billboardGui.Parent = folder2
				local textLabel = Instance.new("TextLabel")
				textLabel.Name = "NameLabel"
				textLabel.Size = UDim2.new(1, 0, 0, 20)
				textLabel.BackgroundTransparency = 1
				textLabel.Text = arg.Name
				textLabel.TextColor3 = fn29(arg)
				textLabel.TextStrokeTransparency = 0
				textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				textLabel.Font = Enum.Font.Code
				textLabel.TextSize = 14
				textLabel.Parent = billboardGui
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.Name = "HealthLabel"
				textLabel2.Size = UDim2.new(1, 0, 0, 18)
				textLabel2.Position = UDim2.new(0, 0, 0, 20)
				textLabel2.BackgroundTransparency = 1
				textLabel2.Text = ""
				textLabel2.TextColor3 = Color3.fromRGB(255, 50, 50)
				textLabel2.TextStrokeTransparency = 0
				textLabel2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				textLabel2.Font = Enum.Font.Code
				textLabel2.TextSize = 12
				textLabel2.Parent = billboardGui
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.Name = "DistLabel"
				textLabel3.Size = UDim2.new(1, 0, 0, 18)
				textLabel3.Position = UDim2.new(0, 0, 0, 38)
				textLabel3.BackgroundTransparency = 1
				textLabel3.Text = ""
				textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
				textLabel3.TextStrokeTransparency = 0
				textLabel3.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				textLabel3.Font = Enum.Font.Code
				textLabel3.TextSize = 12
				textLabel3.Parent = billboardGui
				local line = Drawing.new("Line")
				line.Visible = false
				line.Thickness = 1.5
				line.Color = fn29(arg)
				line.Transparency = 1
				local line2 = Drawing.new("Line")
				line2.Visible = false
				line2.Thickness = 1
				line2.Color = fn29(arg)
				line2.Transparency = 0.6

				tbl6[arg] = {
					Container = folder2,
					Highlight = highlight,
					Billboard = billboardGui,
					NameLabel = textLabel,
					HealthLabel = textLabel2,
					DistLabel = textLabel3,
					Tracer = line,
					BoxTracer = line2,
					Character = character2,
				}
			end

			local function fn32(arg)
				local v33 = tbl6[arg]
				if not v33 then
					return
				end

				pcall(function()
					if v33.Tracer then
						v33.Tracer.Visible = false
						v33.Tracer:Remove()
					end
				end)

				pcall(function()
					if v33.BoxTracer then
						v33.BoxTracer.Visible = false
						v33.BoxTracer:Remove()
					end
				end)

				pcall(function()
					if v33.Container and v33.Container.Parent then
						v33.Container:Destroy()
					end
				end)

				tbl6[arg] = nil
			end

			local function fn33()
				for k in pairs(tbl6) do
					fn32(k)
				end
			end

			local function fn34()
				for k, v33 in pairs(tbl6) do
					if not k.Parent then
						fn32(k)
					else
						local character2 = k.Character

						if not character2 then
							fn32(k)
						else
							local v34 = fn28(character2)

							if not v34 then
								v33.Billboard.Enabled = false
								v33.Highlight.Adornee = nil
								v33.Tracer.Visible = false
								v33.BoxTracer.Visible = false
							elseif flag12 and k.Team and localPlayer2.Team and k.Team == localPlayer2.Team then
								v33.Highlight.Enabled = false
								v33.Billboard.Enabled = false
								v33.Tracer.Visible = false
								v33.BoxTracer.Visible = false
							else
								local v35 = fn29(k)
								local v36 = fn30(k)
								v33.Highlight.Enabled = true
								v33.Highlight.Adornee = character2
								v33.Highlight.FillColor = v36
								v33.Billboard.Adornee = v34
								v33.Billboard.Enabled = enabled2
								v33.NameLabel.TextColor3 = v35
								local humanoid2 = character2:FindFirstChildOfClass("Humanoid")

								if humanoid2 and flag14 then
									v33.HealthLabel.Text = math.floor(humanoid2.Health) .. "/" .. math.floor(humanoid2.MaxHealth) .. " HP"
									local n32 = humanoid2.Health / humanoid2.MaxHealth
									v33.HealthLabel.TextColor3 = Color3.fromRGB(255 * (1 - n32), 255 * n32, 50)
									v33.HealthLabel.Visible = true
								else
									v33.HealthLabel.Visible = false
								end

								if humanoidRootPart then
									local n32 = math.floor((humanoidRootPart.Position - v34.Position).Magnitude)
									v33.DistLabel.Text = tostring(n32) .. "m"
									v33.DistLabel.Visible = enabled2
								end

								if flag13 then
									local v37, v38 = currentCamera:WorldToViewportPoint(v34.Position)

									if v38 then
										v33.Tracer.Visible = true
										v33.Tracer.From = Vector2.new(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y)
										v33.Tracer.To = Vector2.new(v37.X, v37.Y)
										v33.Tracer.Color = v35
									else
										v33.Tracer.Visible = false
									end
								else
									v33.Tracer.Visible = false
								end
							end
						end
					end
				end
			end

			local function fn35()
				for _, player in ipairs(Players:GetPlayers()) do
					fn31(player)
				end

				local connection10 = Players.PlayerAdded:Connect(function(player)
					task.wait(1.5)

					if enabled then
						fn31(player)
					end
				end)

				local connection11 = Players.PlayerRemoving:Connect(function(player)
					fn32(player)
				end)

				table.insert(tbl7, connection10)
				table.insert(tbl7, connection11)
			end

			local function fn36(arg)
				enabled = arg

				if arg then
					fn35()

					for _, v33 in ipairs(tbl7) do
						v33:Disconnect()
					end

					tbl7 = {}
					local connection10 = RunService.RenderStepped:Connect(fn34)
					table.insert(tbl7, connection10)
				else
					for _, v33 in ipairs(tbl7) do
						v33:Disconnect()
					end

					tbl7 = {}
					fn33()
				end
			end

			local function fn37(arg)
				flag15 = arg

				if arg then
					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer2 and player.Character then
							local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart2 and not tbl9[player] then
								tbl9[player] = humanoidRootPart2.Size
								humanoidRootPart2.Size = Vector3.new(n26, n26, n26)
								humanoidRootPart2.Transparency = 0.7
							end
						end
					end

					task.spawn(function()
						while flag15 do
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")

									if humanoidRootPart2 then
										if not tbl9[player] then
											tbl9[player] = humanoidRootPart2.Size
										end

										humanoidRootPart2.Size = Vector3.new(n26, n26, n26)
										humanoidRootPart2.Transparency = 0.7
									end
								end
							end

							task.wait(0.3)
						end
					end)
				else
					for k, v33 in pairs(tbl9) do
						pcall(function()
							if k.Character then
								local humanoidRootPart2 = k.Character:FindFirstChild("HumanoidRootPart")

								if humanoidRootPart2 then
									humanoidRootPart2.Size = v33
									humanoidRootPart2.Transparency = 1
								end
							end
						end)
					end

					tbl9 = {}
				end
			end

			local function fn38(arg)
				flag16 = arg

				if arg then
					connection2 = RunService.Stepped:Connect(function()
						if not character then
							return
						end

						for _, descendant in ipairs(character:GetDescendants()) do
							if descendant:IsA("BasePart") then
								descendant.CanCollide = false
							end
						end
					end)
				else
					if connection2 then
						connection2:Disconnect()
						connection2 = nil
					end

					if character then
						for _, descendant in ipairs(character:GetDescendants()) do
							if descendant:IsA("BasePart") then
								descendant.CanCollide = true
							end
						end
					end
				end
			end

			local function fn39(arg)
				flag17 = arg

				if arg then
					connection3 = UserInputService2.JumpRequest:Connect(function()
						if character and humanoid then
							humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						end
					end)
				elseif connection3 then
					connection3:Disconnect()
					connection3 = nil
				end
			end

			local function fn40(arg)
				flag18 = arg

				if arg then
					if not character or not humanoidRootPart then
						return
					end
					local bodyGyro = humanoidRootPart:FindFirstChildOfClass("BodyGyro")

					if bodyGyro then
						bodyGyro:Destroy()
					end

					local bodyVelocity = humanoidRootPart:FindFirstChildOfClass("BodyVelocity")

					if bodyVelocity then
						bodyVelocity:Destroy()
					end

					task.wait(0.05)
					local bodyGyro2 = Instance.new("BodyGyro")
					bodyGyro2.P = 90000
					bodyGyro2.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
					bodyGyro2.CFrame = humanoidRootPart.CFrame
					bodyGyro2.Parent = humanoidRootPart
					v32 = bodyGyro2
					local bodyVelocity2 = Instance.new("BodyVelocity")
					bodyVelocity2.Velocity = Vector3.zero
					bodyVelocity2.MaxForce = Vector3.new(9e9, 9e9, 9e9)
					bodyVelocity2.Parent = humanoidRootPart
					v31 = bodyVelocity2
					tbl10 = { W = false, A = false, S = false, D = false, Space = false, LeftShift = false }

					connection5 = UserInputService2.InputBegan:Connect(function(input, gameProcessed)
						if gameProcessed then
							return
						end

						if input.KeyCode == Enum.KeyCode.W then
							tbl10.W = true
						elseif input.KeyCode == Enum.KeyCode.A then
							tbl10.A = true
						elseif input.KeyCode == Enum.KeyCode.S then
							tbl10.S = true
						elseif input.KeyCode == Enum.KeyCode.D then
							tbl10.D = true
						elseif input.KeyCode == Enum.KeyCode.Space then
							tbl10.Space = true
						elseif input.KeyCode == Enum.KeyCode.LeftShift then
							tbl10.LeftShift = true
						end
					end)

					connection6 = UserInputService2.InputEnded:Connect(function(input)
						if input.KeyCode == Enum.KeyCode.W then
							tbl10.W = false
						elseif input.KeyCode == Enum.KeyCode.A then
							tbl10.A = false
						elseif input.KeyCode == Enum.KeyCode.S then
							tbl10.S = false
						elseif input.KeyCode == Enum.KeyCode.D then
							tbl10.D = false
						elseif input.KeyCode == Enum.KeyCode.Space then
							tbl10.Space = false
						elseif input.KeyCode == Enum.KeyCode.LeftShift then
							tbl10.LeftShift = false
						end
					end)

					connection4 = RunService.RenderStepped:Connect(function()
						if not flag18 or not v31 or not v31.Parent then
							return
						end

						if not humanoidRootPart or not v32 then
							return
						end
						v32.CFrame = currentCamera.CFrame
						local lookVector = currentCamera.CFrame.LookVector
						local rightVector = currentCamera.CFrame.RightVector
						local vector = Vector3.zero

						if tbl10.W then
							vector = Vector3.zero + lookVector
						end

						if tbl10.S then
							vector -= lookVector
						end

						if tbl10.A then
							vector -= rightVector
						end

						if tbl10.D then
							vector += rightVector
						end

						if tbl10.Space then
							vector += Vector3.new(0, 1, 0)
						end

						if tbl10.LeftShift then
							vector -= Vector3.new(0, 1, 0)
						end

						if vector.Magnitude > 0 then
							vector = vector.Unit * n29
						end

						v31.Velocity = vector

						if humanoid then
							humanoid.PlatformStand = true
						end
					end)
				else
					if connection4 then
						connection4:Disconnect()
						connection4 = nil
					end

					if connection5 then
						connection5:Disconnect()
						connection5 = nil
					end

					if connection6 then
						connection6:Disconnect()
						connection6 = nil
					end

					if v31 and v31.Parent then
						v31:Destroy()
						v31 = nil
					end

					if v32 and v32.Parent then
						v32:Destroy()
						v32 = nil
					end

					if humanoidRootPart then
						local bodyGyro = humanoidRootPart:FindFirstChildOfClass("BodyGyro")

						if bodyGyro then
							bodyGyro:Destroy()
						end

						local bodyVelocity = humanoidRootPart:FindFirstChildOfClass("BodyVelocity")

						if bodyVelocity then
							bodyVelocity:Destroy()
						end
					end

					if humanoid then
						humanoid.PlatformStand = false
					end

					tbl10 = { W = false, A = false, S = false, D = false, Space = false, LeftShift = false }
				end
			end

			local function fn41(arg)
				flag19 = arg

				if arg then
					connection7 = RunService.Heartbeat:Connect(function()
						if not character or not humanoidRootPart or not humanoid then
							return
						end
						local moveDirection = humanoid.MoveDirection

						if moveDirection.Magnitude > 0.1 then
							humanoidRootPart.CFrame = humanoidRootPart.CFrame + moveDirection.Unit * n30
						end
					end)
				elseif connection7 then
					connection7:Disconnect()
					connection7 = nil
				end
			end

			local function fn42(arg)
				flag20 = arg

				if autoRollThread then
					autoRollThread = nil
				end

				if arg then
					autoRollThread = task.spawn(function()
						while flag20 do
							pcall(function()
								local remotes = ReplicatedStorage:FindFirstChild("Remotes")
								local remoteEvents = ReplicatedStorage:FindFirstChild("RemoteEvents")
								remoteEvents = remotes or remoteEvents or ReplicatedStorage
								local roll = remoteEvents:FindFirstChild("Roll") or remoteEvents:FindFirstChild("RequestRoll") or remoteEvents:FindFirstChild("DoRoll") or remoteEvents:FindFirstChild("Spin") or remoteEvents:FindFirstChild("RollAura")

								if roll and roll:IsA("RemoteEvent") then
									roll:FireServer()
								elseif roll and roll:IsA("RemoteFunction") then
									roll:InvokeServer()
								else
									for _, child in ipairs(remoteEvents:GetChildren()) do
										if child:IsA("RemoteEvent") and (child.Name:lower():find("roll") or child.Name:lower():find("spin") or child.Name:lower():find("aura")) then
											child:FireServer()
											break
										end
									end
								end
							end)

							task.wait(0.08)
						end
					end)
				end
			end

			local function fn43(arg)
				flag21 = arg

				if connection8 then
					connection8:Disconnect()
					connection8 = nil
				end

				if arg then
					connection8 = RunService.Heartbeat:Connect(function()
						if not flag21 then
							return
						end

						pcall(function()
							local character2 = localPlayer2.Character
							if not character2 then
								return
							end
							local v33 = fn28(character2)
							if not v33 then
								return
							end
							local huge = math.huge
							local v34 = nil

							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local v35 = fn28(player.Character)
									local humanoid2 = player.Character:FindFirstChildOfClass("Humanoid")

									if v35 and humanoid2 and humanoid2.Health > 0 then
										local magnitude = (v33.Position - v35.Position).Magnitude

										if magnitude < huge and magnitude < 500 then
											huge = magnitude
											v34 = player
										end
									end
								end
							end

							if v34 and v34.Character then
								local v35 = fn28(v34.Character)

								if v35 then
									v33.CFrame = v35.CFrame * CFrame.new(0, 0, 4)
									local humanoid2 = character2:FindFirstChildOfClass("Humanoid")

									if humanoid2 then
										for _, child in ipairs(character2:GetChildren()) do
											if child:IsA("Tool") then
												child:Activate()
											end
										end

										pcall(function()
											local tool = localPlayer2.Backpack:FindFirstChildOfClass("Tool")

											if tool then
												humanoid2:EquipTool(tool)
											end
										end)
									end
								end
							end
						end)
					end)
				end
			end

			local function fn44(arg)
				flag22 = arg

				if thread then
					thread = nil
				end

				if arg then
					thread = task.spawn(function()
						while flag22 do
							pcall(function()
								fn25("EquipBestAura")
								fn25("EquipAura")
								fn25("AutoEquip")
							end)

							task.wait(2)
						end
					end)
				end
			end

			local function fn45(arg)
				flag23 = arg

				if thread2 then
					thread2 = nil
				end

				if arg then
					thread2 = task.spawn(function()
						while flag23 do
							pcall(function()
								fn25("Craft")
								fn25("CraftItem")
								fn25("CraftAll")
								fn25("AutoCraft")
							end)

							task.wait(3)
						end
					end)
				end
			end

			local function fn46(arg)
				flag24 = arg

				if thread3 then
					thread3 = nil
				end

				if arg then
					thread3 = task.spawn(function()
						while flag24 do
							pcall(function()
								fn25("ApplyBuff")
								fn25("UseBuff")
								fn25("Buff")
							end)

							task.wait(5)
						end
					end)
				end
			end

			local function fn47(arg)
				flag25 = arg

				if connection9 then
					connection9:Disconnect()
					connection9 = nil
				end

				if arg then
					connection9 = RunService.Heartbeat:Connect(function()
						if not humanoidRootPart then
							return
						end

						if humanoidRootPart.Position.Y < n31 then
							humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position.X, n31 + 50, humanoidRootPart.Position.Z)
						end
					end)
				end
			end

			local function fn48()
				if not humanoidRootPart then
					return
				end
				local spawnLocations = Workspace:FindFirstChild("SpawnLocations") or Workspace:FindFirstChild("Spawns")

				if spawnLocations and #spawnLocations:GetChildren() > 0 then
					local random = math.random
					local v33 = spawnLocations:GetChildren()[random(1, #spawnLocations:GetChildren())]
					if v33 and v33:IsA("BasePart") then
						humanoidRootPart.CFrame = v33.CFrame + Vector3.new(0, 5, 0)
						return
					end
				end

				local n32 = math.random(-500, 500)
				local n33 = math.random(-500, 500)
				humanoidRootPart.CFrame = CFrame.new(n32, 100, n33)
			end

			local v33 = v26:Tab({ Title = tbl5.Main, Icon = "home" })
			local v34 = v26:Tab({ Title = tbl5.Combat, Icon = "swords" })
			local v35 = v26:Tab({ Title = tbl5.Movement, Icon = "zap" })

			v33:Paragraph({
				Title = "Shell.lua",
				Desc = [[RNG Battles | OgDev Studios
Author: core | v0.3.0.1
Language: ]] .. (str9 == "zh" and "Chinese" or "English"),
				Image = "https://chaton-images.s3.us-east-2.amazonaws.com/FGI96MkDWpVCCTp9wp7fcS2GxX42ncuX45I5UEhCyvdJ5gIe8cEWTkYJKcwnar1w_2048x2048x1353073.png",
				ImageSize = 40,
			})

			v34:Toggle({
				Title = tbl5.AutoRoll,
				Desc = tbl5.AutoRollDesc,
				Default = false,
				Callback = function(arg)
					fn42(arg)
				end,
			})

			v34:Toggle({
				Title = tbl5.AutoAura,
				Desc = tbl5.AutoAuraDesc,
				Default = false,
				Callback = function(arg)
					fn44(arg)
				end,
			})

			v34:Toggle({
				Title = tbl5.AutoCraft,
				Desc = tbl5.AutoCraftDesc,
				Default = false,
				Callback = function(arg)
					fn45(arg)
				end,
			})

			v34:Toggle({
				Title = tbl5.AutoBuff,
				Desc = tbl5.AutoBuffDesc,
				Default = false,
				Callback = function(arg)
					fn46(arg)
				end,
			})

			v34:Divider()

			v34:Toggle({
				Title = tbl5.HitboxExpander,
				Desc = tbl5.HitboxDesc,
				Default = false,
				Callback = function(arg)
					fn37(arg)
				end,
			})

			v34:Slider({
				Title = tbl5.HitboxSize,
				Value = { Min = 5, Max = 50, Default = 20 },
				Callback = function(arg)
					n26 = arg
				end,
			})

			v34:Toggle({
				Title = tbl5.AutoFarm,
				Desc = tbl5.AutoFarmDesc,
				Default = false,
				Callback = function(arg)
					fn43(arg)
				end,
			})

			v34:Divider()

			v34:Toggle({
				Title = tbl5.ESP,
				Desc = tbl5.ESPDesc,
				Default = false,
				Callback = function(arg)
					fn36(arg)
				end,
			})

			v34:Toggle({
				Title = tbl5.ESPTeamCheck,
				Desc = tbl5.ESPTeamDesc,
				Default = false,
				Callback = function(arg)
					flag12 = arg
				end,
			})

			v34:Toggle({
				Title = tbl5.ESPTracers,
				Default = false,
				Callback = function(arg)
					flag13 = arg
				end,
			})

			v34:Toggle({
				Title = tbl5.ESPNames,
				Default = false,
				Callback = function(arg)
					enabled2 = arg
				end,
			})

			v35:Slider({
				Title = tbl5.Walkspeed,
				Value = { Min = 16, Max = 500, Default = 16 },
				Callback = function(walkSpeed)
					n27 = walkSpeed

					if humanoid then
						humanoid.WalkSpeed = walkSpeed
					end
				end,
			})

			v35:Slider({
				Title = tbl5.JumpPower,
				Value = { Min = 50, Max = 500, Default = 50 },
				Callback = function(jumpPower)
					n28 = jumpPower

					if humanoid then
						humanoid.JumpPower = jumpPower
						humanoid.UseJumpPower = true
					end
				end,
			})

			v35:Toggle({
				Title = tbl5.Noclip,
				Desc = tbl5.NoclipDesc,
				Default = false,
				Callback = function(arg)
					fn38(arg)
				end,
			})

			v35:Toggle({
				Title = tbl5.InfJump,
				Desc = tbl5.InfJumpDesc,
				Default = false,
				Callback = function(arg)
					fn39(arg)
				end,
			})

			v35:Toggle({
				Title = tbl5.Fly,
				Desc = tbl5.FlyDesc,
				Default = false,
				Callback = function(arg)
					fn40(arg)
				end,
			})

			v35:Slider({
				Title = tbl5.FlySpeed,
				Value = { Min = 10, Max = 500, Default = 100 },
				Callback = function(arg)
					n29 = arg
				end,
			})

			v35:Toggle({
				Title = tbl5.TPWalk,
				Desc = tbl5.TPWalkDesc,
				Default = false,
				Callback = function(arg)
					fn41(arg)
				end,
			})

			v35:Slider({
				Title = tbl5.TPWalkSpeed,
				Value = { Min = 1, Max = 50, Default = 5 },
				Callback = function(arg)
					n30 = arg
				end,
			})

			v35:Button({
				Title = tbl5.Teleport,
				Desc = tbl5.TeleportDesc,
				Callback = function()
					fn48()
				end,
			})

			v35:Toggle({
				Title = tbl5.AntiVoid,
				Desc = tbl5.AntiVoidDesc,
				Default = false,
				Callback = function(arg)
					fn47(arg)
				end,
			})

			v35:Slider({
				Title = tbl5.AntiVoidHeight,
				Value = { Min = -200, Max = 0, Default = -50 },
				Callback = function(arg)
					n31 = arg
				end,
			})

			v35:Divider()

			v35:Button({
				Title = tbl5.SafePos,
				Desc = tbl5.SafePosDesc,
				Callback = function()
					if humanoidRootPart then
						cFrame = humanoidRootPart.CFrame
					end
				end,
			})

			v35:Button({
				Title = tbl5.LoadPos,
				Desc = tbl5.LoadPosDesc,
				Callback = function()
					if cFrame and humanoidRootPart then
						humanoidRootPart.CFrame = cFrame
					end
				end,
			})

			Players.PlayerAdded:Connect(function(player)
				task.wait(2)

				if flag15 and player ~= localPlayer2 and player.Character then
					local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")

					if humanoidRootPart2 then
						tbl9[player] = humanoidRootPart2.Size
						humanoidRootPart2.Size = Vector3.new(n26, n26, n26)
						humanoidRootPart2.Transparency = 0.7
					end
				end
			end)

			game:GetService("CoreGui").ChildRemoved:Connect(function(child)
				if child.Name == "SHELL_ESP_Folder" then
					for _, v36 in pairs(tbl6) do
						pcall(function()
							if v36.Tracer then
								v36.Tracer:Remove()
							end

							if v36.BoxTracer then
								v36.BoxTracer:Remove()
							end
						end)
					end

					tbl6 = {}
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if flag21 and localPlayer2.Character then
						local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

						if humanoid2 and humanoid2.Health <= 0 then
							task.wait(3)
						end
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(0.5)

					if flag20 then
						pcall(function()
							local playerGui = localPlayer2:FindFirstChild("PlayerGui")

							if playerGui then
								for _, descendant in ipairs(playerGui:GetDescendants()) do
									if descendant:IsA("TextButton") and descendant.Text:lower():find("roll") then
										pcall(function()
											descendant.Activated:Fire()
										end)
									end
								end
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(5)

					if flag15 then
						for _, player in ipairs(Players:GetPlayers()) do
							if player ~= localPlayer2 and player.Character then
								local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")

								if humanoidRootPart2 then
									if not tbl9[player] then
										tbl9[player] = humanoidRootPart2.Size
									end

									humanoidRootPart2.Size = Vector3.new(n26, n26, n26)
									humanoidRootPart2.Transparency = 0.7
								end
							end
						end
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(30)

					if next(tbl3) == nil then
						pcall(fn23)
					end
				end
			end)

			local flag26 = false
			local thread4 = nil
			local flag27 = false
			local connection10 = nil
			local n32 = 15
			local flag28 = false
			local flag29 = false
			local connection11 = nil
			local n33 = 20
			local flag30 = false
			local connection12 = nil

			local function fn49(arg)
				flag26 = arg

				if thread4 then
					thread4 = nil
				end

				if arg then
					thread4 = task.spawn(function()
						while flag26 do
							pcall(function()
								if not VirtualInputManager then
									return
								end
								VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
								task.wait(0.01)
								VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
							end)

							task.wait(0.05)
						end
					end)
				end
			end

			local function fn50(arg)
				flag27 = arg

				if connection10 then
					connection10:Disconnect()
					connection10 = nil
				end

				if arg then
					connection10 = RunService.Heartbeat:Connect(function()
						if not flag27 then
							return
						end

						pcall(function()
							local character2 = localPlayer2.Character
							if not character2 then
								return
							end
							local v36 = fn28(character2)
							if not v36 then
								return
							end

							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local v37 = fn28(player.Character)
									local humanoid2 = player.Character:FindFirstChildOfClass("Humanoid")

									if v37 and humanoid2 and humanoid2.Health > 0 then
										if (v36.Position - v37.Position).Magnitude <= n32 then
											for _, child in ipairs(character2:GetChildren()) do
												if child:IsA("Tool") then
													child:Activate()
												end
											end

											fn25("Attack", player.Name)
											fn25("Damage", player.Name)
											fn25("Hit", player.Name)
										end
									end
								end
							end
						end)
					end)
				end
			end

			local function fn51(arg)
				flag28 = arg

				if arg then
					Lighting.Brightness = 2
					Lighting.ClockTime = 14
					Lighting.FogEnd = 100000
					Lighting.GlobalShadows = false
					Lighting.Ambient = Color3.fromRGB(178, 178, 178)

					for _, descendant in ipairs(Lighting:GetDescendants()) do
						if descendant:IsA("Atmosphere") then
							descendant.Density = 0
						end
					end
				else
					Lighting.Brightness = 1
					Lighting.ClockTime = 12
					Lighting.FogEnd = 10000
					Lighting.GlobalShadows = true
				end
			end

			local function fn52(arg)
				flag29 = arg

				if connection11 then
					connection11:Disconnect()
					connection11 = nil
				end

				if arg then
					connection11 = RunService.Heartbeat:Connect(function()
						if not flag29 then
							return
						end

						pcall(function()
							local character2 = localPlayer2.Character
							if not character2 then
								return
							end
							local v36 = fn28(character2)
							if not v36 then
								return
							end

							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local v37 = fn28(player.Character)
									local humanoid2 = player.Character:FindFirstChildOfClass("Humanoid")

									if v37 and humanoid2 and humanoid2.Health > 0 then
										if (v36.Position - v37.Position).Magnitude <= 8 then
											v36.CFrame = v36.CFrame + (v36.Position - v37.Position).Unit * n33
										end
									end
								end
							end
						end)
					end)
				end
			end

			local function fn53(arg)
				flag30 = arg

				if connection12 then
					connection12:Disconnect()
					connection12 = nil
				end

				if arg then
					connection12 = RunService.Heartbeat:Connect(function()
						if not flag30 then
							return
						end

						pcall(function()
							local character2 = localPlayer2.Character
							if not character2 then
								return
							end
							local v36 = fn28(character2)
							if not v36 then
								return
							end

							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local humanoid2 = player.Character:FindFirstChildOfClass("Humanoid")
									local v37 = fn28(player.Character)

									if humanoid2 and v37 and humanoid2.Health > 0 then
										if (v36.Position - v37.Position).Magnitude <= 10 then
											fn25("Damage", player.Name, 999999)
											fn25("Hit", player.Name, 999999)
											fn25("AttackPlayer", player.Name)
										end
									end
								end
							end
						end)
					end)
				end
			end

			v34:Toggle({
				Title = tbl5.KillAura,
				Desc = "Attack nearby players automatically",
				Default = false,
				Callback = function(arg)
					fn50(arg)
				end,
			})

			v34:Slider({
				Title = tbl5.KillAuraRange,
				Value = { Min = 5, Max = 50, Default = 15 },
				Callback = function(arg)
					n32 = arg
				end,
			})

			v34:Toggle({
				Title = tbl5.AutoClick,
				Desc = "Auto click left mouse button",
				Default = false,
				Callback = function(arg)
					fn49(arg)
				end,
			})

			v34:Toggle({
				Title = tbl5.AutoDodge,
				Desc = "Automatically dodge when enemies are close",
				Default = false,
				Callback = function(arg)
					fn52(arg)
				end,
			})

			v34:Toggle({
				Title = tbl5.InstantKill,
				Desc = "Send high damage to nearby enemies",
				Default = false,
				Callback = function(arg)
					fn53(arg)
				end,
			})

			v34:Toggle({
				Title = tbl5.Fullbright,
				Desc = "Max brightness, no shadows",
				Default = false,
				Callback = function(arg)
					fn51(arg)
				end,
			})

			local flag31 = false
			local leftShift = Enum.KeyCode.LeftShift
			local n34 = 100
			local connection13 = nil

			local function fn54(arg)
				flag31 = arg

				if connection13 then
					connection13:Disconnect()
					connection13 = nil
				end

				if arg then
					connection13 = UserInputService2.InputBegan:Connect(function(input, gameProcessed)
						if gameProcessed then
							return
						end

						if input.KeyCode == leftShift and humanoidRootPart then
							humanoidRootPart.Velocity = mouse.Hit.LookVector * n34
						end
					end)
				end
			end

			local flag32 = false
			local connection14 = nil

			local function fn55(arg)
				flag32 = arg

				if connection14 then
					connection14:Disconnect()
					connection14 = nil
				end

				if arg then
					connection14 = RunService.Heartbeat:Connect(function()
						if not flag32 then
							return
						end
						local flag33 = humanoid

						if humanoid then
							local running = Enum.HumanoidStateType.Running
							flag33 = humanoid:GetState() == running
						end

						if flag33 then
							humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						end
					end)
				end
			end

			local flag33 = false
			local n35 = 20
			local connection15 = nil

			local function fn56(arg)
				flag33 = arg

				if connection15 then
					connection15:Disconnect()
					connection15 = nil
				end

				if arg then
					connection15 = RunService.RenderStepped:Connect(function()
						if not flag33 or not humanoidRootPart then
							return
						end
						humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(n35), 0)
					end)
				end
			end

			local flag34 = false
			local thread5 = nil

			local function fn57(arg)
				flag34 = arg

				if thread5 then
					thread5 = nil
				end

				if arg then
					thread5 = task.spawn(function()
						while flag34 do
							pcall(function()
								if not humanoidRootPart then
									return
								end

								for _, descendant in ipairs(Workspace:GetDescendants()) do
									if descendant:IsA("BasePart") or descendant:IsA("MeshPart") then
										if descendant.Name:lower():find("coin") or descendant.Name:lower():find("drop") or descendant.Name:lower():find("collect") or descendant.Name:lower():find("orb") or descendant.Name:lower():find("xp") or descendant.Name:lower():find("material") then
											if (humanoidRootPart.Position - descendant.Position).Magnitude < 50 then
												fn25("Collect", descendant.Name)
												fn25("PickUp", descendant.Name)
												fn25("Gather", descendant.Name)
											end
										end
									end
								end
							end)

							task.wait(0.5)
						end
					end)
				end
			end

			v35:Toggle({
				Title = tbl5.SpeedBoost,
				Desc = "Hold LShift to dash forward",
				Default = false,
				Callback = function(arg)
					fn54(arg)
				end,
			})

			v35:Toggle({
				Title = tbl5.BunnyHop,
				Desc = "Auto jump while moving",
				Default = false,
				Callback = function(arg)
					fn55(arg)
				end,
			})

			v35:Toggle({
				Title = tbl5.SpinBot,
				Desc = "Spin your character rapidly",
				Default = false,
				Callback = function(arg)
					fn56(arg)
				end,
			})

			v35:Slider({
				Title = tbl5.SpinSpeed,
				Value = { Min = 5, Max = 100, Default = 20 },
				Callback = function(arg)
					n35 = arg
				end,
			})

			v34:Toggle({
				Title = tbl5.AutoCollect,
				Desc = "Automatically collect nearby drops",
				Default = false,
				Callback = function(arg)
					fn57(arg)
				end,
			})

			local folder2 = Instance.new("Folder")
			folder2.Name = "Shell_HealthBars"
			folder2.Parent = CoreGui
			local tbl11 = {}

			local function fn58(arg)
				if arg == localPlayer2 then
					return
				end

				if tbl11[arg] then
					return
				end

				if flag12 and arg.Team and localPlayer2.Team and arg.Team == localPlayer2.Team then
					return
				end
				local character2 = arg.Character
				if not character2 then
					return
				end
				local v36 = fn28(character2)
				if not v36 then
					return
				end
				local folder3 = Instance.new("Folder")
				folder3.Name = "HP_" .. arg.Name
				folder3.Parent = folder2
				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "HealthBarBG"
				billboardGui.AlwaysOnTop = true
				billboardGui.Size = UDim2.new(0, 80, 0, 8)
				billboardGui.StudsOffset = Vector3.new(0, 4.5, 0)
				billboardGui.Adornee = v36
				billboardGui.Parent = folder3
				local frame2 = Instance.new("Frame")
				frame2.Name = "BackFrame"
				frame2.Size = UDim2.new(1, 0, 1, 0)
				frame2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
				frame2.BorderSizePixel = 1
				frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				frame2.Parent = billboardGui
				local frame3 = Instance.new("Frame")
				frame3.Name = "FillFrame"
				frame3.Size = UDim2.new(1, 0, 1, 0)
				frame3.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
				frame3.BorderSizePixel = 0
				frame3.Parent = frame2
				local uiCorner = Instance.new("UICorner")
				uiCorner.CornerRadius = UDim.new(0, 2)
				uiCorner.Parent = frame2
				local uiCorner2 = Instance.new("UICorner")
				uiCorner2.CornerRadius = UDim.new(0, 2)
				uiCorner2.Parent = frame3
				tbl11[arg] = { Container = folder3, Billboard = billboardGui, FillFrame = frame3, Character = character2 }
			end

			local function fn59(arg)
				local v36 = tbl11[arg]
				if not v36 then
					return
				end

				pcall(function()
					if v36.Container and v36.Container.Parent then
						v36.Container:Destroy()
					end
				end)

				tbl11[arg] = nil
			end

			local function fn60()
				for k in pairs(tbl11) do
					fn59(k)
				end
			end

			local function fn61()
				for k, v36 in pairs(tbl11) do
					if not k.Parent then
						fn59(k)
					else
						local character2 = k.Character

						if not character2 then
							fn59(k)
						else
							local v37 = fn28(character2)

							if not v37 then
								v36.Billboard.Enabled = false
							elseif flag12 and k.Team and localPlayer2.Team and k.Team == localPlayer2.Team then
								v36.Billboard.Enabled = false
							else
								v36.Billboard.Adornee = v37
								v36.Billboard.Enabled = enabled
								local humanoid2 = character2:FindFirstChildOfClass("Humanoid")

								if humanoid2 then
									local n36 = math.clamp(humanoid2.Health / humanoid2.MaxHealth, 0, 1)
									v36.FillFrame.Size = UDim2.new(n36, 0, 1, 0)

									if n36 > 0.6 then
										v36.FillFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
									elseif n36 > 0.3 then
										v36.FillFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
									else
										v36.FillFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
									end
								end
							end
						end
					end
				end
			end

			local function fn62()
				for _, player in ipairs(Players:GetPlayers()) do
					fn58(player)
				end

				local connection16 = Players.PlayerAdded:Connect(function(player)
					task.wait(1.5)

					if enabled then
						fn58(player)
					end
				end)

				local connection17 = Players.PlayerRemoving:Connect(function(player)
					fn59(player)
				end)

				table.insert(tbl7, connection16)
				table.insert(tbl7, connection17)
			end

			v34:Toggle({
				Title = tbl5.ESPHealthBars,
				Desc = "Show health bars above players",
				Default = false,
				Callback = function(arg)
					flag14 = arg

					if arg and enabled then
						fn62()

						for _, v36 in ipairs(tbl8) do
							v36:Disconnect()
						end

						tbl8 = {}
						local connection16 = RunService.RenderStepped:Connect(fn61)
						table.insert(tbl8, connection16)
					elseif not arg then
						for _, v36 in ipairs(tbl8) do
							v36:Disconnect()
						end

						tbl8 = {}
						fn60()
					end
				end,
			})

			task.spawn(function()
				while true do
					task.wait(0.5)

					if enabled and flag14 then
						for _, player in ipairs(Players:GetPlayers()) do
							fn58(player)
						end
					end
				end
			end)

			local function fn63()
				fn36(false)
				fn37(false)
				fn38(false)
				fn39(false)
				fn40(false)
				fn41(false)
				fn42(false)
				fn43(false)
				fn44(false)
				fn45(false)
				fn46(false)
				fn47(false)
				fn50(false)
				fn49(false)
				fn52(false)
				fn53(false)
				fn51(false)
				fn54(false)
				fn55(false)
				fn56(false)
				fn57(false)
				fn60()

				for _, v36 in pairs(tbl6) do
					pcall(function()
						if v36.Tracer then
							v36.Tracer:Remove()
						end

						if v36.BoxTracer then
							v36.BoxTracer:Remove()
						end
					end)
				end

				for _, v36 in pairs(tbl11) do
					pcall(function()
						if v36.Container and v36.Container.Parent then
							v36.Container:Destroy()
						end
					end)
				end

				if folder then
					folder:Destroy()
				end

				if folder2 then
					folder2:Destroy()
				end
			end

			localPlayer2.CharacterRemoving:Connect(function()
				if v31 and v31.Parent then
					v31:Destroy()
					v31 = nil
				end

				if v32 and v32.Parent then
					v32:Destroy()
					v32 = nil
				end

				if connection4 then
					connection4:Disconnect()
					connection4 = nil
				end

				if connection5 then
					connection5:Disconnect()
					connection5 = nil
				end

				if connection6 then
					connection6:Disconnect()
					connection6 = nil
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if localPlayer2.Character then
						local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

						if humanoid2 and humanoid2.Health <= 0 then
							if flag18 then
								fn40(false)
							end
						end
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(10)

					if next(tbl3) == nil then
						pcall(fn23)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(3)

					if flag22 then
						pcall(function()
							local backpack = localPlayer2:FindFirstChild("Backpack")

							if backpack then
								for _, child in ipairs(backpack:GetChildren()) do
									if child:IsA("Tool") and (child.Name:lower():find("aura") or child.Name:lower():find("buff")) then
										fn25("EquipAura", child.Name)
										fn25("Equip", child.Name)
									end
								end
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if flag23 then
						pcall(function()
							for _, v36 in ipairs({ "Basic", "Common", "Rare", "Epic", "Legendary", "Mythic" }) do
								fn25("Craft", v36)
								fn25("CraftRecipe", v36)
								fn25("CraftItem", v36)
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if flag24 then
						pcall(function()
							for _, v36 in ipairs({ "Damage", "Speed", "Defense", "Luck", "XP" }) do
								fn25("Buff", v36)
								fn25("UseBuff", v36)
								fn25("ApplyBuff", v36)
								fn25("ActivateBuff", v36)
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(0.3)

					if flag34 and humanoidRootPart then
						pcall(function()
							for _, descendant in ipairs(Workspace:GetDescendants()) do
								local isBasePart = descendant:IsA("BasePart")

								if isBasePart then
									isBasePart = not descendant:IsDescendantOf(Workspace:FindFirstChild("Characters") or Instance.new("Folder"))
								end

								if isBasePart then
									if descendant.Name:lower():find("coin") or descendant.Name:lower():find("drop") or descendant.Name:lower():find("collectible") or descendant.Name:lower():find("orb") or descendant.Name:lower():find("loot") then
										if (humanoidRootPart.Position - descendant.Position).Magnitude < 30 then
											humanoidRootPart.CFrame = CFrame.new(descendant.Position.X, humanoidRootPart.Position.Y, descendant.Position.Z)
											fn25("Collect", descendant)
											fn25("Pickup", descendant)
										end
									end
								end
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if flag30 and humanoidRootPart then
						pcall(function()
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local v36 = fn28(player.Character)

									if v36 then
										if (humanoidRootPart.Position - v36.Position).Magnitude <= 15 then
											fn25("Damage", player.Name, 999999)
											fn25("TakeDamage", player.Name, 999999)
											fn25("ReduceHealth", player.Name, 999999)
										end
									end
								end
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(0.1)

					if flag18 and v31 and v31.Parent then
						v31.MaxForce = Vector3.new(9e9, 9e9, 9e9)
					end

					if flag18 and v32 and v32.Parent then
						v32.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(5)

					if flag21 then
						pcall(function()
							if localPlayer2.Character then
								local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

								if humanoid2 and humanoid2.Health > 0 then
									for _, child in ipairs(localPlayer2.Character:GetChildren()) do
										if child:IsA("Tool") then
											child:Activate()
										end
									end
								end
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if flag16 and character then
						for _, descendant in ipairs(character:GetDescendants()) do
							if descendant:IsA("BasePart") then
								descendant.CanCollide = false
							end
						end
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(2)

					if flag15 then
						for _, player in ipairs(Players:GetPlayers()) do
							if player ~= localPlayer2 and player.Character then
								local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")

								if humanoidRootPart2 then
									if not tbl9[player] then
										tbl9[player] = humanoidRootPart2.Size
									end

									pcall(function()
										humanoidRootPart2.Size = Vector3.new(n26, n26, n26)
										humanoidRootPart2.Transparency = 0.7
									end)
								end
							end
						end
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(0.1)

					if flag26 then
						pcall(function()
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local character2 = localPlayer2.Character

									if character2 then
										local v36 = fn28(character2)
										local v37 = fn28(player.Character)

										if v36 and v37 then
											if (v36.Position - v37.Position).Magnitude <= 10 then
												for _, child in ipairs(character2:GetChildren()) do
													if child:IsA("Tool") then
														child:Activate()
													end
												end
											end
										end
									end
								end
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if localPlayer2.Character and humanoidRootPart then
						if humanoidRootPart.Position.Y < -500 then
							humanoidRootPart.CFrame = CFrame.new(0, 200, 0)
						end
					end
				end
			end)

			pcall(function()
				game:BindToClose(function()
					fn63()
				end)
			end)

			local function fn64()
				local tbl12 = {}

				pcall(function()
					local leaderstats = localPlayer2:FindFirstChild("leaderstats")

					if leaderstats then
						for _, child in ipairs(leaderstats:GetChildren()) do
							if child:IsA("IntValue") or child:IsA("NumberValue") or child:IsA("StringValue") then
								tbl12[child.Name] = child.Value
							end
						end
					end

					local stats = localPlayer2:FindFirstChild("Stats")

					if stats then
						for _, child in ipairs(stats:GetChildren()) do
							if child:IsA("IntValue") or child:IsA("NumberValue") then
								tbl12[child.Name] = child.Value
							end
						end
					end

					local data = localPlayer2:FindFirstChild("Data")

					if data then
						for _, child in ipairs(data:GetChildren()) do
							if child:IsA("IntValue") or child:IsA("NumberValue") then
								tbl12[child.Name] = child.Value
							end
						end
					end
				end)

				return tbl12
			end

			task.spawn(function()
				while true do
					task.wait(30)

					if flag20 or flag22 or flag23 or flag24 then
						pcall(fn23)
					end
				end
			end)

			local cFrame2 = nil

			task.spawn(function()
				while true do
					task.wait(5)

					if humanoidRootPart then
						cFrame2 = humanoidRootPart.CFrame
					end

					if flag21 and cFrame2 and humanoidRootPart then
						if (humanoidRootPart.Position - cFrame2.Position).Magnitude < 0.5 then
							local random = math.random
							humanoidRootPart.CFrame = humanoidRootPart.CFrame + Vector3.new(math.random(-10, 10), 0, random(-10, 10))
						end
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(0.5)

					if flag29 and humanoidRootPart then
						pcall(function()
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and player.Character then
									local v36 = fn28(player.Character)

									if v36 then
										if (humanoidRootPart.Position - v36.Position).Magnitude <= 6 then
											humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position + (humanoidRootPart.Position - v36.Position).Unit * 25)
										end
									end
								end
							end
						end)
					end
				end
			end)

			local flag35 = false
			local thread6 = nil

			local function fn65(arg)
				flag35 = arg

				if thread6 then
					thread6 = nil
				end

				if arg then
					thread6 = task.spawn(function()
						while flag35 do
							pcall(function()
								if not localPlayer2.Character then
									return
								end
								local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

								if humanoid2 then
									local n36 = 0
									local v36 = nil

									for _, child in ipairs(localPlayer2.Backpack:GetChildren()) do
										if child:IsA("Tool") then
											local damage = child:FindFirstChild("Damage") or child:FindFirstChild("Power")

											if damage then
												if n36 < damage.Value then
													n36 = damage.Value
													v36 = child
												end
											else
												v36 = child
											end
										end
									end

									if v36 then
										humanoid2:EquipTool(v36)
									end
								end
							end)

							task.wait(1)
						end
					end)
				end
			end

			v34:Toggle({
				Title = tbl5.AutoEquip,
				Desc = "Automatically equip strongest weapon",
				Default = false,
				Callback = function(arg)
					fn65(arg)
				end,
			})

			local flag36 = false
			local thread7 = nil

			local function fn66(arg)
				flag36 = arg

				if thread7 then
					thread7 = nil
				end

				if arg then
					thread7 = task.spawn(function()
						while flag36 do
							pcall(function()
								fn25("Upgrade")
								fn25("UpgradeStat")
								fn25("UpgradeAll")
								fn25("UpgradeStats")
								fn25("PurchaseUpgrade")
							end)

							task.wait(5)
						end
					end)
				end
			end

			v34:Toggle({
				Title = tbl5.AutoUpgrade,
				Desc = "Automatically upgrade stats",
				Default = false,
				Callback = function(arg)
					fn66(arg)
				end,
			})

			local flag37 = false
			local thread8 = nil

			local function fn67(arg)
				flag37 = arg

				if thread8 then
					thread8 = nil
				end

				if arg then
					thread8 = task.spawn(function()
						while flag37 do
							pcall(function()
								fn25("JoinBattle")
								fn25("RequestBattle")
								fn25("FindBattle")
								fn25("Matchmake")
								fn25("JoinMatch")
								fn25("EnterBattle")
								fn25("StartBattle")
							end)

							task.wait(8)
						end
					end)
				end
			end

			v34:Toggle({
				Title = tbl5.AutoBattle,
				Desc = "Automatically join battles via matchmaking",
				Default = false,
				Callback = function(arg)
					fn67(arg)
				end,
			})

			local flag38 = true
			local connection16 = nil

			local function fn68()
				if connection16 then
					connection16:Disconnect()
					connection16 = nil
				end

				connection16 = UserInputService2.WindowFocusReleased:Connect(function()
					if flag38 and VirtualInputManager then
						pcall(function()
							VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
							task.wait(0.1)
							VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
						end)
					end
				end)
			end

			fn68()

			local function fn69()
				pcall(function()
					local HttpService2 = game:GetService("HttpService")
					local request_2 = request or http_request or syn and syn.request

					if request_2 then
						local v36 = request_2({
							Url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100",
							Method = "GET",
						})

						if v36 and v36.Body then
							local data = HttpService2:JSONDecode(v36.Body)

							if data and data.data then
								for _, v37 in ipairs(data.data) do
									if v37.playing < v37.maxPlayers and v37.id ~= game.JobId then
										game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v37.id, localPlayer2)
										break
									end
								end
							end
						end
					end
				end)
			end

			v33:Toggle({
				Title = tbl5.AntiAFK,
				Default = true,
				Callback = function(arg)
					flag38 = arg
				end,
			})

			v33:Button({
				Title = tbl5.ServerHop,
				Desc = "Join a different server",
				Callback = function()
					fn69()
				end,
			})

			v33:Button({
				Title = tbl5.RejoinServer,
				Desc = "Rejoin current server",
				Callback = function()
					pcall(function()
						game:GetService("TeleportService"):Teleport(game.PlaceId, localPlayer2)
					end)
				end,
			})

			v33:Divider()

			v33:Paragraph({
				Title = tbl5.PlayerStats,
				Desc = "Features below show current player information",
				Image = "",
				ImageSize = 0,
			})

			v33:Button({
				Title = tbl5.PrintData,
				Desc = "Show player stats",
				Callback = function()
					local v36 = fn64()

					for k in pairs(v36) do
					end
				end,
			})

			local flag39 = false
			local thread9 = nil

			local function fn70(arg)
				flag39 = arg

				if thread9 then
					thread9 = nil
				end

				if arg then
					thread9 = task.spawn(function()
						while flag39 do
							pcall(function()
								fn25("Sell")
								fn25("SellAll")
								fn25("SellDuplicates")
								fn25("QuickSell")
							end)

							task.wait(10)
						end
					end)
				end
			end

			v34:Toggle({
				Title = tbl5.AutoSell,
				Desc = "Automatically sell duplicate items",
				Default = false,
				Callback = function(arg)
					fn70(arg)
				end,
			})

			local flag40 = false
			local connection17 = nil
			local n36 = 30

			local function fn71(arg)
				flag40 = arg

				if connection17 then
					connection17:Disconnect()
					connection17 = nil
				end

				if arg then
					connection17 = RunService.Heartbeat:Connect(function()
						if not flag40 then
							return
						end

						pcall(function()
							if not localPlayer2.Character then
								return
							end
							local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

							if humanoid2 and humanoid2.Health > 0 then
								if humanoid2.Health / humanoid2.MaxHealth * 100 <= n36 then
									fn25("Heal")
									fn25("UsePotion")
									fn25("RestoreHealth")

									for _, child in ipairs(localPlayer2.Backpack:GetChildren()) do
										if child:IsA("Tool") and (child.Name:lower():find("potion") or child.Name:lower():find("heal")) then
											humanoid2:EquipTool(child)
											child:Activate()
										end
									end
								end
							end
						end)
					end)
				end
			end

			v34:Toggle({
				Title = tbl5.AutoHeal,
				Desc = "Auto heal when low HP",
				Default = false,
				Callback = function(arg)
					fn71(arg)
				end,
			})

			v34:Slider({
				Title = tbl5.HealThreshold,
				Value = { Min = 5, Max = 90, Default = 30 },
				Callback = function(arg)
					n36 = arg
				end,
			})

			local flag41 = false
			local connection18 = nil

			local function fn72(arg)
				flag41 = arg

				if connection18 then
					connection18:Disconnect()
					connection18 = nil
				end

				if arg then
					connection18 = RunService.Heartbeat:Connect(function()
						if not flag41 then
							return
						end

						pcall(function()
							if localPlayer2.Character then
								local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

								if humanoid2 then
									humanoid2.MaxHealth = math.huge
									humanoid2.Health = humanoid2.MaxHealth
								end
							end
						end)
					end)
				elseif localPlayer2.Character then
					local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

					if humanoid2 then
						pcall(function()
							humanoid2.MaxHealth = 100
							humanoid2.Health = humanoid2.MaxHealth
						end)
					end
				end
			end

			v34:Toggle({
				Title = tbl5.GodMode,
				Desc = "Set health to infinite",
				Default = false,
				Callback = function(arg)
					fn72(arg)
				end,
			})

			task.spawn(function()
				while true do
					task.wait(1)

					if flag41 and localPlayer2.Character then
						pcall(function()
							local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

							if humanoid2 then
								humanoid2.MaxHealth = math.huge
								humanoid2.Health = humanoid2.MaxHealth
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if flag40 and localPlayer2.Character then
						pcall(function()
							local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

							if humanoid2 and humanoid2.Health > 0 then
								if humanoid2.Health / humanoid2.MaxHealth * 100 <= n36 then
									fn25("Heal")
									fn25("UsePotion")
									fn25("RestoreHealth")

									for _, child in ipairs(localPlayer2.Backpack:GetChildren()) do
										if child:IsA("Tool") and (child.Name:lower():find("potion") or child.Name:lower():find("heal")) then
											humanoid2:EquipTool(child)
											child:Activate()
										end
									end
								end
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if flag35 and localPlayer2.Character then
						pcall(function()
							local humanoid2 = localPlayer2.Character:FindFirstChildOfClass("Humanoid")

							if humanoid2 then
								local v36 = nil

								for _, child in ipairs(localPlayer2.Backpack:GetChildren()) do
									if child:IsA("Tool") then
										v36 = child
										break
									else
										v36 = nil
									end
								end

								if v36 then
									humanoid2:EquipTool(v36)
								end
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(0.2)

					if flag32 and humanoid then
						pcall(function()
							local running = Enum.HumanoidStateType.Running

							if humanoid:GetState() == running and humanoid.MoveDirection.Magnitude > 0.1 then
								humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
							end
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(1)

					if flag36 then
						pcall(function()
							fn25("Upgrade")
							fn25("UpgradeStat")
							fn25("UpgradeStats")
							fn25("PurchaseUpgrade")
							fn25("UpgradeAll")
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(5)

					if flag37 then
						pcall(function()
							fn25("JoinBattle")
							fn25("RequestBattle")
							fn25("FindBattle")
							fn25("Matchmake")
							fn25("JoinMatch")
							fn25("EnterBattle")
							fn25("StartBattle")
							fn25("SearchBattle")
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(15)

					if flag39 then
						pcall(function()
							fn25("Sell")
							fn25("SellAll")
							fn25("SellDuplicates")
							fn25("QuickSell")
							fn25("AutoSell")
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(0.1)

					if flag38 and VirtualInputManager then
						pcall(function()
							VirtualInputManager:SendMouseMoveEvent(0, 0, game)
						end)
					end
				end
			end)

			task.spawn(function()
				while true do
					task.wait(0.5)

					if flag34 and humanoidRootPart then
						pcall(function()
							for _, descendant in ipairs(Workspace:GetDescendants()) do
								if descendant:IsA("BasePart") then
									if descendant.Name:lower():find("coin") or descendant.Name:lower():find("drop") or descendant.Name:lower():find("orb") then
										if (humanoidRootPart.Position - descendant.Position).Magnitude < 40 then
											fn25("Collect", descendant.Name)
											fn25("Pickup", descendant.Name)
											fn25("Gather", descendant.Name)
										end
									end
								end
							end
						end)
					end
				end
			end)
		elseif game.PlaceId == 129253568870286 then
			local lib = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

			local v26 = lib:CreateWindow({
				Title = "Sheel.lua",
				Author = "core | v0.3.0.1",
				Folder = "te",
				Size = UDim2.fromOffset(600, 420),
				Transparent = false,
				Theme = "Dark",
				NewElements = false,
				HideSearchBar = false,
				User = {
					Enabled = true,
					Callback = function()
					end,
					Anonymous = false,
				},
				SideBarWidth = 180,
				ScrollBarEnabled = false,
				BackgroundImageTransparency = 0,
			})

			local colorSequence = ColorSequence.new
			local tbl3 = {}
			local v27 = ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 60))
			local v28 = ColorSequenceKeypoint.new(0.3, Color3.fromRGB(0, 255, 140))
			local v29 = ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255, 255, 255))
			local new = ColorSequenceKeypoint.new
			local color = Color3.fromRGB
			tbl3[1] = v27
			tbl3[2] = v28
			tbl3[3] = v29

			do
				local values = table.pack(new(1, color(0, 180, 255)))
				table.move(values, 1, values.n, 4, tbl3)
			end

			local v30 = colorSequence(tbl3)
			local uiStroke = nil
			local connection = nil

			local function fn23()
				if connection then
					connection:Disconnect()
					connection = nil
				end

				local main = v26.UIElements and v26.UIElements.Main
				if not main then
					return
				end

				if uiStroke and uiStroke.Parent then
					uiStroke:Destroy()
				end

				if not main:FindFirstChildOfClass("UICorner") then
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 10)
					uiCorner.Parent = main
				end

				uiStroke = Instance.new("UIStroke")
				uiStroke.Name = "ShellBorder"
				uiStroke.Thickness = 2
				uiStroke.Color = Color3.new(1, 1, 1)
				uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				uiStroke.LineJoinMode = Enum.LineJoinMode.Round
				uiStroke.Parent = main
				local uiGradient = Instance.new("UIGradient")
				uiGradient.Color = v30
				uiGradient.Parent = uiStroke

				connection = game:GetService("RunService").Heartbeat:Connect(function()
					local main2 = v26.UIElements and v26.UIElements.Main
					if not main2 or not main2.Visible then
						return
					end
					uiGradient.Rotation = tick() * 60 % 360
				end)
			end

			local function fn24()
				if connection then
					connection:Disconnect()
					connection = nil
				end
			end

			spawn(function()
				while true do
					task.wait(0.1)
					if not (v26.UIElements and v26.UIElements.Main) then
						continue
					end
					break
				end

				fn23()
				local main = v26.UIElements and v26.UIElements.Main

				if main then
					main:GetPropertyChangedSignal("Visible"):Connect(function()
						if main.Visible then
							fn23()
						else
							fn24()
						end
					end)
				end
			end)

			v26:EditOpenButton({
				Title = "Sheel.lua",
				Icon = "https://chaton-images.s3.us-east-2.amazonaws.com/FGI96MkDWpVCCTp9wp7fcS2GxX42ncuX45I5UEhCyvdJ5gIe8cEWTkYJKcwnar1w_2048x2048x1353073.png",
				CornerRadius = UDim.new(1, 0),
				StrokeThickness = 2,
				Color = v30,
				Draggable = true,
			})

			task.spawn(function()
				while true do
					task.wait(0.1)
					if not (v26.OpenButtonMain and v26.OpenButtonMain.Button) then
						continue
					end
					break
				end

				local uiStroke2 = v26.OpenButtonMain.Button:FindFirstChildWhichIsA("UIStroke")
				if not uiStroke2 then
					return
				end

				repeat
					task.wait(0.05)
				until uiStroke2:FindFirstChildWhichIsA("UIGradient")

				local uiGradient = uiStroke2:FindFirstChildWhichIsA("UIGradient")
				if not uiGradient then
					return
				end

				game:GetService("RunService").Heartbeat:Connect(function()
					if not uiGradient or not uiGradient.Parent then
						return
					end
					uiGradient.Rotation = tick() * 60 % 360
				end)
			end)

			local str9 = "zh"
			local flag11 = false

			lib:Popup({
				Title = "Shell.lua",
				IconThemed = true,
				Content = "请选择语言 / Select Language",
				Buttons = {
					{
						Title = "Chinese",
						Callback = function()
							str9 = "zh"
							flag11 = true
						end,
						Variant = "Secondary",
					},
					{
						Title = "English",
						Icon = "arrow-right",
						Callback = function()
							str9 = "en"
							flag11 = true
						end,
						Variant = "Primary",
					},
				},
			})

			repeat
				task.wait(0.1)
			until flag11

			local tbl4 = {}

			if str9 == "en" then
				tbl4.Main = "Main"
				tbl4.Combat = "Combat"
				tbl4.Movement = "Movement"
				tbl4.KillAura = "Kill Aura"
				tbl4.KillAuraDesc = "Auto attack nearby players"
				tbl4.AutoClick = "Auto Click"
				tbl4.AutoClickDesc = "Auto click attack"
				tbl4.ESP = "Player ESP"
				tbl4.ESPDesc = "Pixel-style player highlight ESP"
				tbl4.Hitbox = "Hitbox Expander"
				tbl4.HitboxDesc = "Expand player hitboxes"
				tbl4.Speed = "Walk Speed"
				tbl4.SpeedDesc = "Modify movement speed"
				tbl4.Jump = "Jump Power"
				tbl4.JumpDesc = "Modify jump height"
				tbl4.Fly = "Fly Mode"
				tbl4.FlyDesc = "Toggle flight mode"
				tbl4.InfJump = "Infinite Jump"
				tbl4.InfJumpDesc = "Jump infinitely"
				tbl4.NoFall = "No Fall Damage"
				tbl4.NoFallDesc = "Prevent fall damage"
				tbl4.NoClip = "No Clip"
				tbl4.NoClipDesc = "Walk through walls"
				tbl4.AntiAFK = "Anti AFK"
				tbl4.AntiAFKDesc = "Prevent AFK kick"
				tbl4.FullBright = "Full Bright"
				tbl4.FullBrightDesc = "Max brightness everywhere"
				tbl4.SliderSpeed = "Speed Value"
				tbl4.SliderJump = "Jump Value"
				tbl4.SliderHitbox = "Hitbox Size"
				tbl4.SliderAura = "Aura Range"
			else
				tbl4.Main = "关于作者"
				tbl4.Combat = "战斗功能"
				tbl4.Movement = "移动功能"
				tbl4.KillAura = "杀戮光环"
				tbl4.KillAuraDesc = "自动攻击附近玩家"
				tbl4.AutoClick = "自动点击"
				tbl4.AutoClickDesc = "自动点击攻击"
				tbl4.ESP = "玩家透视"
				tbl4.ESPDesc = "像素风玩家高亮透视"
				tbl4.Hitbox = "碰撞箱扩大"
				tbl4.HitboxDesc = "扩大玩家碰撞箱"
				tbl4.Speed = "移动速度"
				tbl4.SpeedDesc = "修改移动速度"
				tbl4.Jump = "跳跃力量"
				tbl4.JumpDesc = "修改跳跃高度"
				tbl4.Fly = "飞行模式"
				tbl4.FlyDesc = "开关飞行模式"
				tbl4.InfJump = "无限跳跃"
				tbl4.InfJumpDesc = "无限次跳跃"
				tbl4.NoFall = "无摔落伤害"
				tbl4.NoFallDesc = "防止摔落伤害"
				tbl4.NoClip = "穿墙模式"
				tbl4.NoClipDesc = "穿透墙壁行走"
				tbl4.AntiAFK = "反挂机"
				tbl4.AntiAFKDesc = "防止挂机踢出"
				tbl4.FullBright = "全亮模式"
				tbl4.FullBrightDesc = "全图最大亮度"
				tbl4.SliderSpeed = "速度数值"
				tbl4.SliderJump = "跳跃数值"
				tbl4.SliderHitbox = "碰撞箱大小"
				tbl4.SliderAura = "光环范围"
			end

			v26:Tab({ Title = tbl4.Main, Icon = "crown" }):Paragraph({
				Title = "梅西",
				Desc = "Shell.lua by mess",
				ImageSize = 78,
				Thumbnail = "https://github.com/sdxs221/sd/blob/main/Image_1787998415322_238.jpg",
				ThumbnailSize = 290,
			})

			local Players = game:GetService("Players")
			local RunService = game:GetService("RunService")
			local UserInputService2 = game:GetService("UserInputService")
			local Workspace = game:GetService("Workspace")
			local Lighting = game:GetService("Lighting")
			local localPlayer2 = Players.LocalPlayer
			localPlayer2:GetMouse()
			local v31 = v26:Tab({ Title = tbl4.Combat, Icon = "swords" })

			local tbl5 = {
				KillAura = false,
				AutoClick = false,
				ESP = false,
				Hitbox = false,
				Speed = false,
				Jump = false,
				Fly = false,
				InfJump = false,
				NoFall = false,
				NoClip = false,
				AntiAFK = false,
				FullBright = false,
				SpeedValue = 100,
				JumpValue = 100,
				HitboxSize = 10,
				AuraRange = 20,
			}

			local tbl6 = {}
			local tbl7 = {}
			local connection2 = nil
			local connection3 = nil
			local connection4 = nil
			local connection5 = nil
			local connection6 = nil
			local tbl8 = {}

			local function fn25(arg)
				return arg and arg.Character
			end

			local function fn26(arg)
				return arg and arg:FindFirstChildWhichIsA("Humanoid")
			end

			local function fn27(arg)
				if arg then
					arg = arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Torso")
				end

				return arg
			end

			local function fn28(arg)
				local v32 = fn25(arg)
				local v33 = fn26(v32)
				return v33 and v33.Health > 0
			end

			local function fn29(arg)
				if not localPlayer2 or not arg then
					return false
				end

				if arg == localPlayer2 then
					return true
				end

				if localPlayer2.Team and arg.Team then
					return localPlayer2.Team == arg.Team
				end
				return false
			end

			local code2 = Enum.Font.Code

			local function fn30(arg)
				if arg == localPlayer2 then
					return
				end

				if tbl6[arg] then
					return
				end
				local v32 = fn25(arg)
				if not v32 then
					return
				end

				if not fn27(v32) then
					return
				end
				local folder = Instance.new("Folder")
				folder.Name = "SHELL_ESP"
				folder.Parent = v32
				local highlight = Instance.new("Highlight")
				highlight.Name = "PixelESP"
				highlight.FillColor = Color3.fromRGB(0, 255, 140)
				highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
				highlight.FillTransparency = 0.5
				highlight.OutlineTransparency = 0
				highlight.Adornee = v32
				highlight.Parent = folder
				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "PixelName"
				billboardGui.Size = UDim2.new(0, 200, 0, 40)
				billboardGui.StudsOffset = Vector3.new(0, 3, 0)
				billboardGui.AlwaysOnTop = true
				billboardGui.LightInfluence = 0
				billboardGui.Parent = folder
				local textLabel = Instance.new("TextLabel")
				textLabel.Name = "NameText"
				textLabel.Size = UDim2.new(1, 0, 0.5, 0)
				textLabel.Position = UDim2.new(0, 0, 0, 0)
				textLabel.BackgroundTransparency = 1
				textLabel.Text = arg.Name
				textLabel.TextColor3 = Color3.fromRGB(0, 255, 140)
				textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				textLabel.TextStrokeTransparency = 0
				textLabel.TextSize = 14
				textLabel.Font = code2
				textLabel.Parent = billboardGui
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.Name = "DistText"
				textLabel2.Size = UDim2.new(1, 0, 0.5, 0)
				textLabel2.Position = UDim2.new(0, 0, 0.5, 0)
				textLabel2.BackgroundTransparency = 1
				textLabel2.Text = ""
				textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
				textLabel2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				textLabel2.TextStrokeTransparency = 0
				textLabel2.TextSize = 12
				textLabel2.Font = code2
				textLabel2.Parent = billboardGui

				tbl6[arg] = {
					Container = folder,
					Highlight = highlight,
					Billboard = billboardGui,
					NameLabel = textLabel,
					DistLabel = textLabel2,
					Connection = nil,
				}

				tbl6[arg].Connection = RunService.Heartbeat:Connect(function()
					local v33 = tbl6[arg]
					if not v33 then
						return
					end

					if not tbl5.ESP then
						v33.Container.Enabled = false
						return
					end
					local v34 = fn25(arg)
					local v35 = v34 and fn27(v34)
					local v36 = v34 and fn26(v34)
					if not v34 or not v35 or not v36 or v36.Health <= 0 then
						v33.Container.Enabled = false
						return
					end
					v33.Container.Enabled = true
					v33.Highlight.Adornee = v34
					v33.Billboard.Adornee = v35
					local v37 = fn25(localPlayer2)
					v37 = v37 and fn27(v37)

					if v37 then
						v33.DistLabel.Text = math.floor((v35.Position - v37.Position).Magnitude) .. " studs"
					end

					if fn29(arg) then
						v33.Highlight.FillColor = Color3.fromRGB(0, 180, 255)
						v33.NameLabel.TextColor3 = Color3.fromRGB(0, 180, 255)
					else
						v33.Highlight.FillColor = Color3.fromRGB(0, 255, 140)
						v33.NameLabel.TextColor3 = Color3.fromRGB(0, 255, 140)
					end
				end)
			end

			local function fn31(arg)
				local v32 = tbl6[arg]
				if not v32 then
					return
				end

				if v32.Connection then
					v32.Connection:Disconnect()
				end

				if v32.Container and v32.Container.Parent then
					v32.Container:Destroy()
				end

				tbl6[arg] = nil
			end

			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer2 then
					fn30(player)
				end
			end

			Players.PlayerAdded:Connect(function(player)
				task.wait(1)
				fn30(player)
			end)

			Players.PlayerRemoving:Connect(function(player)
				fn31(player)
			end)

			v31:Toggle({
				Title = tbl4.ESP,
				Desc = tbl4.ESPDesc,
				Callback = function(esp)
					tbl5.ESP = esp

					if esp then
						for _, player in ipairs(Players:GetPlayers()) do
							fn30(player)
						end
					else
						for _, v32 in pairs(tbl6) do
							if v32.Container then
								v32.Container.Enabled = false
							end
						end
					end
				end,
			})

			v31:Space()

			v31:Toggle({
				Title = tbl4.KillAura,
				Desc = tbl4.KillAuraDesc,
				Callback = function(killAura)
					tbl5.KillAura = killAura

					if killAura then
						connection4 = RunService.Heartbeat:Connect(function()
							if not tbl5.KillAura then
								return
							end
							local v32 = fn25(localPlayer2)
							local v33 = v32 and fn27(v32)
							if not v33 then
								return
							end

							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= localPlayer2 and not fn29(player) and fn28(player) then
									local v34 = fn25(player)
									local v35 = v34 and fn27(v34)

									if v35 then
										if (v35.Position - v33.Position).Magnitude <= tbl5.AuraRange then
											local tool = localPlayer2.Character and localPlayer2.Character:FindFirstChildWhichIsA("Tool")

											if tool then
												pcall(function()
													tool:Activate()
												end)
											end

											local v36 = fn26(v32)

											if v36 then
												pcall(function()
													v36:MoveTo(v35.Position)
												end)
											end
										end
									end
								end
							end
						end)
					elseif connection4 then
						connection4:Disconnect()
						connection4 = nil
					end
				end,
			})

			v31:Space()

			v31:Slider({
				Title = tbl4.SliderAura,
				Step = 1,
				Value = { Min = 5, Max = 50, Default = 20 },
				Callback = function(auraRange)
					tbl5.AuraRange = auraRange
				end,
			})

			v31:Space()

			v31:Toggle({
				Title = tbl4.AutoClick,
				Desc = tbl4.AutoClickDesc,
				Callback = function(autoClick)
					tbl5.AutoClick = autoClick

					if autoClick then
						connection5 = RunService.Heartbeat:Connect(function()
							if not tbl5.AutoClick then
								return
							end
							local tool = localPlayer2.Character and localPlayer2.Character:FindFirstChildWhichIsA("Tool")

							if tool then
								pcall(function()
									tool:Activate()
								end)
							end
						end)
					elseif connection5 then
						connection5:Disconnect()
						connection5 = nil
					end
				end,
			})

			v31:Space()

			v31:Toggle({
				Title = tbl4.Hitbox,
				Desc = tbl4.HitboxDesc,
				Callback = function(hitbox)
					tbl5.Hitbox = hitbox

					if hitbox then
						for _, player in ipairs(Players:GetPlayers()) do
							if player ~= localPlayer2 then
								local v32 = fn25(player)

								if v32 then
									for _, descendant in ipairs(v32:GetDescendants()) do
										if descendant:IsA("BasePart") and descendant.Name ~= "HumanoidRootPart" then
											if not tbl7[descendant] then
												tbl7[descendant] = descendant.Size
											end

											descendant.Size = Vector3.new(tbl5.HitboxSize, tbl5.HitboxSize, tbl5.HitboxSize)
											descendant.Transparency = 0.7
											descendant.CanCollide = false
										end
									end
								end
							end
						end
					else
						for k, v32 in pairs(tbl7) do
							if k and k.Parent then
								k.Size = v32
								k.Transparency = 0
							end
						end

						tbl7 = {}
					end
				end,
			})

			v31:Space()

			v31:Slider({
				Title = tbl4.SliderHitbox,
				Step = 1,
				Value = { Min = 5, Max = 30, Default = 10 },
				Callback = function(hitboxSize)
					tbl5.HitboxSize = hitboxSize

					if tbl5.Hitbox then
						for _, player in ipairs(Players:GetPlayers()) do
							if player ~= localPlayer2 then
								local v32 = fn25(player)

								if v32 then
									for _, descendant in ipairs(v32:GetDescendants()) do
										if descendant:IsA("BasePart") and descendant.Name ~= "HumanoidRootPart" then
											descendant.Size = Vector3.new(hitboxSize, hitboxSize, hitboxSize)
										end
									end
								end
							end
						end
					end
				end,
			})

			local v32 = v26:Tab({ Title = tbl4.Movement, Icon = "zap" })
			local walkSpeed = 16
			local jumpPower = 50

			v32:Toggle({
				Title = tbl4.Speed,
				Desc = tbl4.SpeedDesc,
				Callback = function(speed)
					tbl5.Speed = speed
					local v33 = fn25(localPlayer2)
					v33 = v33 and fn26(v33)
					if not v33 then
						return
					end

					if speed then
						tbl8.WalkSpeed = v33.WalkSpeed
						v33.WalkSpeed = tbl5.SpeedValue

						task.spawn(function()
							while tbl5.Speed and v33 and v33.Parent do
								pcall(function()
									v33.WalkSpeed = tbl5.SpeedValue
								end)

								task.wait(0.1)
							end
						end)
					else
						pcall(function()
							v33.WalkSpeed = walkSpeed
						end)
					end
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.SliderSpeed,
				Step = 1,
				Value = { Min = 16, Max = 200, Default = 100 },
				Callback = function(speedValue)
					tbl5.SpeedValue = speedValue

					if tbl5.Speed then
						local v33 = fn25(localPlayer2)
						v33 = v33 and fn26(v33)

						if v33 then
							pcall(function()
								v33.WalkSpeed = speedValue
							end)
						end
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.Jump,
				Desc = tbl4.JumpDesc,
				Callback = function(jump)
					tbl5.Jump = jump
					local v33 = fn25(localPlayer2)
					v33 = v33 and fn26(v33)
					if not v33 then
						return
					end

					if jump then
						tbl8.JumpPower = v33.JumpPower

						pcall(function()
							v33.JumpPower = tbl5.JumpValue
							v33.UseJumpPower = true
						end)

						task.spawn(function()
							while tbl5.Jump and v33 and v33.Parent do
								pcall(function()
									v33.JumpPower = tbl5.JumpValue
									v33.UseJumpPower = true
								end)

								task.wait(0.1)
							end
						end)
					else
						pcall(function()
							v33.JumpPower = jumpPower
						end)
					end
				end,
			})

			v32:Space()

			v32:Slider({
				Title = tbl4.SliderJump,
				Step = 1,
				Value = { Min = 50, Max = 300, Default = 100 },
				Callback = function(jumpValue)
					tbl5.JumpValue = jumpValue

					if tbl5.Jump then
						local v33 = fn25(localPlayer2)
						v33 = v33 and fn26(v33)

						if v33 then
							pcall(function()
								v33.JumpPower = jumpValue
								v33.UseJumpPower = true
							end)
						end
					end
				end,
			})

			v32:Space()
			local bodyVelocity = nil
			local bodyGyro = nil

			v32:Toggle({
				Title = tbl4.Fly,
				Desc = tbl4.FlyDesc,
				Callback = function(fly)
					tbl5.Fly = fly
					local v33 = fn25(localPlayer2)
					if not v33 then
						return
					end
					local v34 = fn27(v33)
					if not v34 then
						return
					end

					if fly then
						bodyVelocity = Instance.new("BodyVelocity")
						bodyVelocity.Name = "SHELL_FlyVel"
						bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						bodyVelocity.Velocity = Vector3.zero
						bodyVelocity.Parent = v34
						bodyGyro = Instance.new("BodyGyro")
						bodyGyro.Name = "SHELL_FlyGyro"
						bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
						bodyGyro.P = 10000
						bodyGyro.Parent = v34

						connection2 = RunService.Heartbeat:Connect(function()
							if not tbl5.Fly then
								return
							end
							local currentCamera = Workspace.CurrentCamera
							if not currentCamera then
								return
							end
							local vector = Vector3.zero

							if UserInputService2:IsKeyDown(Enum.KeyCode.W) then
								vector = Vector3.zero + currentCamera.CFrame.LookVector
							end

							if UserInputService2:IsKeyDown(Enum.KeyCode.S) then
								vector -= currentCamera.CFrame.LookVector
							end

							if UserInputService2:IsKeyDown(Enum.KeyCode.A) then
								vector -= currentCamera.CFrame.RightVector
							end

							if UserInputService2:IsKeyDown(Enum.KeyCode.D) then
								vector += currentCamera.CFrame.RightVector
							end

							if UserInputService2:IsKeyDown(Enum.KeyCode.Space) then
								vector += Vector3.new(0, 1, 0)
							end

							if UserInputService2:IsKeyDown(Enum.KeyCode.LeftShift) then
								vector -= Vector3.new(0, 1, 0)
							end

							if vector.Magnitude > 0 then
								vector = vector.Unit * tbl5.SpeedValue
							end

							if bodyVelocity and bodyVelocity.Parent then
								bodyVelocity.Velocity = vector
							end

							if bodyGyro and bodyGyro.Parent then
								bodyGyro.CFrame = currentCamera.CFrame
							end
						end)
					else
						if connection2 then
							connection2:Disconnect()
							connection2 = nil
						end

						if bodyVelocity then
							bodyVelocity:Destroy()
							bodyVelocity = nil
						end

						if bodyGyro then
							bodyGyro:Destroy()
							bodyGyro = nil
						end
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.InfJump,
				Desc = tbl4.InfJumpDesc,
				Callback = function(infJump)
					tbl5.InfJump = infJump
				end,
			})

			UserInputService2.JumpRequest:Connect(function()
				if tbl5.InfJump then
					local v33 = fn25(localPlayer2)
					v33 = v33 and fn26(v33)

					if v33 then
						pcall(function()
							v33:ChangeState(Enum.HumanoidStateType.Jumping)
						end)
					end
				end
			end)

			v32:Space()

			v32:Toggle({
				Title = tbl4.NoFall,
				Desc = tbl4.NoFallDesc,
				Callback = function(noFall)
					tbl5.NoFall = noFall

					if noFall then
						RunService.Heartbeat:Connect(function()
							if not tbl5.NoFall then
								return
							end
							local v33 = fn25(localPlayer2)
							v33 = v33 and fn26(v33)

							if v33 then
								pcall(function()
									local freefall = Enum.HumanoidStateType.Freefall

									if v33:GetState() == freefall then
										v33:ChangeState(Enum.HumanoidStateType.Running)
									end
								end)
							end
						end)
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.NoClip,
				Desc = tbl4.NoClipDesc,
				Callback = function(noClip)
					tbl5.NoClip = noClip

					if noClip then
						connection3 = RunService.Stepped:Connect(function()
							if not tbl5.NoClip then
								return
							end
							local v33 = fn25(localPlayer2)
							if not v33 then
								return
							end

							for _, descendant in ipairs(v33:GetDescendants()) do
								if descendant:IsA("BasePart") then
									descendant.CanCollide = false
								end
							end
						end)
					else
						if connection3 then
							connection3:Disconnect()
							connection3 = nil
						end

						local v33 = fn25(localPlayer2)

						if v33 then
							for _, descendant in ipairs(v33:GetDescendants()) do
								if descendant:IsA("BasePart") then
									descendant.CanCollide = true
								end
							end
						end
					end
				end,
			})

			v32:Space()

			v32:Toggle({
				Title = tbl4.AntiAFK,
				Desc = tbl4.AntiAFKDesc,
				Callback = function(antiAFK)
					tbl5.AntiAFK = antiAFK

					if antiAFK then
						connection6 = UserInputService2.WindowFocusReleased:Connect(function()
							if tbl5.AntiAFK then
								pcall(function()
									localPlayer2.Character.Humanoid:Move(Vector3.new(0.01, 0, 0), true)
									task.wait(0.1)
									localPlayer2.Character.Humanoid:Move(Vector3.new(-0.01, 0, 0), true)
								end)
							end
						end)

						task.spawn(function()
							while tbl5.AntiAFK do
								pcall(function()
									local VirtualUser = game:GetService("VirtualUser")
									VirtualUser:CaptureController()
									VirtualUser:ClickButton2(Vector2.new())
								end)

								task.wait(60)
							end
						end)
					elseif connection6 then
						connection6:Disconnect()
						connection6 = nil
					end
				end,
			})

			v32:Space()
			local brightness = Lighting.Brightness
			local clockTime = Lighting.ClockTime
			local globalShadows = Lighting.GlobalShadows
			local outdoorAmbient = Lighting.OutdoorAmbient

			v32:Toggle({
				Title = tbl4.FullBright,
				Desc = tbl4.FullBrightDesc,
				Callback = function(fullBright)
					tbl5.FullBright = fullBright

					if fullBright then
						brightness = Lighting.Brightness
						clockTime = Lighting.ClockTime
						globalShadows = Lighting.GlobalShadows
						outdoorAmbient = Lighting.OutdoorAmbient
						Lighting.Brightness = 10
						Lighting.ClockTime = 14
						Lighting.GlobalShadows = false
						Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)

						task.spawn(function()
							while tbl5.FullBright do
								pcall(function()
									Lighting.Brightness = 10
									Lighting.ClockTime = 14
									Lighting.GlobalShadows = false
									Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
								end)

								task.wait(1)
							end
						end)
					else
						pcall(function()
							Lighting.Brightness = brightness
							Lighting.ClockTime = clockTime
							Lighting.GlobalShadows = globalShadows
							Lighting.OutdoorAmbient = outdoorAmbient
						end)
					end
				end,
			})

			Players.PlayerAdded:Connect(function(player)
				task.wait(1)

				if tbl5.Hitbox then
					local v33 = fn25(player)

					if v33 and player ~= localPlayer2 then
						for _, descendant in ipairs(v33:GetDescendants()) do
							if descendant:IsA("BasePart") and descendant.Name ~= "HumanoidRootPart" then
								if not tbl7[descendant] then
									tbl7[descendant] = descendant.Size
								end

								descendant.Size = Vector3.new(tbl5.HitboxSize, tbl5.HitboxSize, tbl5.HitboxSize)
								descendant.Transparency = 0.7
								descendant.CanCollide = false
							end
						end
					end
				end
			end)

			localPlayer2.CharacterAdded:Connect(function(character)
				task.wait(0.5)

				if tbl5.Speed then
					local v33 = fn26(character)

					if v33 then
						pcall(function()
							v33.WalkSpeed = tbl5.SpeedValue
						end)
					end
				end

				if tbl5.Jump then
					local v33 = fn26(character)

					if v33 then
						pcall(function()
							v33.JumpPower = tbl5.JumpValue
							v33.UseJumpPower = true
						end)
					end
				end
			end)
		elseif game.PlaceId == 18214855317 then
			local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tnine-n9/n9/refs/heads/main/%E4%BA%8C%E6%94%B9Library.lua"))()
			local lib2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/addons/ThemeManager.lua"))()
			local lib3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/addons/SaveManager.lua"))()
			lib.ShowToggleFrameInKeybinds = true
			lib.ShowCustomCursor = true
			lib.NotifySide = "Left"

			lib:CreateWindow({
				Title = "Shell.Lua",
				Footer = "Shell.Lua 萨凡纳",
				CornerRadius = 16,
				Center = true,
				AutoShow = true,
				Resizable = true,
				ShowCustomCursor = true,
				UnlockMouseWhileOpen = true,
				NotifySide = "Left",
				TabPadding = 8,
				MenuFadeTime = 0.2,
			})

			local tbl3 = {
				Main = Win:AddTab("主要功能", "info"),
				Fun = Win:AddTab("娱乐功能", "gamepad"),
				Settings = Win:AddTab("设置", "settings"),
			}

			local v26 = tbl3.Main:AddLeftGroupbox("功能")
			local v27 = tbl3.Fun:AddLeftGroupbox("娱乐")
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local localPlayer2 = game:GetService("Players").LocalPlayer

			v26:AddToggle("WaterWalk", {
				Text = "水上走路",
				Default = false,
				Callback = function(arg)
					local function fn23(arg2, canCollide)
						if arg2:IsA("BasePart") and (arg2.Material == Enum.Material.Water or arg2.Name:lower():find("water") or arg2:GetAttribute("Water") == true) then
							arg2.CanCollide = canCollide
						end
					end

					if arg then
						for _, descendant in ipairs(workspace:GetDescendants()) do
							fn23(descendant, true)
						end

						local descendantAdded = workspace.DescendantAdded

						getgenv().WC = descendantAdded:Connect(function(arg2)
							fn23(arg2, true)
						end)
					else
						if getgenv().WC then
							getgenv().WC:Disconnect()
						end

						for _, descendant in ipairs(workspace:GetDescendants()) do
							fn23(descendant, false)
						end
					end
				end,
			})

			v26:AddToggle("NoFall", {
				Text = "无跌落伤害",
				Default = false,
				Callback = function(arg)
					if arg then
						local ok, result = pcall(function()
							return require(localPlayer2.PlayerScripts.AnimalGameFramework.FallDamageHandler)
						end)

						if ok then
							local getFallDamageHeights = result._getFallDamageHeights
							getgenv().OH = getFallDamageHeights

							result._getFallDamageHeights = function()
								return 999999, 999999
							end
						end
					elseif getgenv().OH then
						require(localPlayer2.PlayerScripts.AnimalGameFramework.FallDamageHandler)._getFallDamageHeights = getgenv().OH
					end
				end,
			})

			v26:AddToggle("InfStamina", {
				Text = "无限耐力",
				Default = false,
				Callback = function(ise)
					getgenv().ISE = ise

					if ise then
						task.spawn(function()
							while getgenv().ISE and task.wait(0.1) do
								if localPlayer2.Character then
									localPlayer2.Character:SetAttribute("Stamina", 100)
								end
							end
						end)
					end
				end,
			})

			v26:AddToggle("KillAura", {
				Text = "杀戮光环",
				Default = false,
				Callback = function(kae)
					getgenv().KAE = kae

					if kae then
						task.spawn(function()
							while getgenv().KAE and task.wait(0.2) do
								for _, player in ipairs(game.Players:GetPlayers()) do
									if player ~= localPlayer2 and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
										if (localPlayer2.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 50 then
											local attackHandlerRemoteEvent = ReplicatedStorage:FindFirstChild("AttackHandlerRemoteEvent")

											if attackHandlerRemoteEvent then
												attackHandlerRemoteEvent:FireServer(player.Character.Humanoid)
											end
										end
									end
								end
							end
						end)
					end
				end,
			})

			v26:AddToggle("AntiNight", {
				Text = "反黑夜",
				Default = false,
				Callback = function(ane)
					getgenv().ANE = ane

					if ane then
						task.spawn(function()
							while getgenv().ANE and task.wait(0.01) do
								local makeNightDarkerColorCorrection = game:GetService("Lighting"):FindFirstChild("MakeNightDarkerColorCorrection")

								if makeNightDarkerColorCorrection then
									makeNightDarkerColorCorrection.Brightness = 0
								end
							end
						end)
					end
				end,
			})

			v26:AddToggle("InfOxygen", {
				Text = "无限氧气",
				Default = false,
				Callback = function(ioe)
					getgenv().IOE = ioe

					task.spawn(function()
						while getgenv().IOE and task.wait(0.2) do
							if localPlayer2.Character then
								localPlayer2.Character:SetAttribute("Oxygen", 100)
							end
						end
					end)
				end,
			})

			v26:AddToggle("AutoEsc", {
				Text = "自动挣脱",
				Default = false,
				Callback = function(aee)
					getgenv().AEE = aee

					task.spawn(function()
						while getgenv().AEE and task.wait(0.1) do
							local latchedPlayersNotifyRemoteEvent = ReplicatedStorage:FindFirstChild("LatchedPlayersNotifyRemoteEvent")

							if latchedPlayersNotifyRemoteEvent then
								latchedPlayersNotifyRemoteEvent:FireServer()
							end
						end
					end)
				end,
			})

			v27:AddButton({
				Text = "秒成长",
				Func = function()
					if localPlayer2.Character then
						localPlayer2.Character:SetAttribute("GrowthPercentage", 100)
					end
				end,
			})

			local v28 = tbl3.Settings:AddLeftGroupbox("菜单")

			v28:AddButton("卸载", function()
				lib:Unload()
			end)

			v28:AddLabel("按键"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu" })
			lib.ToggleKeybind = lib.Options.MenuKeybind
			lib2:SetLibrary(lib)
			lib3:SetLibrary(lib)
			lib3:IgnoreThemeSettings()
			lib2:ApplyToTab(tbl3.Settings)
		end
	end)

	if not (not UserSettings():HasTag("ណ്ຘಉឰඞ") and not fn3(UserSettings():HasTag("ណ്ຘಉឰඞ"), true, 142956)) then
		local now2 = os.clock()

		heartbeat:Connect(function()
			n23 += 1

			if n23 % 3182 ~= 0 == false then
				if n2 < 3921 or not flag7 and v15._bbb7efb985338234218f9966 ~= "_d0a16633920c34b4ac34f38c" and os.clock() - now2 >= 45 then
					fn("J2_031")

					while true do
					end
				end
			end
		end)

		n25 = 1
		return 1
	end

	fn("J2_017")

	while true do
	end
end
