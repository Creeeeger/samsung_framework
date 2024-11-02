package com.samsung.android.knox.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AuthConfig implements Parcelable {
    public static String ANY_HOST = "*";
    public static int ANY_PORT = -1;
    public static final Parcelable.Creator<AuthConfig> CREATOR = new Parcelable.Creator<AuthConfig>() { // from class: com.samsung.android.knox.net.AuthConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthConfig[] newArray(int i) {
            return new AuthConfig[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthConfig createFromParcel(Parcel parcel) {
            return new AuthConfig(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final AuthConfig[] newArray(int i) {
            return new AuthConfig[i];
        }
    };
    public String mHost;
    public String mPassword;
    public int mPort;
    public String mUsername;

    public /* synthetic */ AuthConfig(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AuthConfig.class != obj.getClass()) {
            return false;
        }
        AuthConfig authConfig = (AuthConfig) obj;
        String str = this.mHost;
        if (str == null) {
            if (authConfig.mHost != null) {
                return false;
            }
        } else if (!str.equals(authConfig.mHost)) {
            return false;
        }
        String str2 = this.mPassword;
        if (str2 == null) {
            if (authConfig.mPassword != null) {
                return false;
            }
        } else if (!str2.equals(authConfig.mPassword)) {
            return false;
        }
        if (this.mPort != authConfig.mPort) {
            return false;
        }
        String str3 = this.mUsername;
        if (str3 == null) {
            if (authConfig.mUsername != null) {
                return false;
            }
        } else if (!str3.equals(authConfig.mUsername)) {
            return false;
        }
        return true;
    }

    public final String getHost() {
        return this.mHost;
    }

    public final String getPassword() {
        return this.mPassword;
    }

    public final int getPort() {
        return this.mPort;
    }

    public final String getUsername() {
        return this.mUsername;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.mHost;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode + 31) * 31;
        String str2 = this.mPassword;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (((i2 + hashCode2) * 31) + this.mPort) * 31;
        String str3 = this.mUsername;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return i3 + i;
    }

    public final boolean isValid() {
        if (TextUtils.isEmpty(this.mHost) || TextUtils.isEmpty(this.mUsername) || TextUtils.isEmpty(this.mPassword)) {
            return false;
        }
        if ((ANY_HOST.equals(this.mHost) && ANY_PORT != this.mPort) || (!ANY_HOST.equals(this.mHost) && ANY_PORT == this.mPort)) {
            return false;
        }
        return true;
    }

    public final void readFromParcel(Parcel parcel) {
        this.mUsername = parcel.readString();
        this.mPassword = parcel.readString();
        this.mHost = parcel.readString();
        this.mPort = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mUsername);
        parcel.writeString(this.mPassword);
        parcel.writeString(this.mHost);
        parcel.writeInt(this.mPort);
    }

    public AuthConfig(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.mUsername = str;
            this.mPassword = str2;
            this.mHost = ANY_HOST;
            this.mPort = ANY_PORT;
            return;
        }
        throw new IllegalArgumentException("Username and password cannot be null");
    }

    public AuthConfig(String str, int i, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            this.mUsername = str2;
            this.mPassword = str3;
            this.mHost = str;
            this.mPort = i;
            return;
        }
        throw new IllegalArgumentException("Host, username and password cannot be null");
    }

    private AuthConfig(Parcel parcel) {
        readFromParcel(parcel);
    }
}
