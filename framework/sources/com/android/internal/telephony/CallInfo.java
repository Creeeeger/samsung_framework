package com.android.internal.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public class CallInfo implements Parcelable {
    public static final Parcelable.Creator<CallInfo> CREATOR = new Parcelable.Creator<CallInfo>() { // from class: com.android.internal.telephony.CallInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CallInfo createFromParcel(Parcel source) {
            return new CallInfo(source.readString());
        }

        @Override // android.os.Parcelable.Creator
        public CallInfo[] newArray(int size) {
            return new CallInfo[size];
        }
    };
    private String handle;

    public CallInfo(String handle) {
        this.handle = handle;
    }

    public String getHandle() {
        return this.handle;
    }

    /* renamed from: com.android.internal.telephony.CallInfo$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator<CallInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CallInfo createFromParcel(Parcel source) {
            return new CallInfo(source.readString());
        }

        @Override // android.os.Parcelable.Creator
        public CallInfo[] newArray(int size) {
            return new CallInfo[size];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel destination, int flags) {
        destination.writeString(this.handle);
    }
}
