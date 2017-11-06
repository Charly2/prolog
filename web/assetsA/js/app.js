var texto = $("#id"),btn = $("#iniciar"), mapa = $('#mapa');
const urlimg = 'http://localhost:8084/p7/public/%d';
//const item = '<div class="result"><h2>$n</h2><img src="$i" alt=""><div class="conte"><h3>Clase: </h3><div class="par">$c</div><h3>Propiedades:</h3><ul  class="pro">$p</ul></div></div>';
const item = '<div class="result"><h2>$n</h2><img src="$i" alt=""><div class="conte"><p>$d</p><p><button class="detabtn" onclick="es(this,sin$is,t$y)">Detalles</button></p><p class="det" id="sin$id" >Usted padece algunos de los siguientes sintomas: <br/> <ul id="t$r">$s</ul></p></div></div>';
                  
                    
                
            
              
            

btn.on('click',function(){
    mapa.html("");
    var params = getparms();

    
    //var url = 'http://localhost:8084/p7/enfermedad.jsp?id='+texto.val();
    var url = "http://localhost:8084/p7/enfermedad.jsp?id="+params;
    console.log(url);
    $.getJSON( url, function( data ) {
    var items = [];
    var size = data.size();
  //  console.log(data);
    var i = 0;
    data.forEach(function(element) {
      //  console.log(element.nombre)
        var n = item,lo = urlimg;
        var pro = lis(element.nombre);
  //      console.log(pro);
        var imgurl = lo.replace('%d',re(element.descripcion));
        var aux = n.replace('$n',element.sintomas).replace('$i',imgurl).replace('$d',element.img).replace('$s',pro).replace('$id',i).replace('$is',i).replace('$r',i).replace('$y',i);
      //  console.log(aux);
        mapa.append(aux);
        i++;
    }, this);


    }); 


});

function re(str){
    return str.replace("'","").replace("'","");
}

function lis(str){
    var retu="";
    var a =str.replace("[","").replace("]","");
    var s = a.split(',');
    //console.log(s);
    
    for(i=0; i<s.length ; i++){
        retu+='<li>'+s[i]+'</li>';
      //  console.log(s[i]);
    }
    
return retu;
}


var sintomasObj = ['El paciente tiene dolor en las articulaciones','El paciente tiene dolor agudo en vientre','El paciente tiene diarrea','El paciente tiene muchos gases','El paciente esta cubierto de puntos','El paciente tiene temperatura alta','El paciente tiene ojos rojos','El paciente tiene tos seca','El paciente tiene mucho estornudo'];
var sinArray = [0,0,0,0,0,0,0,0,0];

function getparms(){
    var re = "",i=0;;
    var ind = getin();
    var size = (ind.length-1);
    console.log(size);
    ind.forEach(function(e){
        console.log(sintomasObj[e]);
         re += "'"+sintomasObj[e]+"'";
         if(i<size  && i>=0){
           re+=','
         }
        i++;
    });
    console.log(re);
    return re;
}



function getin(){
    var re = [],i=0;
    sinArray.forEach(function(el){
       // console.log(el)
        if(el ==1){
            re.push(i);
        }
        i++;
    });
    console.log(re);
    return re;
}
 
function cambia(ind){
    if( sinArray[ind] == 0){
        sinArray[ind] = 1;
    }else if( sinArray[ind] == 1){
        sinArray[ind] = 0;
    }
   // console.log(sinArray);
}




es = function(t,e,r){
    console.log(t);
    t.style.display="none"
    $(e).toggleClass("activa");
    $(r).toggleClass("activa");
}










