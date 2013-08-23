package timeline

class Timeline {

    String autor
    String frase

    static constraints = {
        autor nullable: false, blank: false
        frase nullable: false, blank: false, maxSize: 1000
    }
}
