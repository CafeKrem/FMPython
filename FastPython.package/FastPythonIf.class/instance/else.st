accessing
else
	"Relation named: #else type: #FASTTStatement opposite: #parentElse"

	<generated>
	<derived>
	<FMProperty: #else type: #FASTTStatement opposite: #parentElse>
	^ self attributeAt: #else ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentElse: ]