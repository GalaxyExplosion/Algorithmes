//
//  StrStr.swift
//  test
//
//  Created by huochaihy on 2018/8/7.
//  Copyright © 2018年 huochaihy. All rights reserved.
//

import UIKit

class StrStr: NSObject {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0;
        }
        
        return kmpSerach(s: haystack, p: needle);
    }
    
    func kmpSerach(s: String, p: String) -> Int {
        var i = 0;
        var j = 0;
        var sChars = [Character](s);
        var pChars = [Character](p);
        var next = Array(repeating: 0, count: pChars.count);
        getNext(pChars: pChars, next: &next);
        
        while i < sChars.count && j < pChars.count {
            if (j == -1 || sChars[i] == pChars[j]) {
                i += 1;
                j += 1;
            } else {
                j = next[j];
            }
        }
        
        if j == pChars.count {
            return i - j;
        } else {
            return -1;
        }
    }
    
    func getNext(pChars: Array<Character>, next:inout Array<Int>) {
        var k = -1;
        var j = 0;
        next[j] = k;
        
        while j < pChars.count - 1 {
            if (k == -1 || pChars[j] == pChars[k]) {
                k += 1;
                j += 1;
                if (pChars[j] != pChars[k]) {
                    next[j] = k;
                } else {
                    next[j] = next[k];
                }
            } else {
                k = next[k];
            }
        }
    }
    
}
