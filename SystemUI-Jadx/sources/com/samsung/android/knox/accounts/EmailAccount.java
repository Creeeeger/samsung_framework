package com.samsung.android.knox.accounts;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class EmailAccount implements Parcelable {
    public static final Parcelable.Creator<EmailAccount> CREATOR = new Parcelable.Creator<EmailAccount>() { // from class: com.samsung.android.knox.accounts.EmailAccount.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final EmailAccount createFromParcel(Parcel parcel) {
            return new EmailAccount(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final EmailAccount[] newArray(int i) {
            return new EmailAccount[i];
        }

        @Override // android.os.Parcelable.Creator
        public final EmailAccount createFromParcel(Parcel parcel) {
            return new EmailAccount(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final EmailAccount[] newArray(int i) {
            return new EmailAccount[i];
        }
    };
    public String emailAddress;
    public String incomingProtocol;
    public boolean incomingServerAcceptAllCertificates;
    public String incomingServerAddress;
    public String incomingServerLogin;
    public String incomingServerPassword;
    public int incomingServerPort;
    public boolean incomingServerUseSSL;
    public boolean incomingServerUseTLS;
    public boolean isNotify;
    public String outgoingProtocol;
    public boolean outgoingServerAcceptAllCertificates;
    public String outgoingServerAddress;
    public String outgoingServerLogin;
    public String outgoingServerPassword;
    public int outgoingServerPort;
    public boolean outgoingServerUseSSL;
    public boolean outgoingServerUseTLS;
    public String signature;

    public EmailAccount() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final void readFromParcel(Parcel parcel) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        this.emailAddress = parcel.readString();
        this.incomingProtocol = parcel.readString();
        this.incomingServerAddress = parcel.readString();
        this.incomingServerLogin = parcel.readString();
        this.incomingServerPassword = parcel.readString();
        this.outgoingProtocol = parcel.readString();
        this.outgoingServerAddress = parcel.readString();
        this.outgoingServerLogin = parcel.readString();
        this.outgoingServerPassword = parcel.readString();
        this.signature = parcel.readString();
        this.incomingServerPort = parcel.readInt();
        this.outgoingServerPort = parcel.readInt();
        boolean z7 = true;
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.outgoingServerUseSSL = z;
        if (parcel.readInt() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.outgoingServerUseTLS = z2;
        if (parcel.readInt() != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.outgoingServerAcceptAllCertificates = z3;
        if (parcel.readInt() != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.incomingServerUseSSL = z4;
        if (parcel.readInt() != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        this.incomingServerUseTLS = z5;
        if (parcel.readInt() != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.incomingServerAcceptAllCertificates = z6;
        if (parcel.readInt() == 0) {
            z7 = false;
        }
        this.isNotify = z7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.emailAddress);
        parcel.writeString(this.incomingProtocol);
        parcel.writeString(this.incomingServerAddress);
        parcel.writeString(this.incomingServerLogin);
        parcel.writeString(this.incomingServerPassword);
        parcel.writeString(this.outgoingProtocol);
        parcel.writeString(this.outgoingServerAddress);
        parcel.writeString(this.outgoingServerLogin);
        parcel.writeString(this.outgoingServerPassword);
        parcel.writeString(this.signature);
        parcel.writeInt(this.incomingServerPort);
        parcel.writeInt(this.outgoingServerPort);
        parcel.writeInt(this.outgoingServerUseSSL ? 1 : 0);
        parcel.writeInt(this.outgoingServerUseTLS ? 1 : 0);
        parcel.writeInt(this.outgoingServerAcceptAllCertificates ? 1 : 0);
        parcel.writeInt(this.incomingServerUseSSL ? 1 : 0);
        parcel.writeInt(this.incomingServerUseTLS ? 1 : 0);
        parcel.writeInt(this.incomingServerAcceptAllCertificates ? 1 : 0);
        parcel.writeInt(this.isNotify ? 1 : 0);
    }

    public EmailAccount(Parcel parcel) {
        readFromParcel(parcel);
    }

    public EmailAccount(String str, String str2, String str3, int i, String str4, String str5, String str6, String str7, int i2, String str8, String str9) {
        this.emailAddress = str;
        this.incomingProtocol = str2;
        this.incomingServerAddress = str3;
        this.incomingServerLogin = str4;
        this.incomingServerPassword = str5;
        this.outgoingProtocol = str6;
        this.outgoingServerAddress = str7;
        this.outgoingServerLogin = str8;
        this.outgoingServerPassword = str9;
        this.signature = "Send from SamsungMobile";
        this.incomingServerPort = i;
        this.outgoingServerPort = i2;
        this.outgoingServerUseSSL = true;
        this.outgoingServerUseTLS = false;
        this.outgoingServerAcceptAllCertificates = false;
        this.incomingServerUseSSL = true;
        this.incomingServerUseTLS = false;
        this.incomingServerAcceptAllCertificates = false;
        this.isNotify = true;
    }
}
