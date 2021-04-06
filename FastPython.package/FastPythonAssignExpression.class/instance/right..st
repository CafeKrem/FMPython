accessing
right: anObject

	<generated>
	(self attributeAt: #right ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self right.
		self attributeAt: #right put: anObject.
		otherSide assignExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #right put: anObject.
		anObject assignExpression: self ]