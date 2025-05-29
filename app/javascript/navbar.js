document.addEventListener('DOMContentLoaded', function() {
  // Torna a função global
  window.toggleDropdown = function() {
    const dropdown = document.getElementById('userDropdown');
    dropdown.classList.toggle('show');
  }

  // Fecha dropdown ao clicar fora
  document.addEventListener('click', function(event) {
    const dropdown = document.getElementById('userDropdown');
    const toggle = document.querySelector('.dropdown-toggle');
    
    if (dropdown && toggle && !toggle.contains(event.target) && !dropdown.contains(event.target)) {
      dropdown.classList.remove('show');
    }
  });
});