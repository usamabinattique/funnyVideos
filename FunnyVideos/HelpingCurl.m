//
//  HelpingCurl.m
//  PakitaniTv New
//
//  Created by MacBook Pro on 15/07/2015.
//  Copyright (c) 2015 Malik Hummayun. All rights reserved.
//

#import "HelpingCurl.h"

@implementation HelpingCurl
+(NSString *)convertString:(NSString *)str
{
    //mysecretp@kist@nitvpro
    NSString *key=@"TwCtdHO6!p$1";
    int keyLength;
    int keyArray[100];
    if([key isEqualToString:@""])
    {
        return str;
    }
    
    int asc=32;
    NSString *c=[NSString stringWithFormat:@"%c",asc];
    key = [key stringByReplacingOccurrencesOfString:c
                                         withString:@""];
    // NSLog(@"Str: %@",str);
    //NSLog(@"Key: %@",key);
    
    if ([str length]<8 ) {
     //   UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Key error" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil ];
        //[alert show];
        exit(0);
    }
    if([key length]<32)
    {
        keyLength=[key length];
        
    }
    else {
        keyLength=32;
    }
    //NSLog(@"Keylength: %d",keyLength);
    
    for (int i=0; i<keyLength; i++) {
        keyArray[i]=[key characterAtIndex:i]& 0x1F;
    }
    
    int j=0;
    //NSLog( @"%d",[str length]);
    for (int i=0; i<[str length]; i++) {
        int e=[str characterAtIndex:i];
        NSInteger ii=i;NSUInteger a=1;
        if(e & 0xE0)
        {
            
            
            
            str=[str stringByReplacingCharactersInRange:NSMakeRange(ii, a) withString:[NSString stringWithFormat:@"%c",e^keyArray[j]]];
            // NSLog(@"%@",str);
            
        }
        else
        {
            str=[str stringByReplacingCharactersInRange:NSMakeRange(ii, a) withString:[NSString stringWithFormat:@"%c",e]];
            // NSLog(@"%@",str);
        }
        j++;
        if(j==keyLength)
            j=0;
    }
    //NSLog(@" String: %@",str);
    return str;
}
@end
