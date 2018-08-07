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
        var s1 = "1";
        var s2 = "";
        var n = n
        while n > 0 {
            n -= 1;
            for var i in 0..<s1.count {
                for var j in 0..<Int(Int32.max) {
                    let chars1 = [Character](s1);
                    if i + j < s1.count && chars1[i + j] == chars1[i + j + 1] {
                        continue
                    }
                    j += 1;
                    s2 = s2 + "\(j)";
                    s2.append(chars1[i]);
                    i = j + i - 1;
                    break;
                 }
            }
            s1 = s2;
            s2 = "";
        }
        return s1;
    }
    
 
}
