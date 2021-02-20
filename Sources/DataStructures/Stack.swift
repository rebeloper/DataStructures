//
//  Stack.swift
//  
//
//  Created by Alex Nagy on 20.02.2021.
//

import Foundation

public struct Stack<T> {
    private var elements: [T] = []
    
    public mutating func push(_ element: T) {
        elements.append(element)
    }
    
    public mutating func pop() -> T? {
        return elements.popLast()
    }
    
    public func peek() -> T? {
        return elements.last
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        let header = "----Stack Begin----\n"
        let bottomDivider = "\n----Stack End----\n"
        
        var body = ""
        elements.reversed().forEach { (element) in
            body.append("\(element)\n")
        }
        
        return "\(header) \(body) \(bottomDivider)"
    }
}

