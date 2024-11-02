package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* loaded from: classes.dex */
public final class BooleanPolicyValue extends PolicyValue<Boolean> {
    public static final Parcelable.Creator<BooleanPolicyValue> CREATOR = new Parcelable.Creator<BooleanPolicyValue>() { // from class: android.app.admin.BooleanPolicyValue.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public BooleanPolicyValue createFromParcel(Parcel source) {
            return new BooleanPolicyValue(source);
        }

        @Override // android.os.Parcelable.Creator
        public BooleanPolicyValue[] newArray(int size) {
            return new BooleanPolicyValue[size];
        }
    };

    /* synthetic */ BooleanPolicyValue(Parcel parcel, BooleanPolicyValueIA booleanPolicyValueIA) {
        this(parcel);
    }

    public BooleanPolicyValue(boolean value) {
        super(Boolean.valueOf(value));
    }

    private BooleanPolicyValue(Parcel source) {
        this(source.readBoolean());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        BooleanPolicyValue other = (BooleanPolicyValue) o;
        return Objects.equals(getValue(), other.getValue());
    }

    public int hashCode() {
        return Objects.hash(getValue());
    }

    public String toString() {
        return "BooleanPolicyValue { mValue= " + getValue() + " }";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBoolean(getValue().booleanValue());
    }

    /* renamed from: android.app.admin.BooleanPolicyValue$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<BooleanPolicyValue> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public BooleanPolicyValue createFromParcel(Parcel source) {
            return new BooleanPolicyValue(source);
        }

        @Override // android.os.Parcelable.Creator
        public BooleanPolicyValue[] newArray(int size) {
            return new BooleanPolicyValue[size];
        }
    }
}
