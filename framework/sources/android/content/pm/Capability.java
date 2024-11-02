package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* loaded from: classes.dex */
public final class Capability implements Parcelable {
    public static final Parcelable.Creator<Capability> CREATOR = new Parcelable.Creator<Capability>() { // from class: android.content.pm.Capability.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public Capability[] newArray(int size) {
            return new Capability[size];
        }

        @Override // android.os.Parcelable.Creator
        public Capability createFromParcel(Parcel in) {
            return new Capability(in);
        }
    };
    private final String mName;

    /* synthetic */ Capability(Builder builder, CapabilityIA capabilityIA) {
        this(builder);
    }

    /* synthetic */ Capability(Parcel parcel, CapabilityIA capabilityIA) {
        this(parcel);
    }

    public Capability(String name) {
        Objects.requireNonNull(name);
        if (name.contains("/")) {
            throw new IllegalArgumentException("'/' is not permitted in the capability name");
        }
        this.mName = name;
    }

    Capability(Capability orig) {
        this(orig.mName);
    }

    private Capability(Builder builder) {
        this(builder.mName);
    }

    private Capability(Parcel in) {
        this.mName = in.readString();
    }

    public String getName() {
        return this.mName;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Capability)) {
            return false;
        }
        return this.mName.equals(((Capability) obj).mName);
    }

    public int hashCode() {
        return this.mName.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mName);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: android.content.pm.Capability$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<Capability> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public Capability[] newArray(int size) {
            return new Capability[size];
        }

        @Override // android.os.Parcelable.Creator
        public Capability createFromParcel(Parcel in) {
            return new Capability(in);
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private final String mName;

        public Builder(String name) {
            Objects.requireNonNull(name);
            if (name.contains("/")) {
                throw new IllegalArgumentException("'/' is not permitted in the capability name");
            }
            this.mName = name;
        }

        public Capability build() {
            return new Capability(this);
        }
    }
}
