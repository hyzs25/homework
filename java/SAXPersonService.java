
import java.io.InputStream;  
import java.util.ArrayList;  
import java.util.List;  
  
import javax.xml.parsers.SAXParser;  
import javax.xml.parsers.SAXParserFactory;  
  
import org.xml.sax.Attributes;  
import org.xml.sax.SAXException;  
import org.xml.sax.helpers.DefaultHandler;  
  
import cn.itcast.model.Person;  
  
public class SAXPersonService {  
   public List<Person> getPersons(InputStream inStream) throws Throwable  
   {  
       SAXParserFactory factory = SAXParserFactory.newInstance();//工厂模式还是单例模式？  
       SAXParser parser =factory.newSAXParser();  
       PersonParse personParser =new PersonParse();  
       parser.parse(inStream, personParser);  
       inStream.close();  
       return personParser.getPerson();  
   }  
   private final class PersonParse extends DefaultHandler  
   {  
     
      
    private List<Person> list = null;  
    Person person =null;  
    private String tag=null;  
      
    public List<Person> getPerson() {  
        return list;  
    }  
    @Override  
    public void startDocument() throws SAXException {  
        list =new ArrayList<Person>();  
    }  
  
    @Override  
    public void startElement(String uri, String localName, String qName,  
            Attributes attributes) throws SAXException {  
        if("person".equals(localName))  
        {  
            //xml元素节点开始时触发，是“person”  
            person = new Person();  
            person.setId(new Integer(attributes.getValue(0)));  
        }  
        tag =localName;//保存元素节点名称  
    }  
    @Override  
    public void endElement(String uri, String localName, String qName)  
            throws SAXException {  
        //元素节点结束时触发，是“person”  
        if("person".equals(localName))  
        {  
            list.add(person);  
            person=null;  
        }  
        tag =null;//结束时，需要清空tag  
        }  
    @Override  
    public void characters(char[] ch, int start, int length)  
            throws SAXException {  
        if(tag!=null)  
        {  
            String data = new String(ch,start,length);  
           if("name".equals(tag))  
           {  
               person.setName(data);  
                 
           }else if("age".equals(tag))  
           {  
               person.setAge(new Integer(data));  
           }  
        }  
    }  
  
      
  
      
         
         
   }  
}  