<nav class="navbar sticky-top navbar-expand-sm navbar-dark bg-secondary">
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
        </div>
        <div id="content"></div>
        <script>
            function loadDoc() {
                // let xhttp = new XMLHttpRequest();
                // xhttp.open("GET", 'http://api.serri.codefactory.live/random/', true);
                // xhttp.send();
                const xhr = new XMLHttpRequest();
                xhr.open('GET', 'http://api.serri.codefactory.live/random');
                xhr.responseType = 'json';
                xhr.onload = function(e) {
                    if (this.status == 200) {
                        // console.log(this.response); // JSON response  
                        let obj = this.response;
                        console.log(obj.joke);
                        // let obj = JSON.stringify(this.response);

                        document.getElementById("content").innerHTML = obj.joke;


                        // console.log(this.response);
                    }
                };
                xhr.send();


            }
            loadDoc();
        </script>
    </div>
</nav>