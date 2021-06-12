 COPY INTO dbo.NYCTaxiTripSmall
 (DateID 1, MedallionID 2, HackneyLicenseID 3, PickupTimeID 4, DropoffTimeID 5,
 PickupGeographyID 6, DropoffGeographyID 7, PickupLatitude 8, PickupLongitude 9, 
 PickupLatLong 10, DropoffLatitude 11, DropoffLongitude 12, DropoffLatLong 13, 
 PassengerCount 14, TripDurationSeconds 15, TripDistanceMiles 16, PaymentType 17, 
 FareAmount 18, SurchargeAmount 19, TaxAmount 20, TipAmount 21, TollsAmount 22, 
 TotalAmount 23)
 FROM 'https://azuresynapsestorage.blob.core.windows.net/sampledata/NYCTaxiSmall/NYCTripSmall.parquet'
 WITH
 (
 	FILE_TYPE = 'PARQUET'
 	,MAXERRORS = 0
 	,IDENTITY_INSERT = 'OFF'
 )