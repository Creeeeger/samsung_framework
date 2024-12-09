package javax.mail;

/* loaded from: classes.dex */
public abstract class BodyPart implements Part {
    protected Multipart parent;

    void setParent(Multipart multipart) {
        this.parent = multipart;
    }
}
