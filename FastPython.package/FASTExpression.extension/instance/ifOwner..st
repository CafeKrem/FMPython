*FastPython-accessing
ifOwner: anObject

	<generated>
	(self attributeAt: #ifOwner ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self ifOwner.
		self attributeAt: #ifOwner put: anObject.
		otherSide cond: nil ]
	ifNotNil: [ 
		self attributeAt: #ifOwner put: anObject.
		anObject cond: self ]