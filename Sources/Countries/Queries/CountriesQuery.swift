//
//  CountriesQuery.swift
//  Countries
//
//  Created by david-swift on 04.07.23.
//

import Foundation
import GraphQLKit
import SwiftyJSON

/// 
@GraphQLQuery
public struct CountriesQuery {

    /// The query's name.
    public static var query: String { "countries" }
    /// The fields.
    public var fields: Country.Fields

}
