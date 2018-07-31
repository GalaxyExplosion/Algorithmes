//
//  MaxProfit.swift
//  test
//
//  Created by huochaihy on 2018/7/30.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class MaxProfit: NSObject {
    
    public static func maxProfit(_ prices: [Int]) -> Int {
        var sum = 0;
        var i = 1;
        while i < prices.count {
            let x = prices[i] - prices[i-1];
            if (x > 0) {
                sum += x;
            }
            i+=1;
        }

        print(sum);
        return sum;
    }
}
