document.addEventListener('DOMContentLoaded', () => {
    const experienceTitles = document.querySelectorAll('.experience-title');

    experienceTitles.forEach(title => {
        title.addEventListener('click', () => {
            const description = title.nextElementSibling.nextElementSibling;
            if (description.classList.contains('expanded')) {
                description.classList.remove('expanded');
            } else {
                // Fechar todas as outras descrições abertas
                document.querySelectorAll('.experience-description.expanded').forEach(desc => {
                    desc.classList.remove('expanded');
                });
                description.classList.add('expanded');
            }
        });
    });
});
