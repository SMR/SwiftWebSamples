import PackageDescription

let package = Package(
name: "VaporHelloWorld",
targets: [
    Target(
        name: "VaporHelloWorld",
        dependencies: []
    )
],
    dependencies: [
        .Package(url: "https://github.com/qutheory/vapor.git", majorVersion: 0, minor: 11),
		.Package(url: "https://github.com/qutheory/vapor-mustache.git", majorVersion: 0, minor: 7)
    ]
)