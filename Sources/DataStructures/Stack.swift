//
//  Stack.swift
//  
//
//  Created by Alex Nagy on 20.02.2021.
//

import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []
    public init() { }
    
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        ----Stack----
        \(storage.map {"\($0)"}.reversed().joined(separator: "\n"))
        -----------
        """
    }
}

