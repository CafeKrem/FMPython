accessing
iterable: anObject

	<generated>
	(self attributeAt: #iterable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self iterable.
		self attributeAt: #iterable put: anObject.
		otherSide parentForIterable: nil ]
	ifNotNil: [ 
		self attributeAt: #iterable put: anObject.
		anObject parentForIterable: self ]