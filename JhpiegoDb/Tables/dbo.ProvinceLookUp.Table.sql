CREATE TABLE [dbo].[ProvinceLookUp](
	[ProvinceID] [int] primary key,
	[ProvinceName] [nvarchar](50) not null unique
)