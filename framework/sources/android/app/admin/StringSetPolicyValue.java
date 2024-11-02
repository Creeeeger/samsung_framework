package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class StringSetPolicyValue extends PolicyValue<Set<String>> {
    public static final Parcelable.Creator<StringSetPolicyValue> CREATOR = new Parcelable.Creator<StringSetPolicyValue>() { // from class: android.app.admin.StringSetPolicyValue.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public StringSetPolicyValue createFromParcel(Parcel source) {
            return new StringSetPolicyValue(source);
        }

        @Override // android.os.Parcelable.Creator
        public StringSetPolicyValue[] newArray(int size) {
            return new StringSetPolicyValue[size];
        }
    };

    public StringSetPolicyValue(Set<String> value) {
        super(value);
    }

    public StringSetPolicyValue(Parcel source) {
        this(readValues(source));
    }

    private static Set<String> readValues(Parcel source) {
        Set<String> values = new HashSet<>();
        int size = source.readInt();
        for (int i = 0; i < size; i++) {
            values.add(source.readString());
        }
        return values;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        StringSetPolicyValue other = (StringSetPolicyValue) o;
        return Objects.equals(getValue(), other.getValue());
    }

    public int hashCode() {
        return Objects.hash(getValue());
    }

    public String toString() {
        return "StringSetPolicyValue { " + getValue() + " }";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(getValue().size());
        for (String entry : getValue()) {
            dest.writeString(entry);
        }
    }

    /* renamed from: android.app.admin.StringSetPolicyValue$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<StringSetPolicyValue> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public StringSetPolicyValue createFromParcel(Parcel source) {
            return new StringSetPolicyValue(source);
        }

        @Override // android.os.Parcelable.Creator
        public StringSetPolicyValue[] newArray(int size) {
            return new StringSetPolicyValue[size];
        }
    }
}
