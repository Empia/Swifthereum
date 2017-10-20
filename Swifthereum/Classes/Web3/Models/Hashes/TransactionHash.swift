//
//  TransactionHash.swift
//  Swifthereum
//
//  Created by Ronald Mannak on 10/19/17.
//

import Foundation
import BigInt

/**
 32-bit transaction hash
 */
public struct TransactionHash: Hash {
    public let hash: HashString
    
    public static var hashLength: Int = 32
    
    public init?(hex: HashString) {
        guard let hash = String(hex: hex, length: type(of: self).hashLength) else { return nil }
        self.hash = hash
    }
}
