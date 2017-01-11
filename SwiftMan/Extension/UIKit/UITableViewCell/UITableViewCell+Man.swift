//
//  UITableViewCell+Man.swift
//  SwiftMan
//
//  Created by yangjun on 16/6/22.
//  Copyright © 2016年 yangjun. All rights reserved.
//

import UIKit


extension UITableViewCell{
    public static func nib() -> UINib {
        return  UINib(nibName: String(describing: self), bundle: nil)
    }
}
