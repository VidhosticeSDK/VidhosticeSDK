-- Author:Nicolas Wrobel, ezaitsev, VidhosticeSDK
-- Name:paintRecipesBySplineSDK
-- Description: First parameter is half the width in meters. Second parameter is Combined layers from FS25_In_Bohemia map.
-- Icon:iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAABHNCSVQICAgIfAhkiAAABBxJREFUOI2d0j+PZFcRxuFfnXu6e2Z6Znpm1+BdYxt5LUtghE2CICPEECEyhIj8VZCI+QyIwCkx4hsgCzkyQpbt3dkd75/pme7bfe8951S9BIuFHXnlit5KHr1SlfEt5h/3/wiQTeUVKL9JFr/vjLdq+MFFv64fP7ss+dvATRPAwrBX4OCNjvRdmR3tfOwe9WH/ebpNLwR/8On0lU30urAj/pqhLoVWwk4S3Xz0xHZ0rvpJ6ZvQv31esefRgDlw5nzvpcneO3PuHrhS5yrmUYlwCGFueqHGi2QW0lJwF/i+SKsSb3Y1hnsdH96x9HSGRITwhrzCC8BmBofJeMvQe2b2jovlUBe2GW+fHXZnr91aXC9mZkQY4aJVfTNsZglsZfIfJeNXnfGOgjwWeNqndDyf5dU85SwIGeGGvwjcsTewE1n3spHOO+PYpLQf3a76go6cODUJMw9UPfAaX4f18AdfxhkoQ0nP+N3sk/b+0VX8ZD7Zywk6movaXKU0fB4GCcfV157NuGGa6v+PN179lhp7cnmwMOIN0D1Ipys+mr1a/3K7Vv/hMPvFScmnVkPmHsgFYbiwqfY8Gb/QeriiVbevNY50aG63V6b2M7P4JZQ7GocurTeLPH72EufbW350au7gTYQH7s6u9rpuD+3xcElfdkT76lcIwHLY+QrpbUv83OS3fL+z8uAgTbsxt3mZ6VA0F95ErY1NueHRcMG6XrCdetyFGuTyp/c7Db3x5zDeVebdNGdpJ5idI52qOm3XUbZBrYFJBKK5M0w9g12i/QWFLTUCIhHuZMxex+yMaof2IYl9u8tP03c47zIhLJ5/XQAhaCH6EroZKpvd1hRXzKYN3SyQOsIDOcocnvzaUvc6Uz1XPyT9e3dqd+Zvp+P53GSGJymeg/smNkPwZNO4uK623RUOciMESYYECgjHMsvVH+z4dKX9dBjrRxafbnN67fAk3VtmOsPcaFXcjMFnN86lKtfXxZ5tK+PUWESADMmeowFykSH9mNRl4Z3vnfp4x+xpWDcszdKEtlc2bRc82Ux8sm48jkbtG+PU8NYghMBCRvyvNSEyD78wdSlps0/18gnjrkf7kdlNAXbS1Zrx+ratt6Me7xo3i6CrQWsNuRMRFjIZQoCEEZDjn/+SJcN3heny2nb1GusbR88SosKmyccTphY2VGcoTlcbXhqpOuHCBQYWQgqQSDk+/txSMqI4pZ+0Oxg1H8PUAylgAjWpemisbvvi5OJEdWY1wkMWX6ISSBAoaz04ZhYulVJ9n6MeuyUr3cwsTMVxpw5hvq/MhuJdNwWUKJ1ab11JmI4FWWDW2doSDzKVEZiHK9eqcZI2LptZsWNk2YopIu32zKd9pOXYYpFrYM22y1zvz4/2s9T5qyIdAZYXdj8v7O//BQ35+v5R2JG/AAAAAElFTkSuQmCCAQAAEwAAABIAAAAAAAAgxwEAAAAAAAAAAAAAAAAAAAAAAAAsgoDNyIgAgBByJ/XHAQAAYEHacv9/AAABAAAA/////wAAAAAAAAAAAAAAAAAAAAABAAAAAQAAAP////8AAAAAEHIn9ccBAABAMdpy/38AAAEAAAD/////AAAAAAAAAAAAAAAAAAAAAP////8AAAAAAAAAAAUAAAAgLBBxxwEAANA62nL/fwAAAgE1Ev////8AAAAAAAAAAAAAAAAAAAAAAwAAAAEAAAD/////xwEAAEAkfRbHAQAA0Dracv9/AAACAQAA/////wAAAAAAAAAAAAAAAAAAAAAEAAAABAAAAP////8FAAAAQJ+S98cBAADQOtpy/38AAAIBNRL/////AAAAAAAAAAAAAAAAAAAAAP////8AAAAA/////8cBAADAfpL3xwEAANA62nL/fwAAAgEAAP////8AAAAAAAAAAAAAAAAAAAAA/////wAAAAD/////BQAAAMCRJ/XHAQAA0Dracv9/AAACAVIW/////wAAAAAAAAAAAAAAAAAAAAAIAAAAAgAAAP/////HAQAAkJIn9ccBAADQOtpy/38AAAIBAAD/////AAAAAAAAAAAAAAAAAAAAAAoAAAADAAAA/////wUAAADAkSf1xwEAACAz2nL/fwAAAgE1Ev////8AAAAAAAAAAAAAAAAAAAAADQAAAAIAAAAGAAAAxwEAANCze9HHAQAA0Dracv9/AAACAQAA/////wAAAAAAAAAAAAAAAAAAAAAPAAAAAQAAAP////8FAAAAkJIn9ccBAAAgM9py/38AAAIBNRL/////AAAAAAAAAAAAAAAAAAAAABAAAAACAAAABwAAAMcBAABQaCf1xwEAANA62nL/fwAAAgEAAP////8AAAAAAAAAAAAAAAAAAAAAEgAAAAEAAAD/////BQAAAECLJ/XHAQAA0Dracv9/AAACATUS/////wAAAAAAAAAAAAAAAAAAAAATAAAAAQAAAP/////HAQAA0LN70ccBAAAgM9py/38AAAIBAAD/////AAAAAAAAAAAAAAAAAAAAAA==
-- Hide:no
-- AlwaysLoaded: no
source("editorUtils.lua");

