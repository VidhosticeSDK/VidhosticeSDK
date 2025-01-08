-- Author:Nicolas Wrobel, ezaitsev, VidhosticeSDK
-- Name:paintTerrainBySplineSDK
-- Description: First parameter is half the width in meters. Second parameter is Combined layers from FS25_In_Bohemia map.
-- Icon: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
-- Hide:no
-- AlwaysLoaded: no
source("editorUtils.lua");

--***************************************************************************************************************
--
-- VidhosticeSDK - This script only works with the map based on FS25_In_Bohemia.
--
--***************************************************************************************************************

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
SelectFromListDialog.WINDOW_HEIGHT = 800

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
    self.uiGridSizerInput0 = UIGridSizer.new(1, 1, 2, 2)
    UIPanel.new(self.uiRowSizer, self.uiGridSizerInput0, -1, -1, 150, -1, BorderDirection.BOTTOM, 0)
    UITextArea.new(self.uiGridSizerInput0, "Side Count:", TextAlignment.LEFT, true, false, -1, -1, -1, -1, -1, 0)
    self.floatSlider = UIFloatSlider.new(self.uiGridSizerInput0, 0.2, 0.2, 100, -1, -1, -1, -1, BorderDirection.NONE, 0)
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
        self.uiList:appendItem(value)
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
    callback(self.state, self.selectedTxt, self.floatSlider:getValue())
--    self.uiFrame:close()
end

function SelectFromListDialog:onListChange(callback)
    local itemId = self.uiList:getSelectedItem()
    if (nil ~= itemId) then
        self.selectedTxt = self.uiList:getItemText(itemId)
    end
    if self.liveUpdate then
        callback(true, self.selectedTxt, self.floatSlider:getValue())
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

function main(state, selectedTxt, mSideCount)
    if state then
        if selectedTxt ~= "" then
            mLayerId = mStartId - 1 + get_key_for_value(layers, selectedTxt)
            paintTerrainBySplineSDK(mLayerId, mSideCount)
        else
            printError("First, select the ground texture.")
        end
    else
        myLayout:close()
    end
end

myLayout = SelectFromListDialog.new(layers, "TRAVA", main, false)
