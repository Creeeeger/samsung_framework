package android.os;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class BadTypeParcelableException extends BadParcelableException {
    public BadTypeParcelableException(String msg) {
        super(msg);
    }

    BadTypeParcelableException(Exception cause) {
        super(cause);
    }

    BadTypeParcelableException(String msg, Throwable cause) {
        super(msg, cause);
    }
}
