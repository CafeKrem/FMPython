definition
defineRelations

	super defineRelations.

	(sPackage property: #modules) <>-* (sModule property: #sPackage).
	(sPackage property: #subPackage) <>-* (sPackage property: #sPackage).
	(sModule property: #classes) <>-* (sClass property: #sModule).
	(sModule property: #classImported) -* (sClass property: #sModule).
	(sModule property: #fuctionImported)
	-* (sFunction property: #sModule).
	(sModule property: #scope) <>- (scope property: #scopeOwner).
	(scope property: #subScope) -* (scope property: #parentScope).
	(scope property: #declarations)
	<>-* (declaration property: #scopeOwner).
	(scope property: #scopeOwner) -<> (sFunction property: #scope).
	(scope property: #scopeOwner) -<> (sClass property: #classScope).
	(scope property: #scopeOwner) -<> (sClass property: #instanceScope).
	"(sFunction property: #decorateurs)
	<>-* (expression property: #sFunction)."
	(sClass property: #superClasses) *-* (sClass property: #subClasses).
	