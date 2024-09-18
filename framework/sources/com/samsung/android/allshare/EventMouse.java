package com.samsung.android.allshare;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IAppControlAPI.java */
/* loaded from: classes5.dex */
public class EventMouse implements Parcelable {
    public static final Parcelable.Creator<EventMouse> CREATOR = new Parcelable.Creator<EventMouse>() { // from class: com.samsung.android.allshare.EventMouse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EventMouse createFromParcel(Parcel source) {
            EventMouse eventsync = new EventMouse();
            eventsync.mType = source.readInt();
            eventsync.mX = source.readInt();
            eventsync.mY = source.readInt();
            eventsync.mDX = source.readInt();
            eventsync.mDY = source.readInt();
            eventsync.mButton = source.readInt();
            return eventsync;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EventMouse[] newArray(int size) {
            return new EventMouse[size];
        }
    };
    public int mButton;
    public int mDX;
    public int mDY;
    public int mType;
    public int mX;
    public int mY;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mType);
        dest.writeInt(this.mX);
        dest.writeInt(this.mY);
        dest.writeInt(this.mDX);
        dest.writeInt(this.mDY);
        dest.writeInt(this.mButton);
    }
}
