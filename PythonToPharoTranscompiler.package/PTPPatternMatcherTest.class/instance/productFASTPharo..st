tests
productFASTPharo: aCompiledMethod
	^ (FASTSmalltalkImporterVisitor new
		runWithSource: aCompiledMethod sourceCode) statements
		asOrderedCollection sorted: [ :a :b | a startPos < b startPos ]