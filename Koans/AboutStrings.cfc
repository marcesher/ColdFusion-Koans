component extends="mxunit.framework.TestCase"{

	public void function testAddingStringAndNumber(){
		//string concatanation in ColdFusion is done with the & sign
		var myVar = 1 & "Hello";
		assertEquals(myVar,"__");
	}	

	public void function testRemovingWhiteSpace(){
		var myVar = "  hello world!  ";

		assertEquals(trim(myVar),"__");
	}

	public void function testSearchingString(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(findNoCase("ANY",myVar),"__");
	}

	public void function testSearchingString2(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(findNoCase("ANY",myVar,26),"__");
	}

	public void function testSearchingString3(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(find("ANY",myVar,26),"__");
	}

	public void function testStringReplace(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(replace(myVar,"any","pound"),"__");
	}

	public void function testStringReplace2(){
		var myVar = "To start press any key.  Wheres the any key?";

		//Did that last test get you?  To replace all occurances you need to pass another argument to find
		assertEquals(replace(myVar,"any","pound","all"),"__");
	}
}