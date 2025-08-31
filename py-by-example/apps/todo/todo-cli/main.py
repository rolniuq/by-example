import json

tasks = []

def generateId():
  if len(tasks) == 0:
    return 1

  return len(tasks) + 1

def ui():
  print('Stupid todo app \n 0.List \n 1.Add \n 2.Update \n 3.Done \n 4.Delete \n 5.Exit')

def list():
  for task in tasks:
    print(f"{task['id']}. {task['title']} - {'Done' if task['completed'] else 'Not Done'}")

def add(title):
  task = {
    'id': generateId(),
    'title': title,
    'completed': False
  }
  tasks.append(task)
  print('Task added')

def update(id, title):
  for task in tasks:
    if task.id == id:
      task.title = title
      print('Task updated')
      break

def done(id):
  for task in tasks:
    if task.id == id:
      task.completed = True
      print('Task marked as done')
      break

def delete(id):
  tasks.remove(next(task for task in tasks if task.id == id))

def handler(choice):
  if choice == 0:
    list()
  elif choice == 1:
    title = input('title: ')
    add(title)
  elif choice == 2:
    id = int(input('id: '))
    title = input('title: ')
    update(id, title)
  elif choice == 3:
    id = int(input('id: '))
    done(id)
  elif choice == 4:
    id = int(input('id: '))
    delete(id)
  elif choice == 5:
    return exit()

def main():
  while True:
    ui()
    handler(int(input('Enter your choice: ')))


if __name__ == "__main__":
  main()
