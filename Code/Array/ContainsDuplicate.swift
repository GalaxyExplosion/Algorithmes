//
//  ContainsDuplicate.swift
//  test
//
//  Created by huochaihy on 2018/7/31.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class ContainsDuplicate: NSObject {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>();
        for i in 0..<nums.count {
            if (!set.contains(nums[i])) {
                set.update(with:nums[i]);
            } else {
                return true;
            }
        }
        return false;
    }
}
