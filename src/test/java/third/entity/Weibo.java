package third.entity;

/**
 * Created by piqiu on 2/18/16.
 */
public class Weibo {

    private String id;
    private String city;

    public Weibo(){}

    public Weibo(String id, String city) {
        this.id = id;
        this.city = city;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
