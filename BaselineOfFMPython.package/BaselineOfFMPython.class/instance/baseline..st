baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec
			package: 'FMPython';
			package: 'PythonToPharoTranscompiler'.
		spec
			baseline: 'PythonParser'
			with: [ spec repository: 'github//SmaCCRefactoring/SmaCC/.' ] ]