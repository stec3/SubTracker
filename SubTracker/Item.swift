import Foundation
import SwiftData

@Model
final class Subscription {
    var name: String
    var price: Double
    var cycle: String
    var renewalDate: Date
    
    init(name: String, price: Double, cycle: String, renewalDate: Date) {
        self.name = name
        self.price = price
        self.cycle = cycle
        self.renewalDate = renewalDate
    }
}
