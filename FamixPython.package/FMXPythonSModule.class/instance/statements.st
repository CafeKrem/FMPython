accessing
statements
	"Relation named: #statements type: #FASTStatement opposite: #sModule"

	<generated>
	<derived>
	<FMProperty: #statements type: #FASTStatement opposite: #sModule>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #sModule: ]