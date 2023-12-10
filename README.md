> [!NOTE]
> This project is no longer maintained due to the deprecation of [GraphQLKit](https://github.com/david-swift/GraphQLKit).

<p align="center">
  <img width="256" alt="Countries Icon" src="Icons/Icon.png">
  <h1 align="center">Countries</h1>
</p>

<p align="center">
  <a href="https://github.com/david-swift/Countries">
  GitHub
  </a>
  ·
  <a href="Documentation/Reference/Countries/README.md">
  Contributor Docs
  </a>
</p>

_Countries_ is a GraphQL package for Swift, created using the [GraphQL Viewer][1] app. It enables creating queries and mutations using a type-safe, easy-to-use interface.

## Table of Contents

- [Installation][2]
- [Usage][3]
- [Thanks][4]

## Installation

### Swift Package
1. Open your Swift package in Xcode.
2. Navigate to `File > Add Packages`.
3. Paste this URL into the search field: `https://github.com/david-swift/Countries`
4. Click on `Copy Dependency`.
5. Navigate to the `Package.swift` file.
6. In the `Package` initializer, under `dependencies`, paste the dependency into the array.

###  Xcode Project
1. Open your Xcode project in Xcode.
2. Navigate to `File > Add Packages`.
3. Paste this URL into the search field: `https://github.com/david-swift/Countries`
4. Click on `Add Package`.

## Usage

Creating a request is really simple. Here is an example on how to transfer a GraphQL query to Swift. Note that this example is using the GraphQLZero API.

```swift
try await GraphQL(url: "https://graphqlzero.almansi.me/api").query {
    UserQuery(id: "1", fields: .init(
        id: { print($0) },
        address: .init(
            geo: .init(
                lat: { print($0) },
                lng: { print($0) }
            )
        )
    ))
}
```

That is an example implementation of the following query:

```graphql
query {
  user(id: "1") {
    id
    address {
      geo {
        lat
        lng
      }
    }
  }
}
```

Instead of getting the data and having to manually find the data you requested in a second step, only one step is required in `GraphQLKit`. You define what happens after fetching the data at the same time as you define what data to fetch. In the example above, the data is printed after being fetched successfully.

Many Swift features, such as loops, switch statements, and many more, enhance the way you create GraphQL requests.

For mutations, use `mutation(mutations:getRequest:)` instead of `query(queries:getRequest:)`.

## Thanks

### Dependencies
-  [GraphQLKit][5] licensed under the [MIT license][6]
- [SwiftLintPlugin][7] licensed under the [MIT license][8]

### Other Thanks
- The [contributors][9]
- [SourceDocs][10] used for generating the [docs][11]
- [SwiftLint][12] for checking whether code style conventions are violated
- The programming language [Swift][13]

[1]:    https://github.com/david-swift/GraphQL-Viewer-macOS
[2]:    #Installation
[3]:    #Usage
[4]:    #Thanks
[5]:    https://github.com/david-swift/GraphQLKit-macOS/
[6]:    https://github.com/david-swift/GraphQLKit-macOS/blob/main/LICENSE.md
[7]:    https://github.com/lukepistrol/SwiftLintPlugin
[8]:    https://github.com/lukepistrol/SwiftLintPlugin/blob/main/LICENSE
[9]:    Contributors.md
[10]:    https://github.com/SourceDocs/SourceDocs
[11]:    Documentation/Reference/ActionKit/README.md
[12]:    https://github.com/realm/SwiftLint
[13]:    https://github.com/apple/swift
