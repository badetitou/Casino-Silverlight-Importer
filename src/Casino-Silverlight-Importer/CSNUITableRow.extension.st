Extension { #name : #CSNUITableRow }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUITableRow class >> silverCanHandle: anElement [
	^ false
	"^ anElement name endsWith: 'DataGrid.Columns'"
]
