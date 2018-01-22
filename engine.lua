g = {}
g.events = {}

function g:trigger(event, ...)
	for k, fn_table in pairs(g.events) do
		if (k == event) then
			for i = 1, #g.events[k] do
				fn_table[i](...)
			end
		end
	end
end

function g:hook(event, fn)
	g.events[event] = g.events[event] or {}
	table.insert(g.events[event], fn)
end