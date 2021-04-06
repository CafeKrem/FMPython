*FastPython-accessing
statements
	"Relation named: #statements type: #FASTStatement opposite: #sClass"

	<generated>
	<derived>
	<FMProperty: #statements type: #FASTStatement opposite: #sClass>
	<package: #'FastPython'>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #sClass: ]