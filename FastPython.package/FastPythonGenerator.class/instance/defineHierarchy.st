definition
defineHierarchy

	super defineHierarchy.

	statement
		<|-- return;
		<|-- if;
		<|-- while;
		<|-- assign;
		<|-- pass;
		<|-- continue;
		<|-- expressionStatement;
		<|-- try;
		<|-- raise;
		<|-- assert;
		<|-- yield;
		<|-- yieldFrom;
		<|-- await;
		<|-- break;
		<|-- global;
		<|-- nonLocal;
		<|-- for;
		<|-- with;
		<|-- classDeclaration;
		<|-- functionDeclaration.

	scopable
		<|-- for;
		<|-- with;
		<|-- comprehension.

	expression --|> subscriptionIndex.
	varDeclaration --|> declaration.
	slice --|> subscriptionIndex.

	formattedValue --|> joinedStringItem.
	for --|> asynchronable.
	binOp --|> expression.
	unOp --|> expression.
	ifExpression --|> expression.
	functionDeclaration --|> asynchronable.
	classDeclaration --|> asynchronable.
	literal --|> expression.
	lambda --|> expression.
	call --|> expression.

	with --|> asynchronable.
	starred --|> expression.
	joinedStr --|> expression.
	classDeclaration --|> declaration.
	functionDeclaration --|> declaration.
	varRef --|> assignedTarget.
	varRef --|> fastVarRef.
	attributeNav --|> assignedTarget.
	attributeNav --|> expression.
	integer --|> literal.
	collection --|> literal.
	boolean --|> literal.
	none --|> null.
	subscript --|> assignedTarget.
	subscript --|> expression.
	comprehensionExpression --|> literal.
	string --|> literal.
	string --|> joinedStringItem.
	list --|> collection.
	set --|> collection.
	trueLiteral --|> boolean.
	falseLiteral --|> boolean.
	dict --|> collection.
	comprehensionList --|> comprehensionExpression.
	comprehensionDict --|> comprehensionExpression.
	comprehensionSet --|> comprehensionExpression.
	generatorExp --|> comprehensionExpression.
	tuple --|> collection.
	tuple --|> assignedTarget