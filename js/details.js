
    function showMovieDetails(elemento) {
        // Obtén el ID de la película desde el atributo data-id
        var idPelicula = elemento.getAttribute('data-id');

        // Redirige a la página de detalles con el ID de la película
        window.location.href = 'pelicula.php?id=' + idPelicula;
    }


    function showSerieDetails(elemento) {
        // Obtén el ID de la película desde el atributo data-id
        var idPelicula = elemento.getAttribute('data-id');

        // Redirige a la página de detalles con el ID de la película
        window.location.href = 'serie.php?id=' + idSerie;
}

