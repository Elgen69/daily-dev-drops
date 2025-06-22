// main.js - Task Tracker App

class Task {
    constructor(id, name, status = 'pending') {
        this.id = id;
        this.name = name;
        this.status = status;
    }

    complete() {
        this.status = 'done';
    }
}

class TaskManager {
    constructor() {
        this.tasks = [];
    }

    addTask(name) {
        const task = new Task(this.tasks.length + 1, name);
        this.tasks.push(task);
    }

    completeTask(id) {
        const task = this.tasks.find(t => t.id === id);
        if (task) task.complete();
    }

    listTasks() {
        console.table(this.tasks);
    }
}

const tm = new TaskManager();
tm.addTask("Build project");
tm.addTask("Write README");
tm.completeTask(1);
tm.listTasks();
