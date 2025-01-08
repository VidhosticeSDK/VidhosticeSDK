-- Author:mleithner, VidhosticeSDK
-- Name:PlaceableToolkitSDK
-- Namespace: local
-- Description:
-- Icon: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
-- Hide: no
-- AlwaysLoaded: no

source("editorUtils.lua")
local gamePath = EditorUtils.getGameBasePath()
if gamePath == nil then
    return
end

source(gamePath .. "dataS/scripts/std.lua")
source(gamePath .. "dataS/scripts/shared/class.lua")
source(gamePath .. "dataS/scripts/misc/Logging.lua")
source(gamePath .. "dataS/scripts/xml/XMLFile.lua")
source(gamePath .. "dataS/scripts/xml/XMLManager.lua")
source(gamePath .. "dataS/scripts/Files.lua")
source(gamePath .. "dataS/scripts/io.lua")
source(gamePath .. "dataS/scripts/i3d/I3DManager.lua")
source(gamePath .. "dataS/scripts/CollisionFlag.lua")
source(gamePath .. "dataS/scripts/utils/Utils.lua")
source("ui/MessageBox.lua")
source("ui/YesNoDialog.lua")

PlaceableToolkit = {}
PlaceableToolkit.WINDOW_WIDTH = 400
PlaceableToolkit.WINDOW_HEIGHT = -1

PlaceableToolkit.SETTINGS_PATH = getAppDataPath() .. "placeableToolkit.xml"

function PlaceableToolkit.new()
    local self = setmetatable({}, {__index=PlaceableToolkit})

    self.window = nil

    if g_currentPlaceableToolkitDialog ~= nil then
        g_currentPlaceableToolkitDialog:close()
    end

    self.settings = {
        placeablesConfigFilename = gamePath .. "data/maps/mapUS/config/placeables.xml",
        lastPlaceableConfig = ""
    }

    self.pendingUniqueIds = {}

    self:loadSettings()

    self:generateUI()

    g_currentPlaceableToolkitDialog = self

    self.saveListener = addEventListener(HookType.ON_SAVE, self.onSave, self)

    return self
end

function PlaceableToolkit:loadSettings()
    local xmlFile = XMLFile.loadIfExists("placeableToolkitSettings", PlaceableToolkit.SETTINGS_PATH)
    if xmlFile == nil then
        return
    end

    self.settings.placeablesConfigFilename = xmlFile:getString("settings.placeablesConfig", self.settings.placeablesConfigFilename)
    self.settings.lastPlaceableConfig = xmlFile:getString("settings.lastPlaceableConfig", self.settings.lastPlaceableConfig)

    xmlFile:delete()
end

function PlaceableToolkit:saveSettings()
    local xmlFile = XMLFile.create("placeableToolkitSettings", PlaceableToolkit.SETTINGS_PATH, "settings")
    if xmlFile == nil then
        return
    end

    xmlFile:setString("settings.placeablesConfig", self.settings.placeablesConfigFilename)
    xmlFile:setString("settings.lastPlaceableConfig", self.settings.lastPlaceableConfig)

    xmlFile:save()
    xmlFile:delete()
end

