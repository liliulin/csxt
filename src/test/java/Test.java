import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			String  date = "2018-12-10 13:38:11" ;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			Date d1;
			try {
				d1 = sdf.parse(date);
				long ts1 = d1.getTime();
				System.out.println("ts1:"+ts1);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}

}
