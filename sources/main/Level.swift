public enum Level: Int, Comparable
{
    case trace = 0
    case debug = 1
    case info = 2
    case warning = 3
    case error = 4
    case none = 5

    func icon() -> String {
        switch self {
        case .error: return "🚨"
        case .info: return "ℹ️"
        case .warning: return "⚠️"
        default: return ""
        }
    }

    // MARK: - Comparable

    public static func == (lhs: Level, rhs: Level) -> Bool {
        lhs.rawValue == rhs.rawValue
    }
    public static func < (lhs: Level, rhs: Level) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}