function PlaceableToolkit:generateUI()
    local frameRowSizer = UIRowLayoutSizer.new()
    self.window = UIWindow.new(frameRowSizer, "Placeable Toolkit")

    local borderSizer = UIRowLayoutSizer.new()
    UIPanel.new(frameRowSizer, borderSizer, -1, -1, -1, -1, BorderDirection.NONE, 0, 1)
    local rowSizer = UIRowLayoutSizer.new()
    UIPanel.new(borderSizer, rowSizer, -1, -1, PlaceableToolkit.WINDOW_WIDTH, PlaceableToolkit.WINDOW_HEIGHT, BorderDirection.ALL, 10, 1)

    local title = UILabel.new(rowSizer, "Map Placeables Config", false, TextAlignment.LEFT, VerticalAlignment.TOP, -1, -1, -1, -1, BorderDirection.BOTTOM, 5)
    title:setBold(true)
    UIHorizontalLine.new(rowSizer, -1, -1, -1, -1, BorderDirection.BOTTOM, 5)

    local xmlFileColumnLayout = UIColumnLayoutSizer.new()
    UIPanel.new(rowSizer, xmlFileColumnLayout, -1, -1, -1, -1, BorderDirection.BOTTOM, 10)
    self.placeablesConfigFilenameText = UITextArea.new(xmlFileColumnLayout, self.settings.placeablesConfigFilename, TextAlignment.LEFT, true, false, -1, -1, -1, -1, BorderDirection.RIGHT, 5, 1)
    local onSelectMapPlaceablesFile = function()
        local filepath = openFileDialog(self.settings.placeablesConfigFilename, "Placeable XML File|*.xml")
        self:setPlaceableConfigFile(filepath)
    end
    UIButton.new(xmlFileColumnLayout, "🗁", onSelectMapPlaceablesFile, nil, -1, -1, 25, -1)

    title = UILabel.new(rowSizer, "Creation", false, TextAlignment.LEFT, VerticalAlignment.TOP, -1, -1, -1, -1, BorderDirection.BOTTOM, 5)
    title:setBold(true)
    UIHorizontalLine.new(rowSizer, -1, -1, -1, -1, BorderDirection.BOTTOM, 5)
    UIButton.new(rowSizer, "Create Placeable (Referenced)", function() self:createPlaceable(true) end, self, -1, -1, -1, -1, BorderDirection.BOTTOM, 5, 1)
    UIButton.new(rowSizer, "Create Placeable (Imported)", function() self:createPlaceable(false) end, self, -1, -1, -1, -1, BorderDirection.BOTTOM, 15, 1)

    title = UILabel.new(rowSizer, "Validate", false, TextAlignment.LEFT, VerticalAlignment.TOP, -1, -1, -1, -1, BorderDirection.BOTTOM, 5)
    title:setBold(true)
    UIHorizontalLine.new(rowSizer, -1, -1, -1, -1, BorderDirection.BOTTOM, 5)
    UIButton.new(rowSizer, "Validate Placeables", function() self:validatePlaceables() end, self, -1, -1, -1, -1, BorderDirection.BOTTOM, 15,1)

    -- layout and show window
    self.window:setOnCloseCallback(function() self:onClose() end)
    self.window:showWindow()
end

function PlaceableToolkit:close()
    self.window:close()
end

function PlaceableToolkit:onClose()
    if #self.pendingUniqueIds > 0 then
        YesNoDialog.show("Unsaved preplaced placeables?", string.format("Do you want to save them to '%s'?", self.settings.placeablesConfigFilename), function(yes)
            if yes then
                self:saveToXML()
            end
        end)
    end

    if self.saveListener ~= nil then
        removeEventListener(HookType.ON_SAVE, self.saveListener)
        self.saveListener = nil
    end

    g_currentPlaceableToolkitDialog = nil
end

function PlaceableToolkit:setPlaceableConfigFile(filepath)
    self.settings.placeablesConfigFilename = filepath

    if self.placeablesConfigFilenameText ~= nil then
        self.placeablesConfigFilenameText:setValue(filepath)
        self:saveSettings()
    end
end

