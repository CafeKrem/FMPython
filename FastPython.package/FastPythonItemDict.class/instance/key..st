accessing
key: anObject

	<generated>
	(self attributeAt: #key ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self key.
		self attributeAt: #key put: anObject.
		otherSide itemDict: nil ]
	ifNotNil: [ 
		self attributeAt: #key put: anObject.
		anObject itemDict: self ]