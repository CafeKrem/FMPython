*PythonToPharoTranscompiler
asMatcher
	^ PTPMatcherSequence new
		collection: (self collect: [ :each | each asMatcher ]);
		yourself