baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Fmpython';
				package: 'PythonToPharoTranscompiler';
				package: 'FamixPython';
				package: 'FastPython'.
			spec
				baseline: 'PythonParser'
				with: [ spec repository: 'github://SmaCCRefactoring/SmaCC' ].
			spec
				baseline: 'FASTPharo'
				with:
					[ spec repository: 'github://moosetechnology/FAST-Pharo/src' ] ]