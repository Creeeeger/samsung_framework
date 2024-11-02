package kotlin.jvm.internal;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import java.util.Map;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TypeIntrinsics {
    public static Map asMutableMap(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableMap)) {
            throwCce(obj, "kotlin.collections.MutableMap");
            throw null;
        }
        try {
            return (Map) obj;
        } catch (ClassCastException e) {
            Intrinsics.sanitizeStackTrace(TypeIntrinsics.class.getName(), e);
            throw e;
        }
    }

    public static void beforeCheckcastToFunctionOfArity(int i, Object obj) {
        int i2;
        if (obj != null) {
            boolean z = false;
            if (obj instanceof Function) {
                if (obj instanceof FunctionBase) {
                    i2 = ((FunctionBase) obj).getArity();
                } else if (obj instanceof Function0) {
                    i2 = 0;
                } else if (obj instanceof Function1) {
                    i2 = 1;
                } else if (obj instanceof Function2) {
                    i2 = 2;
                } else if (obj instanceof Function3) {
                    i2 = 3;
                } else if (obj instanceof Function4) {
                    i2 = 4;
                } else if (obj instanceof Function5) {
                    i2 = 5;
                } else if (obj instanceof Function6) {
                    i2 = 6;
                } else {
                    i2 = -1;
                }
                if (i2 == i) {
                    z = true;
                }
            }
            if (!z) {
                throwCce(obj, "kotlin.jvm.functions.Function" + i);
                throw null;
            }
        }
    }

    public static void throwCce(Object obj, String str) {
        String name;
        if (obj == null) {
            name = "null";
        } else {
            name = obj.getClass().getName();
        }
        ClassCastException classCastException = new ClassCastException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(name, " cannot be cast to ", str));
        Intrinsics.sanitizeStackTrace(TypeIntrinsics.class.getName(), classCastException);
        throw classCastException;
    }
}
