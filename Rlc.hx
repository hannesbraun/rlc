import js.html.Window;
import js.Browser.document;
import js.html.URLSearchParams;
import js.Browser.window;

class Rlc {
	public static function main():Void {
		final urlParams = new URLSearchParams(window.location.search);
		var num = 1;
		if (urlParams.has("num")) {
			final parsed = Std.parseInt(urlParams.get("num"));
			if (parsed != null) {
				num = parsed;
			}
		}

		final elem = document.getElementById("champion");
		elem.innerText = Champions.getRandomChampions(num).join("\n");
	}
}
