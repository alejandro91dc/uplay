document.addEventListener('DOMContentLoaded', function () {
    // Espera 1 segundo (ajusta según sea necesario) antes de realizar la solicitud AJAX
    setTimeout(() => {
        fetch('datos.json') // Cambia la ruta según sea necesario
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(backgroundData => {
                // Ahora, 'backgroundData' contiene los datos de datos.json
                console.log(backgroundData);

                // Inicializar el carrusel con los datos de la base de datos
                const imageCarousel = document.getElementById('image-carousel');
                const prevBtn = document.getElementById('prev-btn');
                const nextBtn = document.getElementById('next-btn');

                let currentIndex = 0;
                let autoplayInterval;

                if (imageCarousel && backgroundData.length > 0) {
                    backgroundData.forEach(item => {
                        const itemContainer = document.createElement('div');
                        itemContainer.className = 'carousel-item';

                        const imgElement = document.createElement('img');
                        imgElement.src = item.rutabg;
                        imgElement.className = 'carousel-image';

                        const h1Element = document.createElement('h1');
                        h1Element.textContent = item.Nombre;

                        const sliderFg = document.createElement('div');
                        sliderFg.id = 'slider-fg';
                        sliderFg.className = 'hoverStyle';

                        sliderFg.appendChild(h1Element);
                        itemContainer.appendChild(imgElement);
                        itemContainer.appendChild(sliderFg);

                        imageCarousel.appendChild(itemContainer);
                    });

                    // Funciones para navegar por el carrusel
                    function showImage(index) {
                        currentIndex = index;
                        const offset = -index * 100 + '%'; // Ajusta según el ancho de cada imagen
                        imageCarousel.style.transform = 'translateX(' + offset + ')';
                      }
                      
                      // ... (código anterior)
                      
                      // Funciones para navegar por el carrusel
                      function showNextImage() {
                        const nextIndex = (currentIndex + 1) % backgroundData.length;
                        showImage(nextIndex);
                      }
                      
                      function showPrevImage() {
                        const prevIndex = (currentIndex - 1 + backgroundData.length) % backgroundData.length;
                        showImage(prevIndex);
                      }
                    // Eventos de los botones
                    nextBtn.addEventListener('click', showNextImage);
                    prevBtn.addEventListener('click', showPrevImage);

                    // Autoplay
                    autoplayInterval = setInterval(() => {
                        showNextImage();
                    }, 4000); // Cambia la duración del intervalo según sea necesario (aquí es 2000 ms o 2 segundos).
                } else {
                    console.error("No se encontró el elemento con ID 'image-carousel' o no hay datos en la base de datos.");
                }
            })
            .catch(error => {
                console.error('Error en la solicitud AJAX:', error);
            });
    }, 0); // 1000 milis



});
