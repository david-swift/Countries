//
//  main.swift
//  Countries
//
//  Created by david-swift on 04.07.2023.
//

import Countries
import Foundation
import GraphQLKit

/// A dispatch group for waiting for the asynchronous call's result.
let group = DispatchGroup()

group.enter()

// swiftlint:disable trailing_closure
Task {
    try await GraphQL(url: "https://countries.trevorblades.com/graphql").query {
        ContinentsQuery(fields: .init(
            code: { print("------------\n\($0)") },
            name: { print($0) },
            countries: .init(
                name: { print($0) }
            )
        ))
        ContinentQuery(code: "EU", fields: .init(
            name: { print($0) }
        ))
        CountriesQuery(fields: .init(
            name: { print($0) }
        ))
        CountryQuery(code: "CH", fields: .init(
            name: { print($0) }
        ))
        LanguagesQuery(fields: .init(
            code: { print($0) },
            name: { print($0) },
            native: { print($0) }
        ))
        LanguageQuery(code: "de", fields: .init(
            name: { print($0) }
        ))
    }
    group.leave()
}
// swiftlint:enable trailing_closure

group.wait()
