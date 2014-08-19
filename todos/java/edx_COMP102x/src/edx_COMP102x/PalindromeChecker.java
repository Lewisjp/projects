package edx_COMP102x;

public class PalindromeChecker {

	public static String reverseString(String inputStr){
		  
        String revStr= "";
	
        for(int i=0; i < inputStr.length( ); i++) {
                revStr= inputStr.charAt(i) + revStr;
        }

        return revStr;
	}

	public static boolean isPalindrome(String str) {

		boolean result = false; 
		
		String reverseVersion = reverseString( str.toLowerCase() );

		return str.toLowerCase().equals(reverseVersion);
		
		
	}
	
	public static void main (String[] args){
		System.out.println(isPalindrome("Bella"));
		System.out.println(isPalindrome("Hannah"));
	}
}


