definition
defineRelations

	super defineRelations.

	(statement property: #parentIfBody) *-<> (if property: #body).
	(statement property: #parentElse) *-<> (if property: #else).
	(statement property: #parentOrelse) *-<> (for property: #orelse).
	(statement property: #parentForBody) *-<> (for property: #body).
	(sPackage property: #modules) <>-* (sModule property: #sPackage).
	(sPackage property: #subPackage) <>-* (sPackage property: #sPackage).
	(sModule property: #classes) <>-* (sClass property: #sModule).
	(sModule property: #statements) <>-* (statement property: #sModule).
	(sModule property: #classImported) -* (sClass property: #sModule).
	(sModule property: #fuctionImported)
	-* (sFunction property: #sModule).
	(sModule property: #scope) <>- (scope property: #scopeOwner).
	(itemDict property: #key) <>- (expression property: #itemDict).
	(itemDict property: #value) <>- (expression property: #itemDict).
	(assignedTarget property: #parentAssign) -<> (assign property: #left).
	(exceptionHandler property: #exceptionActions)
	<>-* (statement property: #exceptionHandler).
	(exceptionHandler property: #exceptionAssociations)
	-* (exceptionAssociation property: #exceptionHandler).
	(scope property: #subScope) -* (scope property: #parentScope).
	(scope property: #declarations)
	<>-* (declaration property: #scopeOwner).
	"(scope property: #scopeOwner) -<> (sFunction property: #scope).
	(scope property: #scopeOwner) -<> (sClass property: #classScope).
	(scope property: #scopeOwner) -<> (sClass property: #instanceScope).
	(scope property: #scopeOwner) -<> (for property: #scope).
	(scope property: #scopeOwner) -<> (comprehension property: #scope).
	(scope property: #scopeOwner) -<> (with property: #scope)."
	(declaration property: #references) -* (varRef property: #definition).
	(comprehension property: #target)
	<>- (expression property: #parentTarget).
	(comprehension property: #iterable)
	<>- (expression property: #parentComprehensionIterable).
	(comprehension property: #ifs) <>-* (expression property: #parentIfs).
	(withItem property: #contextExpression)
	<>- (expression property: #withItem).
	(withItem property: #target) <>- (expression property: #withItem).
	(rootNode property: #statements) <>-* (statement property: #rootNode).
	(subscriptionIndex property: #parentSubscription)
	-<> (subscript property: #index).
	(exceptionAssociation property: #exception)
	- (exception property: #exceptionAssociation).
	(exceptionAssociation property: #allias)
	- (varRef property: #exceptionAssociation).
	(assignExpression property: #left)
	<>- (assignedTarget property: #assignExpression).
	(assignExpression property: #right)
	<>- (expression property: #assignExpression).
	"(return property: #returnValue)  <>- (expression property: #return)."
	(if property: #elif) *- (if property: #ifParent).
	(if property: #cond) <>- (expression property: #ifOwner).
	(while property: #cond) <>- (expression property: #while).
	(while property: #body) <>-* (statement property: #while).
	(assign property: #right) <>- (expression property: #assign).
	(expression property: #parentForIterable)
	-<> (for property: #iterable).
	(try property: #body) <>-* (statement property: #try).
	(try property: #finaly) <>-* (statement property: #try).
	(try property: #exceptHandlers)
	<>-* (exceptionHandler property: #try).
	(raise property: #exception) - (exception property: #raise).
	(assert property: #conditional) <>- (expression property: #assert).
	(assert property: #message) <>- (expression property: #assert).
	(slice property: #lower) <>- (expression property: #slice).
	(slice property: #upper) <>- (expression property: #slice).
	(slice property: #step) <>- (expression property: #slice).
	(yield property: #expression) <>- (expression property: #yield).
	(await property: #expression) <>- (expression property: #await).
	(yieldFrom property: #expression)
	<>- (expression property: #yieldFrom).
	(formattedValue property: #expression)
	<>- (expression property: #formattedValue).
	(global property: #varRef) <>- (varRef property: #global).
	(nonLocal property: #varRef) <>- (varRef property: #nonLocal).
	(for property: #iterationVar) <>- (assignedTarget property: #for).
	(binOp property: #left) <>- (expression property: #binOp).
	(binOp property: #right) <>- (expression property: #binOp).
	(binOp property: #op) - (operationSymbol property: #binOp).
	(unOp property: #expr) <>- (expression property: #unOp).
	(unOp property: #op) - (operationSymbol property: #unOp).
	(ifExpression property: #else)
	<>- (expression property: #ifExpression).
	(ifExpression property: #body)
	<>- (expression property: #ifExpression).
	(ifExpression property: #cond)
	<>- (expression property: #ifExpression).
	(sFunction property: #statements)
	<>-* (statement property: #sFunction).
	(sFunction property: #decorateurs)
	<>-* (expression property: #sFunction).
	(sFunction property: #declaration)
	- (functionDeclaration property: #sfunction).
	(sClass property: #statements) <>-* (statement property: #sClass).
	(sClass property: #superClasses) *-* (sClass property: #subClasses).
	(sClass property: #declaration)
	- (classDeclaration property: #sClass).
	(lambda property: #body) <>- (expression property: #lambda).
	(call property: #left) <>- (expression property: #call).
	(call property: #arguments) <>-* (expression property: #call).
	(with property: #withItems) <>-* (withItem property: #with).
	(starred property: #expr) <>- (expression property: #starred).
	(joinedStr property: #items)
	<>-* (joinedStringItem property: #joinedStr).
	(classDeclaration property: #body)
	<>-* (statement property: #classDeclaration).
	(classDeclaration property: #superClasses)
	-* (varRef property: #classDeclaration).
	(classDeclaration property: #sclass)
	- (sClass property: #classDeclaration).
	(functionDeclaration property: #body)
	<>-* (statement property: #functionDeclaration).
	(functionDeclaration property: #decorateurs)
	-* (expression property: #functionDeclaration).
	(functionDeclaration property: #parameters)
	<>-* (parameter property: #functionDeclaration).
	(attributeNav property: #left)
	<>- (expression property: #attributeNav).
	(subscript property: #value) <>- (expression property: #subscript).
	(comprehensionExpression property: #comprehension)
	<>- (comprehension property: #comprehensionExpression).
	(comprehensionExpression property: #elt)
	<>- (expression property: #comprehensionExpression).
	(list property: #contents) <>-* (expression property: #list).
	(set property: #contents) <>-* (expression property: #set).
	(dict property: #itemsDict) <>-* (itemDict property: #dict).
	(tuple property: #contents) <>-* (expression property: #tuple)