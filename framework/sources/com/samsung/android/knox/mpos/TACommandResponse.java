package com.samsung.android.knox.mpos;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public class TACommandResponse implements Parcelable {
    public static final Parcelable.Creator<TACommandResponse> CREATOR = new Parcelable.Creator<TACommandResponse>() { // from class: com.samsung.android.knox.mpos.TACommandResponse.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public TACommandResponse createFromParcel(Parcel in) {
            return new TACommandResponse(in);
        }

        @Override // android.os.Parcelable.Creator
        public TACommandResponse[] newArray(int size) {
            return new TACommandResponse[size];
        }
    };
    private static final String TAG = "TACommandResponse";
    public String mErrorMsg;
    public byte[] mResponse;
    public int mResponseCode;

    /* synthetic */ TACommandResponse(Parcel parcel, TACommandResponseIA tACommandResponseIA) {
        this(parcel);
    }

    public TACommandResponse() {
        this.mResponseCode = -1;
        this.mErrorMsg = null;
        this.mResponse = null;
    }

    public TACommandResponse(int responseId, String errorMsg, byte[] response) {
        this.mResponseCode = -1;
        this.mErrorMsg = null;
        this.mResponse = null;
        this.mResponseCode = responseId;
        this.mErrorMsg = errorMsg;
        this.mResponse = response;
    }

    /* renamed from: com.samsung.android.knox.mpos.TACommandResponse$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator<TACommandResponse> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public TACommandResponse createFromParcel(Parcel in) {
            return new TACommandResponse(in);
        }

        @Override // android.os.Parcelable.Creator
        public TACommandResponse[] newArray(int size) {
            return new TACommandResponse[size];
        }
    }

    private TACommandResponse(Parcel in) {
        this.mResponseCode = -1;
        this.mErrorMsg = null;
        this.mResponse = null;
        readFromParcel(in);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flag) {
        out.writeInt(this.mResponseCode);
        out.writeString(this.mErrorMsg);
        byte[] bArr = this.mResponse;
        int len = bArr == null ? 0 : bArr.length;
        out.writeInt(len);
        if (len > 0) {
            out.writeByteArray(this.mResponse);
        }
    }

    public void readFromParcel(Parcel in) {
        this.mResponseCode = in.readInt();
        this.mErrorMsg = in.readString();
        int len = in.readInt();
        if (len > 0) {
            byte[] bArr = new byte[len];
            this.mResponse = bArr;
            in.readByteArray(bArr);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump() {
    }
}
