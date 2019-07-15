Extension { #name : #CSNUISelect }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUISelect class >> silverCanHandle: anElement [
		
	^ #('ComboBoxIntellisenseCustomControl' 'SelectionBoxCustomControl' 'ComboBox') anySatisfy: [ :each | anElement name endsWith: each ].
]
