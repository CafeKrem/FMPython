*PythonToPharoTranscompiler
asMatcher
	^ self = $*
		ifTrue: [ EllipsisMatcher new ]
		ifFalse: [ self halt ]