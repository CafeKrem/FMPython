*FastPython-accessing
lambda: anObject

	<generated>
	(self attributeAt: #lambda ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self lambda.
		self attributeAt: #lambda put: anObject.
		otherSide body: nil ]
	ifNotNil: [ 
		self attributeAt: #lambda put: anObject.
		anObject body: self ]