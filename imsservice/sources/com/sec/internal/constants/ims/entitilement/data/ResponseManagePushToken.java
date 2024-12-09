package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ResponseManagePushToken extends NSDSResponse {
    public static final Parcelable.Creator<ResponseManagePushToken> CREATOR = new Parcelable.Creator<ResponseManagePushToken>() { // from class: com.sec.internal.constants.ims.entitilement.data.ResponseManagePushToken.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseManagePushToken createFromParcel(Parcel parcel) {
            return new ResponseManagePushToken(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseManagePushToken[] newArray(int i) {
            return new ResponseManagePushToken[i];
        }
    };

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ResponseManagePushToken(Parcel parcel) {
        super(parcel);
    }

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
