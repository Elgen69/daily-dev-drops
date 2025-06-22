// notes.kt - Simple note manager

data class Note(val id: Int, val content: String)

class Notes {
    private val notes = mutableListOf<Note>()

    fun add(note: String) {
        notes.add(Note(notes.size + 1, note))
    }

    fun showAll() {
        notes.forEach { println("${it.id}: ${it.content}") }
    }
}

fun main() {
    val myNotes = Notes()
    myNotes.add("Kotlin is fun!")
    myNotes.add("Study OOP")
    myNotes.showAll()
}
