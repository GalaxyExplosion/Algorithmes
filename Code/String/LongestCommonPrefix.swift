//
//  LongestCommonPrefix.swift
//  test
//
//  Created by huochaihy on 2018/8/7.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class LongestCommonPrefix: NSObject {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 { return ""; }
        
        return longestCommonPrefix(strs, l: 0, r: strs.count - 1);
    }
    
    func longestCommonPrefix(_ strs: [String], l: Int, r: Int) -> String {
        if (l == r) {
            return strs[l];
        } else {
            let mid = (l + r) / 2;
            let lcpLeft = longestCommonPrefix(strs, l: l, r: mid);
            let lcpRight = longestCommonPrefix(strs, l: mid + 1, r: r);
            return commonPrefix(left: lcpLeft, right: lcpRight);
        }
    }
    
    func commonPrefix(left: String, right: String) -> String {
        let min = left.count > right.count ? right.count : left.count
        if min == 0 {
            return ""
        };
        
        for i in 0..<min {
            let leftItem = left[left.index(left.startIndex, offsetBy: i)];
            let rightItem = right[right.index(right.startIndex, offsetBy: i)];
            if leftItem != rightItem {
                if i == 0 {
                    return ""
                };
                return String(left[left.startIndex...left.index(left.startIndex, offsetBy: i-1)]);
            }
        }
        
        return String(left[left.startIndex...left.index(left.startIndex, offsetBy: min-1)]);
    }
    
}
