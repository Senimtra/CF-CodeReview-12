<script>
    function funnyTask() {
        const serriJokes = new XMLHttpRequest();
        serriJokes.open('GET', 'http://api.serri.codefactory.live/random');
        serriJokes.responseType = 'json';
        serriJokes.onload = function(e) {
            if (this.status == 200) {
                let jokeObj = this.response;
                document.getElementById("jokes").innerHTML = jokeObj.joke;
            }
        };
        serriJokes.send();
    }
    funnyTask();
</script>