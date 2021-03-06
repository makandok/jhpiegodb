CREATE TABLE [dbo].[IndicatorLookup](
IndicatorSerial int primary key,
	[IndicatorID] [nvarchar](50) not null unique,
	[IndicatorDescription] [nvarchar](250) not null,
	[zPosition] [int] not null,
	[ProgramAreaID] [int] not null,
	constraint fk_indicatorlkp_programarea foreign key (ProgramAreaID) references ProgramAreaLookUp(ProgramAreaID)
);
