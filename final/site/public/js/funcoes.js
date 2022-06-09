// sessão
function validarSessao() {
    // aguardar();
    
    var email = sessionStorage.EMAIL_USUARIO;
    var nome = sessionStorage.NOME_USUARIO;
    var filme = sessionStorage.FILME_USUARIO;
    var personagem = sessionStorage.PERSONAGEM_USUARIO;
    var emailUsuario = document.getElementById("emailUsuario");
    var nomeFilme = document.getElementById("nomeFilme");
    if (email != null && nome != null) {
        // window.alert(`Seja bem-vindo, ${nome}!`);
        if (emailUsuario != undefined) {
            emailUsuario.innerHTML = email;
        }
        nomeUsuario.innerHTML = nome;
        nomeFilme.innerHTML = filme;
        nomePersonagem.innerHTML = personagem;
        // finalizarAguardar();
    } else {
        window.location = "../login.html";
    }
}

function limparSessao() {
    // aguardar();
    sessionStorage.clear();
    // finalizarAguardar();
    window.location = "../login.html";
}

// carregamento (loading)
function aguardar() {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "flex";
}

function finalizarAguardar(texto) {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "none";

    var divErrosLogin = document.getElementById("div_erros_login");
    if (texto) {
        divErrosLogin.innerHTML = texto;
    }
}


// modal
function mostrarModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "flex";
}

function fecharModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "none";
}

