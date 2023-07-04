//
//  CacheControlScope.swift
//  Countries
//
//  Created by david-swift on 04.07.23.
//

import Foundation
import GraphQLKit
import SwiftyJSON

/// 
public enum CacheControlScope: String, Codable, GraphQLValueType {

    /// 
    case PUBLIC
    /// 
    case PRIVATE
    /// A textual representation for GraphQL queries and mutations.
    public var string: String { rawValue }
    /// The default initialization.
    public init() {
        self = .PUBLIC
    }
}
