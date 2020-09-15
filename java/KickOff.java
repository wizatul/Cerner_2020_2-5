// Program 1 for cerner_2^5_2020
// Java with Thread Safe Singleton
public class KickOff {
	// cerner_2^5_2020
	private static volatile KickOff instance;
	private static Object mutex = new Object();
	// Java is Awesome - IDK "Y, People says this" :)
	private KickOff() {
    }
    //lets start with something easy
	public static KickOff getInstance() {
		KickOff result = instance;
		if (result == null) {
			//Thread Safe
			synchronized (mutex) {
				result = instance;
				if (result == null)
					instance = result = new KickOff();
			}
		}
		return result;
	}
}