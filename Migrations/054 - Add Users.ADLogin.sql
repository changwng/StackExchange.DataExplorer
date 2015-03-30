If dbo.fnColumnExists('Users', 'ADLogin') = 0
Begin
	Alter Table dbo.[Users] Add ADLogin varchar(20);
End

If dbo.fnIndexExists('Users','Idx_Users_ADLogin') = 0
Begin
  Create Nonclustered Index Users_ADLogin ON Users (ADLogin)
  With (Online = On, Sort_in_TempDB = On, Drop_Existing = Off)
End