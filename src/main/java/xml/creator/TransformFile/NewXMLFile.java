package xml.creator.TransformFile;

import org.springframework.stereotype.Controller;
import xml.creator.MainController.XmlFields;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Scanner;

@Controller
public class NewXMLFile {

    File filePath = new File("C:\\\\Users\\\\Mati\\\\IdeaProjects\\\\creator\\\\src\\\\main\\\\resources\\\\static\\\\transformata.xsl");
    private String tempFile  = "C:\\Users\\Mati\\IdeaProjects\\creator\\src\\main\\resources\\static\\";

    File fileToRemove = new File(tempFile);



    public String copyFile() throws IOException {
        tempFile  = "C:\\Users\\Mati\\IdeaProjects\\creator\\src\\main\\resources\\static\\";
        File ewq = File.createTempFile("TempXslFile",".xsl", new File(tempFile));
        ewq.deleteOnExit();
        Files.copy(Paths.get(String.valueOf(filePath)), Paths.get(String.valueOf(ewq)), StandardCopyOption.REPLACE_EXISTING);
        tempFile += ewq.getName();
        System.out.println(tempFile);
        return tempFile;
        }

    public void removefile() throws IOException {
        System.out.println("do sunięcia " + fileToRemove.getPath());
    }

    public String XmlFile(XmlFields xml) throws IOException {
        Scanner sc = new Scanner(new File(tempFile));
        StringBuffer buffer = new StringBuffer();
        while (sc.hasNextLine()) {
            buffer.append(sc.nextLine()+System.lineSeparator());
        }
        String fileContents = buffer.toString();
        sc.close();
        fileContents = fileContents.replace("g:id", xml.getId());
        fileContents = fileContents.replace("g:title", xml.getName());
        FileWriter writer = new FileWriter(tempFile);
        writer.append(fileContents);
        writer.flush();

        return fileContents;
    }
    }
