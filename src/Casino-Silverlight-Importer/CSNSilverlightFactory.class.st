Class {
	#name : #CSNSilverlightFactory,
	#superclass : #BLWidgetFactory,
	#category : #'Casino-Silverlight-Importer'
}

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createAttributeFromNode: anElement [
	^ self model
		silentlyAdd: (BLAttribute new name: anElement name)
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createAttributesFor: widget from: anElement [
	anElement
		attributeNodesDo: [ :attribute | 
			self model
				silentlyAdd:
					
							(BLAttribute new
								name: attribute name;
								attributeValue: attribute value;
								widget: widget;
								yourself) ]
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createPageFrom: aDocumentXML [
	^ self model silentlyAdd: (BLPage new name: (aDocumentXML nodes anyOne attributeNodeAt: 'x:Class') value; yourself)
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createWidgetFrom: anElement [
	^ self model
		silentlyAdd:
			(BLWidget silverCreateWidgetFrom: anElement)
]
