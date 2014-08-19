import java.util.Random;

import comp102x.ColorImage;
import comp102x.assignment.GameLogic;
import comp102x.assignment.GameRecord;
import comp102x.assignment.Goal;

public class StudentLogic implements GameLogic{
    
    
    public ColorImage generateIntermediateFootballImage(ColorImage[] depthImages, int initialStep, int currentStep, 
    int finalStep, double initialScale, double finalScale, int initialX, int finalX, int initialY, int finalY) {
        // write your code after this line
        
        int imageIndex = (depthImages.length - 1) * ( (currentStep-initialStep)/(finalStep-initialStep);
        int xPosition = initialX + (finalX - initialX) * ( (currentStep - initialStep)/(finalStep - initialStep));
        int yPosition = initialY + (finalY - initialY) * ( (currentStep - initialStep)/(finalStep - initialStep));
        double scale = initialScale + (finalScale - initialScale) * ( (currentStep - initialStep)/(finalStep - initialStep));
        
        ColorImage image = depthImages[imageIndex];
        
        image.setX(xPosition);
        image.setY(yPosition);
        image.setScale(scale);
        
        return image;

    }


    public void updateGoalPositions(Goal[][] goals) {
        // write your code after this line

        int startPosX = (thisPosX - 1 < MIN_X) ? thisPosX : thisPosX-1;        
        int startPosY = (thisPosY - 1 < MIN_Y) ? thisPosY : thisPosY-1;
        int endPosX =   (thisPosX + 1 > MAX_X) ? thisPosX : thisPosX+1;
        int endPosY =   (thisPosY + 1 > MAX_Y) ? thisPosY : thisPosY+1;
        
        Array Array[]
        
        if (goals == Goal.MOVABLE){
            for (int rowNum=startPosX; rowNum<=endPosX; rowNum++) {
                for (int colNum=startPosY; colNum<=endPosY; colNum++) {
                    
                }
            }
        }

        
               
               
Goals that are movble should be moved to an adjacent position (horizontally, vertically and diagonally) by some chance, 
GIVEN THAT the goal in the adjacent position has been hit. You can move a goal to an adjacent position by swapping it with
 the other goal in the adjacent position in the 2D array.
If there are multiple adjacent positions available, moving to either one is acceptable.


Each goal should be moved ONCE only for each call of this method. For example, if a goal has moved from position 1 
to position 2, it should not be moved back to position 1 in the same call of this method.
              }
             
            
          }     
        
        
    }

    
    public GameRecord[] updateHighScoreRecords(GameRecord[] highScoreRecords, String name, int level, int score) {
        // write your code after this line
        
        
        
        
        
    }
    
    
}
