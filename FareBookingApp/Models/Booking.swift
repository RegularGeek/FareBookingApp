import RealmSwift

class Booking: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var pickup = ""
    @objc dynamic var dropoff = ""
    @objc dynamic var rideType = ""
    @objc dynamic var fare = 0.0
    @objc dynamic var timestamp = Date()
}
