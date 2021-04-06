*FastPython-accessing
expressionStatement: anObject

	<generated>
	(self attributeAt: #expressionStatement ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expressionStatement.
		self attributeAt: #expressionStatement put: anObject.
		otherSide expr: nil ]
	ifNotNil: [ 
		self attributeAt: #expressionStatement put: anObject.
		anObject expr: self ]