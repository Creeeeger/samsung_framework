package com.samsung.android.allshare;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: IAppControlAPI.java */
/* loaded from: classes5.dex */
public class EventSync implements Parcelable {
    public static final Parcelable.Creator<EventSync> CREATOR = new Parcelable.Creator<EventSync>() { // from class: com.samsung.android.allshare.EventSync.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public EventSync createFromParcel(Parcel source) {
            EventSync eventsync = new EventSync();
            eventsync.mWhat = source.readInt();
            eventsync.mArg1 = source.readInt();
            eventsync.mArg2 = source.readInt();
            eventsync.mStr = source.readString();
            return eventsync;
        }

        @Override // android.os.Parcelable.Creator
        public EventSync[] newArray(int size) {
            return new EventSync[size];
        }
    };
    public int mArg1;
    public int mArg2;
    public String mStr;
    public int mWhat;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mWhat);
        dest.writeInt(this.mArg1);
        dest.writeInt(this.mArg2);
        dest.writeString(this.mStr);
    }

    /* compiled from: IAppControlAPI.java */
    /* renamed from: com.samsung.android.allshare.EventSync$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator<EventSync> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public EventSync createFromParcel(Parcel source) {
            EventSync eventsync = new EventSync();
            eventsync.mWhat = source.readInt();
            eventsync.mArg1 = source.readInt();
            eventsync.mArg2 = source.readInt();
            eventsync.mStr = source.readString();
            return eventsync;
        }

        @Override // android.os.Parcelable.Creator
        public EventSync[] newArray(int size) {
            return new EventSync[size];
        }
    }
}
