/**
 * Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
 * www.ortussolutions.com
 * ---
 */
component {

	// Module Properties
	this.title 				= "@MODULE_NAME@";
	this.author 			= "Ortus Solutions";
	this.webURL 			= "https://www.ortussolutions.com";
	this.description 		= "@MODULE_DESCRIPTION@";
	this.version 			= "@build.version@+@build.number@";

	// Model Namespace
	this.modelNamespace		= "@MODULE_SLUG@";

	// CF Mapping
	this.cfmapping			= "@MODULE_SLUG@";

	// Dependencies
	this.dependencies 		= [];

	/**
	 * Configure Module
	 */
	function configure(){
		settings = {

		};
	}

	/**
	 * Fired when the module is registered and activated.
	 */
	function onLoad(){

	}

	/**
	 * Fired when the module is unregistered and unloaded
	 */
	function onUnload(){

	}

}
