/* Botões Login e cadastro*/
function cadastroTela() {
    window.location.href = "cadastro.html";
}

function loginTela() {
    window.location.href = "login.html";
}

function SairLogin() {
    sessionStorage.clear();
    window.location.href = "../index.html";
}
