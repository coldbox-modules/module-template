component extends="coldbox.system.testing.BaseTestCase" appMapping="root" {

	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		super.beforeAll();
		setup();
	}

	function afterAll(){
		super.afterAll();
	}

	/*********************************** BDD SUITES ***********************************/

	function run(){
		describe( "MockData CFC", function(){
			beforeEach( function( currentSpec ){
			} );

		} );
	}

}
