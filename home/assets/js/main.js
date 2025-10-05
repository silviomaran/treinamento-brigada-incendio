document.addEventListener('DOMContentLoaded', function() {

    // Função para ativar os contadores animados do Elementor
    function activateCounters() {
        // Verifica se jQuery e o plugin Numerator estão disponíveis
        if (typeof jQuery === 'undefined' || typeof jQuery.fn.numerator === 'undefined') {
            console.error('jQuery ou o plugin jQuery Numerator não foram carregados.');
            return;
        }

        jQuery('.elementor-counter-number').each(function() {
            var $this = jQuery(this);
            var settings = {
                easing: 'swing',
                duration: $this.data('duration') || 2000,
                toValue: $this.data('to-value') || 0
            };
            $this.numerator(settings);
        });
    }

    // Executa a função
    activateCounters();

});