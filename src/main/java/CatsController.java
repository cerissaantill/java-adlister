
import java.util.ArrayList;
import java.util.List;


public class CatsController {

    // static array of cats
    static List<Cat> cats;


    // Constructor:
    public CatsController() {
        if (cats == null)
            cats = new ArrayList<>();
        init();
    }




    // get Cat by name
    public Cat getCat(int id) {      // getCat(String name) is a public method
        return cats.get(id);
    }


       // call all Cats
       public List<Cat> getAllCats() {      // return a list of Cat objects
        return cats;
       }


        // add a Cat
        public void addCat(Cat cat) {
        cats.add(cat);
        }

        // remove a Cat
        public void removeCat(int id) {
            cats.remove(this.getCat(id));
        }

        //
        public void updateCat(int id, Cat cat) {
            cats.set(id, cat);
        }


        private void init() {
            this.addCat(new Cat("Mace", 3, "cat1.jpg"));
            this.addCat(new Cat("Helen", 6, "cat2.jpg"));
            this.addCat(new Cat("Lilou", 5, "cat3.jpg"));
        }


}  //  CatsController class
