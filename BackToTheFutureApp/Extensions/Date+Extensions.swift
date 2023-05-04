import Foundation

extension Date {
    
    func dateAfter(years: Int) -> Date? {
        var components = DateComponents()
        components.year = years
        return Calendar.current.date(byAdding: components, to: self)
    }
    
    func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: self)
    }
}
