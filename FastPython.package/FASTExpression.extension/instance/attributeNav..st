*FastPython-accessing
attributeNav: anObject

	<generated>
	(self attributeAt: #attributeNav ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self attributeNav.
		self attributeAt: #attributeNav put: anObject.
		otherSide left: nil ]
	ifNotNil: [ 
		self attributeAt: #attributeNav put: anObject.
		anObject left: self ]