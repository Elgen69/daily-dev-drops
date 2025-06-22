# todo_cli.py
# A simple command-line to-do list app

todo_list = []

def show_menu():
    print("\n==== TO-DO LIST ====")
    print("1. Add task")
    print("2. View tasks")
    print("3. Remove task")
    print("4. Exit")

def add_task():
    task = input("Enter a task: ")
    todo_list.append(task)
    print(f"Added: {task}")

def view_tasks():
    if not todo_list:
        print("Your to-do list is empty.")
    else:
        print("\nTasks:")
        for idx, task in enumerate(todo_list, start=1):
            print(f"{idx}. {task}")

def remove_task():
    view_tasks()
    try:
        index = int(input("Enter task number to remove: ")) - 1
        if 0 <= index < len(todo_list):
            removed = todo_list.pop(index)
            print(f"Removed: {removed}")
        else:
            print("Invalid task number.")
    except ValueError:
        print("Please enter a number.")

while True:
    show_menu()
    choice = input("Choose an option: ")
    if choice == "1":
        add_task()
    elif choice == "2":
        view_tasks()
    elif choice == "3":
        remove_task()
    elif choice == "4":
        print("Goodbye!")
        break
    else:
        print("Invalid choice.")