--***************************************************************************************************************
--
-- VidhosticeSDK - This script only works with the map based on FS25_In_Bohemia.
--
--***************************************************************************************************************

local recipes = {
  { "cesta - KAMINKY",    "TRAVA: 5", "STERK MECH: 2.0", "ASFALT SEDY KAMINKY: 1.5"},
  { "cesta - ROZDROBENY", "TRAVA: 5", "STERK MECH: 2.0", "ASFALT SEDY ROZDROBENY: 1.5"},
  { "cesta - MAKADAM",    "TRAVA: 5", "STERK MECH: 2.0", "MAKADAM: 1.5"},
  { "cesta 3",            "TRAVA: 5", "TRAVA SPINAVA: 2.0", "STERK MECH: 1.2", "TRAVA SPINAVA: 0.2"},
  { "cesta 2",            "TRAVA: 5", "TRAVA SPINAVA: 2.0", "TRAVA FLEKY: 1.2", "TRAVA SPINAVA: 0.2"},
  { "cesta 1",            "TRAVA: 5", "STERK MECH: 2.0", "TRAVA SPINAVA: 1.2", "STERK MECH: 0.2"},
  { "cesta tmava",        "TRAVA: 5", "HLINA TRAVA: 2.0", "HLINA KAMINKY: 1.2", "HLINA TRAVA: 0.2"},

  { "silnice uzka",       "TRAVA: 5", "STERK MECH: 2.5", "ASFALT: 1.8" },
  { "silnice stredni",    "TRAVA: 5", "STERK MECH: 3.6", "ASFALT: 2.4" },
  { "silnice siroka",     "TRAVA: 5", "STERK MECH: 4.4", "ASFALT: 3.6" },
}

