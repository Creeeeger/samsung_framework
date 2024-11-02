package com.samsung.android.knox.license;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LicenseResult implements Parcelable {
    public static final Parcelable.Creator<LicenseResult> CREATOR = new Parcelable.Creator<LicenseResult>() { // from class: com.samsung.android.knox.license.LicenseResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final LicenseResult[] newArray(int i) {
            return new LicenseResult[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final LicenseResult createFromParcel(Parcel parcel) {
            return new LicenseResult(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final LicenseResult[] newArray(int i) {
            return new LicenseResult[i];
        }
    };
    public int errorCode;
    public ArrayList<String> grantedPermissions;
    public String licenseKey;
    public String packageName;
    public Status status;
    public Type type;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum Status {
        SUCCESS("success"),
        FAILURE(null);

        String value;

        Status(String str) {
            this.value = str;
        }

        public static Status fromStatusString(String str) {
            Status status = SUCCESS;
            if (!status.value.equals(str)) {
                return FAILURE;
            }
            return status;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum Type {
        ELM_ACTIVATION(800),
        ELM_VALIDATION(801),
        ELM_DEACTIVATION(802),
        KLM_ACTIVATION(800),
        KLM_VALIDATION(801),
        KLM_DEACTIVATION(802),
        UNDEFINED(-100);

        int status;

        Type(int i) {
            this.status = i;
        }

        public static Type fromElmStatus(int i) {
            return (Type) Arrays.stream(values()).filter(new LicenseResult$Type$$ExternalSyntheticLambda0(i, 1)).findFirst().orElse(UNDEFINED);
        }

        public static Type fromKlmStatus(int i) {
            return (Type) Arrays.stream(values()).filter(new LicenseResult$Type$$ExternalSyntheticLambda0(i, 0)).findFirst().orElse(UNDEFINED);
        }

        public static /* synthetic */ boolean lambda$fromElmStatus$0(int i, Type type) {
            if (type.status == i && type.name().startsWith("ELM")) {
                return true;
            }
            return false;
        }

        public static /* synthetic */ boolean lambda$fromKlmStatus$1(int i, Type type) {
            if (type.status == i && type.name().startsWith("KLM")) {
                return true;
            }
            return false;
        }
    }

    public /* synthetic */ LicenseResult(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final ArrayList<String> getGrantedPermissions() {
        return this.grantedPermissions;
    }

    public final String getLicenseKey() {
        return this.licenseKey;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final Type getType() {
        return this.type;
    }

    public final boolean isActivation() {
        Type type = this.type;
        if (type != Type.ELM_ACTIVATION && type != Type.KLM_ACTIVATION) {
            return false;
        }
        return true;
    }

    public final boolean isSuccess() {
        if (this.status == Status.SUCCESS) {
            return true;
        }
        return false;
    }

    public final void readFromParcel(Parcel parcel) {
        this.packageName = parcel.readString();
        this.status = Status.valueOf(parcel.readString());
        this.type = Type.valueOf(parcel.readString());
        this.errorCode = parcel.readInt();
        this.grantedPermissions = parcel.readArrayList(null);
        this.licenseKey = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.status.name());
        parcel.writeString(this.type.name());
        parcel.writeInt(this.errorCode);
        parcel.writeList(this.grantedPermissions);
        parcel.writeString(this.licenseKey);
    }

    private LicenseResult(Parcel parcel) {
        readFromParcel(parcel);
    }

    public LicenseResult(String str, String str2, int i, Type type, ArrayList<String> arrayList, String str3) {
        this(str, Status.fromStatusString(str2), i, type, arrayList, str3);
    }

    public LicenseResult(String str, Status status, int i, Type type, ArrayList<String> arrayList, String str2) {
        this.packageName = str;
        this.status = status;
        this.type = type;
        this.errorCode = i;
        this.grantedPermissions = arrayList;
        this.licenseKey = str2;
    }
}
