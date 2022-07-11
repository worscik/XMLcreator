package xml.creator.MainController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import xml.creator.TransformFile.NewXMLFile;

import java.io.IOException;

@Controller
public class XmlMap {

    NewXMLFile newXMLFile = new NewXMLFile();



    public String cos(XmlFields xml) throws IOException {
            return newXMLFile.XmlFile(xml);
    }

    @PostMapping
    @ResponseBody
    public String xd(@RequestBody XmlFields xml) throws IOException {
        String a = cos(xml);
        return  a;
    }
}
