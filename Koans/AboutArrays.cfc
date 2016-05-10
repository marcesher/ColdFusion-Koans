component extends="mxunit.framework.TestCase"{

	public void function testGetingArrayLength(){
		var myArray = ["one","two","three"];

		assertEquals(arrayLen(myArray),3);
	}

	public void function testGettingArrayElement(){
		var myArray = ["one","two","three"];
		
		//arrays in coldfusion start with an index of one, not zero like a lot of languages
		assertEquals(myArray[1],"one");		
	}

	private String function returnString(String myArg){
		                  
	}

	public void function testAppendingArrayElements(){
		var myArray = ["one","two","three"];
		
		arrayAppend(myArray,"four");
		
		assertEquals(myArray[4],"four");
	}

	public void function testArrayTextSorting(){
		var myArray = ["pineapple","banana","grape","kiwi"];

		arraySort(myArray,"text");

		assertEquals(myArray[2],"grape");
	}

	public void function testArrayNumberSorting(){
		var myArray = [6,9,34,8,22];

		arraySort(myArray,"numeric");

		assertEquals(myArray[3],9);
	}
}