function CreateFrame(type, name, parent)
	local frame = {}

	-- this is basically a class, lets create all of our methods
	frame.SetWidth = function(self, width)
		frame.width = width
	end
	frame.SetHeight = function(self, height)
		frame.height = height
	end
	frame.SetSize = function(self, width, height)
		self:SetWidth(width)
		self:SetHeight(height)
	end
	frame.SetPoint = function(self, point, anchor, anchorPoint, x, y)
		
	end
end