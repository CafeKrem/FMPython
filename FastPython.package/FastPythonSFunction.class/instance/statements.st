accessing
statements
	"Relation named: #statements type: #FASTStatement opposite: #sFunction"

	<generated>
	<derived>
	<FMProperty: #statements type: #FASTStatement opposite: #sFunction>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #sFunction: ]