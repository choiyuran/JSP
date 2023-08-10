package youtube;

// MyUtil.converViewCount(dto.viewCount)
public class MyUtil {
	// 객체를 생성하지 않고 호출하려면 static 
	public static String convertViewCount(int viewCount) {
		String result = "";
		double db = 0;
		
		if(viewCount < 1000) {
			return String.valueOf(viewCount);
		}
		else if(1000 <= viewCount && viewCount < 10000) {
			result = String.format("%.1f", viewCount / 1000.0);
			if(result.charAt(result.length() - 1) == '0') {
				result = result.substring(0, result.length() - 2);
			}
			result = result + "천회";
		}
		else if(10000 <= viewCount && viewCount <= 100000000) {
			result = String.format("%.1f", viewCount / 10000.0);
			if(result.charAt(result.length() - 1) == '0') {
				result = result.substring(0, result.length() - 2);
			}
			result = result + "만회";
		}
		else {
			result = viewCount / 100000000 + "억 회";
		}
		return result;
	}
}
