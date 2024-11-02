package android.gesture;

/* loaded from: classes.dex */
public class Prediction {
    public final String name;
    public double score;

    public Prediction(String label, double predictionScore) {
        this.name = label;
        this.score = predictionScore;
    }

    public String toString() {
        return this.name;
    }
}
