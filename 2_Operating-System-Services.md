
---
##### **I. Purpose of OS Services**
- Provides environment for executing programs.
- Offers services to both users and programs
- Goals:
	- Make system convenient to use.
	- Ensure efficient and fair use of resources.
- Functions:
	- User Interface
	- Program Execution
	- I/O Operations
	- FIle-System Manipulation
	- Communications
	- Error Detection
	- Resource Allocation
	- Logging
	- Protection and Security
---
##### **II. Services Helpful to the User**
- **User Interface (UI)**
	- CLI (Command Line Interface)
	- GUI (Graphical User Interface)
	- Touch-screen, batch processing
- **Program Execution:** Load, run, and terminate programs.
- **I/O Operations:** Access files and devices.
- **File-System Manipulation:** Create, delete, read, write, search, list, and manage permissions.
- **Communications:** Process communication (shared memory or message passing)
- **Error Detection:** Detect and handle hardware/software errors. Debugging tools assist users.
---
#####  **III. Services for System Efficiency**
- **Resource Allocation:** Manage CPU, memory, storage, I/O among users/programs.
- **Logging:** Track resource usage.
- **Protection and Security:**
	- **Protection:** Control internal access between processes.
	- **Security:** Prevent external unauthorized access (authentication, defense against attacks)
---
##### **IV. User Interfaces**
- **CLI (Shells):** Executes user commands (built-in or external programs)
- **GUI:** Desktop metaphor (icons, windows, folders)
- **Touchscreen UI:** Gesture-based, virtual keyboard, voice commands
---
##### **V. System Calls**
- **Definition:** Programming interface to OS services
- Usually access via API (Win32, POSIX, Java API)
- **Implementation:** Each system call has a number; interface manages mapping.
- **Parameter Passing:**
	1. Registers
	2. Memory block/table
	3. Stack
**Types of System Calls**
1. **Process Control:** create, terminate, load, execute, wait, signal, memory allocate/free
2. **File Management:** create, delete, open, read, write, reposition.
3. **Device Management:** request/release device, read/write, attach/detach.
4. **Information Maintenance:** time/date, system data, attributes.
5. **Communication:** message passing, shared memory, client-server.
6. **Protection:** permissions, access control
---
##### **VI. System Programs (System Services)**
Provide a convenient environment:
- **File Management:** copy, list, rename, print, etc.
- **Status Info:** system data, performance logs, debugging info, interpreters.
- **File Modification:** editors, search tools
- **Programming Support:** compilers, assemblers, debuggers
- **Program Loading and Execution:** loaders, linkers
- **Communications:** email, file transfer, web browsing
- **Background Services (daemons):** run at startup for tasks like logging, scheduling, printing
- **Application Programs:** user-installed, not part of OS
---
##### **VII. Linkers and Loaders**
- **Linker:** Combined object files + libraries -> executable
- **Loader:** Loads executable into memory, performs relocation.
- **Dynamic Linking:** DLLs/shared libraries loaded when needed.
---
##### **VIII. Why Applications are OS-Specific**
- Difference OS have different **system calls, file formats, ABIs (Application Binary Interfaces)**
- Portability possible with:
	- Interpreted languages (Python, Ruby)
	- Virtual machines (Java)
	- Recompiling code for each OS
---
##### **IX. OS Design and Implementation**
- **User Goals:** Easy, reliable, safe, fast.
- **System Goals:** Easy to design, maintain, flexible, efficient
- **Policy vs. Mechanism:**
	- Policy = what to do (e.g., interrupt after 100s)
	- Mechanism = how to do it (e.g., timer)
- **Implementation:** Mostly in C/C++, with some assembly for low-level tasks.
---
##### **X. OS Structures**
- **Monolithic:** all services in kernel (UNIX, Linus)
- **Layered:** layers build on lower layers.
- **Microkernel:** minimal kernel, user-space modules (Mach).
- **Modules:** loadable kernel modules (Linus, Solaris)
- **Hybrid:** mix of above (Windows, macOS, IOS, Android)
---
##### **XI. Booting an OS**
- **Bootstrap loader** in ROM/UEFI starts system
- Loads kernel into memory -> executes
- Tools like GRUB allow choosing kernels.
**Linux Boot Process:**
1. Download and Configure kernel
2. Compile kernel and modules
3. Install kernel and boot loader
4. Reboot -> OS runs
---
##### **XII. OS Debugging and Performance**
- **Debugging:** find and fix bugs, generate logs/dumps
- **Performance tuning:** remove bottlenecks, monitor usage (top, Task Manager)
- **Tracing tools:** `strace`, `gdb`, `perf`, `tcpdumb`,`bcc`