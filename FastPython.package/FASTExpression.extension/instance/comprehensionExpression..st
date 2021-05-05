*FastPython-accessing
comprehensionExpression: anObject

	<generated>
	(self attributeAt: #comprehensionExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self comprehensionExpression.
		self attributeAt: #comprehensionExpression put: anObject.
		otherSide elt: nil ]
	ifNotNil: [ 
		self attributeAt: #comprehensionExpression put: anObject.
		anObject elt: self ]