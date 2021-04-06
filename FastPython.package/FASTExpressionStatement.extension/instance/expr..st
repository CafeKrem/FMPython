*FastPython-accessing
expr: anObject

	<generated>
	(self attributeAt: #expr ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expr.
		self attributeAt: #expr put: anObject.
		otherSide expressionStatement: nil ]
	ifNotNil: [ 
		self attributeAt: #expr put: anObject.
		anObject expressionStatement: self ]