obterdados();
obterdadosdaKPI();
MostrarKPI();
// function atualizacaoPeriodica() {
//     obterdados(1);
//     obterdados(2);
//     obterdados(3);
//     obterdados(4);

//     function sendData() {
//         var http = new XMLHttpRequest();
//         http.open('POST', 'http://localhost:3000/api/sendData', false);
//         http.send(null);
//     }

//     setInterval(() => {
//         sendData();
//     }, 2000);
//     setTimeout(atualizacaoPeriodica, 5000);
// }

var totalfilme = 0;
function obterdados(idUsuario) {
    fetch(`/medidas/tempo-real/${idUsuario}`)
        .then(resposta => {
            console.log('teste')
            if (resposta.ok) {
                resposta.json().then(resposta => {

                    console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);

                    // var dados = {
                    //     temperatura: resposta[0].temperatura,
                    // }

                    totalfilme = resposta[0].temperatura;
                    mostrarKPI();
                });
            } else {

                console.error('Nenhum dado encontrado ou erro na API');
            }
        })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados do aquario p/ gráfico: ${error.message}`);
        });

}
var mostrar = 0;
var mostrarfilme = 0;
function obterdadosdaKPI(idUsuario) {
    fetch(`/medidas/dados-KPI/${idUsuario}`)
        .then(resposta => {
            
            if (resposta.ok) {
                resposta.json().then(resposta => {

                    console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);
                    console.log("retorna assim"+JSON.stringify(resposta));
                    mostrar = resposta[0].top1;
                    mostrarfilme = resposta[0].nomeFilme;
                    console.log(mostrar);

    
                    MostrarKPI();

                    
                });
            } else {

                console.error('Nenhum dado encontrado ou erro na API');
            }
        })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados do aquario p/ gráfico: ${error.message}`);
        });
        // proximaAtualizacao = setTimeout(() => obterdadosdaKPI(idUsuario), 2000);
}

function MostrarKPI() {
    var limites = {
        muito_quente: 23,
        quente: 22,
        ideal: 20,
        frio: 10,
        muito_frio: 5
    };

    total_votos.innerHTML = totalfilme;
    primeiro_lugar.innerHTML = mostrar;
    nome_filme.innerHTML = mostrarfilme;
    var card;
    

    // if (idUsuario == 1) {
       
    //     card = card_1
    // } else if (idUsuario == 2) {
    //     temp_aquario_2.innerHTML = voto + "°C";
    //     card = card_2
    // } else if (idUsuario == 3) {
    //     temp_aquario_3.innerHTML = voto + "°C";
    //     card = card_3
    // } else if (idUsuario == 4) {
    //     temp_aquario_4.innerHTML = voto + "°C";
    //     card = card_4
    // }

    // alterando
    // card.className = classe_temperatura;

}
