accessing
iterable: anObject

	<generated>
	(self attributeAt: #iterable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self iterable.
		self attributeAt: #iterable put: anObject.
		otherSide parentComprehensionIterable: nil ]
	ifNotNil: [ 
		self attributeAt: #iterable put: anObject.
		anObject parentComprehensionIterable: self ]