//static���Ե��ڴ����
/*�������class variables���ùؼ��� static ���Σ�������ص�ʱ�򣬷������
�����ڴ棬�Ժ����������ʵ������ʱ������������ڴ棨����������κ�һ����������
�����޸ģ�����Ӱ�����������ⲿ�����ַ��ʷ�ʽ��ͨ�����������ʻ�ͨ�����������ʡ�*/
public class StaticPrac {
	static UserModel um = new UserModel();
	
	public static void main(String[] args) {
		StaticPrac t1 = new StaticPrac();
		t1.um.userName = "����";
		StaticPrac t2 = new StaticPrac();
		t2.um.userName = "����";
		
		System.out.println(t1.um.userName);
		System.out.println(t2.um.userName);
	}

}

class UserModel {
	public String userName = "";
}

