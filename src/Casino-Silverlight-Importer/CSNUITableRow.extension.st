Extension { #name : #CSNUITableRow }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUITableRow class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'DataGrid.Columns'
]
