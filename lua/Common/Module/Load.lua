local data = {}

function data.Load(k)
    local sta , err = pcall(require , k)

	return sta , err
end

function data.DeleteLoaded(k)
	local v = package.loaded[k]

	if(v)
	then
        -- 然后将已加载表中对于的值置空：
		package.loaded[k] = nil
	end

	return true
end

function data.DeleteAllLoaded()
	for k, _ in pairs(package.loaded) do
		package.loaded[k] = nil
	end
end

function data.DeletePreloaded(k)
	local v = package.loaded[k]

	if(v)
	then
        -- 再把预加载表中对于的值也置空：
		-- 清空后再次加载后不会缓存了
        package.preload[k] = nil
	end

	return true
end

function data.Reload(k)
    local om

	-- 缓存旧的模块
	om = package.loaded[k]

    if om then
		data.Delete(k)
    end

	local sta , err = data.Load(k)

	--热更失败，将旧值赋回去
    if not sta then
        print("Load failed, Error:" , err)
        package.loaded[k] = om
        return false
    end

    return true
end

return data
