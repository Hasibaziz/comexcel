 (function () {
              var counter = 0,
        divs = $('#div1, #div2, #div3');

              function showDiv() {
                  divs.hide() // hide all divs
            .filter(function (index) { return index == counter % 3; }) // figure out correct div to show
            .show('fast'); // and show it

                  counter++;
              }; // function to loop through divs and show correct div

              showDiv(); // show first div    

              setInterval(function () {
                  showDiv(); // show next div
              }, 5000); // do this every 10 seconds    
          })();