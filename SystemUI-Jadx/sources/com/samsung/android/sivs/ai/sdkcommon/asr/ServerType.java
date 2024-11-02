package com.samsung.android.sivs.ai.sdkcommon.asr;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ServerType implements Parcelable {
    public static final Parcelable.Creator<ServerType> CREATOR = new Parcelable.Creator<ServerType>() { // from class: com.samsung.android.sivs.ai.sdkcommon.asr.ServerType.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServerType createFromParcel(Parcel parcel) {
            return new ServerType(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServerType[] newArray(int i) {
            return new ServerType[i];
        }
    };
    private final ServerFeature feature;
    private final boolean isDefault;
    private final String typeName;

    public ServerType(ServerFeature serverFeature, String str) {
        this(serverFeature, str, false);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        ServerType serverType = (ServerType) obj;
        if (this.feature == serverType.feature && this.typeName.equals(serverType.typeName)) {
            return true;
        }
        return false;
    }

    public ServerFeature getFeature() {
        return this.feature;
    }

    public String getName() {
        return this.typeName;
    }

    public int hashCode() {
        return Objects.hash(this.feature, this.typeName);
    }

    public boolean isDefault() {
        return this.isDefault;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ServerType{name='");
        sb.append(this.typeName);
        sb.append("', feature='");
        sb.append(this.feature);
        sb.append("', isDefault='");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isDefault, "'}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.feature);
        parcel.writeString(this.typeName);
        parcel.writeInt(this.isDefault ? 1 : 0);
    }

    public ServerType(ServerFeature serverFeature, String str, boolean z) {
        this.feature = serverFeature;
        this.typeName = str;
        this.isDefault = z;
    }

    public ServerType(Parcel parcel) {
        this.feature = (ServerFeature) parcel.readSerializable();
        this.typeName = parcel.readString();
        this.isDefault = parcel.readInt() == 1;
    }
}
