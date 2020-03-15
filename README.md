
# Demo Animals

### La parte orginale della demo dove ho preso spunto lo trovi qui sotto 
per vedere gli screen shot se siamo in ambiente di sviuluppo occorre aprirla in un altra finestra. 
 
 * [Foto della pagina iniziale demo donwload (salva oggetto con nome) ](pagine/paginauno.jpg))
 
 <p align="left">
  <img src="pagine/paginauno.jpg" width="350" title="Foto della pagina iniziale demo">

</p>
 


* [Foto pagina utenti 5 quinto piano  donwload (salva oggetto con nome) ](pagine/paginadue.jpg)

 <p align="left">
  <img src="pagine/paginadue.jpg" width="350" title="Foto elenco quinto pisno  demo">

</p>

* [Foto demo applicattivo  demo donwload (salva oggetto con nome)](pagine/paginatre.jpg)
 
 
 <p align="left">
  <img src="pagine/paginatre.jpg" width="350" title="Foto elenco test ">

</p>

* [Foto demo applicattivo galleria carosello cliccando sulla foto donwload (salva oggetto con nome)](pagine/paginaquattro.jpg)
 
 
 <p align="left">
  <img src="pagine/paginaquattro.jpg" width="350" title="Foto elenco test ">

</p>



</br>





### Tecnologie impiegate per il Frontend  e Box Office di Venezia

* [frontend dell'esempio è stato integrato con il framewrok inspinia  ](http://webapplayers.com/inspinia_admin-v2.9.3/)


* [l'esempio di utlizzo è il  box office di Venezia  ](https://trade.veneziaunica.it/vu-bo-spring/login)


* [help on line spiegazione ed utilizzo del box Office l'utilità e di erogare biglietti - Voucher studiato per agenzie di viaggio è presente la funzione pagamento elettronico ](https://trade.veneziaunica.it/vu-bo-spring/resources/help/it/trade_def/trade.html)



* [i file freemarker sono presenti nella cartella  templates.ftl ]( https://freemarker.apache.org/)

* Vengono dichiarate in application.properties per sping boot

* spring.freemarker.template-loader-path: classpath:/templates

* spring.freemarker.suffix: .ftl

* [installazione  maven nel pom ]( https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-freemarker)


l'innesco nel codice ftl avviene trsmite  in questo porzioni di codice

 <#list quintopianoU as quintopiano>
                
                    <tr class="gradeX">
                                <td class="center">${quintopiano.cognome}</td>
                                <td class="center">${quintopiano.nome}</td>
                                <td class="center">${quintopiano.telefono}</td>
                                <td class="center">${quintopiano.cellulare}</td>
                                <td class="center">${quintopiano.genere}</td>
                                <td class="center">${quintopiano.emailId}</td>
                                 <td>
                                 <#assign testFoto2="${quintopiano.foto}">
                                 <#if testFoto2?has_content>
                                 <img class="center" src="data:image/png;base64,${quintopiano.foto}">
                                 <#else>
                                 </#if>
                                 </td>
                                  <td class="center">${quintopiano.path}</td>
                          </tr>
                     </#list>
                     
                     
                     
notiamo un if che serve per togliere record vuoti


chiamata alla lista che viene fornita nel metodo 
  
  
  contoller
     
     
      @GetMapping("/showUtenti")
    public ModelAndView showUtenti() {

        List < QuintoPiano > quintopianoU = quintoPianoRepository.findAll();

        Map < String, Object > params = new HashMap < String, Object > ();
        params.put("quintopianoU", quintopianoU);

        return new ModelAndView("showUtenti", params);
    } 
    
    
    la parte per la costursiobne della tabella avviene
    
    
   
* [ tramite questo script dove abbiamo la chiamata princpale e la costruzione della ricerca della tabella con i Datatable ]( https://datatables.net/)


 
 
   
       <script>
        $(document).ready(function(){
      
        var table = $('.dataTables-example').tableToJSON(); // Convert the table into a javascript object
  console.log(JSON.stringify(table));
  <!--alert(JSON.stringify(table)); -->
    
     

   
       $('.dataTables-example').DataTable({
                
                
                
                
                pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    {extend: 'copy'},
                    
                    
                    
                    {extend: 'csv'},
                    {extend: 'excel', title: 'ExampleFile'},
                    {extend: 'pdf', title: 'ExampleFile'},

                    {extend: 'print',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', 'inherit');
                    }
                    }
                ]

            });

        });
 </script>
    


* [ qui per il donwload del file opzione Salva oggetto con nome]( target/EsempioFreeMarkerH2-0.0.1-SNAPSHOT.jar)

i comandi per farlo partire dal prompt  riga di comando 

java -jar EsempioFreeMarkerH2-0.0.1-SNAPSHOT.jar

il jar deve risiedere nella root del bash

* [ nel broswer http://localhost:8080 ]( http://localhost:8080)









# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/2.2.4.RELEASE/maven-plugin/)
* [Spring Data JPA](https://docs.spring.io/spring-boot/docs/2.2.4.RELEASE/reference/htmlsingle/#boot-features-jpa-and-spring-data)
* [Apache Freemarker](https://docs.spring.io/spring-boot/docs/2.2.4.RELEASE/reference/htmlsingle/#boot-features-spring-mvc-template-engines)
* [Spring Web](https://docs.spring.io/spring-boot/docs/2.2.4.RELEASE/reference/htmlsingle/#boot-features-developing-web-applications)

### Guides
The following guides illustrate how to use some features concretely:

* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)
* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/bookmarks/)

********************************
Tools and Technologies used

Spring Boot 2+

Maven 3+

STS or Eclipse IDE

Freemarker

JDK 8+ or OpenJDK 8+

H2 Database

Hibernate - 5.2.17.Final


Development Steps

Create a Spring Boot Application

Maven Dependencies

Project Structure

Contoller

Model

Repository

JPA Entity - Employee.java

JPA Repository - EmployeeRepository.java

Define Spring Controller - EmployeeController.java

Define View Templates

Run Application

Demo
