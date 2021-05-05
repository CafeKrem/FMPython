*FastPython-accessing
assignExpression: anObject

	<generated>
	(self attributeAt: #assignExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self assignExpression.
		self attributeAt: #assignExpression put: anObject.
		otherSide right: nil ]
	ifNotNil: [ 
		self attributeAt: #assignExpression put: anObject.
		anObject right: self ]