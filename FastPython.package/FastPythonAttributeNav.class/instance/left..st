accessing
left: anObject

	<generated>
	(self attributeAt: #left ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self left.
		self attributeAt: #left put: anObject.
		otherSide attributeNav: nil ]
	ifNotNil: [ 
		self attributeAt: #left put: anObject.
		anObject attributeNav: self ]