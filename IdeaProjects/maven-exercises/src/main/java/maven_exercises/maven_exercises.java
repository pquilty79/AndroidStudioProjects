package maven_exercises;

import static org.apache.commons.lang3.StringUtils.*;
import util.input;

public class maven_exercises {
    public static void main(String[] args) {
        util.input input = new util.input();
        System.out.println("Enter a String:\n");
        String answer = util.input.getString();
        if(isNumeric(answer)) {
            System.out.println("This is a number.\n");
        } else {
            System.out.println("This is not a number.\n");
            System.out.println(reverse(swapCase(answer)));
        }


    }
}
