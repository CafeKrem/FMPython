*FastPython-accessing
withItem: anObject

	<generated>
	(self attributeAt: #withItem ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self withItem.
		self attributeAt: #withItem put: anObject.
		otherSide contextExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #withItem put: anObject.
		anObject contextExpression: self ]