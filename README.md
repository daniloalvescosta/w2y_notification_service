## **W2Y Notification Service**

![W2Y logo](https://github.com/daniloalvescosta/w2y_webscraping_service/blob/main/app/w2y.png)

Serviço de notificações do sistema W2Y, para executar ele rode os comandos:

    docker compose build
    docker compose up


Caso queira rodar a suit de testes individualmente:

    docker compose run --rm test

Caso queira rodar as migrations individualmente:

    docker compose exec web rails db:create
    docker compose exec web rails db:migrate


