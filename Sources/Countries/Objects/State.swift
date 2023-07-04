//
//  State.swift
//  Countries
//
//  Created by david-swift on 04.07.23.
//

import Foundation
import GraphQLKit
import SwiftyJSON

/// 
@GraphQLObject
public final class State {

    /// 
    @Value public var code: String? = nil
    /// 
    @Value public var name: String? = nil
    /// 
    public var country: Country? = nil

}
