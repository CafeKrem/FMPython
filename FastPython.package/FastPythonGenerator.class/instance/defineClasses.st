definition
defineClasses

	super defineClasses.


	varRef := builder newClassNamed: #VarRef.

	none := builder newClassNamed: #None.
	itemDict := builder newClassNamed: #ItemDict.
	exceptionHandler := builder newClassNamed: #ExceptionHandler.
	exception := builder newClassNamed: #Exception.
	comprehension := builder newClassNamed: #Comprehension.
	withItem := builder newClassNamed: #WithItem.
	rootNode := builder newClassNamed: #RootNode.
	exceptionAssociation := builder newClassNamed: #ExceptionAssociation.

	assignExpression := builder newClassNamed: #AssignExpression.
	if := builder newClassNamed: #If.
	while := builder newClassNamed: #While.
	assign := builder newClassNamed: #Assign.
	pass := builder newClassNamed: #Pass.
	try := builder newClassNamed: #Try.
	raise := builder newClassNamed: #Raise.
	assert := builder newClassNamed: #Assert.
	varDeclaration := builder newClassNamed: #VarDeclaration.
	slice := builder newClassNamed: #Slice.
	yield := builder newClassNamed: #Yield.
	await := builder newClassNamed: #Await.
	yieldFrom := builder newClassNamed: #YieldFrom.
	formattedValue := builder newClassNamed: #FormattedValue.
	break := builder newClassNamed: #Break.
	continue := builder newClassNamed: #Continue.
	global := builder newClassNamed: #Global.
	nonLocal := builder newClassNamed: #NonLocal.
	for := builder newClassNamed: #For.
	binOp := builder newClassNamed: #BinOp.
	unOp := builder newClassNamed: #UnOp.
	ifExpression := builder newClassNamed: #IfExpression.
	lambda := builder newClassNamed: #Lambda.
	call := builder newClassNamed: #Call.
	with := builder newClassNamed: #With.
	starred := builder newClassNamed: #Starred.
	joinedStr := builder newClassNamed: #JoinedStr.
	classDeclaration := builder newClassNamed: #ClassDeclaration.
	functionDeclaration := builder newClassNamed: #FunctionDeclaration.
	attributeNav := builder newClassNamed: #AttributeNav.
	integer := builder newClassNamed: #Integer.
	collection := builder newClassNamed: #Collection.
	subscript := builder newClassNamed: #Subscript.
	comprehensionExpression := builder newClassNamed:
		                           #ComprehensionExpression.
	list := builder newClassNamed: #List.
	set := builder newClassNamed: #Set.
	trueLiteral := builder newClassNamed: #TrueLiteral.
	falseLiteral := builder newClassNamed: #FalseLiteral.
	dict := builder newClassNamed: #Dict.
	comprehensionList := builder newClassNamed: #ComprehensionList.
	comprehensionDict := builder newClassNamed: #ComprehensionDict.
	comprehensionSet := builder newClassNamed: #ComprehensionSet.
	generatorExp := builder newClassNamed: #GeneratorExp.
	tuple := builder newClassNamed: #Tuple.


	operationSymbol := builder newClassNamed: #OperationSymbol.
	parameter := builder newClassNamed: #Parameter
	"	                 
	
	sClass := self
		          remoteEntity: #SClass
		          withPrefix: FamixPythonGenerator prefix.
	sFunction := self
		             remoteEntity: #SFunction
		             withPrefix: FamixPythonGenerator prefix"