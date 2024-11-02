package kotlin.text;

import java.nio.charset.Charset;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Charsets {
    public static final Charset UTF_8;

    static {
        new Charsets();
        UTF_8 = Charset.forName("UTF-8");
        Charset.forName("UTF-16");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName("US-ASCII");
        Charset.forName("ISO-8859-1");
    }

    private Charsets() {
    }
}
