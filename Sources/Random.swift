//
//  Random.swift
//  mob-fisheryates
//
//  Created by 李树志 on 2017/4/19.
//
//

import Darwin

public let random: (Int) -> Int = {
    Int(arc4random_uniform(UInt32($0)))
}
