# Zabbix

<div style="text-align: center;">
  <img src="https://github.com/Anne2023/Zabbix/assets/123522722/bbbe5ba5-d3e0-444a-a64e-0df6ed52b258" alt="Zabbix Logo" width="200px">
</div>

## O que é Zabbix?

O Zabbix é uma solução de monitoramento distribuído de código aberto de classe empresarial.

Zabbix é um software que monitora inúmeros parâmetros de uma rede e a saúde e integridade dos servidores. O Zabbix usa um mecanismo de notificação flexível que permite aos usuários configurar alertas baseados em e-mail para praticamente qualquer evento. Isso permite uma reação rápida aos problemas do servidor. O Zabbix oferece excelentes recursos de relatórios e visualização de dados com base nos dados armazenados. Isso torna o Zabbix ideal para planejamento de capacidade.

Para obter mais informações e downloads relacionados para componentes do Zabbix, visite https://hub.docker.com/u/zabbix/ e https://zabbix.com

## O que é o agente Zabbix?
O agente Zabbix é implantado em um alvo de monitoramento para monitorar ativamente recursos e aplicativos locais (discos rígidos, memória, estatísticas do processador, etc).

## Requisitos para Rodar
### Requisitos Funcionais
- Zabbix Server 6.0 ou superior
- Zabbix Agent 6.0 ou superior
- MariaDB para o banco de dados
- Grafana para visualização de dados
- Docker 20.10 ou superior
- Docker Compose 1.29 ou superior

### Requisitos Não-Funcionais
- Compreensão básica de redes e servidores
- Familiaridade com ferramentas de monitoramento
- Conhecimento em Docker e Docker Compose
- Habilidades básicas de administração de sistemas

## Como Usar este Repositório
Para iniciar a demonstração do Zabbix, siga as instruções detalhadas no arquivo demonstração Prática do Zabbix. Este arquivo contém uma explicação passo a passo para configurar o Zabbix, o MariaDB e o Grafana usando Docker Compose.

## Demonstração Prática do Zabbix

Esta seção contém uma demonstração prática para configurar o Zabbix Server, um banco de dados MariaDB e o Grafana para visualização. As etapas a seguir guiarão você pela configuração básica usando Docker Compose.

## Etapa 1: Configurar o Zabbix Server
1. Clone este repositório para sua máquina local.
2. Certifique-se de que Docker e Docker Compose estão instalados.
3. Execute o seguinte comando para iniciar o Zabbix Server com Docker Compose:
   ```bash
   docker-compose up -d

## Etapa 2: Configurar o Zabbix Agent
1. Baixe o Zabbix Agent apropriado para seu sistema operacional no site oficial do Zabbix.
2. Instale o Zabbix Agent no servidor/host que deseja monitorar.
3. Edite o arquivo de configuração zabbix_agentd.conf para incluir a linha:
    ```bash
   Server=127.0.0.1

## Etapa 3: Adicionar um Host ao Zabbix Server
1. Acesse a interface web do Zabbix Server (o endereço será indicado pela saída do comando Docker Compose).
2. Faça login com as credenciais padrão (admin/zabbix).
3. Navegue até "Configuration" > "Hosts".
4. Clique em "Create Host".
5. Preencha as informações básicas para adicionar o novo host.
6. Clique em "Add".

## Etapa 4: Configurar Itens e Triggers para Monitoramento
1. Após adicionar um host, navegue até "Configuration" > "Hosts" e selecione o host criado.
2. Clique em "Items" para adicionar itens de monitoramento, como uso de CPU, espaço em disco, etc.
3. Configure triggers para alertas (por exemplo, uso de CPU acima de 90%).

## Etapa 5: Visualizar Dados e Configurar Gráficos
1. Para visualizar dados em tempo real, vá até "Monitoring" > "Latest Data".
2. Para criar gráficos personalizados, vá até "Monitoring" > "Graphs".
3. Adicione gráficos e dashboards para uma visão personalizada do sistema.

## Conclusão do Projeto Zabbix

Neste repositório, mostramos como configurar o Zabbix Server, adicionar um host para monitoramento e usar o Grafana para visualizar dados. Esta configuração pode ser ampliada para atender a diversas necessidades de monitoramento de sistemas e redes.

Para mais informações e configurações avançadas, visite a [documentação oficial do Zabbix](https://www.zabbix.com/documentation/current/manual/introduction). Contribuições para este repositório são bem-vindas para ampliar a demonstração e incluir mais exemplos práticos.

## Próximos Passos
- Aprender sobre templates no Zabbix para monitoramento mais eficiente.
- Configurar notificações e alertas avançados.
- Integrar o Zabbix com outras ferramentas, como Grafana e GLPI.

## Contribuindo
Contribuições são bem-vindas! Por favor, abra um issue ou faça um fork deste repositório para propor melhorias.

## requirements.txt
```markdown
Docker==20.10.24
Docker-Compose==1.29.2

