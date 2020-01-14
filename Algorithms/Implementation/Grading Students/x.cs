class Result
{

    /*
     * Complete the 'gradingStudents' function below.
     *
     * The function is expected to return an INTEGER_ARRAY.
     * The function accepts INTEGER_ARRAY grades as parameter.
     */

    public static List<int> gradingStudents(List<int> grades)
    {
        List<int> results = new List<int>();
        foreach(int grade in grades)
        {
            int result = grade;
            if (grade >= 38) {
                int remainder = grade % 5;
                if (remainder >= 3)
                    result = grade + (5-remainder);
            }
            results.Add(result);
        }
        return results;
    }
}