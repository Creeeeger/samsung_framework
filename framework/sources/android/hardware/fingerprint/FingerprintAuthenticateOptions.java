package android.hardware.fingerprint;

import android.annotation.NonNull;
import android.hardware.biometrics.AuthenticateOptions;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.AnnotationValidations;
import java.lang.annotation.Annotation;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class FingerprintAuthenticateOptions implements AuthenticateOptions, Parcelable {
    public static final Parcelable.Creator<FingerprintAuthenticateOptions> CREATOR = new Parcelable.Creator<FingerprintAuthenticateOptions>() { // from class: android.hardware.fingerprint.FingerprintAuthenticateOptions.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public FingerprintAuthenticateOptions[] newArray(int size) {
            return new FingerprintAuthenticateOptions[size];
        }

        @Override // android.os.Parcelable.Creator
        public FingerprintAuthenticateOptions createFromParcel(Parcel in) {
            return new FingerprintAuthenticateOptions(in);
        }
    };
    private String mAttributionTag;
    private final int mDisplayState;
    private final boolean mIgnoreEnrollmentState;
    private String mOpPackageName;
    private int mSensorId;
    private final int mUserId;

    /* renamed from: -$$Nest$smdefaultAttributionTag */
    static /* bridge */ /* synthetic */ String m1692$$Nest$smdefaultAttributionTag() {
        return defaultAttributionTag();
    }

    /* renamed from: -$$Nest$smdefaultDisplayState */
    static /* bridge */ /* synthetic */ int m1693$$Nest$smdefaultDisplayState() {
        return defaultDisplayState();
    }

    /* renamed from: -$$Nest$smdefaultIgnoreEnrollmentState */
    static /* bridge */ /* synthetic */ boolean m1694$$Nest$smdefaultIgnoreEnrollmentState() {
        return defaultIgnoreEnrollmentState();
    }

    /* renamed from: -$$Nest$smdefaultOpPackageName */
    static /* bridge */ /* synthetic */ String m1695$$Nest$smdefaultOpPackageName() {
        return defaultOpPackageName();
    }

    /* renamed from: -$$Nest$smdefaultSensorId */
    static /* bridge */ /* synthetic */ int m1696$$Nest$smdefaultSensorId() {
        return defaultSensorId();
    }

    /* renamed from: -$$Nest$smdefaultUserId */
    static /* bridge */ /* synthetic */ int m1697$$Nest$smdefaultUserId() {
        return defaultUserId();
    }

    private static int defaultUserId() {
        return 0;
    }

    private static int defaultSensorId() {
        return -1;
    }

    private static boolean defaultIgnoreEnrollmentState() {
        return false;
    }

    private static int defaultDisplayState() {
        return 0;
    }

    private static String defaultOpPackageName() {
        return "";
    }

    private static String defaultAttributionTag() {
        return null;
    }

    FingerprintAuthenticateOptions(int userId, int sensorId, boolean ignoreEnrollmentState, int displayState, String opPackageName, String attributionTag) {
        this.mUserId = userId;
        this.mSensorId = sensorId;
        this.mIgnoreEnrollmentState = ignoreEnrollmentState;
        this.mDisplayState = displayState;
        AnnotationValidations.validate((Class<? extends Annotation>) AuthenticateOptions.DisplayState.class, (Annotation) null, displayState);
        this.mOpPackageName = opPackageName;
        AnnotationValidations.validate((Class<NonNull>) NonNull.class, (NonNull) null, (Object) opPackageName);
        this.mAttributionTag = attributionTag;
    }

    @Override // android.hardware.biometrics.AuthenticateOptions
    public int getUserId() {
        return this.mUserId;
    }

    @Override // android.hardware.biometrics.AuthenticateOptions
    public int getSensorId() {
        return this.mSensorId;
    }

    public boolean isIgnoreEnrollmentState() {
        return this.mIgnoreEnrollmentState;
    }

    @Override // android.hardware.biometrics.AuthenticateOptions
    public int getDisplayState() {
        return this.mDisplayState;
    }

    @Override // android.hardware.biometrics.AuthenticateOptions
    public String getOpPackageName() {
        return this.mOpPackageName;
    }

    @Override // android.hardware.biometrics.AuthenticateOptions
    public String getAttributionTag() {
        return this.mAttributionTag;
    }

    public FingerprintAuthenticateOptions setSensorId(int value) {
        this.mSensorId = value;
        return this;
    }

    public FingerprintAuthenticateOptions setOpPackageName(String value) {
        this.mOpPackageName = value;
        AnnotationValidations.validate((Class<NonNull>) NonNull.class, (NonNull) null, (Object) value);
        return this;
    }

    public FingerprintAuthenticateOptions setAttributionTag(String value) {
        this.mAttributionTag = value;
        return this;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        FingerprintAuthenticateOptions that = (FingerprintAuthenticateOptions) o;
        if (this.mUserId == that.mUserId && this.mSensorId == that.mSensorId && this.mIgnoreEnrollmentState == that.mIgnoreEnrollmentState && this.mDisplayState == that.mDisplayState && Objects.equals(this.mOpPackageName, that.mOpPackageName) && Objects.equals(this.mAttributionTag, that.mAttributionTag)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int _hash = (1 * 31) + this.mUserId;
        return (((((((((_hash * 31) + this.mSensorId) * 31) + Boolean.hashCode(this.mIgnoreEnrollmentState)) * 31) + this.mDisplayState) * 31) + Objects.hashCode(this.mOpPackageName)) * 31) + Objects.hashCode(this.mAttributionTag);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        byte flg = this.mIgnoreEnrollmentState ? (byte) (0 | 4) : (byte) 0;
        if (this.mAttributionTag != null) {
            flg = (byte) (flg | 32);
        }
        dest.writeByte(flg);
        dest.writeInt(this.mUserId);
        dest.writeInt(this.mSensorId);
        dest.writeInt(this.mDisplayState);
        dest.writeString(this.mOpPackageName);
        String str = this.mAttributionTag;
        if (str != null) {
            dest.writeString(str);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    FingerprintAuthenticateOptions(Parcel in) {
        byte flg = in.readByte();
        boolean ignoreEnrollmentState = (flg & 4) != 0;
        int userId = in.readInt();
        int sensorId = in.readInt();
        int displayState = in.readInt();
        String opPackageName = in.readString();
        String attributionTag = (flg & 32) == 0 ? null : in.readString();
        this.mUserId = userId;
        this.mSensorId = sensorId;
        this.mIgnoreEnrollmentState = ignoreEnrollmentState;
        this.mDisplayState = displayState;
        AnnotationValidations.validate((Class<? extends Annotation>) AuthenticateOptions.DisplayState.class, (Annotation) null, displayState);
        this.mOpPackageName = opPackageName;
        AnnotationValidations.validate((Class<NonNull>) NonNull.class, (NonNull) null, (Object) opPackageName);
        this.mAttributionTag = attributionTag;
    }

    /* renamed from: android.hardware.fingerprint.FingerprintAuthenticateOptions$1 */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Parcelable.Creator<FingerprintAuthenticateOptions> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public FingerprintAuthenticateOptions[] newArray(int size) {
            return new FingerprintAuthenticateOptions[size];
        }

        @Override // android.os.Parcelable.Creator
        public FingerprintAuthenticateOptions createFromParcel(Parcel in) {
            return new FingerprintAuthenticateOptions(in);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private String mAttributionTag;
        private long mBuilderFieldsSet = 0;
        private int mDisplayState;
        private boolean mIgnoreEnrollmentState;
        private String mOpPackageName;
        private int mSensorId;
        private int mUserId;

        public Builder setUserId(int value) {
            checkNotUsed();
            this.mBuilderFieldsSet |= 1;
            this.mUserId = value;
            return this;
        }

        public Builder setSensorId(int value) {
            checkNotUsed();
            this.mBuilderFieldsSet |= 2;
            this.mSensorId = value;
            return this;
        }

        public Builder setIgnoreEnrollmentState(boolean value) {
            checkNotUsed();
            this.mBuilderFieldsSet |= 4;
            this.mIgnoreEnrollmentState = value;
            return this;
        }

        public Builder setDisplayState(int value) {
            checkNotUsed();
            this.mBuilderFieldsSet |= 8;
            this.mDisplayState = value;
            return this;
        }

        public Builder setOpPackageName(String value) {
            checkNotUsed();
            this.mBuilderFieldsSet |= 16;
            this.mOpPackageName = value;
            return this;
        }

        public Builder setAttributionTag(String value) {
            checkNotUsed();
            this.mBuilderFieldsSet |= 32;
            this.mAttributionTag = value;
            return this;
        }

        public FingerprintAuthenticateOptions build() {
            checkNotUsed();
            long j = this.mBuilderFieldsSet | 64;
            this.mBuilderFieldsSet = j;
            if ((j & 1) == 0) {
                this.mUserId = FingerprintAuthenticateOptions.m1697$$Nest$smdefaultUserId();
            }
            if ((this.mBuilderFieldsSet & 2) == 0) {
                this.mSensorId = FingerprintAuthenticateOptions.m1696$$Nest$smdefaultSensorId();
            }
            if ((this.mBuilderFieldsSet & 4) == 0) {
                this.mIgnoreEnrollmentState = FingerprintAuthenticateOptions.m1694$$Nest$smdefaultIgnoreEnrollmentState();
            }
            if ((this.mBuilderFieldsSet & 8) == 0) {
                this.mDisplayState = FingerprintAuthenticateOptions.m1693$$Nest$smdefaultDisplayState();
            }
            if ((this.mBuilderFieldsSet & 16) == 0) {
                this.mOpPackageName = FingerprintAuthenticateOptions.m1695$$Nest$smdefaultOpPackageName();
            }
            if ((this.mBuilderFieldsSet & 32) == 0) {
                this.mAttributionTag = FingerprintAuthenticateOptions.m1692$$Nest$smdefaultAttributionTag();
            }
            FingerprintAuthenticateOptions o = new FingerprintAuthenticateOptions(this.mUserId, this.mSensorId, this.mIgnoreEnrollmentState, this.mDisplayState, this.mOpPackageName, this.mAttributionTag);
            return o;
        }

        private void checkNotUsed() {
            if ((this.mBuilderFieldsSet & 64) != 0) {
                throw new IllegalStateException("This Builder should not be reused. Use a new Builder instance instead");
            }
        }
    }

    @Deprecated
    private void __metadata() {
    }
}