local mStartId = 128
layers = {
  "TRAVA",                      -- 128
  "TRAVA SPINAVA",              -- 129
  "TRAVA MECH",
  "TRAVA FLEKY",
  "TRAVA CERSTVA STREDNI",
  "TRAVA CERSTVA KRATKA",
  "TRAVA CERSTVA JETEL",
  "TRAVA SUCHA",
  "TRAVA POSEKANA",
  "HLINA SUCHA",
  "HLINA SUCHA KAMINKY",
  "HLINA ZVIRECI",
  "HLINA MOKRA",
  "HLINA LISTY",
  "HLINA KAMINKY",
  "HLINA TRAVA",
  "HLINA MECH",
  "ASFALT",
  "ASFALT PRASKLINY",
  "ASFALT SPINA",
  "ASFALT SEDY PRASKLINY",
  "ASFALT SEDY ROZDROBENY",
  "ASFALT SEDY KAMINKY",
  "BETON",
  "BETON SPINA",
  "BETON RYHY",
  "BETON DULKY",
  "BETON 2",
  "BETON 2 PRASKLINY",
  "BETON 2 KAMINKY",
  "MAKADAM",
  "STERK",
  "STERK SPINA",
  "STERK PISEK",
  "STERK PRACH",
  "STERK TRAVA",
  "STERK MECH",
  "SKALA",
  "SKALA TRAVNATA",
  "SKALA 2",
  "SKALA 3",
  "SKALA PISEK",
  "LES JEHLICNATY",
  "LES LISTNATY",
  "LES SAD",
  "LES CESTA",
  "LES KAMENY",
  "LES SKALA",
  "LES SKALA KORENY",
  "PISEK SVETLY",
  "PISEK SVETLY KAMINKY",
  "PISEK",
  "PISEK SPINA",
  "PISEK STOPY",
  "PISEK TRAVA",
  "BETON DESKA",
  "BETON DESKA PRASKLINY",
  "BETON DESKA SPINA",
  "DLAZBA",
  "CHODNIK",
  "MOZAIKA",
  "DLAZBA PISKOVEC",
  "ZATRAVNOVAK",
  "KOCICI HLAVY",
  "KOCICI HLAVY MECH",
  "MIX Hlina",
  "MIX Asfalt",
  "MIX Beton",
  "MIX Sterk",                  -- 196
  "MIX Deska",                  -- 197
}

--***************************************************************************************************************

SelectFromListDialog = {}
SelectFromListDialog.WINDOW_WIDTH = 260
SelectFromListDialog.WINDOW_HEIGHT = 600

function SelectFromListDialog.new(list, selectedTxt, callback, liveUpdate)
    local self = setmetatable({}, {__index=SelectFromListDialog})

    self.list = list
    self.selectedTxt = selectedTxt
    self.callback = callback
    self.liveUpdate = liveUpdate
    self:generateUI()
    self:updateUI()

    if g_currentSelectFromListDialog ~= nil then
        g_currentSelectFromListDialog:close()
    end
    g_currentSelectFromListDialog = self
    return self
end

