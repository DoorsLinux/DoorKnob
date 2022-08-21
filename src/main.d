import std.stdio;
import std.string;
import std.path;
import std.conv;
import core.cpuid;
import std.algorithm;
import std.file;
int amountPacks() {
  int len = 0;
  foreach (string f ; dirEntries("/tmp/portage", SpanMode.depth)) { len += 1; }
  return len;
}

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
| |   [/ ()   | |      \033[1mPortage packages installed\033[0m: %d 
| |       |   | |      
| |       |   | |      
| |       |   | |      
| |      ,'   | |      
| |   ,'      | |      
|_|,'_________|_|      
", processor(), coresPerCPU(), expandTilde("~"), amountPacks());
}
