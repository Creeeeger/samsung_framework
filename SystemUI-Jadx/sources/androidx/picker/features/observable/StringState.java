package androidx.picker.features.observable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StringState implements MutableState {
    public String value;

    public StringState(String str) {
        this.value = str;
    }

    @Override // androidx.picker.features.observable.MutableState
    public final Object getValue() {
        return this.value;
    }

    @Override // androidx.picker.features.observable.MutableState
    public final void setValue(Object obj) {
        this.value = (String) obj;
    }
}
