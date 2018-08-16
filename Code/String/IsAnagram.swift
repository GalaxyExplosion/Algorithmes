//
//  IsAnagram.swift
//  test
//
//  Created by huochaihy on 2018/8/3.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class IsAnagram: NSObject {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if (strlen(s) != strlen(t)) {
            return false;
        }
        
        var table = [Int?](repeating: nil, count: 26);
        for c in s.utf8 {
            let i = Int(c - 97);
            if var val = table[i] {
                val += 1;
                table[i] = val;
            } else {
                table[i] = 1;
            }
        }
        for c in t.utf8 {
            let i = Int(c - 97);
            if var val = table[i] {
                val -= 1;
                table[i] = val;
                if (val < 0) {
                    return false;
                }
            }
        }
        
        return true;
    }
}
