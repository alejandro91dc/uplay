function showDropdown() {
    const userDropdown = document.getElementById('user-dropdown');
    userDropdown.classList.add('visible');
  }

  function hideDropdown() {
    const userDropdown = document.getElementById('user-dropdown');
    
    // Agregar un retraso antes de quitar la clase
    setTimeout(function() {
      userDropdown.classList.remove('visible');
    }, 2000); // Ejemplo de delay de 2 segundos (ajusta según tus necesidades)
  }