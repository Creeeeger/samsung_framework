package androidx.core.animation;

import android.util.Property;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class IntProperty extends Property {
    public IntProperty(String str) {
        super(Integer.class, str);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ((Integer) obj2).intValue();
        setValue();
    }

    public abstract void setValue();

    public IntProperty() {
        super(Integer.class, "");
    }
}
