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

Você pode acessar a documentação do projeto nesse [link](https://get-bootstrap.web.app/#/getting-started/introduction).

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

* Rode o comando: 
    ```
    flutter clean
    ```

* Altere a versão no arquivo `pubspec.yml` seguindo o versionamento semântico ([leia mais](https://semver.org/)).
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

## Publicando no Pub.dev

Efetue o checkout na tag que será utilizada para gerar a build, ex:
```
git checkout v1.0.0
```

Rode o comando abaixo.
    
```
dart pub publish
```