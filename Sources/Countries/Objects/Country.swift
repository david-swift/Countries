//
//  Country.swift
//  Countries
//
//  Created by david-swift on 04.07.23.
//

import Foundation
import GraphQLKit
import SwiftyJSON

/// 
@GraphQLObject
public final class Country {

    /// 
    @Value public var code: String? = nil
    /// 
    @Value public var name: String? = nil
    /// 
    @Value public var native: String? = nil
    /// 
    @Value public var phone: String? = nil
    /// 
    public var continent: Continent? = nil
    /// 
    @Value public var currency: String? = nil
    /// 
    public var languages: [Language]? = nil
    /// 
    @Value public var emoji: String? = nil
    /// 
    @Value public var emojiU: String? = nil
    /// 
    public var states: [State]? = nil

}
