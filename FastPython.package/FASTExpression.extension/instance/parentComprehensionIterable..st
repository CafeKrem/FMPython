*FastPython-accessing
parentComprehensionIterable: anObject

	<generated>
	(self attributeAt: #parentComprehensionIterable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self parentComprehensionIterable.
		self attributeAt: #parentComprehensionIterable put: anObject.
		otherSide iterable: nil ]
	ifNotNil: [ 
		self attributeAt: #parentComprehensionIterable put: anObject.
		anObject iterable: self ]