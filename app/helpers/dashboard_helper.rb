module DashboardHelper

  def grafico_mensagens_atentidas
    pie_chart({
        "Mensagens atendidas" => Mensagem.atendidas.size,
        "Mensagens não atendidas" => Mensagem.nao_atendidas.size
      }, colors: [ 'green', 'red' ],
      library: { pieSliceText: 'value-and-percentage' }
    )
  end

  def grafico_mensagens_dia
    line_chart ([
        {
            'name' => 'Total de Mensagens',
            'data' => Mensagem.group_by_day(:created_at).count
        },
         {
            'name' => 'Mensagens Atendidas',
            'data' => Mensagem.atendidas.group_by_day(:created_at).count
        },
         {
            'name' => 'Mensagens Não Atendidas',
            'data' => Mensagem.nao_atendidas.group_by_day(:created_at).count
        }
    ]
    ) 
  end
end
