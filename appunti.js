document.addEventListener("DOMContentLoaded", () => {
    const pdfData = {
        "Analisi Matematica 1": [{ title: "Appunti Analisi 1", file: "pdf/analisi1.pdf", color: "math" }],
        "Algebra Lineare": [{ title: "WikiHow - Algebra e Geometria", file: "pdf/WikiHow.pdf", color: "math" }],
        "Analisi Matematica 2": [{ title: "Schema Analisi 2", file: "pdf/Schema.pdf", color: "math" }],
        "Statistica": [{ title: "Script R - Esercizi ed Esami", file: "pdf/esami.R", color: "math" }],

        "Programmazione C": [{ title: "Rubrica C", file: "pdf/rubrica.c", color: "info" }],
        "Algoritmi e Metodi di Ottimizzazione": [
            { title: "Algoritmi - Teoria", file: "pdf/algmo.pdf", color: "info" },
            { title: "Algoritmi - Esercizi (Itinere)", file: "pdf/Itinere.pdf", color: "info" },
            { title: "Teoria Metodi - PL e PLI", file: "pdf/RECAP PL E PLI.pdf", color: "info" },
            { title: "Esercizi Metodi 2", file: "pdf/Esami metodi 2.pdf", color: "info" }
        ],
        "Basi di Dati": [{ title: "Query & Diagrammi ER", file: "pdf/Query e diagrammi ER.pdf", color: "info" }],
        "Economia dei Mercati Digitali": [{ title: "Economia Teoria", file: "pdf/economia.pdf", color: "econ" }],
        "Laboratorio di Python": [
            { title: "Guida all'esame finale", file: "pdf/completa.html", color: "info" },
            { title: "Guida alla prova intermedia", file: "pdf/parziali.html", color: "info" },
        ]
    };

    document.querySelectorAll("article").forEach(article => {
        const heading = article.querySelector("h3, h4, h5, h6");
        if (!heading) return;
        const title = heading.textContent.trim();

        const files = pdfData[title];
        if (!files) return;

        const container = document.createElement("div");
        container.className = "pdf-buttons";

        files.forEach(({ title, file, color }) => {
            const btn = document.createElement("a");
            btn.href = file;
            btn.textContent = title;
            btn.className = `pdf-button ${color}`;
            btn.setAttribute("target", "_blank");
            container.appendChild(btn);
        });

        article.appendChild(container);
    });
});

document.addEventListener("DOMContentLoaded", () => {
    const trigger = document.querySelector(".menu-trigger");
    const menu = document.querySelector(".dropdown-tech-content");
  
    trigger.addEventListener("click", () => {
      menu.style.display = menu.style.display === "flex" ? "none" : "flex";
    });
  
    document.addEventListener("click", (e) => {
      if (!trigger.contains(e.target) && !menu.contains(e.target)) {
        menu.style.display = "none";
      }
    });
  });