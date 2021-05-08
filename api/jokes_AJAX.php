<script>
    function funnyTask() {
        var serriJokes = new XMLHttpRequest();
        serriJokes.onreadystatechange = function() {
            if (serriJokes.readyState === 4) {
                if (serriJokes.status === 200) {
                    document.getElementById("jokes").innerHTML = serriJokes.responseText;
                }
            }
        }
        serriJokes.open('GET', 'api/api.php');
        serriJokes.send();
    };
    funnyTask();

    function funnyTask2() {
        var serriJokes = new XMLHttpRequest();
        serriJokes.onreadystatechange = function() {
            if (serriJokes.readyState === 4) {
                if (serriJokes.status === 200) {
                    document.getElementById("jokes").innerHTML = serriJokes.responseText;
                }
            }
        }
        serriJokes.open('GET', '../api/api.php');
        serriJokes.send();
    };
</script>