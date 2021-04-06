accessing
contextExpression: anObject

	<generated>
	(self attributeAt: #contextExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self contextExpression.
		self attributeAt: #contextExpression put: anObject.
		otherSide withItem: nil ]
	ifNotNil: [ 
		self attributeAt: #contextExpression put: anObject.
		anObject withItem: self ]