# Esercizio: client web di messaggistica minimale

Il client dovrà essere una Single Page Application, potrà essere sviluppata scegliendo tra i framework Angular 1.x/2 o React.

Andrà utilizzato git-flow come pattern di gestione del versionamento.

Il passaggio da una schermata all'altra dovrà essere gestito da un router html5 (no hashbang), dovrà permettere l'accesso alle rotte descritte anche ricaricando completamente la pagina.

Il frame che la contiene dovrà avere un viewport simil mobile, centrato verticalmente e orizzontalmente nella pagina che lo ospita.

Dovranno essere utilizzati preprocessori css less o sass, utilizzando pattern OOCSS o ITCSS in BEM notation o facoltativamente inline style objects nel caso in cui si scelga React.

Si lascia allo sviluppatore la massima libertà nella disposizione e personalizzazione grafica dei componenti nel caso in cui nessun vincolo sia stato specificato.

Il client dovrà diventare l'interfaccia di queste [API]('https://sleepy-meadow-32722.herokuapp.com/') seguendo le specifiche descritte nel percorso radice.

Dovrà essere possibile fare il submit delle credenziali anche premendo il tasto invio.

L'autenticazione restituirà nella risposta un cookie di sessione che andrà passato in tutte le richieste successive per identificare la sessione.

Le [API](https://sleepy-meadow-32722.herokuapp.com/) messe a disposizione permettono l'accesso di più utenti da client diversi per effettuare le prove di comunicazione, di seguito le credenziali:

Username  | Password
--------- | --------
tizio     | tizio.secret
caio      | caio.secret
sempronio | sempronio.secret

Nella vista Dettaglio contatto andrà implementato uno script di aggiornamento periodico dello storico dei messaggi.

Potrà essere utilizzato un fork di questo repository come base di sviluppo oppure uno personale inizializzato a piacere o da uno scaffolder. 

## Struttura

```
.
├── Autenticazione
|   ├── Username
|   ├── Password
|   └── Tasto submit
├── Dashboard
|   ├── Header
|   |   └── Logo centrato
|   └── Tabs
|       ├── Lista contatti
|       |   ├── Avatar contatto
|       |   ├── Nome contatto
|       |   └── Numero di notifiche contatto
|       └── Profilo utente
|           ├── Immagine profilo
|           ├── Nickname
|           ├── Nome e cognome
|           └── Indirizzo email
└── Dettaglio contatto
    ├── Navbar
    |   ├── Tasto per tornare alla dashboard a sx
    |   └── Nome destinatario
    ├── Lista messaggi
    ├── Input invio messaggio
    └── Tasto invio messaggio
```

# Wireframes

![alt text](./docs/images/auth.png "Autenticazione")
![alt text](./docs/images/auth_loading.png "Autenticazione in corso")
![alt text](./docs/images/profile.png "Profilo")
![alt text](./docs/images/contact_list.png "Lista contatti")
![alt text](./docs/images/contact_detail.png "Dettaglio contatto")
