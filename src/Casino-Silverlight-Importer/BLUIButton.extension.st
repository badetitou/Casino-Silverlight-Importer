Extension { #name : #BLUIButton }

{ #category : #'*Casino-Silverlight-Importer' }
BLUIButton class >> silverCanHandle: anElement [
	^ 'Button' = anElement name
]
