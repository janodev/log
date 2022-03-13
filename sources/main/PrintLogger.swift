import Foundation

/**
 Usage:
 ```
 let log = PrintLogger(label: "collection", logLevel: .trace)
 ```
 */
public struct PrintLogger
{
    // MARK: - Initializer

    private let label: String
    private let threshold: Level
    private var send: (String) -> Void

    /// - Parameters:
    ///   - label: Tag for each log line. Usually the module name.
    ///   - threshold: Logs equal or less than this threshold are ignored.
    ///   - send: Function the log is sent to. It defaults to `print($0)`.
    public init(label: String,
                threshold: Level = .debug,
                send: @escaping (String) -> Void = { print($0) })
    {
        self.label = label
        self.threshold = threshold
        self.send = send
    }

    // MARK: - Log levels

    private func log(label: String,
                     level: String,
                     message: String,
                     file: String,
                     function: String,
                     line: UInt) {
        send(
            FormattedMessage(
                label: label,
                level: level,
                message: message,
                file: file,
                function: function,
                line: line
            )
            .serialize()
        )
    }

    public func trace(_ message: @autoclosure @escaping () -> Message,
                      file: String = #fileID,
                      function: String = #function,
                      line: UInt = #line)
    {
        if Level.trace >= threshold {
            log(label: label,
                level: Level.trace.icon(),
                message: message().stringValue,
                file: file,
                function: function,
                line: line)
        }
    }

    public func debug(_ message: @autoclosure @escaping () -> Message,
                      file: String = #fileID,
                      function: String = #function,
                      line: UInt = #line)
    {
        if Level.debug >= threshold {
            log(label: label,
                level: Level.debug.icon(),
                message: message().stringValue,
                file: file,
                function: function,
                line: line)
        }
    }

    public func info(_ message: @autoclosure @escaping () -> Message,
                     file: String = #fileID,
                     function: String = #function,
                     line: UInt = #line)
    {
        if Level.info >= threshold {
            log(label: label,
                level: Level.info.icon(),
                message: message().stringValue,
                file: file,
                function: function,
                line: line)
        }
    }

    public func warning(_ message: @autoclosure @escaping () -> Message,
                        file: String = #fileID,
                        function: String = #function,
                        line: UInt = #line)
    {
        if Level.warning >= threshold {
            log(label: label,
                level: Level.warning.icon(),
                message: message().stringValue,
                file: file,
                function: function,
                line: line)
        }
    }

    public func error(_ message: @autoclosure @escaping () -> Message,
                      source: @autoclosure () -> String? = nil,
                      file: String = #fileID,
                      function: String = #function,
                      line: UInt = #line)
    {
        if Level.error >= threshold {
            log(label: label,
                level: Level.error.icon(),
                message: message().stringValue,
                file: file,
                function: function,
                line: line)
        }
    }
}
