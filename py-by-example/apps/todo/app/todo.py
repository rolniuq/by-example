class Todo:
    def __init__(self, title, description):
        self.title = title
        self.description = description
        self.done = False

    def mark_done(self):
        self.done = True
