import Foundation

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("IterableSDK_IterableSDK.bundle").path
        let buildPath = "/Users/joao.dordio/dev/repos/codereview/forks/iterable-swift-sdk/.build/index-build/arm64-apple-macosx/debug/IterableSDK_IterableSDK.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            // Users can write a function called fatalError themselves, we should be resilient against that.
            Swift.fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}