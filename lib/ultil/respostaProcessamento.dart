class RespostaProcessamento {
  final bool processamentoOK;
  final String mensagemDeErro;

  RespostaProcessamento({required this.processamentoOK, required this.mensagemDeErro});

  RespostaProcessamento.ok()
      : this(
    processamentoOK: true,
    mensagemDeErro: "",
  );

  RespostaProcessamento.erro(String mensagemDeErro)
      : this(
    processamentoOK: false,
    mensagemDeErro: mensagemDeErro,
  );
}