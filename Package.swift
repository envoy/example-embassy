import PackageDescription

let package = Package(
    name: "EmbassyExample",
    dependencies: [
        .Package(url: "https://github.com/envoy/Embassy.git",
                 majorVersion: 3),
    ]
)
