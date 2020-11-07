<%-- 
    Document   : index
    Created on : 08-mar-2019, 11:55:01
    Author     : OSI-DESARROLLO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Consulta pública - ensap </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="<c:url value="/PUBLIC/css/pokemon.css"/>" rel="stylesheet">
</head>
<style>
.text-wrap{
    white-space:normal;
    text-align: center;
}
.width-50{
    width:50px;
}
.width-200{
    width:200px;
}
.width-400{
    width:400px;
}
.width-350{
    width:350px;
}
.width-600{
    width:1000px;
}


.externo {
  border: 1px solid blue;
  align-items: center;
  display: flex;
  justify-content: center;
}
.interno {
  border: 1px dashed goldenrod;
}
.slider_area::before {
 
    opacity: 0.9 !important;
}
table.dataTable thead th, table.dataTable thead td {
    padding: 10px 18px;
    border-bottom: 1px solid #32D2D4 !important;
    
}

table {

    border-color: #32D2D4 !important;
}


#tablePrincipal_length .form-control {
  display:  inline-block !important;
}

#tablePrincipal_length .nice-select {
  display: none !important;
}

th.dt-center, td.dt-center { text-align: center; }
.slider_area .single_slider {
    height: 800px !important;
    }
    
.slider_area {
  margin-bottom: -90px !important;
}
</style>
<body>
 <div class="page-content page-container" id="page-content">
     <div class="padding">
         <div class="row container d-flex justify-content-center">
             <div class="col-md-8">
                 <div class="box">
                     <div class="box-header with-border">
                         <h3 class="box-title">Bordered Table with pagination</h3>
                     </div> <!-- /.box-header -->
                     <div class="box-body">
                         <table class="table table-bordered">
                             <tbody>
                                 <tr>
                                     <th style="width: 10px">#</th>
                                     <th>Work</th>
                                     <th>Progress</th>
                                     <th style="width: 40px">Label</th>
                                 </tr>
                                 <tr>
                                     <td>1.</td>
                                     <td>Install New Software</td>
                                     <td>
                                         <div class="progress progress-xs">
                                             <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                                         </div>
                                     </td>
                                     <td><span class="badge bg-red">55%</span></td>
                                 </tr>
                                 <tr>
                                     <td>2.</td>
                                     <td>Upload new SQL file</td>
                                     <td>
                                         <div class="progress progress-xs">
                                             <div class="progress-bar progress-bar-yellow" style="width: 70%"></div>
                                         </div>
                                     </td>
                                     <td><span class="badge bg-yellow">70%</span></td>
                                 </tr>
                                 <tr>
                                     <td>3.</td>
                                     <td>Cron job running</td>
                                     <td>
                                         <div class="progress progress-xs progress-striped active">
                                             <div class="progress-bar progress-bar-primary" style="width: 30%"></div>
                                         </div>
                                     </td>
                                     <td><span class="badge bg-light-blue">30%</span></td>
                                 </tr>
                                 <tr>
                                     <td>4.</td>
                                     <td>Fix and remove bugs</td>
                                     <td>
                                         <div class="progress progress-xs progress-striped active">
                                             <div class="progress-bar progress-bar-success" style="width: 90%"></div>
                                         </div>
                                     </td>
                                     <td><span class="badge bg-green">90%</span></td>
                                 </tr>
                             </tbody>
                         </table>
                     </div> <!-- /.box-body -->
                     <div class="box-footer clearfix">
                         <ul class="pagination pagination-sm no-margin pull-right">
                             <li><a href="#" data-abc="true">«</a></li>
                             <li><a href="#" data-abc="true">1</a></li>
                             <li><a href="#" data-abc="true">2</a></li>
                             <li><a href="#" data-abc="true">3</a></li>
                             <li><a href="#" data-abc="true">»</a></li>
                         </ul>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
</body>

</html>