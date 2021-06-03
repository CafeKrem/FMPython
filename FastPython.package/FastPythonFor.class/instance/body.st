accessing
body
	"Relation named: #body type: #FASTTStatement opposite: #parentForBody"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTTStatement opposite: #parentForBody>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentForBody: ]