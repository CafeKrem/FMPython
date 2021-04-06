accessing
target: anObject

	<generated>
	(self attributeAt: #target ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self target.
		self attributeAt: #target put: anObject.
		otherSide parentTarget: nil ]
	ifNotNil: [ 
		self attributeAt: #target put: anObject.
		anObject parentTarget: self ]