package android.app.admin;

import android.os.Parcelable;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class PolicyValue<V> implements Parcelable {
    private V mValue;

    public PolicyValue(V v) {
        this.mValue = (V) Objects.requireNonNull(v);
    }

    public PolicyValue() {
    }

    public V getValue() {
        return this.mValue;
    }

    public void setValue(V value) {
        this.mValue = value;
    }
}