function SelectFromListDialog:generateUI()
    self.uiFrameRowSizer = UIRowLayoutSizer.new()
    self.uiFrame = UIWindow.new(self.uiFrameRowSizer, "select")
    self.uiBorderSizer = UIRowLayoutSizer.new()
    self.uiFramePanel = UIPanel.new(self.uiFrameRowSizer, self.uiBorderSizer, -1, -1, -1, -1, BorderDirection.NONE, 0, 1)
    self.uiRowSizer = UIRowLayoutSizer.new()
    self.uiBorderPanel = UIPanel.new(self.uiBorderSizer, self.uiRowSizer, -1, -1, SelectFromListDialog.WINDOW_WIDTH, SelectFromListDialog.WINDOW_HEIGHT, BorderDirection.ALL, 10, 1)
    --------------------------------------------------------------------------------------------------------------------------------------
    self.uiGridSizerInput1 = UIGridSizer.new(1, 1, 2, 2)
    UIPanel.new(self.uiRowSizer, self.uiGridSizerInput1, -1, -1, 150, -1, BorderDirection.BOTTOM, 0)
    UITextArea.new(self.uiGridSizerInput1, "Ground texture:", TextAlignment.LEFT, true, false, -1, -1, -1, -1, -1, 0)
    self.uiList = UIList.new(self.uiRowSizer, -1, -1, 220, -1, BorderDirection.NONE, 1,1)
    self.uiList:setOnChangeCallback(function() self:onListChange(self.callback) end, self)
    --------------------------------------------------------------------------------------------------------------------------------------
    self.uiGridSizerButtons0 = UIGridSizer.new(1, 1, 2, 2)
    UIPanel.new(self.uiRowSizer, self.uiGridSizerButtons0, -1, -1, 150, -1, BorderDirection.BOTTOM, 0)
    self.uiButtonOK = UIButton.new(self.uiGridSizerButtons0, "Toggle live update", function() self:changeLiveUpdate() end, self, -1, -1, -1, -1, BorderDirection.TOP, 2, 1)
    --------------------------------------------------------------------------------------------------------------------------------------
    self.uiGridSizerButtons1 = UIGridSizer.new(1, 2, 2, 2)
    UIPanel.new(self.uiRowSizer, self.uiGridSizerButtons1, -1, -1, 150, -1, BorderDirection.BOTTOM, 0)
    self.uiButtonOK = UIButton.new(self.uiGridSizerButtons1, "OK", function() self:onClickButton("OK", self.callback) end, self, -1, -1, -1, -1, BorderDirection.TOP, 2, 1)
    self.uiButtonCancel = UIButton.new(self.uiGridSizerButtons1, "Cancel", function() self:onClickButton("Cancel", self.callback) end, self, -1, -1, -1, -1, BorderDirection.TOP, 2, 1)
    -- layout and show window
    self.uiFrame:setOnCloseCallback(function() self:onClose() end)
    self.uiFrame:showWindow()
end

function SelectFromListDialog:updateUI()
    for _, value in pairs(self.list) do
        self.uiList:appendItem(value[1])
    end
    for itemId = 0, self.uiList:getItemCount() - 1 do
        if (self.selectedTxt == self.uiList:getItemText(itemId)) then
            self.uiList:setSelectedItem(itemId)
            break
        end
    end
end

function SelectFromListDialog:onClickButton(txt, callback)
    if ( "OK" == txt ) then
        self.state = true
    elseif ( "Cancel" == txt ) then
        self.state = false
    end
    callback(self.state, self.selectedTxt)
--    self.uiFrame:close()
end

function SelectFromListDialog:onListChange(callback)
    local itemId = self.uiList:getSelectedItem()
    if (nil ~= itemId) then
        self.selectedTxt = self.uiList:getItemText(itemId)
    end
    if self.liveUpdate then
        callback(true, self.selectedTxt)
    end
end

function SelectFromListDialog:close()
    self.uiFrame:close()
end

function SelectFromListDialog:onClose()
end

function SelectFromListDialog:changeLiveUpdate()
    if self.liveUpdate then
        self.liveUpdate = false
    else
        self.liveUpdate = true
    end
end

--***************************************************************************************************************

