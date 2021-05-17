#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithArray:numbersArray];
if (numbersArray.count == 0)
    return @"";
    
    
if (numbersArray.count < 4){
        for (int i = 0; i < 4 - numbersArray.count; i++){
            [mutableArray addObject:@0];
        }
    }
    
bool isNegative = FALSE, isInvalid = FALSE;
    for (int i = 0; i < 4; i++)
        if ([mutableArray[i] intValue] < 0){
            isNegative = true;
            break;
        }
        else if ([mutableArray[i] intValue] > 255){
            isInvalid = true;
            break;
        }
if (isNegative)
        return @"Negative numbers are not valid for input.";
if (isInvalid)
        return @"The numbers in the input array can be in the range from 0 to 255.";
    
    
NSString *newString = [NSString stringWithFormat:@"%d.%d.%d.%d", [mutableArray[0] intValue],
                        [mutableArray[1] intValue], [mutableArray[2] intValue],
                        [mutableArray[3] intValue]];
    
    return newString;
}

@end
