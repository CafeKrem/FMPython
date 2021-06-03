definition
defineTraits

	super defineTraits.

	statement := self remoteTrait: #TStatement withPrefix: #FAST.
	expression := self remoteTrait: #TExpression withPrefix: #FAST.
	literal := self remoteTrait: #TLiteral withPrefix: #FAST.
	boolean := self remoteTrait: #TBooleanLiteral withPrefix: #FAST.
	string := self remoteTrait: #TStringLiteral withPrefix: #FAST.
	fastVarRef := self
		              remoteTrait: #TVariableExpression
		              withPrefix: #FAST.
	null := self remoteTrait: #TNullPointerLiteral withPrefix: #FAST.
	expressionStatement := self
		                       remoteTrait: #TExpressionStatement
		                       withPrefix: #FAST.
	return := self remoteTrait: #TReturnStatement withPrefix: #FAST.



	assignedTarget := builder newTraitNamed: #AssignedTarget.
	subscriptionIndex := builder newTraitNamed: #SubscriptionIndex.
	joinedStringItem := builder newTraitNamed: #JoinedStringItem.
	asynchronable := builder newTraitNamed: #Asynchronable.
	
	"declaration := self
		               remoteTrait: #Declaration
		               withPrefix: FamixPythonGenerator prefix.
	asynchronable := self
		                 remoteTrait: #Asynchronable
		                 withPrefix: FamixPythonGenerator prefix.
	scopable := self
		            remoteTrait: #Scopable
		            withPrefix: FamixPythonGenerator prefix"