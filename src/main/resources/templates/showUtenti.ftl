<!DOCTYPE html>
<html>
    <head>
        <title>Demo Animals</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
         rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
         crossorigin="anonymous">
        
        
        
   <link href="css/bootstrap-combined.no-icons.min.css" rel="stylesheet"> 
        
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  


     
     

    <link href="css/plugins/blueimp/css/blueimp-gallery.min.css" rel="stylesheet">

       
        </head>
    <body>

    

    
      <div class="container">
       <div class="panel panel-primary">
             <div class="panel-heading">
   <h2>Demo  Animals</h2>
             </div>
              <a href="/">
             <span class="label label-primary">Torna pagina iniziale</span>
             </a> 
           <div class="panel-body">  

    
    
    <div class="ibox-content">
        <div class="table-responsive">
            <table  class="table table-striped table-bordered table-hover dataTables-example" >
                <thead>
                    <tr>
                                <th class="center">Numero</th>
                                <th class="center">Specie</th>
					            <th class="center">Genere</th>
					            <th class="center">Famiglia</th>
					       		<th class="center">Sottordine</th>
					       		<th class="center">Ordine</th>
					     		<th class="center">Classe</th>
					      		<th class="center">foto</th>
					      		<th class="center">Files</th> 
                 
                 
                    </tr>
                </thead>
                <tbody>
                 <#list quintopianoU as quintopiano>
                
                    <tr class="gradeX">
                                <td class="center">${quintopiano.id}</td>
                                <td class="center">${quintopiano.cognome}</td>
                                <td class="center">${quintopiano.nome}</td>
                                <td class="center">${quintopiano.telefono}</td>
                                <td class="center">${quintopiano.cellulare}</td>
                                <td class="center">${quintopiano.genere}</td>
                                <td class="center">${quintopiano.emailId}</td>
                                 <td>
                                 <#assign testFoto2="${quintopiano.foto}">
                                 <#if testFoto2?has_content>
                                <div class="lightBoxGallery">
                                <a href="${quintopiano.fotoBig}" title="${quintopiano.cognome}" data-gallery="">
                                  <img class="center" src="data:image/png;base64,${quintopiano.foto}">
                               
                               </a>
                             <!-- The Gallery as lightbox dialog, should be a child element of the document body -->
                                <div id="blueimp-gallery" class="blueimp-gallery">
                                <div class="slides"></div>
                                <h3 class="title"></h3>
                                <a class="prev">‹</a>
                                <a class="next">›</a>
                                <a class="close">×</a>
                                <a class="play-pause"></a>
                                <ol class="indicator"></ol>
                                 </div>
                             </div>     
                                 <#else>
                                 </#if>
                                 </td>
                                  <td class="center">${quintopiano.path}</td>
                          </tr>
                     </#list>
                    </tr>
                        <tfoot>
                            <tr>
                             <th class="center">Numero</th>
					          <th class="center">Specie</th>
					            <th class="center">Genere</th>
					            <th class="center">Famiglia</th>
					       		<th class="center">Sottordine</th>
					       		<th class="center">Ordine</th>
					     		<th class="center">Classe</th>
					      		<th class="center">foto</th>
					      		<th class="center">Files</th> 
                           </tr>
                        </tfoot>
                </tbody>
            </table>
        </div>
    </div>
               
            </div>
  </div>
           </div>       





      <!-- Mainly scripts -->
   <script src="js/jquery-3.1.1.min.js"></script> 
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="js/plugins/dataTables/datatables.min.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

 <script src="js/tableToJson/jquery.tabletojson.min.js"></script>
   
   <!-- blueimp gallery -->
    <script src="js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script> 

    <!-- Page-Level Scripts 
    
    
    -->
   



   
    
     </script>

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
    
    
           
           
     </body>
</html>