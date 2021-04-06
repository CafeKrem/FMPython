*FastPython-accessing
yieldFrom: anObject

	<generated>
	(self attributeAt: #yieldFrom ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self yieldFrom.
		self attributeAt: #yieldFrom put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #yieldFrom put: anObject.
		anObject expression: self ]