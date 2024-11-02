package com.samsung.android.knox.location;

import android.os.Parcel;
import java.io.Serializable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class CircularGeofence extends Geofence implements Serializable {
    private static final long serialVersionUID = 1;
    public LatLongPoint center;
    public double radius;

    public CircularGeofence(LatLongPoint latLongPoint, double d) {
        this.type = 1;
        this.center = latLongPoint;
        this.radius = d;
    }

    @Override // com.samsung.android.knox.location.Geofence, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.samsung.android.knox.location.Geofence
    public final void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
        this.center = LatLongPoint.CREATOR.createFromParcel(parcel);
        this.radius = parcel.readDouble();
    }

    @Override // com.samsung.android.knox.location.Geofence, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        this.center.writeToParcel(parcel, i);
        parcel.writeDouble(this.radius);
    }

    public CircularGeofence(Parcel parcel) {
        readFromParcel(parcel);
    }
}
