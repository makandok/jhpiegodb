CREATE TABLE [dbo].[FacilityLookUp](
	[FacilityIndex] [int] primary key,
	[FacilityID] [nvarchar](255) NOT NULL unique,
	[FacilityName] [nvarchar](50) NOT NULL,
	[DistrictID] [int] not NULL,
	[FacilityTypeID] [int] NULL,
	[FacilityName_JHPEIGO] [nvarchar](255) not null,
	constraint fk_facility_district foreign key(DistrictID)  references DistrictLookUp(DistrictID),
	constraint fk_facility_facilitytype foreign key(FacilityTypeID)  references FacilityTypeLookup(FacilityTypeID)
)