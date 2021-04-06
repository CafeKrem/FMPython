*FastPython-accessing
ifExpression: anObject

	<generated>
	(self attributeAt: #ifExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self ifExpression.
		self attributeAt: #ifExpression put: anObject.
		otherSide else: nil ]
	ifNotNil: [ 
		self attributeAt: #ifExpression put: anObject.
		anObject else: self ]