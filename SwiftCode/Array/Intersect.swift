//
//  Intersect.swift
//  test
//
//  Created by huochaihy on 2018/7/31.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class Intersect: NSObject {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let len1 = nums1.count;
        let len2 = nums2.count;
        let len = len1 > len2 ? len2 : len1;
        
        var nums1 = nums1;
        var nums2 = nums2;
        nums1.sort();
        nums2.sort();
        
        var nums = Array.init(repeating: 0, count: len);
        
        var k = 0;
        var i = 0;
        var j = 0;
        
        var curr1 = 0;
        var curr2 = 0;
        while i < len1 && j < len2 {
            curr1 = nums1[i];
            curr2 = nums2[j];
            if(curr1 == curr2) {
                nums[k] = curr1;
                k += 1;
                i += 1;
                j += 1;
            } else if(curr1 < curr2) {
                i += 1;
            } else {
                j += 1;
            }
        }
        
        return Array(nums[0..<k]);
    }
}
