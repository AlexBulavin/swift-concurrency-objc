
@available(iOS 13.0, *)
class INTrainReservation : INReservation, NSCopying, NSSecureCoding {
  @available(iOS 14.0, *)
  init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservedSeat: INSeat?, trainTrip: INTrainTrip)
  convenience init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, reservedSeat: INSeat?, trainTrip: INTrainTrip)
  @NSCopying var reservedSeat: INSeat? { get }
  @NSCopying var trainTrip: INTrainTrip { get }
}