function PlaceableToolkit:validatePlaceables()
    local terrainNode = getChild(getRootNode(), "terrain")
    if terrainNode == nil or terrainNode == 0 then
        printError("Error: Preplaced placeables are only supported for maps")
        return
    end

    print("\nPlaceables: Start validation")
    local placeableEntries = self:getPreplacedConfigEntries()

    local preplacedNodes = {}
    local duplicateUniqueIdNodes = {}
    local missingUniqueIdsNodes = {}
    self:fillPreplacedNodes(getRootNode(), preplacedNodes, duplicateUniqueIdNodes, missingUniqueIdsNodes)

    for _, preplacedNode in pairs(preplacedNodes) do
        local entry = placeableEntries[preplacedNode.uniqueId]
        if entry == nil then
            local isPending = table.find(self.pendingUniqueIds, preplacedNode.uniqueId)
            if not isPending then
                local nodePath = EditorUtils.getNodeIndexPath(getRootNode(), preplacedNode.node)
                YesNoDialog.show("Missing preplaced placeables", string.format("The following preplaced placeable is not yet part of the maps config file:\n\nName: %s\nPath: %s \nUniqueId: %s\n\nDo you want to add it?", getName(preplacedNode.node), nodePath, preplacedNode.uniqueId), function(yes)
                    if yes then
                        self:addPendingConfigEntry(preplacedNode.uniqueId)
                    end
                end)
            end
        end
    end

    for _, entry in pairs(placeableEntries) do
        local node = preplacedNodes[entry.uniqueId]
        if node == nil then
            YesNoDialog.show("Preplaced placeables not defined in map", string.format("The following preplaced placeable is not part of the map anymore:\n\nUniqueId: %s\n\nDo you want to remove the entry from the config file?", entry.uniqueId), function(yes)
                if yes then
                    self:removeConfigEntry(entry.uniqueId)
                end
            end)
        end
    end

    for _, node in ipairs(duplicateUniqueIdNodes) do
        local uniqueId = getUserAttribute(node, "uniqueId")
        local nodePath = EditorUtils.getNodeIndexPath(getRootNode(), node)
        local orginal = preplacedNodes[uniqueId]
        local originalNodePath = EditorUtils.getNodeIndexPath(getRootNode(), orginal.node)

        YesNoDialog.show("Duplicate preplaced placeables uniqueId", string.format("The following preplaced placeable uses a uniqueId that is already in use:\n\nName: %s\nPath: %s\n\nUsed by:\n\nName: %s\nPath: %s\n\nDo you want to assign a new uniqueId?", getName(node), nodePath, getName(orginal.node), originalNodePath), function(yes)
            if yes then
                local uniqueId = self:createNewUniqueId(node)
                self:addPendingConfigEntry(uniqueId)
            end
        end)
    end

    for _, node in ipairs(missingUniqueIdsNodes) do
        local nodePath = EditorUtils.getNodeIndexPath(getRootNode(), node)
        YesNoDialog.show("Missing preplaced placeables uniqueId", string.format("The following preplaced placeable has no uniqueId assigned:\n\nName: %s\nPath: %s\n\nDo you want to assign a uniqueId?", getName(node), nodePath), function(yes)
            if yes then
                local uniqueId = self:createNewUniqueId(node)
                self:addPendingConfigEntry(uniqueId)
            end
        end)
    end

    for _, preplacedNode in pairs(preplacedNodes) do
        local node = preplacedNode.node
        local nodePath = EditorUtils.getNodeIndexPath(getRootNode(), node)
        local parentId = getParent(node)
        while parentId ~= 0 and parentId ~= getRootNode() do
            local callback = getUserAttribute(parentId, "onCreate")
            if callback == "Placeable.onCreate" then
                MessageBox.show("Nested Placeable", string.format("The following preplaced placeable is nested in another preplaced placeable:\n\nName: %s\nPath: %s\n\nPlease readjust the hierarchy!", getName(node), nodePath))
                clearSelection()
                addSelection(node)
                printError("Placeables: Validation Error. Please fix the issue and rerun validation again!\n")
                return
            end

            parentId = getParent(parentId)
        end
    end

    for _, preplacedNode in pairs(preplacedNodes) do
        local node = preplacedNode.node
        local nodePath = EditorUtils.getNodeIndexPath(getRootNode(), node)
        local aiSplineIndex = getUserAttribute(node, "aiSplines")
        if not string.isNilOrWhitespace(aiSplineIndex) then
            local aiSplineNode = EditorUtils.getNodeByIndexPath(aiSplineIndex, node)
            if aiSplineNode == nil then
                MessageBox.show("Invalid AI Spline Node", string.format("The following preplaced placeable references to a \naiSplines index path '%s' but node does not exist:\n\nName: %s\nPath: %s\n\nPlease adjust user attribute value 'aiSplines' or remove the user attribute!", aiSplineIndex, getName(node), nodePath))
                clearSelection()
                addSelection(node)
                printError("Placeables: Validation Error. Please fix the issue and rerun validation again!\n")
                return
            elseif getName(aiSplineNode) ~= "aiSplines" then
                MessageBox.show("Invalid AI Spline Node", string.format("The following preplaced placeable references to a \naiSplines index path '%s' but node does not match naming schema:\n\nName: %s\nPath: %s\n\nPlease adjust user attribute value 'aiSplines' or rename the node to 'aiSplines'!", aiSplineIndex, getName(node), nodePath))
                clearSelection()
                addSelection(node)
                printError("Placeables: Validation Error. Please fix the issue and rerun validation again!\n")
                return
            end
        end
    end

    print("Placeables: Finished validation\n")
end

function PlaceableToolkit:fillPreplacedNodes(node, preplacedNodes, duplicateUniqueIdNodes, missingUniqueIdsNodes)
    if getHasClassId(node, ClassIds.TRANSFORM_GROUP) then
        local callback = getUserAttribute(node, "onCreate")
        if callback ~= nil and callback == "Placeable.onCreate" then
            local uniqueId = getUserAttribute(node, "uniqueId")
            if uniqueId ~= nil then
                if preplacedNodes[uniqueId] == nil then
                    preplacedNodes[uniqueId] = {
                        node = node,
                        uniqueId = uniqueId
                    }
                else
                    table.insert(duplicateUniqueIdNodes, node)
                end
            else
                table.insert(missingUniqueIdsNodes, node)
            end
        end

        for i=0, getNumOfChildren(node)-1 do
            local child = getChildAt(node, i)
            self:fillPreplacedNodes(child, preplacedNodes, duplicateUniqueIdNodes, missingUniqueIdsNodes)
        end
    end
