//
//  PlusOne.swift
//  test
//
//  Created by huochaihy on 2018/8/1.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class PlusOne: NSObject {
    public static func plusOne(_ digits: [Int]) -> [Int] {
        var res = digits;
        var carry = 1;
        for (i, e) in digits.enumerated().reversed() {
            if carry == 0  { return res };
            let sum = e + carry;
            res[i] = sum % 10;
            carry = sum / 10;
        }
        
        if carry == 1 {
            res.insert(1, at: 0);
        }
        return res;
    }
}
