import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
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
		Random r = new Random();
        Boolean[][] alreadyMoved = new Boolean[goals.length][goals[0].length];
        
        
        for (int rowNum=0; rowNum<goals.length; rowNum++) {
            for (int colNum=0; colNum<goals[rowNum].length; colNum++) {
                if (goals[rowNum][colNum].getType() == Goal.MOVABLE){
                    int newRow = r.nextInt(2) - 1 + rowNum; //pick a random num between -1 and 1.
                    int newCol = r.nextInt(2) - 1 + colNum;
                    
                    if(newRow >= 0 && newRow < goals.length && newCol >=0 && newCol < goals[rowNum].length && goals[newRow][newCol].isHit() && goals[newRow][newCol].getType()==Goal.MOVABLE)
                    	if(!alreadyMoved[newRow][newCol])
                    	{
                    		alreadyMoved[newRow][newCol] = true;
                    		Goal goalHolder = goals[newRow][newCol];
                    		goals[newRow][newCol] = goals[rowNum][colNum];
                    		goals[rowNum][colNum] = goalHolder;
                    	}
                    
                }
            }
        }
		
	}


/**
If there are no previous game play records, return a new GameRecord array of size 1 containing the current record.

If the player's name doesn't exist in the previous records and there are less than 10 previous records, return a new GameRecord array containing all the 
previous records and the new record.

If the player's name doesn't exist in the previous records and there are 10 previous records, return a new GameRecord array containing the best 10 records. 
A record is better than the other one if it has a higher score, or the two records have the same score, but it has a higher level. 

If the player's name exists in the previous records and the current record is better than the previous record, return a new GameRecord array 
containing all the previous records, but with the score and level of the player updated to those of the current game play.

If the player's name exists in the previous records and the current record is the same or is worse than the previous record, return a 
new GameRecord array containing all the previous records.

In all of the cases listed above, the records in the returned GameRecord array should be sorted first by score, and then by level in descending order.
     */
    public GameRecord[] updateHighScoreRecords(GameRecord[] highScoreRecords, String name, int level, int score) {
        // write your code after this line
        if(highScoreRecords == null || highScoreRecords.length == 0 ){
            GameRecord[] records = new GameRecord[1];
            records[0] = new GameRecord(name, level, score);
            return records;
        }
        //Highscore table is full, intelligently add the record
        else{
	        int worstScoreIndex = 0;
	        boolean done = false;
	        for(int i = 0; i < highScoreRecords.length; i++){
	        	GameRecord record = highScoreRecords[i];
	        	//You found the player's previous record
	        	if( record.getName().equals(name)){
	        		done = true;
	        		//Only updated the record if the new score/level was better
	        		if(record.getScore() < score || (record.getScore() == score && record.getLevel() < level)){	
	        			record.setScore(score);
	        			record.setLevel(level);
	        		}
	        		
	        		break;
	        	}
	        	//Keep track of the worst record in case the new one is better and you have to replace it
	        	else if(record.getScore() < highScoreRecords[worstScoreIndex].getScore() 
	        			|| (record.getScore() == highScoreRecords[worstScoreIndex].getScore() && record.getLevel() < highScoreRecords[i].getLevel()))
	        		worstScoreIndex = i;
	        	
	        }	
	        if(!done && highScoreRecords.length < 10){
	        //If there are < 10 records,  the last spot should be empty. Use it.
	        	GameRecord[] newHighScores = new GameRecord[highScoreRecords.length + 1];
	        	
	        	for(int i = 0; i < highScoreRecords.length; i++)
	        		newHighScores[i] = highScoreRecords[i];
	        	
	        	newHighScores[newHighScores.length-1] = new GameRecord(name, level, score);
                highScoreRecords = newHighScores;
                done = true;
            }
            //You didn't already update the highscore.  See if the current score/level > the worst score
	        if(!done && highScoreRecords[worstScoreIndex].getScore() < score)
	        	highScoreRecords[worstScoreIndex] = new GameRecord(name, level, score);  	
        }
        
        //You have the final list, so now sort.
        Arrays.sort(highScoreRecords, new StudentRecordComparator());
        return highScoreRecords;
        	
     }
        
        
        
    }

    class StudentRecordComparator implements Comparator<GameRecord>{

    	/**
    	 * Helper to help sort by score then by level
    	 */
		@Override
		public int compare(GameRecord record1, GameRecord record2) {
			if(record1.getScore() == record2.getScore())
				if(record1.getLevel() < record2.getLevel())
					return 1;
				else if( record1.getLevel() == record2.getLevel())
					return 0;
				else
					return -1;
			else if( record1.getScore() < record2.getScore())
				return 1;
			else
				return -1;
		}
    	
    }
	


