var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.get("/dadosGrafico/:id", function (req, res) {
    usuarioController.dadosGrafico(req, res)
})

router.get("/realizarDoacao/:idUsuario/:idCausa/:valor", function (req, res) {
    usuarioController.realizarDoacao(req, res);
})

router.get('/totalArrecadado', function (req, res) {
    usuarioController.totalPorCausa(req, res)
})

module.exports = router;