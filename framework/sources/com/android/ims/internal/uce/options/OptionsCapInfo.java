package com.android.ims.internal.uce.options;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.ims.internal.uce.common.CapInfo;

/* loaded from: classes4.dex */
public class OptionsCapInfo implements Parcelable {
    public static final Parcelable.Creator<OptionsCapInfo> CREATOR = new Parcelable.Creator<OptionsCapInfo>() { // from class: com.android.ims.internal.uce.options.OptionsCapInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public OptionsCapInfo createFromParcel(Parcel source) {
            return new OptionsCapInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        public OptionsCapInfo[] newArray(int size) {
            return new OptionsCapInfo[size];
        }
    };
    private CapInfo mCapInfo;
    private String mSdp;

    /* synthetic */ OptionsCapInfo(Parcel parcel, OptionsCapInfoIA optionsCapInfoIA) {
        this(parcel);
    }

    public static OptionsCapInfo getOptionsCapInfoInstance() {
        return new OptionsCapInfo();
    }

    public String getSdp() {
        return this.mSdp;
    }

    public void setSdp(String sdp) {
        this.mSdp = sdp;
    }

    public OptionsCapInfo() {
        this.mSdp = "";
        this.mCapInfo = new CapInfo();
    }

    public CapInfo getCapInfo() {
        return this.mCapInfo;
    }

    public void setCapInfo(CapInfo capInfo) {
        this.mCapInfo = capInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mSdp);
        dest.writeParcelable(this.mCapInfo, flags);
    }

    /* renamed from: com.android.ims.internal.uce.options.OptionsCapInfo$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 implements Parcelable.Creator<OptionsCapInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public OptionsCapInfo createFromParcel(Parcel source) {
            return new OptionsCapInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        public OptionsCapInfo[] newArray(int size) {
            return new OptionsCapInfo[size];
        }
    }

    private OptionsCapInfo(Parcel source) {
        this.mSdp = "";
        readFromParcel(source);
    }

    public void readFromParcel(Parcel source) {
        this.mSdp = source.readString();
        this.mCapInfo = (CapInfo) source.readParcelable(CapInfo.class.getClassLoader(), CapInfo.class);
    }
}
