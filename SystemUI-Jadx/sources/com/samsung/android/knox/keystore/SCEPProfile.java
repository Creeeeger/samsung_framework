package com.samsung.android.knox.keystore;

import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@Deprecated
/* loaded from: classes3.dex */
public final class SCEPProfile extends EnrollmentProfile {
    public int challengeLength;
    public byte[] challengePassword;
    public String scepProfileName;
    public String scepUrl;
    public String subjectAlternativeName;
    public String subjectName;
    public long validitytimeForChallenge;

    public SCEPProfile(Parcel parcel) {
        this.profileType = parcel.readString();
        try {
            this.scepUrl = parcel.readString();
            this.scepProfileName = parcel.readString();
            int readInt = parcel.readInt();
            this.challengeLength = readInt;
            byte[] bArr = new byte[readInt];
            this.challengePassword = bArr;
            parcel.readByteArray(bArr);
            this.subjectName = parcel.readString();
            this.validitytimeForChallenge = parcel.readLong();
            this.keySize = parcel.readInt();
            this.keyPairAlgorithm = parcel.readString();
            this.subjectAlternativeName = parcel.readString();
            this.certificateAlias = parcel.readString();
            this.keystoreType = parcel.readString();
            this.credentialStorageBundle = parcel.readBundle();
            this.hashAlgorithmType = parcel.readString();
            this.csrExtra = parcel.readBundle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.samsung.android.knox.keystore.EnrollmentProfile
    public final String getProfileType() {
        return this.profileType;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(SCEPProfile.class.getName());
        parcel.writeString(CEPConstants.CERT_PROFILE_TYPE_SCEP);
        parcel.writeString(this.scepUrl);
        parcel.writeString(this.scepProfileName);
        parcel.writeInt(this.challengePassword.length);
        parcel.writeByteArray(this.challengePassword);
        parcel.writeString(this.subjectName);
        parcel.writeLong(this.validitytimeForChallenge);
        parcel.writeInt(this.keySize);
        parcel.writeString(this.keyPairAlgorithm);
        parcel.writeString(this.subjectAlternativeName);
        parcel.writeString(this.certificateAlias);
        parcel.writeString(this.keystoreType);
        parcel.writeBundle(this.credentialStorageBundle);
        parcel.writeString(this.hashAlgorithmType);
        parcel.writeBundle(this.csrExtra);
    }

    public SCEPProfile() {
    }
}
