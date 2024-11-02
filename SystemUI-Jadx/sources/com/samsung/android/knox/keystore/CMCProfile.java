package com.samsung.android.knox.keystore;

import android.os.Bundle;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@Deprecated
/* loaded from: classes3.dex */
public final class CMCProfile extends EnrollmentProfile {
    public static final String KEY_ENCR_FROM_SERVER = "requestkeyencrfromserver";
    public static final String KEY_ENCR_TYPE = "serverkeygenencrtype";
    public String estServerUrl;
    public Bundle extras;
    public String oneTimePassword;
    public String password;
    public boolean serverSideKeyGeneration;
    public String subjectAlterNativeName;
    public String subjectName;
    public String userName;

    public CMCProfile(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.samsung.android.knox.keystore.EnrollmentProfile
    public final String getProfileType() {
        return this.profileType;
    }

    public final void readFromParcel(Parcel parcel) {
        boolean z;
        try {
            this.profileType = parcel.readString();
            this.estServerUrl = parcel.readString();
            this.subjectName = parcel.readString();
            this.subjectAlterNativeName = parcel.readString();
            this.keySize = parcel.readInt();
            this.keyPairAlgorithm = parcel.readString();
            this.certificateAlias = parcel.readString();
            this.keystoreType = parcel.readString();
            this.userName = parcel.readString();
            this.password = parcel.readString();
            this.oneTimePassword = parcel.readString();
            if (parcel.readInt() == 0) {
                z = false;
            } else {
                z = true;
            }
            this.serverSideKeyGeneration = z;
            this.credentialStorageBundle = parcel.readBundle();
            this.hashAlgorithmType = parcel.readString();
            this.extras = parcel.readBundle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeString(CMCProfile.class.getName());
            parcel.writeString(CEPConstants.CERT_PROFILE_TYPE_CMC);
            parcel.writeString(this.estServerUrl);
            parcel.writeString(this.subjectName);
            parcel.writeString(this.subjectAlterNativeName);
            parcel.writeInt(this.keySize);
            parcel.writeString(this.keyPairAlgorithm);
            parcel.writeString(this.certificateAlias);
            parcel.writeString(this.keystoreType);
            parcel.writeString(this.userName);
            parcel.writeString(this.password);
            parcel.writeString(this.oneTimePassword);
            parcel.writeInt(this.serverSideKeyGeneration ? 1 : 0);
            parcel.writeBundle(this.credentialStorageBundle);
            parcel.writeString(this.hashAlgorithmType);
            parcel.writeBundle(this.extras);
        }
    }

    public CMCProfile() {
    }
}
