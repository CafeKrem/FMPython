accessing
left: anObject

	<generated>
	(self attributeAt: #left ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self left.
		self attributeAt: #left put: anObject.
		otherSide call: nil ]
	ifNotNil: [ 
		self attributeAt: #left put: anObject.
		anObject call: self ]