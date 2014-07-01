
/**
 * Compute average for COMP 102x
 * 
 * @author Lewis.jp@gmail.com 
 * @week2 
 * When attempting to compile it failed due to not recognizing IO
 */

import comp102x.IO; // Imported course set up (includes IO functionality)

public class CourseGrade
{
    public static void main(String[] args)
    {
        // declare variables, starting with set variables 
        
        // final sets a variable as a CONSTANT
        final int examWeight = 70;  // percentage weight given to exams
        final int labWeight = 20; // percentage weight given to labs
        final int hwWeight = 10;  // percentage weight given to hw
        
        double examScore;   // Student exam score
        double labScore;    // Student lab score
        double hwScore;     // Student hw score
        double finalGrade;  // Student final grade 
        
        // Ask student to input exam, lab and hw scores
        IO.output("Enter your exam grade: ");
        examScore = IO.inputDouble();

        IO.output("Enter your lab grade: ");
        labScore = IO.inputDouble();
        
        IO.output("Enter your homework grade: ");
        hwScore = IO.inputDouble();
        
        // Computer final grade as the weighted sum of exam, lab, and hw scores
        examScore = examScore * (examWeight / 100.0); // We use 100.0 so the result will be a double
        labScore = labScore * (labWeight / 100.0); // (int / 100) = int, instead of a precentage (double)
        hwScore = hwScore * (hwWeight / 100.0);
        finalGrade = examScore + labScore + hwScore;
        
        // Output the final grade
        IO.outputln("Your final grade is " + finalGrade);
    }
}