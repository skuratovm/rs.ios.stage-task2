#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {

    NSMutableArray *a = [NSMutableArray new];
    for(int i=0;i<8;i++){
        [a addObject: [NSNumber numberWithInt:n % 2]];
               n = n/2;
        
    }
    int newDig = 0, m = 1;
    for(int i=7;i>=0;i--){
        newDig += [a[i] intValue] * m;
        m *= 2;
        
    }
    return newDig;
           
}


