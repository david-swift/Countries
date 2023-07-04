//
//  LanguageQuery.swift
//  Countries
//
//  Created by david-swift on 04.07.23.
//

import Foundation
import GraphQLKit
import SwiftyJSON

/// 
@GraphQLQuery
public struct LanguageQuery {

    /// The query's name.
    public static var query: String { "language" }
    /// No Description
    public var code: String?
    /// The fields.
    public var fields: Language.Fields

}
