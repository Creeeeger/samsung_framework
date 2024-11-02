package com.android.systemui.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaProjectionCaptureTarget implements Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    public final IBinder launchCookie;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CREATOR implements Parcelable.Creator {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new MediaProjectionCaptureTarget(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new MediaProjectionCaptureTarget[i];
        }
    }

    public MediaProjectionCaptureTarget(IBinder iBinder) {
        this.launchCookie = iBinder;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof MediaProjectionCaptureTarget) && Intrinsics.areEqual(this.launchCookie, ((MediaProjectionCaptureTarget) obj).launchCookie)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        IBinder iBinder = this.launchCookie;
        if (iBinder == null) {
            return 0;
        }
        return iBinder.hashCode();
    }

    public final String toString() {
        return "MediaProjectionCaptureTarget(launchCookie=" + this.launchCookie + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.launchCookie);
    }

    public MediaProjectionCaptureTarget(Parcel parcel) {
        this(parcel.readStrongBinder());
    }
}
