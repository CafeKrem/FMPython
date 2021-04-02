accessing
statements
	"Relation named: #statements type: #FASTStatement opposite: #sModule"

	<generated>
	<derived>
	<FMProperty: #statements type: #FASTStatement opposite: #sModule>
	<package: #'Fmpython'>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #sModule: ]