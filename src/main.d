import std.stdio;
import std.string;
import std.path;
import std.conv;
import core.cpuid;
import std.algorithm;

void main() {
  writefln("
 ______________
|\\ ___________ /|      \033[36mDoorsOS Information\033[0m
| |  /|,| |   | |      
| | |,x,| |   | |      \033[1mOS\033[0m: DoorsOS x86_64 Edition
| | |,x,' |   | |      \033[1mCPU Name\033[0m: %s
| | |,x   ,   | |      \033[1mCPU Cores\033[0m: %u
| | |/    | ==| |      
| |    /] ,   | |      \033[1mUser Directory\033[0m: %s
| |   [/ ()   | |      
| |       |   | |      
| |       |   | |      
| |       |   | |      
| |      ,'   | |      
| |   ,'      | |      
|_|,'_________|_|      
", processor(), coresPerCPU(), expandTilde("~"));
}
