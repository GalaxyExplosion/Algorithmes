//
//  ReverseInt.swift
//  test
//
//  Created by huochaihy on 2018/8/3.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class Reverse: NSObject {
    func reverse(_ x: Int) -> Int {
        var x = x;
        var res = 0;
        while x != 0 {
            let temp =  res * 10 + x % 10;
            if (temp / 10 != res) {
                return 0;
            }
            res = temp;
            x /= 10;
        }
        
        let max = Int(powf(2, 31)) - 1;
        let min = Int(powf(-2, 31));
        if (res > max || res < min) {
            return 0;
        }
        
        return res;
    }
}
