//
//  IsValidSudoku.swift
//  test
//
//  Created by huochaihy on 2018/8/1.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class IsValidSudoku: NSObject {
    func isValidSudoku(_ board: [[String]]) -> Bool {
        for i in 0..<9 {
            var row = Set<String>();
            var column = Set<String>();
            var cube = Set<String>();
            for j in 0..<9 {
                //row
                if (board[i][j] != "." && row.contains(board[i][j])) {
                    return false;
                } else {
                    row.insert(board[i][j]);
                }
                
                //column
                if (board[j][i] != "." && column.contains(board[j][i])) {
                    return false;
                } else {
                    column.insert(board[j][i]);
                }
                
                //cude
                let rowIndex = i / 3 * 3 + j / 3;
                let columnIndex = i % 3 * 3 + j % 3;
                if (board[rowIndex][columnIndex] != "." && cube.contains(board[rowIndex][columnIndex])) {
                    return false;
                } else {
                    cube.insert(board[rowIndex][columnIndex]);
                }
            }
        }
        return true
    }
}
