# Criador de Estrutura de Projetos Arduino (Script Bash)

Este repositório contém um script Bash (`.sh`) projetado para automatizar a criação de uma estrutura de diretórios bem organizada para projetos Arduino. O objetivo é fornecer um ponto de partida limpo e padronizado, facilitando o gerenciamento de arquivos, documentação e colaboração em seus projetos de eletrônica e programação com Arduino.

## Conteúdo do Repositório

* **`init_arduino.sh`**: O script Bash principal que, quando executado, cria a seguinte estrutura de diretórios e arquivos dentro de um diretório com o nome do seu projeto:

    ```
    /home/seu-nome-de-usuário/nome-do-projeto/
    ├── docs/                     # Documentação (diagramas, imagens, datasheets)
    ├── firmware/                 # Código principal do Arduino
    │   ├── firmware.ino
    ├── hardware/                 # Arquivos e informações do hardware
    ├── lib/                      # Bibliotecas personalizadas ou adaptadas
    ├── test/                     # Scripts de teste (verificação, debug, etc.)
    ├── extras/                   # Scripts auxiliares (ex: leitura serial em Python)
    ├── .gitignore                # Arquivos e pastas ignorados pelo Git
    ├── README.md                 # Descrição geral do projeto
    └── contributing.md           # (Opcional) Como contribuir com o projeto
    ```

* **`README.md`**: Este arquivo, fornecendo uma visão geral do script e como utilizá-lo.

## Como Usar

1.  **Clone o repositório:** Se você encontrou este script em um repositório Git, clone-o para sua máquina local:

    ```bash
    git clone https://github.com/SerraRocketry/Projeto-Comum.git
    cd Projeto-Comum
    ```

2.  **Torne o script executável:** Navegue até o diretório onde o arquivo `init_arduino.sh` está salvo e conceda permissão de execução:

    ```bash
    chmod +x init_arduino.sh
    ```

3.  **Execute o script:**

    * **Para criar um projeto com o nome padrão ("Novo-Projeto"):**

        ```bash
        ./criar_projeto.sh
        ```

    * **Para criar um projeto com um nome específico (substitua `MeuProjetoArduino` pelo nome desejado):**

        ```bash
        ./criar_projeto.sh MeuProjetoArduino
        ```

4.  **Verifique a estrutura:** Após a execução bem-sucedida, um novo diretório com o nome do seu projeto será criado no diretório atual, contendo a estrutura de pastas e arquivos definidos no script.

## Benefícios de Usar Este Script

* **Organização:** Promove uma estrutura de diretórios clara e consistente para seus projetos Arduino desde o início.
* **Eficiência:** Economiza tempo ao automatizar a criação de pastas e arquivos essenciais.
* **Melhor Colaboração:** Facilita a compreensão da estrutura do projeto por outros colaboradores.
* **Boas Práticas:** Incentiva a separação de código, documentação, arquivos de hardware e ferramentas auxiliares.
* **Pronto para Git:** Inclui um arquivo `.gitignore` básico para ajudar a gerenciar seu repositório Git.

## Contribuições

Sinta-se à vontade para contribuir com melhorias no script, como adicionar mais arquivos padrão, personalizar o conteúdo dos arquivos iniciais ou adicionar opções de configuração. Pull requests são bem-vindos!

## Autor

Este script foi criado para simplificar o início de projetos Arduino da Equipe de Foguetemodelismo Serra Rocketry do IPRJ-UERJ e promover boas práticas de organização. Sinta-se à vontade para usá-lo e adaptá-lo às suas necessidades.