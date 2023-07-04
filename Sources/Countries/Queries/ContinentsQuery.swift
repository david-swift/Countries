//
//  ContinentsQuery.swift
//  Countries
//
//  Created by david-swift on 04.07.23.
//

import Foundation
import GraphQLKit
import SwiftyJSON

/// 
@GraphQLQuery
public struct ContinentsQuery {

    /// The query's name.
    public static var query: String { "continents" }
    /// The fields.
    public var fields: Continent.Fields

}
