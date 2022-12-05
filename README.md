# GetBootstrap

Clone do Bootstrap para o flutter.

## Índice 

* [Acesso a documentação](#acesso-a-documentação)
* [Abrir e rodar o projeto](#abrir-e-rodar-o-projeto)
* [Contribuindo](#contribuindo)
* [Qualidade do código](#qualidade-do-código)
* [Lançar nova versão](#lançar-nova-versão)
* [Gerando uma build](#gerando-uma-build)

## Acesso a documentação

Você pode acessar a documentação do projeto nesse [link](https://yellow-dev.cmsw.com/console-web/).

## Abrir e rodar o projeto

Esse projeto foi escrito em Dart, utilizando o framework Flutter, siga o passo a passo de instalação em [flutter.dev](https://docs.flutter.dev/get-started/install).

Como o Google Chrome utiliza o bloqueio pelo CORS, as imagens em ambiente de desenvolvimento não aparecem, para corrigir isso siga o passo abaixo:

* Vá até `flutter\bin\cache` e remova o arquivo `flutter_tools.stamp`
* Vá até `flutter\packages\flutter_tools\lib\src\web` e abra o arquivo `chrome.dart`
* Procure a linha `--disable-extensions`
* Adicione logo abaixo o segunte: `--disable-web-security`

Ao clonar o repositório rode os seguintes comandos:

```
flutter pub get
```
```
flutter run -d chrome --dart-define=flavor=development
```

Nesse projeto já está configurado para rodar automaticamente pelo vscode, para alterar os parâmetros de lançamento, vá no arquivo `.vscode\launch.json` dentro do projeto

## Contribuindo

O repositório deste projeto segue os conceitos do Conventional Commits, leia sobre em [Conventional Commit](https://www.conventionalcommits.org/en/v1.0.0/).

Foi configurado um facilitador dentro do projeto, caso ainda não tenha configurado em sua máquina, siga os seguintes passos:

* Instale o npm em sua máquina
* Rode o comando
    ```
    npm install -g commitizen
    ```
* E na sequencia 
    ```
    commitizen init cz-conventional-changelog --save-dev --save-exact
    ```

Irá configurar o commitizen dentro do arquivo `package.json`

Todos os commits devem ser feitos pelo segunte passo a passo:

No terminal digite:

```
git add . (Irá preparar todas as alterações)
```
```
git cz (Vai fazer uma série de perguntas relacionadas ao conventional commits)
```

## Qualidade do código

utilizamos o plugin do Dart `dart_code_metrics` para controle de qualidade, periodicamente rode os comandos abaixo, para seguir os padrões:

```
flutter pub run dart_code_metrics:metrics analyze lib
flutter pub run dart_code_metrics:metrics check-unused-code lib
flutter pub run dart_code_metrics:metrics check-unused-files lib
flutter pub run dart_code_metrics:metrics check-unnecessary-nullable lib
```

## Lançar nova versão

Para gerar uma build, primeiro deve ter o seguinte arquivo configurado: `lib\config\clients.dart`, nesse arquivo consta os ambientes disponíveis e a configuração para cada cliente.

``Não é utilizado .env ou nenhum outro tipo de arquivo externo por questões de segurança nas builds web.``

Uma nova build é feita do seguinte modo:

* Rode o comando: 
    ```
    flutter clean
    ```

* Altere a versão no arquivo `pubspec.yml` seguindo o versionamento semântico ([leia mais](https://semver.org/)).
* Altere também a versão do `serviceWorkerVersion` dentro de `/web/index.html` com a mesma versão utilizada no `pubspec.yml`.
* Efetue o commits dessas alterações na branch de dev.

Com base no Conventional commits é possível facilitar o trabalho na hora de criar uma versão.

Para começar rode o comando abaixo
```
npm i -g standard-version
```

```
standard-version --release-as {versão ex: v1.0.0} --dry-run
```

Irá aparecer todos os passos que vai acontecer, para efetivar a versão basta rodar o mesmo comando removendo o `--dry-run`

Após concluido será atualizado o arquivo `CHANGELOG.md` com todas as alterações registradas utilizando o Conventional commits.

Rode o comando abaixo para finalizar o versionamento da nova release:
```
git push --follow-tags
```

## Gerando uma build

Efetue o checkout na tag que será utilizada para gerar a build, ex:
```
git checkout v1.0.0
```

Escolha o ambiente:
* development
* homologation
* production


Rode o comando abaixo alterando os parâmetros `enviroment` pelo ambiente escolhido.
    
```
flutter build web --dart-define=flavor={environment}
```

Após o processo ter concluido você pode copiar os arquivos de `build\web` para o seu servidor http.