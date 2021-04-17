function szamol() {
    var letszam =  document.getElementById("letszam").value;
    var ejszaka =  document.getElementById("ejszaka").value;
    var orszag = document.getElementById("orszag").value;
    var ar = 5600;
    if(orszag== "g"){
         ar = 6200;
    }
    if(orszag == "h"){
        ar = 5000;
    }
    if (orszag== "t") {
        ar = 5800;
    }
    var fizetendo = ejszaka * letszam* ar;

    //--számolás--
      
    //------------
    document.getElementById('eredmeny').value = fizetendo.toLocaleString() +" Ft";
    
}