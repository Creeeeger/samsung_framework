package androidx.picker.features.observable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BooleanState implements MutableState {
    public boolean value;

    public BooleanState(boolean z) {
        this.value = z;
    }

    @Override // androidx.picker.features.observable.MutableState
    public final Object getValue() {
        return Boolean.valueOf(this.value);
    }

    @Override // androidx.picker.features.observable.MutableState
    public final void setValue(Object obj) {
        this.value = ((Boolean) obj).booleanValue();
    }
}
