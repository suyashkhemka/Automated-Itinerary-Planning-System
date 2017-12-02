<html>
  <head>
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
    
    <script type="text/javascript">
        var doc = new jsPDF();
        var specialElementHandlers = {
        '#editor': function (element, renderer) {
        return true;
        }
        };

        $(document).ready(function() {
        $('#btn').click(function () {
        doc.fromHTML($('#content').html(), 15, 15, {
        'width': 170,
        'elementHandlers': specialElementHandlers
        });
        doc.save('sample-content.pdf');
        });
        });
    </script>
  
  </head>
  
  <body>
    
      <div id="content">
        <h3>The quick brown fox jumps over the lazy dog</h3>
      </div>
    <div id="editor"></div>
    <button id="btn">Generate PDF</button>
  
  </body>
</html>