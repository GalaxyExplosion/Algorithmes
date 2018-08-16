//
//  RotateImage.swift
//  test
//
//  Created by huochaihy on 2018/8/1.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class RotateImage: NSObject {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count;
        for i in 0..<n-1 {
            for j in 0..<n-i {
                let temp = matrix[i][j];
                matrix[i][j] = matrix[n-j-1][n-i-1];
                matrix[n-j-1][n-i-1] = temp;
            }
        }
        
        for i in 0..<n/2 {
            for j in 0..<n {
                let temp = matrix[i][j];
                matrix[i][j] = matrix[n-i-1][j];
                matrix[n-i-1][j] = temp;
            }
        }
    }
}
