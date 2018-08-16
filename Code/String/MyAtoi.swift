//
//  MyAtoi.swift
//  test
//
//  Created by huochaihy on 2018/8/7.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class MyAtoi: NSObject {
    func myAtoi(_ str: String) -> Int {
        var sign = 1;
        var res = 0;
        var isStar = false;
        var isSign = false;
        let chars = [Character](str);
        
        for c in chars {
            //寻找空字符
            if c == " " && !isStar {
                continue
            }
            isStar = true
            
            //符号确定
            if c == "+" || c == "-" {
                if isSign {
                    return res * sign;
                }
                isSign = true;
                sign = c == "+" ? 1 : -1;
                continue
            }
            
            if (c <= "9" || c >= "0") {
                isSign = true;
                
                let charValue = Int(String(c))!
                let max = (Int(Int32.max) - charValue) / 10
                let min = (Int(Int32.min) + charValue) / 10
                
                if sign == 1 && res > max {
                    return Int(Int32.max)
                }
                if sign == -1 && (-res < min) {
                    return Int(Int32.min)
                }
                
                res = res * 10 + charValue;
            } else {
                break;
            }
        }
        
        return res * sign;
    }
}
