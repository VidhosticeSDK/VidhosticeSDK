-- Author:VidhosticeSDK
-- Name:printFenceSegments
-- Description:
-- Icon:
-- Hide: no

if getNumSelected() < 2 then
	print("select transforms to make segments")
	return nil
end

for i = 0, getNumSelected()-1, 1 do
	mID = getSelection(i)

	if i == 0 then
		before_mPosX, before_mPosY, before_mPosZ = getWorldTranslation(mID)
	else
		--print(string.format("%i: %s", i, getName(mID)))
		mPosX, mPosY, mPosZ = getWorldTranslation(mID)

		print(string.format('                <segment start="%f %f %f" end="%f %f %f" id="SEGMENT"/>', before_mPosX, before_mPosY, before_mPosZ, mPosX, mPosY, mPosZ))

		before_mPosX, before_mPosY, before_mPosZ = mPosX, mPosY, mPosZ
	end
end
