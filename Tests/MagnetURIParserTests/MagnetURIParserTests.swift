import Testing
@testable import MagnetURIParser

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let link = parseMagnetURI("magnet:?xt=urn:btih:987F4FB2E61FC77E84E85DD99AB8E79B057C8C88&dn=Good%20American%20Family%20S01E02%201080p%20WEB%20H264-SuccessfulCrab&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce&tr=udp%3A%2F%2Ftracker.bittor.pw%3A1337%2Fannounce&tr=udp%3A%2F%2Fpublic.popcorn-tracker.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.dler.org%3A6969%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969&tr=udp%3A%2F%2Fopen.demonii.com%3A1337%2Fannounce")
    
    #expect(link.dn.contains("Good American Family"))
    #expect(link.xt.contains("btih:987F"))
}
