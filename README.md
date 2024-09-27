<p align="center">
  <img src="assets/logo.png" alt="Snooze Love Logo" width="150" height="150">
</p>

<h1 align="center">Snooze Love</h1>

<p align="center">🌙 Um simples programa para colocar o Windows em modo hibernar com estilo! ⏲️</p>

---

> Snooze Love é um programa que coloca o Windows em modo hibernar após um período de tempo especificado. Ele também exibe o tempo restante antes de entrar em hibernação e inclui um ícone personalizado.

## 🛠️ Compilação

Siga os passos abaixo para compilar o projeto:

1. **Instale o `mingw-w64` no WSL:**

    ```bash
    sudo apt-get install mingw-w64
    ```

2. **Navegue até o diretório raiz do projeto:**

    ```bash
    cd snooze_love
    ```

3. **Compile o projeto usando o `make`:**

    ```bash
    make
    ```

4. **Limpe os arquivos compilados:**

    ```bash
    make clean
    ```

---

## 🚀 Uso

1. **Execute o programa compilado:**

    ```bash
    ./build/snooze_love.exe
    ```

2. **O programa exibirá o tempo restante antes de entrar em hibernação e, após o tempo especificado, colocará o computador em modo hibernar.**

---

## 📁 Estrutura do Projeto

```
snooze_love/
├── src/
│   ├── main.c
│   ├── hibernate.c
│   ├── show_time.c
│   └── resource.rc
├── include/
│   ├── hibernate.h
│   ├── show_time.h
│   └── resource.h
├── icons/
│   └── icon.ico
├── build/
├── Makefile
├── README.md
├── LICENSE.md
├── CONTRIBUTING.md
└── .gitignore
```

### 🗂️ Descrição dos Arquivos

- **src/**: Contém os arquivos de código-fonte.
  - `main.c`: Função principal do programa.
  - `hibernate.c`: Função para hibernar o computador.
  - `show_time.c`: Função para mostrar o tempo restante.
  - `resource.rc`: Arquivo de recursos para incluir o ícone.

- **include/**: Contém os arquivos de cabeçalho.
  - `hibernate.h`: Declaração da função `hibernate`.
  - `show_time.h`: Declaração da função `showRemainingTime`.
  - `resource.h`: Definição do identificador do ícone.

- **icons/**: Contém os arquivos de ícones.
  - `icon.ico`: Arquivo de ícone usado no programa.

- **build/**: Diretório onde os arquivos compilados serão armazenados.

- **Makefile**: Arquivo para automatizar a compilação do projeto.

- **README.md**: Arquivo de documentação do projeto.

---

## 🤝 Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir um pull request ou relatar problemas na seção de [issues](https://github.com/pravtz/snooze-love/issues).

---

## 📄 Release Notes
Para ver as mudanças em cada versão, consulte o arquivo [RELEASE_NOTES.md](RELEASE_NOTES.md).
As notas de lançamento de cada versão estão disponíveis na página de [Releases](https://github.com/pravtz/snooze-love/releases).

---

## 📜 Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE.md) para mais detalhes.
