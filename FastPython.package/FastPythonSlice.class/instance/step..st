accessing
step: anObject

	<generated>
	(self attributeAt: #step ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self step.
		self attributeAt: #step put: anObject.
		otherSide slice: nil ]
	ifNotNil: [ 
		self attributeAt: #step put: anObject.
		anObject slice: self ]