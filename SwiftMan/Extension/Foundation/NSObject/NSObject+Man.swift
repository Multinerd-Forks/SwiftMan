//
//  NSObject+Man.swift
//  SwiftMan
//
//  Created by yangjun on 16/5/4.
//  Copyright © 2016年 yangjun. All rights reserved.
//

import Foundation
 extension NSObject {
    public var m_className: String {
        return type(of: self).m_className
    }
    
    public static var m_className: String {
        return String(describing: self)
    }
}
