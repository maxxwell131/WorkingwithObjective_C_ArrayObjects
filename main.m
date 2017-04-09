//
//  main.m
//  WorkingwithObjective_C_ArrayObjects
//
//  Created by admin on 4/8/17.
//  Copyright © 2017 admin. All rights reserved.
//  http://www.techotopia.com/index.php/Working_with_Objective-C_Array_Objects

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //-----Creating an array object
        NSArray *myColors1 = [NSArray arrayWithObjects:@"Yello", @"Black", @"Red", nil];
        NSMutableArray *myColors2 = [NSMutableArray arrayWithObjects:@"Green", @"Magenta", @"Blue", nil];
        
        NSLog(@"Number of elements in array myColors2 is %lu", [myColors2 count]);
        
        //------Accessing the elements of an array object
        for (int i = 0; i < [myColors2 count]; i++) {
            NSLog(@"Obj at index [%i] = %@", i, [myColors2 objectAtIndex:i]);
        }
        
        //------Accessing arrays elements using fast enumiration
        for (NSObject *str in myColors2) {
            NSLog(@"object of array - %@", str);
        }
        
        //------Adding elements into an array--------------------
        [myColors2 addObject:@"Indigo"];
        [myColors2 addObject:@"Violet"];
        NSLog(@"myCollors2 is: %@", myColors2);
        
        //------Inserting elements an array
        [myColors2 insertObject:@"Black" atIndex:1];
        [myColors2 insertObject:@"Red" atIndex:4];
        NSLog(@"myColors2 is ... %@", myColors2);
        
        //------Sorting array objects
        NSArray *sortedArray = [myColors2 sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        NSLog(@"sorted array %@", sortedArray);

        //------Deleting elements from an array object------------
        [myColors2 removeObjectAtIndex:3];
        NSLog(@"myColors2 remove obj. at ind.3 %@", myColors2);
        
        [myColors2 removeObject:@"Red"];
        NSLog(@"myColors2 remove obj. Red %@", myColors2);
        
        [myColors2 removeLastObject];
        NSLog(@"myColors2 remove last obj %@", myColors2);
        
        [myColors2 removeAllObjects];
        NSLog(@"myColors remove all obj %@", myColors2);
        
        
    }
    return 0;
}
