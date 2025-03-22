//crea una rubrica

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* definisco la struttura, ovvero una "scatola di
variabili dichiarata prima del main da richiamare
 nel main stesso scrivendo solo la parola chiave*/
typedef struct Contatto{
    char nome[10]; //stringa per consentire all'utente di registrare il nome
    char numero[10]; //stringa per consentire all'utente di inserire il numero
    struct Contatto *next; //il puntatore serve per creare la lista di più contatti come se li volessi collegare con un filo
} Contatto;

Contatto *CreaContatto(char nome[], char numero[]) {
    Contatto *head = (Contatto*)malloc(sizeof(Contatto)); //alloca memoria sufficiente per questa variabile
                strcpy(head->nome, nome); // copia nome e numero inseriti dall'utente, -> indica al compilatore di guardare dentro la scatola e prendere questa specifica parte
                strcpy(head->numero, numero);
                head->next = NULL; //il filo che collega questi dati nella rubrica è uguale a null perché non c'è nessun'altra scatola collegata
        //-> aggiunge un nuovo collegamento, = indica dove è diretto, head continua la catena, NULL arriva alla fine
                return head;

}

/*CreaContatto è uno spazio riservato ad ogni singolo contatto, attraverso il puntatore avremo
 * più contatti collegati, dunque una rubrica*/

/*creaLista crea una lista di n contatti. Dopo aver chiesto nome e numero per il primo contatto,
 * crea il primo nodo e itera per creare gli altri contatti, collegandoli in una lista collegata*/

Contatto *CreaLista(int n) {
        char tmp2[10], tmp3[10]; //serviranno per scrivere temporaneamente il nome e il numero di ogni contatto
        printf("inserisci un nome: ");
        scanf("%s", tmp2);
        printf("inserisci un numero: ");
        scanf("%s", tmp3);

    Contatto *head = CreaContatto(tmp2, tmp3);
    Contatto *tmp = head;
    //con il ciclo for itero il passaggio per ogni contatto
                for(int i = 1; i < n; ++i){
                    printf("inserisci un nome: ");
                    scanf("%s", tmp2);
                    printf("inserisci un numero: ");
                    scanf("%s", tmp3);
                    tmp -> next = CreaContatto(tmp2, tmp3); //creo una nuova "scatola con queste informazioni
                }
                return head; //restituisco alla testa della catena
}

void StampaLista(Contatto *head){
        Contatto *tmp = head;
                while(tmp != NULL){
                    printf("Nome: %s\nNumero: %s", tmp -> nome, tmp -> numero);
                    tmp = tmp->next;
                }
}
/*stampaLista stampa ogni contatto nella lista,
 * iterando attraverso i nodi fino a raggiungere la fine della lista (NULL).*/

void inserisci(Contatto *head, char nome[], char numero[]){
    Contatto *tmp = head;
                while(tmp->next != NULL){
                    tmp= tmp->next;
                }
    tmp->next = CreaContatto(nome, numero);
}
//inserisci trova l'ultimo contatto nella lista e aggiunge un nuovo contatto alla fine

void elimina(Contatto **head, int i) {
/*Doppio Puntatore Contatto **head:
 * Permette di modificare il puntatore alla testa della lista all'interno della funzione.*/
    Contatto *tmp = *head;
    int j = 0;
    if (i == 0) {
        *head = (*head)->next;
        free(tmp); //libera memoria
        return;
    }
    while (j < i - 1 && tmp->next != NULL) {
        tmp = tmp->next;
        j++;
    }
    if (tmp->next != NULL) {
        Contatto *daEliminare = tmp->next;
        tmp->next = tmp->next->next;
        free(daEliminare);
    }
}
void cerca(Contatto *head, char nome[]) { //ricerca nella memoria quello spazio dedicato al char
    Contatto *tmp = head;
    while (tmp != NULL) {
        if (strcmp(tmp->nome, nome) == 0) { //cerca se ci sono due stringhe equivalenti
            printf("Trovato!!");
            return;
        }
        tmp = tmp->next;
    }
    printf("Non trovato!");
}
//nel main ora scriverò:
int main() {

    Contatto *head = CreaLista(3); //crea una lista di 3 contatti
    StampaLista(head);
    inserisci(head, "Test", "Test2");
    StampaLista(head);
return 0;
}
