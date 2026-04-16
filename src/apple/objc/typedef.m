#include <stdio.h>
#include <Library/ApplicationServices>
#include <IOKit>

NSString* test_string() {
  return kIOPlatformSerialNumberKey();
}

int main() {
  NSLog(@"%@" test_string()); 
}
