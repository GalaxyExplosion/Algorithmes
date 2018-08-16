//
//  TwoSum.swift
//  test
//
//  Created by huochaihy on 2018/7/30.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class TwoSum: NSObject {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: Dictionary<Int, Int> = Dictionary<Int, Int>();
        var res: Array<Int> = Array<Int>();
        for index in 0..<nums.count {
            let complement = target - nums[index];
            if (map.keys.contains(complement)) {
                res = [map[complement]!, index];
                return res;
            }
            map.updateValue(index, forKey: nums[index])
        }
        
        return res;
    }
    
}
