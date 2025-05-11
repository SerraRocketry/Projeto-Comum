#!/bin/bash

# Nome do projeto (passado como argumento ou padrão)
PROJECT_NAME="${1:-Novo-Projeto}"

# Caminho base para criar o projeto
USER=$(whoami)
BASE_DIR="/home/$USER/Projetos/$PROJECT_NAME"

# Verifica se o projeto já existe
if [ -d "$BASE_DIR" ]; then
  echo "Erro: O projeto '$PROJECT_NAME' já existe no diretório atual."
  exit 1
fi

# Criação da estrutura de diretórios
echo "Criando estrutura de diretórios para o projeto..."
mkdir -p "$BASE_DIR"/docs
echo "Criado diretório: docs/"
mkdir -p "$BASE_DIR"/firmware
echo "Criado diretório: firmware/"
mkdir -p "$BASE_DIR"/hardware
echo "Criado diretório: hardware/"
mkdir -p "$BASE_DIR"/lib
echo "Criado diretório: lib/"
mkdir -p "$BASE_DIR"/test
echo "Criado diretório: test/"
mkdir -p "$BASE_DIR"/extras
echo "Criado diretório: extras/"

# Criação do arquivo firmware.ino com estrutura básica
FIRMWARE_FILE="$BASE_DIR"/firmware/firmware.ino
cat <<EOL > "$FIRMWARE_FILE"
#include <Arduino.h>

// Definições de Pinos e Constantes


// Declaração de Variáveis Globais


// Funções Auxiliares


// Função setup
void setup() {
  // Inicialização e configurações iniciais
  Serial.begin(9600);
  Serial.println("Projeto Arduino Iniciado!");
}

// Função loop
void loop() {
  // Lógica principal do seu projeto
  delay(1000); // Exemplo de delay de 1 segundo
}
EOL
echo "Criado arquivo: $FIRMWARE_FILE"

# Criação do arquivo .gitignore básico
GITIGNORE_FILE="$BASE_DIR"/.gitignore
cat <<EOL > "$GITIGNORE_FILE"
.build
.vscode
*.tmp
*.log
EOL
echo "Criado arquivo: $GITIGNORE_FILE"

# Criação do arquivo contributing.md básico
CONTRIBUTING_FILE="$BASE_DIR"/contributing.md
cat <<EOL > "$CONTRIBUTING_FILE"
# Contribuindo com $PROJECT_NAME

Obrigado por considerar contribuir com este projeto! Aqui estão algumas diretrizes para ajudar você a começar:

1. Faça um fork do repositório.
2. Crie uma branch para sua contribuição:
   \`\`\`bash
   git checkout -b minha-contribuicao
   \`\`\`
3. Faça suas alterações e adicione commits.
4. Envie um pull request explicando suas mudanças.
EOL
echo "Criado arquivo: $CONTRIBUTING_FILE"

# Criação do arquivo README.md com a estrutura desejada
README_FILE="$BASE_DIR"/README.md
cat <<EOL > "$README_FILE"
# $PROJECT_NAME

Aqui você pode descrever o que o projeto faz, suas funcionalidades e objetivos.

## Funcionalidades
- Descrição de funcionalidades do projeto.

## Hardware
- Descrição do hardware utilizado (ex: Arduino Uno, Mega, etc.)
- Descrição de sensores, atuadores e outros componentes.

## Configuração de Pinos
- Descrição dos pinos utilizados no Arduino e suas funções.
- Exemplo:
  - **Pino 2**: Sensor de temperatura
  - **Pino 3**: LED indicador

## Bibliotecas Utilizadas
- Descrição das bibliotecas utilizadas no projeto.
- Exemplo:
  - \`Wire.h\`: Comunicação I2C
  - \`SPI.h\`: Comunicação SPI

## Estrutura do Projeto
A estrutura do projeto é organizada da seguinte forma:
\`\`\`
$PROJECT_NAME/
├── docs/                     # Documentação (diagramas, imagens, datasheets)
├── firmware/                 # Código principal do Arduino
│   └── firmware.ino
├── hardware/                 # Arquivos e informações do hardware
├── lib/                      # Bibliotecas personalizadas ou adaptadas
├── test/                     # Scripts de teste (verificação, debug, etc.)
├── extras/                   # Scripts auxiliares (ex: leitura serial em Python)
├── .gitignore                # Arquivos e pastas ignorados pelo Git
├── README.md                 # Descrição do projeto
└── contributing.md           # (Opcional) Como contribuir com o projeto
\`\`\`

## Como usar
1. Clone o repositório
    \`\`\`bash
    git clone url_do_repositorio.git
    \`\`\`
2. Navegue até o diretório do projeto
    \`\`\`bash
    cd $PROJECT_NAME
    \`\`\`
3. Abra o arquivo \`firmware/firmware.ino\` no Arduino IDE
    \`\`\`bash
    arduino firmware/firmware.ino
    \`\`\`
    ou abra o Arduino IDE e selecione \`File > Open\` e escolha o arquivo \`firmware.ino\`.
4. Carregue o código no seu Controlador

## Contribuições
- Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novas funcionalidades.
- Para contribuir, siga as instruções no arquivo \`contributing.md\`.
EOL
echo "Criado arquivo: $README_FILE"

# Mensagem de conclusão
echo "Estrutura do projeto '$PROJECT_NAME' criada com sucesso em: $BASE_DIR"
echo "Os seguintes arquivos e diretórios foram criados:"
ls -F "$BASE_DIR"