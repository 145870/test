package JSTL_work;

public class Student {
    private String name;
    private String clazz;
    private int age;
    private int score;

    public Student() {

    }

    public Student(String name, String clazz, int age, int score) {
        this.name = name;
        this.clazz = clazz;
        this.age = age;
        this.score = score;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClazz() {
        return clazz;
    }

    public void setClazz(String clazz) {
        this.clazz = clazz;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
