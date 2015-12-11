﻿CREATE VIEW [dbo].[Qry_Invalid_ART_Data] as 
SELECT ProvinceLookUp.ProvinceName, DistrictLookUp.DistrictName, FacilityLookUp.FacilityName, FacilityData.Indicator, FacilityData.ReferenceYear, FacilityData.ReferenceMonth, FacilityData.Sex, FacilityData.AgeGroup, FacilityData.Number, "Verify if this is an ART Site" AS Validation
FROM ProvinceLookUp INNER JOIN ((DistrictLookUp INNER JOIN FacilityLookUp ON DistrictLookUp.DistrictID = FacilityLookUp.DistrictID) INNER JOIN FacilityData ON FacilityLookUp.FacilityIndex = FacilityData.FacilityIndex) ON ProvinceLookUp.ProvinceID = DistrictLookUp.ProvinceID
WHERE (((FacilityLookUp.FacilityName) Not In (SELECT FacilityServices.FacilityID FROM FacilityServices WHERE (((FacilityServices.FacilityServiceID)=1));)) AND ((FacilityData.Indicator) Like "ART*"));

	--AS SELECT * FROM [SomeTableOrView]
