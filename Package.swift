// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Rased",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Rased",
            targets: ["Rased"]
        )
    ],
    targets: [
        // Binary target for XCFramework distribution
        // Update URL and checksum for each release
        .binaryTarget(
            name: "Rased",
            url: "https://sdk-download-proxy-988869092634.me-central2.run.app/ios/RasedCore/1.8.0/Rased.xcframework.zip",
            checksum: "e4fed372c5fb21ff4777977ee7db758ede549c1676a0d9d5af2a5e8c727f0dce"
        )
    ]
)

// RELEASE INSTRUCTIONS:
// 1. Build XCFramework: ./scripts/build-xcframework.sh <version>
// 2. Test locally: ./scripts/test-xcframework.sh
// 3. Create GitHub release: gh release create v<version> release/Rased.xcframework.zip
// 4. Update URL above with actual release URL
// 5. Update checksum above with value from release/checksum.txt
// 6. Commit and push Package.swift
