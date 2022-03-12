/// Log message.
public struct Message: ExpressibleByStringLiteral,
                       ExpressibleByStringInterpolation
{
    public typealias StringLiteralType = String

    let stringValue: String

    public init(stringLiteral value: String) {
        self.stringValue = value
    }
}
