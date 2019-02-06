Extension { #name : #CSNUIButton }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIButton class >> silverCanHandle: anElement [
	^ 'Button' = anElement name
]
