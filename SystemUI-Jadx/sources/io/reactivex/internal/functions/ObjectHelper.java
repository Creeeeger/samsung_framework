package io.reactivex.internal.functions;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ObjectHelper {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class BiObjectPredicate {
    }

    static {
        new BiObjectPredicate();
    }

    private ObjectHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static void requireNonNull(Object obj, String str) {
        if (obj != null) {
        } else {
            throw new NullPointerException(str);
        }
    }
}
