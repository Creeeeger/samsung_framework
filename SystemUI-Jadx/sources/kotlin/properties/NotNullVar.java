package kotlin.properties;

import kotlin.jvm.internal.CallableReference;
import kotlin.reflect.KProperty;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class NotNullVar {
    public Object value;

    /* JADX WARN: Multi-variable type inference failed */
    public final Object getValue(KProperty kProperty) {
        Object obj = this.value;
        if (obj != null) {
            return obj;
        }
        throw new IllegalStateException("Property " + ((CallableReference) kProperty).getName() + " should be initialized before get.");
    }
}
