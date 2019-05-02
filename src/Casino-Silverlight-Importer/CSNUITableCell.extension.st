Extension { #name : #CSNUITableCell }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUITableCell class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'DataGridTemplateColumn'
]
