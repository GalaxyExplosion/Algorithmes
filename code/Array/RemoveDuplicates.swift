//
//  RemoveDuplicates.swift
//  test
//
//  Created by huochaihy on 2018/7/30.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class RemoveDuplicates: NSObject {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 { return 0; }
        var i: Int = 0;
        for j in 1..<nums.count {
            if nums[i] != nums[j] {
                i += 1;
                nums[i] = nums[j];
            }
        }

        return i + 1;
    }
    
}
