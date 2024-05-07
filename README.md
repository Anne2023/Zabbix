# Repositório de Demonstração do Zabbix

![Zabbix Logo](https://upload.wikimedia.org/wikipedia/commons/5/52/Zabbix_logo_small.png) <!-- Imagem do Zabbix -->

Este repositório é uma demonstração prática do Zabbix, uma ferramenta de monitoramento open-source que permite acompanhar métricas de servidores, redes, aplicações e muito mais. A configuração utiliza Docker Compose para executar o Zabbix Server e o Grafana, com um banco de dados MariaDB.

![MariaDB Logo](https://upload.wikimedia.org/wikipedia/commons/b/bb/Mariadb-seal-bird-symbol.png) <!-- Imagem do MariaDB -->

![Grafana Logo](https://upload.wikimedia.org/wikipedia/commons/3/3b/Grafana_icon.svg) <!-- Imagem do Grafana -->

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
Para iniciar a demonstração do Zabbix, siga as instruções detalhadas no arquivo [DEMONSTRAÇÃO.md](./DEMONSTRAÇÃO.md). Este arquivo contém uma explicação passo a passo para configurar o Zabbix, o MariaDB e o Grafana usando Docker Compose.

## Contribuindo
Contribuições são bem-vindas! Por favor, abra um issue ou faça um fork deste repositório para propor melhorias.

### DEMONSTRAÇÃO.md
```markdown
# Demonstração Prática do Zabbix

Esta seção contém uma demonstração prática para configurar o Zabbix Server, um banco de dados MariaDB e o Grafana para visualização. As etapas a seguir guiarão você pela configuração básica usando Docker Compose.

## Etapa 1: Configurar o Zabbix Server
1. Clone este repositório para sua máquina local.
2. Certifique-se de que Docker e Docker Compose estão instalados.
3. Execute o seguinte comando para iniciar o Zabbix Server com Docker Compose:
   ```bash
   docker-compose up -d

## 2-Configurar o Zabbix Agent
Baixe o Zabbix Agent apropriado para seu sistema operacional no site oficial do Zabbix.
Instale o Zabbix Agent no servidor/host que deseja monitorar.
Edite o arquivo de configuração zabbix_agentd.conf para incluir a linha:
Server=127.0.0.1

## 3- Adicionar um Host ao Zabbix Server
Acesse a interface web do Zabbix Server (o endereço será indicado pela saída do comando Docker Compose).
Faça login com as credenciais padrão (admin/zabbix).
Navegue até "Configuration" > "Hosts".
Clique em "Create Host".
Preencha as informações básicas para adicionar o novo host.
Clique em "Add".

## 4- Configurar Itens e Triggers para Monitoramento
Após adicionar um host, navegue até "Configuration" > "Hosts" e selecione o host criado.
Clique em "Items" para adicionar itens de monitoramento, como uso de CPU, espaço em disco, etc.
Configure triggers para alertas (por exemplo, uso de CPU acima de 90%).

## 5-Visualizar Dados e Configurar Gráficos
Para visualizar dados em tempo real, vá até "Monitoring" > "Latest Data".
Para criar gráficos personalizados, vá até "Monitoring" > "Graphs".
Adicione gráficos e dashboards para uma visão personalizada do sistema.

### CONCLUSÃO.md
```markdown
# Conclusão do Projeto Zabbix

Neste repositório, mostramos como configurar o Zabbix Server, adicionar um host para monitoramento e usar o Grafana para visualizar dados. Esta configuração pode ser ampliada para atender a diversas necessidades de monitoramento de sistemas e redes.

Para mais informações e configurações avançadas, visite a [documentação oficial do Zabbix](https://www.zabbix.com/documentation/current/manual/introduction). Contribuições para este repositório são bem-vindas para ampliar a demonstração e incluir mais exemplos práticos.

## Próximos Passos
- Aprender sobre templates no Zabbix para monitoramento mais eficiente.
- Configurar notificações e alertas avançados.
- Integrar o Zabbix com outras ferramentas, como Grafana e GLPI.

## requirements.txt
# Requisitos para rodar a demonstração do Zabbix
Docker==20.10.24
Docker-Compose==1.29.2

