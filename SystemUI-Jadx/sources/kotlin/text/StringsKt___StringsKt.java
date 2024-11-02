package kotlin.text;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class StringsKt___StringsKt extends StringsKt___StringsJvmKt {
    public static final String take(String str) {
        int length = str.length();
        if (500 <= length) {
            length = 500;
        }
        return str.substring(0, length);
    }
}
