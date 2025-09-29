# Applications-of-ICT-Lab-04
1- Aseembly Reflections:
Q: What did you notice about registers and instructions?
Ans: Several small registers were used to handle the math including AL, BL, and AX. While the big registers like EAX, ECX, EBX, and EDX handle printing results and system interactions. Several basic instructions were also used for simple actions like add for addition and mul for multiplying values in AL and BL registers.

Q: How is coding in assembly different from python?
Ans: Assembly is a very low-level language. Since it is directly understandable by machines, each step must be meticulously defined and detailed. Steps cannot be done directly like in Python-instead, registers and instructions must be considered (such as moving numbers into registers or printing them one character at a time).

2- Python Reflectins:
Q: Why is python easier/faster to build the same project?
Ans: Python is a high-level language, which means it has more human-like syntax instead of multiple steps of moving, adding and storing. It can perform tasks directly without needing to be defined at each step. It hides the "machine details" such as registers so the programmer only has to focus on the logic of the code.
In comparison, Assembly is much more complex, involving the consideration of many different registers and instructions.

Q: Wich features of Python help astraction?
Ans: Python has many features that help in abstraction:
Variables present easy locations to store and manipulate data in python without having to worry about physical memory locations.
Functions allow us to group instructions together into a block of code that may be called whenever needed instead of having to manually type out all the code again.
Loops allow us to repeat certain instructions as many times as needed with simple syntax.

3. Comparison Table:

    | Feature        | Assembly Example | Python Example |                                              Notes                                                    |
    |----------------|------------------|----------------|-------------------------------------------------------------------------------------------------------|
    |Variable storage|Register(eax)     | x=5            |In assembly, variables are manually stored into registers or memory locations, while in Python they are|                |                |                  |                |automatically stored without having to specify.                                                        |
    |----------------|------------------|----------------|-------------------------------------------------------------------------------------------------------|
    |Printing Output |int 0x80          | print()        |In Assembly, printing is manual and system interrupts or memory addresses must be called to show text. |                |                |                  |                |In Python,printing is simple and automatic, using a simple print() function.                           |
    |----------------|------------------|----------------|-------------------------------------------------------------------------------------------------------|
    |Arithmetic      |add ax, bx        | x+y            |In Assembly, arithmetic is done manually using different registers and instructions, while in Python   |                |                |                  |                |arithmetic is done using familiar operators like + and -, and storage and calculation is automatically |                |                |                  |                |handled.                                                                                               |
  
