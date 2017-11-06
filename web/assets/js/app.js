var texto = $("#id"),btn = $("#iniciar"), mapa = $('#mapa');
const urlimg = 'http://localhost:8084/p7/public/%d';
const item = '<div class="result"><h2>$n</h2><img src="$i" alt=""><div class="conte"><h3>Clase: </h3><div class="par">$c</div><h3>Propiedades:</h3><ul  class="pro">$p</ul></div></div>';
              
            

btn.on('click',function(){
    mapa.html("");
    
    console.log(texto.val());
    var url = 'http://localhost:8084/p7/api.jsp?id='+texto.val();
    $.getJSON( url, function( data ) {
    var items = [];
    var size = data.size();
    console.log(data);
    
    data.forEach(function(element) {
        console.log(element.nombre)
        var n = item,lo = urlimg;
        var pro = lis(element.propiedades);
        console.log(pro);
        var imgurl = lo.replace('%d',re(element.img));
        var aux = n.replace('$n',element.nombre).replace('$i',imgurl).replace('$c',element.clase).replace('$p',pro);
        console.log(aux);
        mapa.append(aux);
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