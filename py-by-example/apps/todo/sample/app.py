
from flask import Flask, jsonify, request

app = Flask(__name__)

todos = [
    {"id": 1, "title": "Learn Python", "completed": True},
    {"id": 2, "title": "Build a to-do app", "completed": False},
]

@app.route('/todos', methods=['GET'])
def get_todos():
    return jsonify(todos)

@app.route('/todos/<int:todo_id>', methods=['GET'])
def get_todo(todo_id):
    todo = next((todo for todo in todos if todo["id"] == todo_id), None)
    if todo:
        return jsonify(todo)
    return jsonify({"error": "Todo not found"}), 404

@app.route('/todos', methods=['POST'])
def create_todo():
    if request is None or request.json is None:
        return

    new_todo = {
        "id": len(todos) + 1,
        "title": request.json.get("title", ""),
        "completed": False,
    }

    todos.append(new_todo)

    return jsonify(new_todo), 201

@app.route('/todos/<int:todo_id>', methods=['PUT'])
def update_todo(todo_id):
    if request is None or request.json is None:
        return

    todo = next((todo for todo in todos if todo["id"] == todo_id), None)
    if todo:
        todo["title"] = request.json.get("title", todo["title"])
        todo["completed"] = request.json.get("completed", todo["completed"])
        return jsonify(todo)

    return jsonify({"error": "Todo not found"}), 404

@app.route('/todos/<int:todo_id>', methods=['DELETE'])
def delete_todo(todo_id):
    global todos
    todos = [todo for todo in todos if todo["id"] != todo_id]
    return jsonify({"message": "Todo deleted"})

if __name__ == "__main__":
    app.run(debug=True)

