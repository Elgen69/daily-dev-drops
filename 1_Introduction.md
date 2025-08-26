###### An overview of the operating system
---
##### **I. Introduction**

**Operating System:** a program that acts as an intermediary between the user and the hardware.

**Goals of the Operating System:**
- Execute user programs and make computing easier
- Provide convenience and efficiency
- Manage hardware resources effectively
---
##### **II. Computer System Structure**
- Four Components:
	1. **Hardware** - CPU, memory, I/O devices
	2. **Operating System** - controls and coordinates use of hardware
	3. **Application Programs** - define how resources are used
	4. **Users** - humans, machines, or other computers
- Operating System Roles:
	- **Resource Allocator:** Manages CPU, memory, I/O
	- **Control Program:** Ensures correct and efficient execution

---
##### **III. Operating System Definition**
- **Kernel** - Core program; always running
- Everything else not part of the operating system:
	- **System Programs** - Utilities shipped with OS, not part of kernel
	- **Application Programs** - Independent user software
- **Middleware** - Frameworks providing extra services (e.g., databases, graphics)
---
#####  **IV. Computer System Operation**
- **CPU & I/O** - Execute concurrently, competing for memory
- **Device Controller** - Manages specific device; uses local buffer (Def. A **buffer** is a temporary memory area used to store data as it moves from peripheral device and the main computer system )
- **Device Driver** - Software to control device controllers
- **Interrupts**
	- **Purpose:** Notify CPU of completed tasks or errors
	- **Process:**
		1. Device signals CPU -> interrupt occurs
		2. CPU saves state and executes Interrupt Service Routine (ISR)
	- **Types:**
		- **Hardware Interrupts** (from devices)
		- **Traps/Exceptions** (from software errors or user requests)
- Methods for handling I/O after it starts: 
	- Control returns to user program ONLY upon completion
	- Control returns to user program WITHOUT waiting for completion
---
##### **V. Storage Structure**
- **Main Memory:** Volatile DRAM, directly accessibly by CPU
- **Secondary Storage:** Non-volatile, large capacity (HDDs, SSDs, NVM)
- **Organized in:**
	- Speed
	- Cost
	- Volatility
- **Hierarchy:** Registers -> Cache -> Main Memory -> Secondary Storage -> Archival Storage
- **Caching:** Frequently used data copied to faster storage.
- **DMA (Direct Memory Access):** Device controllers transfer data directly to memory without CPU involvement.
---
##### **VI. Operating-System Operations**
- **Bootstrap Program (Firmware):** Stored in ROM, loads the kernel at startup.
- **System Daemons:** Background services started by the kernel.
- **Interrupt Driven:** Responds to both hardware and software interrupts.
- **Multiprogramming (Batch System):**
	- Organizes jobs so CPU always has work to do.
	- Uses **job scheduling** to switch between tasks.
- **Multitasking (Time Sharing):**
	- Extends multiprogramming for interactivity.
	- **CPU Scheduling:** Determined which job runs
	- **Virtual Memory:** Allows execution of processes larger than memory.
---
##### **VII. Modes and Protection**
- **Dual Mode (User and Kernel):**
	- User Mode -> Limited privileges
	- Kernel Mode -> Full privileges
	- Mode bit distinguishes states
- **Privileged Instructions:** Only run in kernel mode.
- **Timer:** Prevents infinite loops or hogging by setting interrupts after a time slice.
---
##### **VIII. Process Management**
- **Process:** Program in execution (active).
- **Program:** Passive entity (stored code).
- **Process Needs:** CPU, memory, I/O, files.
- **Activities:**
	- Create/delete processes.
	- Suspend/resume processes.
	- Synchronization and Communication of processes
	- Deadlock handling. (Def. **Deadlock** is a state where two or more processes are stuck waiting for a resource that another process in the set holds)
---
##### **IX. Memory Management**
- Determines what part of memory holds which process.
- **Activities:**
	- Track memory usage.
	- Decide process allocation.
	- Allocate/deallocate space.
- **Goal:** Optimize CPU utilization and responsiveness.
---
##### **X. File-System Management**
- **File:** Logical storage unit.
- **Directories:** Organize files.
- **OS Activities:**
	- Create/delete files and directories.
	- Map files to secondary storage.
	- Access control and backup.
---
##### **XI. Mass-Storage Management**
- Central to performance -> disk scheduling, storage allocation, free-space management
- **Mounting/Unmounting:** Make storage accessible/unavailable.
---
##### **XII. I/O Subsystem**
- Hides hardware details.
- Provides **buffering**, **caching**, **spooling**
- Uses device drivers for each hardware
---
##### **XIII. Protection and Security**
- **Protection:** Control access to resources
- **Security:** Defense against attacks.
- **Mechanisms:**
	- User IDs and Group IDs
	- Privilege escalation allows user to change to effective ID with more rights
---
##### **XIV. Virtualization**
- Running multiple operating systems on the same hardware.
- **Emulation:** Slow, used when CPU types differ.
- **Virtual Machines (VMs):** Guest OS runs natively on host.
- **VMM (Virtual Machine Manager):** Provides virtualization services.
- **Uses:** App testing, running multiple operating systems, data center management.
---
#####  **XV. Distributed Systems**
- Networked systems appearing as one system.
- **Types:** LAN, WAN, MAN, PAN
- **Models:**
	- Client-Server.
	- Peer-to-Peer (P2P)
- **Network OS:** Provides communication and sharing.
---
##### **XVI. Computer Architectures**
- **Single-Processor Systems:** One general-purpose CPU.
- **Multiprocessor Systems:**
	- **Asymmetric:** Each CPU assigned specific task
	- **Symmetric (SMP):** All CPUs share tasks
- **Clustered Systems:** Multiple systems working together, often sharing storage.
	- **Asymmetric Clustering:** one machine in hot-standby mode
	- **Symmetric Clustering:** has multiple nodes running applications, monitoring each other.
---
##### **XVII. Computing Environments**
- **Traditional:** Stand-alone systems, now mostly interconnected
- **Mobile:** Smartphones and tablets (func. diff. from traditional laptops: extra sensors, wireless)
- **Client-Server:** Clients request, servers respond (compute/file servers)
- **Peer-to-Peer:** Nodes act as both client and server
- **Cloud Computing:**
	- **Public** (available via Internet to anyone willing to pay), **Private** (run by a company for the company's own use), **Hybrid**
	- **SaaS** (one or more applications available via the internet e.g., Google Docs, Google Drive), **PaaS** (software stack ready for application use via the internet e.g., database server), **IaaS** (servers or storage available over Internet e.g., AWS)
- **Real-Time Embedded Systems:** Special-purpose, time-constrained OS.
---
##### **XVIII. Free and Open-Source Operating Systems**
- Source code available, unlike proprietary OS.
- Movement started by Free Software Foundation or FSF (GNU, GPL)
- Examples: GNU/Linus, BSD, macOS core
- Tools like VirtualBox allow exploring OSes freely
---
##### **XIX. Kernel Data Structures**
- **Linked Lists:** Single, double, circular
- **Trees:** Binary Search Trees, Balanced trees.
- **Hash Maps:** for fast lookups
- **Bitmaps:** represent allocation of resources
- Common in Linux: `<linux/list.h>`,`<linux/rbtree.h>`

