import comp102x.IO;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class SearchRecordDemo
{   
    // for loading OCR libraries
    // private static Loader loader = new Loader();
    
    /**
     * Askes user for an input word and searches the word from a record.
     * Prints whether the word exist in the record or not.
     * 
     */
    public void searchWord() throws IOException
    {
        IO.output("Input a word: ");
        
        // Input from console
        String word = IO.inputString();
        
        // Input from image by performing Optical Character Recognition(OCR)
        /*
        String word = IO.inputTextImage();
        word = removeExtraSpace(word);
        IO.outputln(word);
        */
        
        boolean exist = searchFromRecord("record.txt", word);
         
        if (exist) {
            
            System.out.println("The word \"" + word + "\" is in the record.");
            
        } else {
            
            System.out.println("The word \"" + word + "\" is not in the record.");
            
        }
    }
    
    /**
     * Removes the extra spaces from a word.
     * 
     * @param word The String to be processed.
     */
    public String removeExtraSpace(String word)
    {
        return word.replaceAll("\\s+", " ").trim();
    }
    
    /**
     * Searches the record and returns if a specified word is in the record.
     * 
     * @param recordName The name of the record text file.
     * @param word The word to be searched.
     * @return true if the word presents in the record, false otherwise.
     */
    private boolean searchFromRecord(String recordName, String word) throws IOException
    {
        // Please write your code after this line
        File inputFile = new File(recordName); // takes in the file
        Scanner input = new Scanner(inputFile);  // helps read it
        
        for(int i= 0; input.hasNextLine();i++){
            if (input.nextLine().contains(word)) {
                return true;
            }
        }
       
        
        return false;
    }
}
