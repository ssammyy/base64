package com.example.demomain;




import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class fileWriter {
    public static void getValues(String rawData, String decoded){
        File dir = new File("C:\\Users\\sboniface\\Documents\\csv\\MyFile.txt");

        try {
            FileWriter writer = new FileWriter(dir, true);
            writer.write("raw data :: "+rawData+"\n");
            writer.write("encoded data :: "+decoded);   // write new line

            writer.close();
            System.out.println("printed successfully");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
