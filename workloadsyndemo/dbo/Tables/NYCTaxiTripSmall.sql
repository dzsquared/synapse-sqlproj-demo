CREATE TABLE dbo.NYCTaxiTripSmall
 	(
 	 [DateID] int,
 	 [MedallionID] int,
 	 [HackneyLicenseID] int,
 	 [PickupTimeID] int,
 	 [DropoffTimeID] int,
 	 [PickupGeographyID] int,
 	 [DropoffGeographyID] int,
 	 [PickupLatitude] float,
 	 [PickupLongitude] float,
 	 [PickupLatLong] nvarchar(4000),
 	 [DropoffLatitude] float,
 	 [DropoffLongitude] float,
 	 [DropoffLatLong] nvarchar(4000),
 	 [PassengerCount] int,
 	 [TripDurationSeconds] int,
 	 [TripDistanceMiles] float,
 	 [PaymentType] nvarchar(4000),
 	 [FareAmount] numeric(19,4),
 	 [SurchargeAmount] numeric(19,4),
 	 [TaxAmount] numeric(19,4),
 	 [TipAmount] numeric(19,4),
 	 [TollsAmount] numeric(19,4),
 	 [TotalAmount] numeric(19,4)
 	)
 WITH
 	(
 	DISTRIBUTION = ROUND_ROBIN,
 	 CLUSTERED COLUMNSTORE INDEX
 	 -- HEAP
 	)