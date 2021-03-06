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
				baseline: 'FAST'
				with:
					[ spec repository: 'github://moosetechnology/FAST:master/src' ] ]