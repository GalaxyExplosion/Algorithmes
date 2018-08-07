//
//  SingleNumber.swift
//  test
//
//  Created by huochaihy on 2018/7/31.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class SingleNumber: NSObject {
    func singleNumber(_ nums: [Int]) -> Int {
        var temp = 0;
        for item in nums {
            temp ^= item;
        }
        return temp;
    }
}
