import Foundation

extension Double{
    func formatPrice() -> String{
        let formmattedString = String(format: "%.2f", self)
        return formmattedString.replacingOccurrences(of: ".", with: ",")
    }
}
