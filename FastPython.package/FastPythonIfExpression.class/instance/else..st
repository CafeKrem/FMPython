accessing
else: anObject

	<generated>
	(self attributeAt: #else ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self else.
		self attributeAt: #else put: anObject.
		otherSide ifExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #else put: anObject.
		anObject ifExpression: self ]