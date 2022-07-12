package xml.creator.MainController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import xml.creator.AvailableMappings.AvailableMappings;
import xml.creator.TransformFile.NewXMLFile;

import java.io.IOException;

@Controller
public class XmlMap {

    NewXMLFile newXMLFile = new NewXMLFile();

//    @PostMapping
//    @ResponseBody
//    public String returnFinishFile(AvailableMappings mapping, XmlFields xmlFile) throws IOException {
//        if(mapping.getMapping().equals("rrs/channel/item")){
//            return xd(xmlFile);
//        }
//        return "test";
//    }

    @PostMapping
    @ResponseBody
    public String xd(@RequestBody XmlFields xml) throws IOException {
        String finishFile = newXMLFile.XmlFile(xml);;
        return  finishFile;
    }
}
