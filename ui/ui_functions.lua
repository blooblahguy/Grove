g.frames = {}

function CreateFrame(type, name, parent)
	local frame = {}

	if (not g.frames[parent]) then
		print("ERROR!: Trying to attach new frame to parent that doesn't exist:"..parent)
		return
	end
	frame.parent = parent

	if (not name) then
		name = "TABLE: "..base64enc(love.math.random())
	end
	frame.name = name

	-- this is basically a class, lets create all of our methods
	function frame:SetWidth(self, width)
		frame.width = width
	end
	function frame:SetHeight(self, height)
		frame.height = height
	end
	function frame:SetSize(width, height)
		frame.width = width
		frame.height = height
	end
	function frame:SetPoint(selfPoint, anchor, anchorPoint, xOfs, yOfs)
		frame.selfPoint = selfPoint
		frame.anchor = anchor
		frame.anchorPoint = anchorPoint
		frame.xOfs = xOfs
		frame.yOfs = yOfs
	end

	-- add to parent children table
	table.insert(g.frames[parent].children, frame)

	-- for it's own children, recursive AF
	frame.children = {}

	-- add to global space for access

	-- drawing
	frame.strata = "BACKGROUND"
	frame.level = 1

	g.frames[name] = frame

	return frame
end