end

function PlaceableToolkit:createNewUniqueId(node)
    local existingUniqueIds = self:getPreplacedConfigEntries()
    local rootName = getName(node)
    local name = rootName
    if not string.startsWith(name, "preplaced_") then
        name = string.format("preplaced_%s", name)
    end
    local uniqueId = Utils.getUniqueId(rootName, existingUniqueIds, name .. "_")
    setUserAttribute(node, "uniqueId", UserAttributeType.STRING, uniqueId)

    return uniqueId
end

function PlaceableToolkit:createPlaceable(isReferenced)
    local terrainNode = getChild(getRootNode(), "terrain")
    if terrainNode == nil or terrainNode == 0 then
        printError("Error: Preplaced placeables are only supported for maps")
        return
    end

    local xmlFilename = openFileDialog(self.settings.lastPlaceableConfig, "*.xml")
    if string.isNilOrWhitespace(xmlFilename) then
        return
    end

    self.settings.lastPlaceableConfig = xmlFilename
    self:saveSettings()

    local xmlFile = XMLFile.load("placeable", xmlFilename)
    if xmlFile == nil then
        return
    end

    if not xmlFile:hasProperty("placeable") then
        printError("Error: Invalid placeable xml file, file must use 'placeable' root element")
        xmlFile:delete()
        return
    end

    local i3dFilename = xmlFile:getString("placeable.base.filename")
    if i3dFilename == nil then
        printError("Error: I3D filename not found at 'placeable.base.filename'")
        xmlFile:delete()
        return
    end

    i3dFilename = EditorUtils.getSystemFilename(i3dFilename)        -- removes $ and adds game installation path before i3dFilename

