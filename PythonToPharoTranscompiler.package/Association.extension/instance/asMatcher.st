*PythonToPharoTranscompiler
asMatcher
	^ self value asMatcher
		savedSelector: self key;
		"^ PTPMatcherSaveValue new
		key: self key;
		value: self value asMatcher;
		yourself"
			yourself