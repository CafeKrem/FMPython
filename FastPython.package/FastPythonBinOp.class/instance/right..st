accessing
right: anObject

	<generated>
	(self attributeAt: #right ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self right.
		self attributeAt: #right put: anObject.
		otherSide binOp: nil ]
	ifNotNil: [ 
		self attributeAt: #right put: anObject.
		anObject binOp: self ]