--**********************************************************************************************************
    local function getMapPath()
        local modDescPath = self.settings.placeablesConfigFilename:match("(.*/)")
        while not fileExists(modDescPath .. "modDesc.xml") do
            modDescPath = modDescPath:match("(.*/).*/")
            if modDescPath == nil then
                printError("Error: modDesc.xml not found! This script only works with the map based on FS25_In_Bohemia.")
                return
            end
        end
        return modDescPath
    end

    local function replace(str, what, with)
        what = string.gsub(what, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
        with = string.gsub(with, "[%%]", "%%%%") -- escape replacement
        return string.gsub(str, what, with)
    end
--**********************************************************************************************************
    if not fileExists(i3dFilename) then
        print("--VidhosticeSDK------------------------if-not-fileExists(i3dFilename)--")
        print("i3dFilename: " .. i3dFilename)
        i3dFilename = getMapPath() .. i3dFilename
        print("i3dFilename changed to: " .. i3dFilename)
        print("--------------------------------------------------------VidhosticeSDK--")
    end
--**********************************************************************************************************

    xmlFile:delete()

    local i3d, failedReason, _

    if isReferenced then
        i3d, failedReason = createI3DReference(i3dFilename, true)
        if failedReason ~= LoadI3DFailedReason.NONE then
            printError(string.format("Error: I3D %q could not be loaded", i3dFilename))
            return
        end
    else
        i3d, _, failedReason = loadSharedI3DFile(i3dFilename, false, false)
        if failedReason ~= LoadI3DFailedReason.NONE then
            printError(string.format("Error: I3D %q could not be loaded", i3dFilename))
            return
        end

        i3d = getChildAt(i3d, 0)
    end

    local rootName = getName(i3d)

    local existingUniqueIds = self:getPreplacedConfigEntries()

    local gameXMLFilename = EditorUtils.getGamePath(xmlFilename)    -- if the path starts with a game path, overwrite it with $

--**********************************************************************************************************
    if not string.startsWith(gameXMLFilename, "%$") then
        print("--VidhosticeSDK---------------if-not-startsWith(gameXMLFilename, '$')--")
        print("gameXMLFilename: " .. gameXMLFilename)
        gameXMLFilename = replace(gameXMLFilename, getMapPath(), "#")
        print("gameXMLFilename changed to: " .. gameXMLFilename)
        print("--------------------------------------------------------VidhosticeSDK--")
    end
--**********************************************************************************************************

    local name = string.format("preplaced_%s", rootName)

    local uniqueId = Utils.getUniqueId(i3dFilename, existingUniqueIds, name .. "_")

    self:addPendingConfigEntry(uniqueId)

    local parentNode = getSelection(0)
    if parentNode == 0 or parentNode == nil then
        parentNode = getRootNode()
    end

    local rootNode = createTransformGroup(name)
    setLockedGroup(rootNode, true)
    link(parentNode, rootNode)

    local placeableNode = createTransformGroup("placeable")
    link(rootNode, placeableNode)

    link(placeableNode, i3d)

    local propsNode = createTransformGroup("props")
    link(rootNode, propsNode)

    local aiSplinesNode = createTransformGroup("aiSplines")
    link(rootNode, aiSplinesNode)

    setUserAttribute(rootNode, "onCreate", UserAttributeType.CALLBACK, "Placeable.onCreate")
    setUserAttribute(rootNode, "xmlFilename", UserAttributeType.STRING, gameXMLFilename)
    setUserAttribute(rootNode, "uniqueId", UserAttributeType.STRING, uniqueId)
    setUserAttribute(rootNode, "aiSplines", UserAttributeType.STRING, EditorUtils.getNodeIndexPath(rootNode, aiSplinesNode))

    local x, y, z = localToWorld(getCamera(), 0, 0, -75)
    local dirX, dirY, dirZ = localDirectionToWorld(getCamera(), 0, 0, -1)
    local cx, cy, cz = getWorldTranslation(getCamera())

    local target = {}
    target.findTerrainPositionCallback = function(_, hitObjectId, hx, hy, hz, distance)
        x, y, z = hx, hy, hz
    end
    raycastAll(cx, cy, cz, dirX, dirY, dirZ, 500, "findTerrainPositionCallback", target, CollisionFlag.TERRAIN)
    setWorldTranslation(rootNode, x, y, z)

    clearSelection()
    addSelection(rootNode)
    refreshViewport(true)

    print(string.format("Created new placeable '%s'", name))
end

function PlaceableToolkit:addPendingConfigEntry(uniqueId)
    table.insert(self.pendingUniqueIds, uniqueId)
end

function PlaceableToolkit:removeConfigEntry(uniqueId)
    local xmlFile = XMLFile.load("placeableConfig", self.settings.placeablesConfigFilename)
    if xmlFile == nil then
        printError("Error: Could not load map placable config file")
        return
    end

    for _, key in xmlFile:iterator("placeables.placeable") do
        local configUniqueId = xmlFile:getString(key .. "#uniqueId")
        if uniqueId ~= nil and uniqueId == configUniqueId then
            xmlFile:removeProperty(key)
            break
        end
    end

    xmlFile:save()
    xmlFile:delete()
end

function PlaceableToolkit:onSave()
    self:saveToXML()
end

function PlaceableToolkit:saveToXML()
    local xmlFile = XMLFile.load("placeableConfig", self.settings.placeablesConfigFilename)
    if xmlFile == nil then
        printError("Error: Could not load map placable config file")
        return
    end

    for _, pendingUniqueId in ipairs(self.pendingUniqueIds) do
        local numElements = xmlFile:getNumOfElements("placeables.placeable")
        local key = string.format("placeables.placeable(%d)", numElements)

        xmlFile:setBool(key .. "#isPreplaced", true)
        xmlFile:setString(key .. "#uniqueId", pendingUniqueId)

        print(string.format("    PlaceableToolkit: saved preplaced placeable '%s' to map config file", pendingUniqueId))
    end

    table.clear(self.pendingUniqueIds)

    xmlFile:save()
    xmlFile:delete()
end

function PlaceableToolkit:getPreplacedConfigEntries()
    local xmlFile = XMLFile.load("placeableConfig", self.settings.placeablesConfigFilename)
    if xmlFile == nil then
        printError("Error: Could not load map placable config file")
        return {}
    end

    local entries = {}

    for _, key in xmlFile:iterator("placeables.placeable") do
        if xmlFile:getBool(key .. "#isPreplaced") then
            local uniqueId = xmlFile:getString(key .. "#uniqueId")
            if uniqueId ~= nil then
                if entries[uniqueId] == nil then
                    entries[uniqueId] = {
                        key = key,
                        uniqueId = uniqueId
                    }
                else
                    printError(string.format("Error: duplicate unique id found. Ignoring '%s'", key))
                end
            else
                printError(string.format("Error: missing unique id for '%s'", key))
            end
        end
    end

    return entries
end


PlaceableToolkit.new()



