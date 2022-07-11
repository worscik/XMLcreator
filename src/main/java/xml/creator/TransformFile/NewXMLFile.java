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

    //@TODO ZMIENIC NA FINAL
    File filePath = new File("/home/admin_benhauer/IdeaProjects/XMLcreator-main/src/main/resources/static/transformata.xsl");
    private String tempFile  = "/home/admin_benhauer/IdeaProjects/XMLcreator-main/src/main/resources/static/";
    File fileToRemove = new File(tempFile);



    public File copyFile() throws IOException {
        File ewq = File.createTempFile("TempXslFile",".xsl", new File(tempFile));
        Files.copy(Paths.get(String.valueOf(filePath)), Paths.get(String.valueOf(ewq)), StandardCopyOption.REPLACE_EXISTING);
        return ewq;
        }
    public String XmlFile(XmlFields xml) throws IOException {
        File file = copyFile();
        Scanner sc = new Scanner(file.getAbsoluteFile());
        StringBuffer buffer = new StringBuffer();
        while (sc.hasNextLine()) {
            buffer.append(sc.nextLine()+System.lineSeparator());
        }
        String fileContents = buffer.toString();
        sc.close();
        fileContents = fileContents.replace("g:id", xml.getId());
        fileContents = fileContents.replace("g:title", xml.getName());
        FileWriter writer = new FileWriter(file);
        writer.append(fileContents);
        writer.flush();
        System.out.println(file.isFile());
        file.delete();
        return fileContents;
    }
    }
