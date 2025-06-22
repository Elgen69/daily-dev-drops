// app.ts - Simple User Class in TypeScript

interface User {
    id: number;
    username: string;
    active: boolean;
}

class UserManager {
    private users: User[] = [];

    add(user: User): void {
        this.users.push(user);
    }

    deactivate(id: number): void {
        const user = this.users.find(u => u.id === id);
        if (user) user.active = false;
    }

    get activeUsers(): User[] {
        return this.users.filter(u => u.active);
    }
}

const manager = new UserManager();
manager.add({ id: 1, username: "elgen", active: true });
manager.add({ id: 2, username: "mark", active: true });
manager.deactivate(2);
console.log(manager.activeUsers);
