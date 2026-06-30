void main() {
    List<String>  Subjects = ['Computer','English','Art'];
    print('Total of subjects: ${Subjects.length}');
    print('First subject is ${Subjects[0]}'+' and Last subject is ${Subjects[2]}');

    Subjects.add('Science ');
    print(Subjects);
    
    Map<String,int> studentScores = {'Computer':67,'Science ':20};
    print('Total score for Science is ${studentScores['Science ']}');

    studentScores['English'] = 76;
    print('Update Total score: ${studentScores}');
    print('Every subjects in map: ${[Subjects]}');
    print('Every score in map: ${[studentScores]}');

    print('Subjects with an "a" in it name');
    studentScores.forEach((Subjects,studentScores){
        if (Subjects.toLowerCase().contains('a'))
            print('$Subjects:$studentScores');
    });
    print('Subject with a score more than 50');
    studentScores.forEach((Subjects,studentScores){
        if (studentScores > 50)
            print('$Subjects: $studentScores');
    });
}