# CDC-Synchronizer-System-Verilog
Implementation of Synchronizer design for Clock Domain Crossing applications in VLSI using System Verilog 

..........................................................![image](https://github.com/ayush-agarwal-0502/CDC-Synchronizer-System-Verilog/assets/86561124/24d73c57-b18a-45e0-a065-732d253ad442) ................

Made by : __AYUSH AGARWAL__

A __CLOCK DOMAIN__ is a region of circuit in which the clock signal for all the components are provided by a certain single clock . While transferring the data from one clock domain to another , it is highly possible that the clocks may not be "in-sync" with each other , and furthermore may not even have the same frequency . Transferring data from clock domain of higher to lower frequency would even cause loss of data . 

To tackle such problems in VLSI , we refer to it as the __CDC FLOW__ , which stands for __Clock Domain Crossing__ . 

![image](https://github.com/ayush-agarwal-0502/CDC-Synchronizer-System-Verilog/assets/86561124/10d17dbb-c4c1-48d1-82db-409a529f5663)


To avoid __META STABILITY__ issues in the data signal transferred , and to ensure that the data received at the other end is a proper 0 or 1 , we use __SYNCHRONIZERS__ . Synchronizers are of many types including clock synchronizer , reset synchronizer (which comes under RDC (Reset Domain Crossing Flow)) , pulse synchronizer etc . However I have kept the limit of my study to basic clock domain synchronizer . 

A __shorter synchronizer__ (one with lesser number of D Flip Flops ) would have lesser delay but might not give stable 0-1 output signal and not cure metastability issues properly . On the other hand , a __longer synchronizer__ would indeed stabilize the signal , however would induce additional delays in the circuit . A __tradeoff decision__ has to be made , depending upon the information about the input and output signals and clock domains provided to us . Here , in my project I have decided to design a 3 D Flip Flop Synchronizer . 

# My Synchronizer Design in System Verilog 

Here is the synchronizer module code , other code such as test for dff , testbench for synchronizer , dff design can be accesses from the files . 

![image](https://github.com/ayush-agarwal-0502/CDC-Synchronizer-System-Verilog/assets/86561124/680e1504-d24b-470a-b752-4c04caada70b)

# Results 

![image](https://github.com/ayush-agarwal-0502/CDC-Synchronizer-System-Verilog/assets/86561124/8c214731-b29e-4f04-be82-f6e794fee38c)

