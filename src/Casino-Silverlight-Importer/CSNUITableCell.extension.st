Extension { #name : #CSNUITableCell }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUITableCell class >> silverCanHandle: anElement [
	^ false
	"^ anElement name endsWith: 'DataGridTemplateColumn'"
]
