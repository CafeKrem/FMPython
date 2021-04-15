*PythonToPharoTranscompiler
asMatcher
	^ PTPMatcherSaveValue new
		key: self key;
		value: self value asMatcher;
		yourself