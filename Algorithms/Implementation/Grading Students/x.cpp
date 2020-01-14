vector<int> gradingStudents(vector<int> grades) {
    vector<int> results;
    for (int i=0; i<grades.size(); i++) {
        int grade = grades[i];
        int result = grade;
        if (grade >= 38) {
            int remainder = grade % 5;
            if (remainder >= 3)
                result = grade + (5-remainder);
        }
        results.push_back(result);
    }
    return results;
}