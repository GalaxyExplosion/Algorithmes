//
//  IsPalindrome.swift
//  test
//
//  Created by huochaihy on 2018/8/3.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class IsPalindrome: NSObject {
    func isPalindrome(_ s: String) -> Bool {
        //判断表情的正则表达式
        let pattern = "[^a-zA-Z0-9]"
        //替换后的字符串
        let regex = try! NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive);
        let str = regex.stringByReplacingMatches(in: s, options: [],
                                                 range: NSMakeRange(0, s.count),
                                                 withTemplate: "")
        
        let temp = str.lowercased()
        let temp1 = String(str.lowercased().reversed())
        print(temp);
        print(temp1);
        if temp != temp1 {
            return false;
        }
        // for i in 0..<str.count {
        //     let startItem = temp.index(temp.startIndex, offsetBy: i)
        //     let endItem = temp1.index(temp1.startIndex, offsetBy: i)
        //     print(startItem);
        //     print(endItem);
        //     if startItem != endItem {
        //         return false
        //     }
        // }
        
        return true
    }
}
