module DashboardHelper

  def grafico_mensagens_atentidas
    pie_chart({
        "Mensagens atendidas" => Mensagem.atendidas.size,
        "Mensagens não atendidas" => Mensagem.nao_atendidas.size
      }, colors: [ 'green', 'red' ],
      library: { pieSliceText: 'value-and-percentage' }
    )
  end

end
