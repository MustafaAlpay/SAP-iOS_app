// # Proxy Compiler 17.12.4-8c3504-20180321

import Foundation
import SAPOData

internal class MyServiceClassMetadataParser {
    internal static let options: Int = (CSDLOption.processMixedVersions | CSDLOption.retainOriginalText | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = MyServiceClassMetadataParser.parse()

    static func parse() -> CSDLDocument {
        let parser: CSDLParser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = MyServiceClassMetadataParser.options
        let metadata: CSDLDocument = parser.parseInProxy(MyServiceClassMetadataText.xml, url: "ESPM")
        metadata.proxyVersion = "17.12.4-8c3504-20180321"
        return metadata
    }
}
