accessing
lower: anObject

	<generated>
	(self attributeAt: #lower ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self lower.
		self attributeAt: #lower put: anObject.
		otherSide slice: nil ]
	ifNotNil: [ 
		self attributeAt: #lower put: anObject.
		anObject slice: self ]