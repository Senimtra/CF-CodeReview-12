<nav class="navbar sticky-top d-flex flex-column navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="create.php">Add Location</a>
                </li>
            </ul>
            <ul class="nav-item">
                <li>
                    <button type="button" class="btn btn-sm btn-secondary mt-2 me-1">API</button>
                    <button type="button" class="btn btn-sm btn-secondary mt-2" onclick="funnyTask()">Joke!</button>
                </li>
            </ul>
        </div>
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
    </div>
    <div id="jokes" class="text-light border-top border-secondary pt-1 text-center">&nbsp;</div>
</nav>