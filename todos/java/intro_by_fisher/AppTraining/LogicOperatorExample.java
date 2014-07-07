/**
 * @author Lewis
 * @version 1.0
 * 
 * LAB in PROGRESS 7.17
 */

public class LogicOperatorExample
{
    public static void main (String args[])
    {
        //variables
        char grade;
        boolean withHonors;
        boolean parentAppt;
     
        if (score >= 0 && score <= 60) 
            grade = 'F';    
        if (grade == 'A' && score >= 95)
            withHonors = true;
        if (!passing || withHonors == true)
            parentAppt = ture;
            
        // Not inner parentheses necessary
        if (grade == 'D' && (daysAbsent > 5 || lastGrade == 'D' || lastGrade == 'F'))
            parentAppt = true;
            
         
    }
}