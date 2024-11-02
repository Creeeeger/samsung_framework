package com.sec.ims.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class NameAddr implements Parcelable {
    public static final Parcelable.Creator<NameAddr> CREATOR = new Parcelable.Creator<NameAddr>() { // from class: com.sec.ims.util.NameAddr.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NameAddr createFromParcel(Parcel parcel) {
            return new NameAddr(parcel, 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NameAddr[] newArray(int i) {
            return new NameAddr[i];
        }
    };
    private String mDisplayName;
    private ImsUri mUri;

    public /* synthetic */ NameAddr(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NameAddr nameAddr = (NameAddr) obj;
        String str = this.mDisplayName;
        if (str == null) {
            if (nameAddr.mDisplayName != null) {
                return false;
            }
        } else if (!str.equals(nameAddr.mDisplayName)) {
            return false;
        }
        ImsUri imsUri = this.mUri;
        if (imsUri == null) {
            if (nameAddr.mUri == null) {
                return true;
            }
            return false;
        }
        return imsUri.equals(nameAddr.mUri);
    }

    public String getDisplayName() {
        return this.mDisplayName;
    }

    public ImsUri getUri() {
        return this.mUri;
    }

    public int hashCode() {
        int hashCode;
        String str = this.mDisplayName;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode + 31) * 31;
        ImsUri imsUri = this.mUri;
        if (imsUri != null) {
            i = imsUri.hashCode();
        }
        return i2 + i;
    }

    public void setDisplayName(String str) {
        this.mDisplayName = str;
    }

    public String toString() {
        if (TextUtils.isEmpty(this.mDisplayName)) {
            ImsUri imsUri = this.mUri;
            if (imsUri == null) {
                return "";
            }
            return imsUri.toString();
        }
        return this.mDisplayName + "<" + this.mUri + ">";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mDisplayName);
        parcel.writeParcelable(this.mUri, i);
    }

    public NameAddr(String str, ImsUri imsUri) {
        this.mDisplayName = str;
        this.mUri = imsUri;
    }

    public NameAddr(String str, String str2) {
        this(str, ImsUri.parse(str2));
    }

    public NameAddr(ImsUri imsUri) {
        this.mDisplayName = "";
        this.mUri = imsUri;
    }

    private NameAddr(Parcel parcel) {
        this.mDisplayName = "";
        this.mDisplayName = parcel.readString();
        this.mUri = (ImsUri) parcel.readParcelable(ImsUri.class.getClassLoader());
    }
}
