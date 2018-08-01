//
//  MoveZeroes.swift
//  test
//
//  Created by huochaihy on 2018/8/1.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class MoveZeroes: NSObject {
    public static func moveZeroes(_ nums: inout [Int]) {
        var j = 0;
        for i in 0..<nums.count {
            if (nums[i] != 0) { continue }
            while nums[j] == 0 || j <= i {
                if (j == nums.count - 1) { return }
                j += 1;
            }
            
            nums[i] = nums[j];
            nums[j] = 0;
        }
        
    }
}
