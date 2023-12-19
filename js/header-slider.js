
    document.addEventListener('DOMContentLoaded', function () {
        const images = [
            'assets/img/fondoheader.jpg',
            'assets/img/fondoheader.jpg',
            'assets/img/fondoheader.jpg',
            'assets/img/fondoheader.jpg',
         
            // Agrega más rutas de imágenes según sea necesario
        ];

        const imageCarousel = document.getElementById('image-carousel');
        const prevBtn = document.getElementById('prev-btn');
        const nextBtn = document.getElementById('next-btn');

        let currentIndex = 0;
        let autoplayInterval;

        // Inicializar el carrusel con las imágenes
        if (imageCarousel) {
            images.forEach(imagePath => {
                const imgElement = document.createElement('img');
                imgElement.src = imagePath;
                imgElement.className = 'carousel-image';
                imageCarousel.appendChild(imgElement);
            });
        } else {
            console.error("No se encontró el elemento con ID 'image-carousel'");
        }

        // Funciones para navegar por el carrusel
        function showImage(index) {
            const offset = -index * 100 + '%';
            imageCarousel.style.transform = 'translateX(' + offset + ')';
        }

        function showNextImage() {
            currentIndex = (currentIndex + 1) % images.length;
            showImage(currentIndex);
        }

        function showPrevImage() {
            currentIndex = (currentIndex - 1 + images.length) % images.length;
            showImage(currentIndex);
        }

        // Eventos de los botones
        nextBtn.addEventListener('click', () => {
            clearInterval(autoplayInterval);
            showNextImage();
        });

        prevBtn.addEventListener('click', () => {
            clearInterval(autoplayInterval);
            showPrevImage();
        });

        // Autoplay
        autoplayInterval = setInterval(() => {
            showNextImage();
        }, 2000); // Cambia la duración del intervalo según sea necesario (aquí es 2000 ms o 2 segundos).
    });
