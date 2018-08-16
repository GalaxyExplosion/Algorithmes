//
//  Rotate.swift
//  test
//
//  Created by huochaihy on 2018/7/31.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class Rotate: NSObject {
    func rotate(_ nums: inout [Int], _ k: Int) {
        //1
        // let x = k % nums.count;
        // let res = nums;
        // for i in 0..<nums.count {
        //     nums[(i + x) % nums.count] = res[i];
        // }
        
        //2
        // if (nums.count == 0) { return };
        // var i = 0;
        // while i < k {
        //     i += 1;
        //     let lastItem = nums.last;
        //     nums.insert(lastItem!, at: 0);
        //     nums.removeLast()
        // }
        
        //3
        var i = 0;
        if (k > nums.count) {
            i = k % nums.count;
        } else if (k < nums.count) {
            i = k;
        }
        
        reverse(&nums, 0, nums.count - i - 1);
        reverse(&nums, nums.count - i, nums.count - 1);
        reverse(&nums, 0, nums.count - 1);
    }
    
    func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var s = start
        var e = end
        while s < e {
            let temp = nums[s];
            nums[s] = nums[e];
            nums[e] = temp;
            s += 1;
            e -= 1;
        }
    }
}
