//
// TryCatch.swift
//
//  Created by Nicolas Riscalas
//  Created on 2023-02-16
//  Version 1.0
//  Copyright (c) 2023 Nicolas Riscalas. All rights reserved.
//
//  Calculates the amount of logs
import Foundation
import Glibc
// Set constants
let Q_LOG = 0.25
let H_LOG = 0.5
let LOG = 1.0
let MAX_SIZE = 1100.0
let DEFAULT_WEIGHT = 20.0

// Ask for input
print("What is the size of the log?")
//Try to get the input as a double if the response is nil then print an error
if let logSize = Double(readLine()!) {
    // If statement to see if the input matches the default values
    if logSize == Q_LOG || logSize == H_LOG || logSize == LOG {
        // Calculate
        let numOfLogs = MAX_SIZE / (DEFAULT_WEIGHT * logSize)
        print("The amount of logs you can fit in the truck is \(numOfLogs)")
    } else {
        print("You can only input a default size: \(Q_LOG), \(H_LOG), \(LOG)")
    }
} else {
    // Print error
    print("You must enter in a number and not any of type string")
}