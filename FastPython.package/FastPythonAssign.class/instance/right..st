accessing
right: anObject

	<generated>
	(self attributeAt: #right ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self right.
		self attributeAt: #right put: anObject.
		otherSide assign: nil ]
	ifNotNil: [ 
		self attributeAt: #right put: anObject.
		anObject assign: self ]