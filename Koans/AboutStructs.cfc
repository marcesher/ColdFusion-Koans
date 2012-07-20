component extends="mxunit.framework.TestCase"{
	
	public void function testCheckingIfAStructKeyExists(){
		var myStruct = {foo = "Foo"};

		//what is the key value that will make this test pass
		assertTrue(structKeyExists(myStruct,"__"));
	}

	public void function testAddingAStructKey(){
		var myStruct = {foo = "Foo"};

		//add the correct key and value to the mystruct to make the test pass
		assertEquals(myStruct.bar,"Bar");
	}

	public void function testGettingStructKey(){
		var myStruct = {bar = "Bar"};

		//there are two ways to access a structure's data:
		// 1) structureName.key
		// 2) structureName["key"] - this way is useful if you have dynamic keys or spaces in keys

		assertEquals("__","Bar");
		//access the sturcture key in another way
		assertEquals("__","Bar");
	}

	public void function testCopyByReference() {
		var myStruct = {foo = {bar = "Bar", num = 1}, fb = "FB"};

		// Basic copy
		var myStructCopy = myStruct;
		myStructCopy.fb = "yellow";

		assertEquals(myStruct.fb, "__");
	}

	public void function testCopyByStructCopy() {
		var myStruct = {foo = {bar = "Bar", num = 1}, fb = "FB"};

		// Use structCopy
		var myStructCopy = structCopy(myStruct);
		myStructCopy.fb = "yellow";
		myStructCopy.foo.bar = "green";

		assertEquals(myStruct.fb, "__");
		assertEquals(myStruct.foo.bar, "__");
	}

	public void function testCopyByDuplicate() {
		var myStruct = {foo = {bar = "Bar", num = 1}, fb = "FB"};

		// Use duplicate here
		var myStructCopy = duplicate(myStruct);

		myStructCopy.fb = "yellow";
		myStructCopy.foo.bar = "green";

		// Notice how each way to copy the struct affects nested structs
		assertEquals(myStruct.fb, "__");
		assertEquals(myStruct.foo.bar, "__");
	}

}