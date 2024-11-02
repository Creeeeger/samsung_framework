package com.samsung.android.sivs.ai.sdkcommon.asr;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ServerInfo extends ServerType {
    public static final Parcelable.Creator<ServerInfo> CREATOR = new Parcelable.Creator<ServerInfo>() { // from class: com.samsung.android.sivs.ai.sdkcommon.asr.ServerInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServerInfo createFromParcel(Parcel parcel) {
            return new ServerInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServerInfo[] newArray(int i) {
            return new ServerInfo[i];
        }
    };
    private final String endpoint;

    public ServerInfo(ServerFeature serverFeature, String str, String str2) {
        super(serverFeature, str);
        this.endpoint = str2;
    }

    @Override // com.samsung.android.sivs.ai.sdkcommon.asr.ServerType, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.samsung.android.sivs.ai.sdkcommon.asr.ServerType
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !super.equals(obj)) {
            return false;
        }
        return this.endpoint.equals(((ServerInfo) obj).endpoint);
    }

    public String getEndpoint() {
        return this.endpoint;
    }

    @Override // com.samsung.android.sivs.ai.sdkcommon.asr.ServerType
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.endpoint);
    }

    @Override // com.samsung.android.sivs.ai.sdkcommon.asr.ServerType
    public String toString() {
        return "ServerInfo{endpoint='" + this.endpoint + "', " + super.toString() + '}';
    }

    @Override // com.samsung.android.sivs.ai.sdkcommon.asr.ServerType, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.endpoint);
    }

    public ServerInfo(ServerFeature serverFeature, String str, String str2, boolean z) {
        super(serverFeature, str, z);
        this.endpoint = str2;
    }

    public ServerInfo(Parcel parcel) {
        super(parcel);
        this.endpoint = parcel.readString();
    }
}