function paintTerrainBySplineSDK(mLayerId, mSideCount)
--[[
    paintTerrainBySpline ( take x,z value from spline every 1 meter and paint selected texture on the terrain)
--]]

    local mSceneID = getRootNode()
    local mTerrainID = 0

    for i = 0, getNumOfChildren(mSceneID) - 1 do
        local mID = getChildAt(mSceneID, i)
        if (getName(mID) == "terrain") then
            mTerrainID = mID
            break
        end
    end

    if (mTerrainID == 0) then
        printError("Error: Terrain node not found. Node needs to be named 'terrain'.")
        return false
    end

    if (getNumSelected() == 0) then
        printError("Error: Select one or more splines.")
        return false
    end

    local mSplineIDs = {}
    for i = 0, getNumSelected() - 1 do
        local mID = getSelection( i )
        if not getHasClassId(mID, ClassIds.SHAPE) or not getHasClassId(getGeometry(mID), ClassIds.SPLINE) then
            continue
        end
        table.insert(mSplineIDs, mID)
    end

    if #mSplineIDs == 0 then
        printError("Error: No splines were selected.")
        return nil
    end

    for _, mSplineID in pairs(mSplineIDs) do
        local mSplineLength = getSplineLength(mSplineID)
        local mSplinePiece = 0.2 -- real size 0.5 meter -- more precise
        local mSplinePiecePoint = mSplinePiece / mSplineLength  -- relative size [0..1]
        local mSplineSideStep = 0.2 -- more precise

        local mSplinePos = 0.0
        while mSplinePos <= 1.0 do
            -- get XYZ at position on spline
            local mPosX, mPosY, mPosZ = getSplinePosition(mSplineID, mSplinePos)
            -- directional vector at the point
            local mDirX, mDirY,   mDirZ   = getSplineDirection(mSplineID, mSplinePos)
            local mVecDx, _mVecDy, mVecDz = EditorUtils.crossProduct(mDirX, mDirY, mDirZ, 0, 1, 0)
            -- paint at the center
            setTerrainLayerAtWorldPos(mTerrainID, mLayerId, mPosX, mPosY, mPosZ, 128.0)
            -- define side to side shift in meters
            for i = mSplineSideStep, mSideCount, mSplineSideStep do -- more precise
                local mNewPosX1 = mPosX + i * mVecDx
                local mNewPosZ1 = mPosZ + i * mVecDz
                local mNewPosX2 = mPosX  - i * mVecDx
                local mNewPosZ2 = mPosZ  - i * mVecDz
                -- paint at the center
                setTerrainLayerAtWorldPos(mTerrainID, mLayerId, mNewPosX1, mPosY, mNewPosZ1, 128.0)
                setTerrainLayerAtWorldPos(mTerrainID, mLayerId, mNewPosX2, mPosY, mNewPosZ2, 128.0)
            end
            -- goto next point
            mSplinePos = mSplinePos + mSplinePiecePoint
        end
    end

    return true
end

function get_key_for_value(t, value)
    for k, v in pairs(t) do
        if v == value then return k end
    end
    return nil
end

function get_recipes_for_value(t, value)
    for k, v in pairs(t) do
        if v[1] == value then return v end
    end
    return nil
end

function split(pString, pPattern)
    local Table = {}  -- NOTE: use {n = 0} in Lua-5.0
    local fpat = "(.-)" .. pPattern
    local last_end = 1
    local s, e, cap = pString:find(fpat, 1)
    while s do
        if s ~= 1 or cap ~= "" then
        table.insert(Table,cap)
    end
        last_end = e+1
        s, e, cap = pString:find(fpat, last_end)
    end
    if last_end <= #pString then
        cap = pString:sub(last_end)
        table.insert(Table, cap)
    end
    return Table
end

function tprint (t, s)
    for k, v in pairs(t) do
        local kfmt = '["' .. tostring(k) ..'"]'
        if type(k) ~= 'string' then
            kfmt = '[' .. k .. ']'
        end
        local vfmt = '"'.. tostring(v) ..'"'
        if type(v) == 'table' then
            tprint(v, (s or '')..kfmt)
        else
            if type(v) ~= 'string' then
                vfmt = tostring(v)
            end
            print(type(t)..(s or '')..kfmt..' = '..vfmt)
        end
    end
end

function main(state, selectedTxt)
    if state then
        if selectedTxt ~= "" then
            print("***************************")
            print(selectedTxt)
            recipe = get_recipes_for_value(recipes, selectedTxt)

            for i=2, #recipe do
                print(" > " .. recipe[i])
                id = recipe[i]:split("\:")[1]:trim()
                mSideCount = tonumber(recipe[i]:split("\:")[2]:trim())

                mLayerId = mStartId - 1 + get_key_for_value(layers, id)
                paintTerrainBySplineSDK(mLayerId, mSideCount)
            end
        else
            printError("First, select the ground texture.")
        end
    else
        myLayout:close()
    end
end

myLayout = SelectFromListDialog.new(recipes, "", main, true)
