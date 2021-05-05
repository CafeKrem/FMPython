*FastPython-accessing
itemDict: anObject

	<generated>
	(self attributeAt: #itemDict ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self itemDict.
		self attributeAt: #itemDict put: anObject.
		otherSide key: nil ]
	ifNotNil: [ 
		self attributeAt: #itemDict put: anObject.
		anObject key: self ]