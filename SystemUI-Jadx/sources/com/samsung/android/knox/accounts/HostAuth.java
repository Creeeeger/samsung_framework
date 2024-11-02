package com.samsung.android.knox.accounts;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class HostAuth implements Parcelable {
    public static final String ACCOUNT_KEY = "accountKey";
    public static final String ADDRESS = "address";
    public static final Parcelable.Creator<HostAuth> CREATOR = new Parcelable.Creator<HostAuth>() { // from class: com.samsung.android.knox.accounts.HostAuth.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final HostAuth[] newArray(int i) {
            return new HostAuth[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final HostAuth createFromParcel(Parcel parcel) {
            return new HostAuth(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final HostAuth[] newArray(int i) {
            return new HostAuth[i];
        }
    };
    public static final String DOMAIN = "domain";
    public static final String FLAGS = "flags";
    public static final int FLAGS_ACCEPT_ALL_CERT = 8;
    public static final int FLAGS_USE_SSL = 1;
    public static final int FLAGS_USE_TLS = 2;
    public static final String ID = "_id";
    public static final String LOGIN = "login";
    public static final String PASSWORD = "password";
    public static final String PORT = "port";
    public static final String PROTOCOL = "protocol";
    public boolean acceptAllCertificates;
    public long accountKey;
    public String address;
    public String domain;
    public int flags;
    public int id;
    public String login;
    public String password;
    public int port;
    public String protocol;
    public boolean useSSL;
    public boolean useTLS;

    public /* synthetic */ HostAuth(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final void readFromParcel(Parcel parcel) {
        boolean z;
        boolean z2;
        this.id = parcel.readInt();
        this.protocol = parcel.readString();
        this.address = parcel.readString();
        this.port = parcel.readInt();
        this.flags = parcel.readInt();
        boolean z3 = true;
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.useSSL = z;
        if (parcel.readInt() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.useTLS = z2;
        if (parcel.readInt() == 0) {
            z3 = false;
        }
        this.acceptAllCertificates = z3;
        this.login = parcel.readString();
        this.password = parcel.readString();
        this.domain = parcel.readString();
        this.accountKey = parcel.readLong();
    }

    public final String toString() {
        return "_id=" + this.id + " protocol=" + this.protocol + " address=" + this.address + " port=" + this.port + " usessl = " + this.useSSL + " usetls = " + this.useTLS + " acceptallcertificate = " + this.acceptAllCertificates + " login=" + this.login + " password= **** domain=" + this.domain + " accountKey=" + this.accountKey;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeString(this.protocol);
        parcel.writeString(this.address);
        parcel.writeInt(this.port);
        parcel.writeInt(this.flags);
        parcel.writeInt(this.useSSL ? 1 : 0);
        parcel.writeInt(this.useTLS ? 1 : 0);
        parcel.writeInt(this.acceptAllCertificates ? 1 : 0);
        parcel.writeString(this.login);
        parcel.writeString(this.password);
        parcel.writeString(this.domain);
        parcel.writeLong(this.accountKey);
    }

    public HostAuth() {
        this.useSSL = false;
        this.useTLS = false;
        this.acceptAllCertificates = false;
    }

    private HostAuth(Parcel parcel) {
        this.useSSL = false;
        this.useTLS = false;
        this.acceptAllCertificates = false;
        readFromParcel(parcel);
    }
}
