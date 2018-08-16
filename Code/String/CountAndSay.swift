//
//  CountAndSay.swift
//  test
//
//  Created by huochaihy on 2018/8/7.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class CountAndSay: NSObject {
    func countAndSay(_ n: Int) -> String {
        if n == 1 { return "1"; }
        let s = countAndSay(n - 1) + "*";
        let c = [Character](s);
        var temp = "";
        var count = 1;
        for i in 0..<c.count - 1 {
            if (c[i] == c[i + 1]) {
                count += 1;
            } else {
                temp = temp + "\(count)\(c[i])";
                count = 1;
            }
        }
        
        return temp;
    }
    
 
}

