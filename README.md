# Progetto di Storia Pubblica Digitale A.A. 23-24
Il progetto "Documenti relativi alla statua di Costanzo Ciano" è stato realizzato durante l'anno accademico 2023/2024 per l'esame della professoressa <b>Enrica Salvatori </b>, per il corso di Storia Pubblica Digitale della laurea magistrale in <b> Informatica Umanistica</b> dell'<b>Università di Pisa</b> da:

- Benedetta Peccianti, matricola 600695
- Federica Papa, matricola 597084
- Irene Poli, matricola 604855

Per la corretta riuscita del progetto sono stati utilizzati due strumenti di validazione:

# Validazione del file xml

```shell
   $ java -cp "tools/Xerces-J-bin.2.12.1/xerces-2_12_1/*" dom.Counter -v ./prolusione3.xml 
```

# Creazione dell'html con xsl

```shell
   $ java -jar tools/SaxonHE10-3J/saxon-he-10.3.jar -s:prolusione3.xml -xsl:style.xsl -o:pagina.html
 
```

# Per poter visualizzare l'anteprima del progetto è sufficiente
https://benedettapeccianti.github.io/progettoSPD/
