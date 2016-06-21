//
//  String+Format.swift
//  SwiftMan
//
//  Created by neu on 16/5/4.
//  Copyright © 2016年 cactus. All rights reserved.
//

import Foundation

extension String {
    /*
     - (NSString *)  ez_dateStringToDateStringWithDateFormat:(NSString *)formatString
     timezone                            :(NSString *)timezoneAbbr
     locale                              :(NSString *)localeIdentifier
     toDateFormat                        :(NSString *)toFormatString
     toTimezone                          :(NSString *)toTimezoneAbbr
     toLocale                            :(NSString *)toLocaleIdentifier
     {
     return [self ez_dateStringToDateStringWithDateFormat:formatString customTimezone:[NSTimeZone timeZoneWithAbbreviation:timezoneAbbr] locale:localeIdentifier toDateFormat:toFormatString toCustomTimezone:[NSTimeZone timeZoneWithAbbreviation:toTimezoneAbbr] toLocale:toLocaleIdentifier];
     }
     
     - (NSString *)  ez_dateStringToDateStringWithDateFormat:(NSString *)formatString
     customTimezone                      :(NSTimeZone *)timezone
     locale                              :(NSString *)localeIdentifier
     toDateFormat                        :(NSString *)toFormatString
     toCustomTimezone                    :(NSTimeZone *)toTimezone
     toLocale                            :(NSString *)toLocaleIdentifier
     {
     NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
     
     [dateFormat setLocale:[[NSLocale alloc] initWithLocaleIdentifier:localeIdentifier]];
     [dateFormat setTimeZone:timezone];
     
     [dateFormat setDateFormat:formatString];
     NSDate *date = [dateFormat dateFromString:self];
     
     [dateFormat setLocale:[[NSLocale alloc] initWithLocaleIdentifier:toLocaleIdentifier]];
     [dateFormat setTimeZone:toTimezone];
     
     [dateFormat setDateFormat:toFormatString];
     return [dateFormat stringFromDate:date];
     }
     */
    public func m_toDasteStringWithDateFormat(formatString: String,timezoneAbbr: String,localeIdentifier:String,toDateFormat:String,toTimezoneAbbr:String,toLocaleIdentifier:String) -> String?{
        return m_toDasteStringWithDateFormat(formatString, timezone:  NSTimeZone(abbreviation: timezoneAbbr)!, localeIdentifier: localeIdentifier, toDateFormat: toDateFormat, toTimezone:  NSTimeZone(abbreviation: toTimezoneAbbr)!, toLocaleIdentifier: toLocaleIdentifier)
    }
    
    public func m_toDasteStringWithDateFormat(formatString: String,timezone: NSTimeZone,localeIdentifier:String,toDateFormat:String,toTimezone:NSTimeZone,toLocaleIdentifier:String) -> String?{
        let dataFormat = NSDateFormatter()
        dataFormat.locale = NSLocale(localeIdentifier: localeIdentifier)
        dataFormat.timeZone = timezone
        dataFormat.dateFormat = formatString
        
        let date = dataFormat.dateFromString(self)
        dataFormat.locale = NSLocale(localeIdentifier: toLocaleIdentifier)
        dataFormat.timeZone = toTimezone
        dataFormat.dateFormat = toDateFormat
        if date != nil{
            return dataFormat.stringFromDate(date!)
        }
        return nil
    }
    
}