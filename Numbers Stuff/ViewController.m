//
//  ViewController.m
//  Numbers Stuff
//
//  Created by Allen Spicer on 5/11/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


// array of 1000 numbers
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    int a = 0;
    
    while (a<1000){
        
        NSNumber *number = [NSNumber numberWithInt:a];
        
        [array addObject:number];
        
        a++;
    }
    
    NSLog(@"%lu", (unsigned long) array.count);
    
    
    
    
    // array of 1000 random numbers
    
    NSMutableArray *secondArray = [[NSMutableArray alloc]init];
    
    while (secondArray.count < 1000){
        
        [secondArray addObject:[NSNumber numberWithUnsignedInteger:arc4random_uniform(100)]];
        
    }
    NSLog(@"%lu", (unsigned long)secondArray.count);
    
    
    
    
    
    
    
    
    
    
//array with pattern
    NSMutableArray *patternArray = [[NSMutableArray alloc]init];
    
    
    
    while (patternArray.count < 1000)
    {
        int b = 0;
        while (b < 10)
        {
            [patternArray addObject:[NSNumber numberWithInt:b]];
            [patternArray addObject:[NSNumber numberWithInt:b]];
            b ++;
        }
    }
    
    NSLog(@"%@", patternArray);
    NSLog(@"%lu", (unsigned long) patternArray.count);
    
    

    
    
    


//1000 unique strings of 6 characters or longer
// bonus if they're words


NSString * standardDictionary = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:nil];

NSArray * standardDictionaryArray = [standardDictionary componentsSeparatedByString:@"/n"];

NSLog(@"%u",(unsigned)(long)standardDictionaryArray.count);
int i = 0;
int n = 0;
//  NSString *jibberishWord = [[NSString alloc]init];
NSString *  alphabetString = @"a b c d e f g h i j k l m n o p q r s t u v w x y z";
NSArray *dictionaryArray = [alphabetString componentsSeparatedByString:@" "];
NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
NSMutableString *word = [[NSMutableString alloc]init];

static const NSInteger numberOfLetters = 26;
while (i < numberOfLetters)
{
    [dictionary setValue:dictionaryArray[i] forKey:[NSNumber numberWithInt:i]];
    i++;
}
i = 0;

while ( i < 10){
    
    while (n < 6){
        
        NSNumber *characterNumber = [NSNumber numberWithUnsignedInteger:arc4random_uniform(26)];
        
        NSString *character = [dictionary objectForKey:characterNumber];
        
        //  NSLog(@"%@", dictionary[character.intValue]);
        [word appendString:character];
        
        n ++;
    }
    n = 0;
    
    i++;
    NSLog(@"%@", word);
    [word setString:@""];
}

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
