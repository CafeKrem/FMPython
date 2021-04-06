definition
defineRelations

	super defineRelations.

	(sPackage property: #modules) <>-* (sModule property: #sPackage).
	(sPackage property: #subPackage) <>-* (sPackage property: #sPackage).
	(sModule property: #classes) <>-* (sClass property: #sModule).
	(sModule property: #classImported)
	-* (sClass property: #moduleImportByModule).
	(sModule property: #fuctionImported)
	-* (sFunction property: #fonctionImportByModule).

	(sModule property: #scope) <>- (scope property: #scopeOwner).
	(scope property: #subScope) -* (scope property: #parentScope).
	(scopable property: #scope) <>- (scope property: #scopeOwner).
	(scope property: #declarations) <>-* (declaration property: #scope).
	"(scope property: #scopeOwner) -<> (sFunction property: #scope).
	(scope property: #scopeOwner) -<> (sClass property: #classScope).
	(scope property: #scopeOwner) -<> (sClass property: #instanceScope)."
	(sFunction property: #decorateurs)
	<>-* (expression property: #sFunction).
	(sClass property: #superClasses) *-* (sClass property: #subClasses).
	(sModule property: #statements) <>-* (statement property: #sModule)