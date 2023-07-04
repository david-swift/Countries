//
//  LanguagesQuery.swift
//  Countries
//
//  Created by david-swift on 04.07.23.
//

import Foundation
import GraphQLKit
import SwiftyJSON

/// 
@GraphQLQuery
public struct LanguagesQuery {

    /// The query's name.
    public static var query: String { "languages" }
    /// The fields.
    public var fields: Language.Fields

}
