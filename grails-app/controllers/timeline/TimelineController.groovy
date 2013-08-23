package timeline

class TimelineController {

    static scaffold = true

    def index() {
        redirect(action: 'fraseAleatoria')
    }


    def home() {
        render("<h1>Minha aplicação</h1>")
    }

    def fraseAleatoria() {

        def todasFrases = Timeline.list()

        def frase

        if (todasFrases.size() > 0) {
            def randomIndex = new Random().nextInt(todasFrases.size())
            frase = todasFrases[randomIndex]
        } else {

            frase = new Timeline(autor: 'Leonardo', frase: 'Minha frase teste')
        }
        [abc: frase]
    }

}
