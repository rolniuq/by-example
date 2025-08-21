local tasks = {}

function add_task(desc)
	table.insert(tasks, { description = desc, completed = false })
	print("Added task: " .. desc)
end

function list_tasks()
	print("Tasks:")
	for i, task in ipairs(tasks) do
		local status = task.completed and "[X]" or "[ ]"
		print(string.format("%d %s %s", i, status, task.description))
	end
end

function init()
	print("Press 'a' to add a task, 'l' to list tasks, or 'q' to quit. Then press Enter to continue.")

	while true do
		local key = io.read()
		if key == "a" then
			print("Enter task description: ")
			local desc = io.read()
			add_task(desc)
		elseif key == "l" then
			list_tasks()
		elseif key == "q" then
			break
		else
			print("Invalid key. Press 'a' to add a task, 'l' to list tasks, or 'q' to quit.")
		end
	end
end

init()
