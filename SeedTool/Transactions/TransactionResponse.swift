//
//  TransactionResponse.swift
//  Gordian Seed Tool
//
//  Created by Wolf McNally on 2/17/21.
//

import Foundation
import URKit

struct TransactionResponse {
    let id: UUID
    let body: Body
    
    enum Body {
        case seed(Seed)
        case key(HDKey)
        case psbtSignature(Data)
    }
    
    var cbor: CBOR {
        var a: [OrderedMapEntry] = []
        
        a.append(.init(key: 1, value: id.taggedCBOR))

        switch body {
        case .seed(let seed):
            a.append(.init(key: 2, value: seed.taggedCBOR))
        case .key(let key):
            a.append(.init(key: 2, value: key.taggedCBOR))
        case .psbtSignature:
            // not yet supported
            fatalError()
        }
        return CBOR.orderedMap(a)
    }

    var taggedCBOR: CBOR {
        CBOR.tagged(.transactionResponse, cbor)
    }

    var ur: UR {
        try! UR(type: "crypto-response", cbor: cbor)
    }
}
