# (IT) Esercizio: client web di messaggistica minimale

Per il controllo di revisione andrà utilizzato git seguendo il pattern "github-flow" (nuova pull request per ogni macro feature o bug fix).

Si lascia allo sviluppatore la massima libertà nella disposizione e personalizzazione grafica dei componenti nel caso in cui nessun vincolo sia stato specificato.

## Requisiti funzionali

L'app dovrà essere una Single Page Application.

Il passaggio da una schermata all'altra dovrà essere gestito da un router html5 (no hashbang).

E' permesso l'uso di librerie esterne per decorare i componenti (es: nella soluzione prodotta per creare i [wireframes](#wireframes) è stata usata [Material UI](https://mui.com/)).
Tutto quello che non è possibile decorare con le librerie andrà fatto a mano.

L'app dovrà collegarsi a [queste API](https://chat-server-challenge.herokuapp.com/) seguendo le specifiche descritte nella [homepage](https://chat-server-challenge.herokuapp.com/) del servizio e nel [README](https://github.com/bemindinteractive/chat-server-challenge/blob/main/README.md#chat-server-challenge) del repository.

Dovrà essere possibile fare il submit delle credenziali, della query di ricerca contatti e dei messaggi anche premendo il tasto invio oltre che premendo il bottone.

Nella viste "Lista Contatti" e "Dettaglio Contatto" andrà impostata una politica di aggiornamento del contatore dei messaggi e dei messaggi per simulare l'ascolto in tempo reale.

Nella vista "Dettaglio Contatto" all'invio di un messaggio, va svuotato l'ìnput di immissione del messaggio.

Nella vista "Dettaglio Contatto" alla ricezione di qualunque nuovo messaggio, va fatto scrollare il contenitore dei messaggi fino a raggiungere l'ultimo messaggio.

### Bonus 1

E' possibile utilizzare un socket disponibile sulla stessa porta del server http delle [API](https://chat-server-challenge.herokuapp.com/) per sapere davvero in tempo reale quando sono disponibili nuovi messaggi.
La homepage del servizio non contiene informazioni riguardo il socket, i dettagli sono disponibili su [github](https://github.com/bemindinteractive/chat-server-challenge). Il socket non fornirà direttamente i messaggi ma emetterà un evento che avvisa che sono disponibili nuovi messaggi, per ottenerli andrà comunque lanciato un fetch sulle [API](https://chat-server-challenge.herokuapp.com/) REST.

### Bonus 2

Gestione centralizzata dello stato dell'applicazione.

### Bonus 3

Persistenza dello stato dell'applicaizone (o almeno del frammento che riguarda i dati restituiti dal servizio di autenticazione) su local storage o session storage, per evitare di tornare alla vista di autenticazione ad ogni refresh della pagina.

Il progetto potrà essere inizializzato a piacere o tramite uno scaffolder. Dopo l'inizializzazione, comunicare l'URL del repository al revisore.

## Struttura Layout

Il frame che conterrà l'app dovrà avere un viewport simil-mobile, centrato verticalmente e orizzontalmente nella pagina che lo ospita.

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


# (EN) Exercise: minimal messaging web client

The "github-flow" pattern (new pull request for each macro feature or bug fix) has to be used in version control.

The developer has the utmost freedom in arranging and customizing the graphic components when no constraint has been specified.
Functional requirements

## Functional requirements

The app must be a Single Page Application.

The transition from one screen to another must be managed by an html5 router (no hashbang).

The use of external libraries is allowed to decorate the components (eg: in the solution produced to create the [wireframes] (# wireframes), [Material UI] (https://mui.com/) was used).
Anything that cannot be decorated with that library must be done by hand.

The app must connect to [these APIs] (https://chat-server-challenge.herokuapp.com/) following the specifications described in the [homepage] (https://chat-server-challenge.herokuapp.com/) of the service and in the [README] (https://github.com/bemindinteractive/chat-server-challenge/blob/main/README.md#chat-server-challenge) of the repository.

It must be possible to submit the credentials, the contact search query and messages also by pressing the enter key as well as by pressing the button.

In the "Contact List" and "Contact Details" views, a policy of updating the message counter and messages must be set to simulate listening in real time.

In the "Contact Detail" view when sending a message, the message entry input must be emptied.

In the "Contact Details" view, when any new message is received, the message container must be scrolled until the last message is reached.

### Bonus 1

It is possible to use a socket available on the same port of the http server of the [API] (https://chat-server-challenge.herokuapp.com/) to really know in real time when new messages are available.
The homepage of the service does not contain information about the socket, the details are available on [github] (https://github.com/bemindinteractive/chat-server-challenge). The socket will not provide the messages directly but will emit an event that warns that new messages are available, to obtain them a fetch on the REST [API] (https://chat-server-challenge.herokuapp.com/) will still have to be launched.

### Bonus 2

Centralized management of application status.

### Bonus 3

Persistence of the state of the application (or at least of the fragment concerning the data returned by the authentication service) on local storage or session storage, to avoid returning to the authentication view at each refresh of the page.

The project can be initialised at will or via a scaffolder. After initialization, communicate the repository URL to the reviewer.

## Layout Structure

The frame that will contain the app must have a mobile-like viewport, centered vertically and horizontally on the page that hosts it. 


```
.
├── Authentication
|   ├── Username
|   ├── Password
|   └── Submit button
├── Dashboard
|   ├── Header
|   |   └── Centered logo
|   └── Tabs
|       ├── Contacts list
|       |   ├── Contact's avatar
|       |   ├── Contact's name
|       |   └── Contact's New messages count
|       └── User profile
|           ├── User profile image
|           ├── Nickname
|           ├── Name and surname
|           └── Email address
└── Contact detail
    ├── Navbar
    |   ├── Back to dasbhoard button (on top left corner)
    |   └── Recipient's name
    ├── Message's list
    ├── Message's input
    └── Message's submit button
```

<a name="wireframes">
</a>

## Wireframes


![alt text](./docs/images/login.png "Authentication")
![alt text](./docs/images/login_loading.png "Authentication loading")
![alt text](./docs/images/contacts.png "Contact's list")
![alt text](./docs/images/contacts_unread.png "Contact's list with new messages")
![alt text](./docs/images/contact_history.png "Contact's detail")
![alt text](./docs/images/profile.png "Profile")
