function pwCheck() {
	var pw1 = document.getElementById('inputPW').value;
	var pw2 = document.getElementById('confirmPW').value;
	if (pw1 != pw2) {
		document.getElementById('pwerror').innerHTML = "Die Passwörter stimmen nicht überein!"
		return false;
	}
}