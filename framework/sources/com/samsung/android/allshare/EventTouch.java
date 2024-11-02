package com.samsung.android.allshare;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: IAppControlAPI.java */
/* loaded from: classes5.dex */
public class EventTouch implements Parcelable {
    public static final Parcelable.Creator<EventTouch> CREATOR = new Parcelable.Creator<EventTouch>() { // from class: com.samsung.android.allshare.EventTouch.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public EventTouch createFromParcel(Parcel source) {
            EventTouch eventsync = new EventTouch();
            eventsync.mX = source.readInt();
            eventsync.mY = source.readInt();
            eventsync.mDX = source.readInt();
            eventsync.mDY = source.readInt();
            eventsync.mAccelLevel = source.readInt();
            eventsync.mFingerId = source.readInt();
            eventsync.mType = source.readInt();
            eventsync.mDistance = source.readInt();
            eventsync.mDegree = source.readInt();
            eventsync.mStr = source.readString();
            return eventsync;
        }

        @Override // android.os.Parcelable.Creator
        public EventTouch[] newArray(int size) {
            return new EventTouch[size];
        }
    };
    public int mAccelLevel;
    public int mDX;
    public int mDY;
    public int mDegree;
    public int mDistance;
    public int mFingerId;
    public String mStr;
    public int mType;
    public int mX;
    public int mY;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mX);
        dest.writeInt(this.mY);
        dest.writeInt(this.mDX);
        dest.writeInt(this.mDY);
        dest.writeInt(this.mAccelLevel);
        dest.writeInt(this.mFingerId);
        dest.writeInt(this.mType);
        dest.writeInt(this.mDistance);
        dest.writeInt(this.mDegree);
        dest.writeString(this.mStr);
    }

    /* compiled from: IAppControlAPI.java */
    /* renamed from: com.samsung.android.allshare.EventTouch$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator<EventTouch> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public EventTouch createFromParcel(Parcel source) {
            EventTouch eventsync = new EventTouch();
            eventsync.mX = source.readInt();
            eventsync.mY = source.readInt();
            eventsync.mDX = source.readInt();
            eventsync.mDY = source.readInt();
            eventsync.mAccelLevel = source.readInt();
            eventsync.mFingerId = source.readInt();
            eventsync.mType = source.readInt();
            eventsync.mDistance = source.readInt();
            eventsync.mDegree = source.readInt();
            eventsync.mStr = source.readString();
            return eventsync;
        }

        @Override // android.os.Parcelable.Creator
        public EventTouch[] newArray(int size) {
            return new EventTouch[size];
        }
    }
}
