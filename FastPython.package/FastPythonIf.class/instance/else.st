accessing
else
	"Relation named: #else type: #FASTStatement opposite: #parentElse"

	<generated>
	<derived>
	<FMProperty: #else type: #FASTStatement opposite: #parentElse>
	^ self attributeAt: #else ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentElse: ]