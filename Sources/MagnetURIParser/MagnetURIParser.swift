// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public func parseMagnetURI(_ link: String) -> MagnetLink {
    let components = URLComponents(string: link)
    let items = components?.queryItems
    let out = MagnetLink()
    items?.forEach {
        out.addPart(item: $0)
    }
    return out
}

public class MagnetLink {
    var dn: String = ""
    var xt: String = ""
    var tr: [String] = []
    
    func addPart(item: URLQueryItem) {
        if let value = item.value {
            if (item.name == "tr") {
                tr.append(value)
            } else if (item.name == "xt") {
                xt = value
            } else if (item.name == "dn") {
                dn = value
            }
        }
    }
}
