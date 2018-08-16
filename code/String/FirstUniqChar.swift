//
//  FirstUniqChar.swift
//  test
//
//  Created by huochaihy on 2018/8/3.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class FirstUniqChar: NSObject {
    func firstUniqChar(_ s: String) -> Int {
        var a = [Int?](repeating: nil, count: 26);
        for c in s.utf8 {
            let i = Int(c - 97);
            if var val = a[i] {
                val += 1;
                a[i] = val;
            } else {
                a[i] = 1;
            }
        }
        
        var index = 0;
        for c in s.utf8 {
            let i = Int(c - 97);
            if (a[i] == 1) {
                return index;
            }
            index += 1;
        }
        
        return -1;
    }
    
}
