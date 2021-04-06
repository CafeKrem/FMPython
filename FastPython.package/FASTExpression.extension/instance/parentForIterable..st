*FastPython-accessing
parentForIterable: anObject

	<generated>
	(self attributeAt: #parentForIterable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self parentForIterable.
		self attributeAt: #parentForIterable put: anObject.
		otherSide iterable: nil ]
	ifNotNil: [ 
		self attributeAt: #parentForIterable put: anObject.
		anObject iterable: self ]