"
sourceModel := XMLDOMParser parseFileNamed: 'D:\Developpement\xaml\GestionEtablissement_ActiviteUserControl.xaml'.
silverlightModel := MooseModel new.
CSNSilverlightImporter new sourceModel: sourceModel; createModelIn: silverlightModel.
silverlightModel name: 'silverlight'.
silverlightModel.

CSNGlobalView new openViewForModel: silverlightModel
"
Class {
	#name : #ManifestCSNSilverlight,
	#superclass : #PackageManifest,
	#category : #'Casino-Silverlight-Importer'
}
