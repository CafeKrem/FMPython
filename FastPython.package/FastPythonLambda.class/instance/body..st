accessing
body: anObject

	<generated>
	(self attributeAt: #body ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self body.
		self attributeAt: #body put: anObject.
		otherSide lambda: nil ]
	ifNotNil: [ 
		self attributeAt: #body put: anObject.
		anObject lambda: self ]