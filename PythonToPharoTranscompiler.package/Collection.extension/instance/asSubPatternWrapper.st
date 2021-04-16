*PythonToPharoTranscompiler
asSubPatternWrapper
	^ self collect: [ :each | each asSubPatternWrapper ]