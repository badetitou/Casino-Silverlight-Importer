Extension { #name : #CSNUITable }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUITable class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'DataGrid'
]
