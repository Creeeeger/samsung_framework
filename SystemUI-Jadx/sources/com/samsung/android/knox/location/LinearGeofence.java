package com.samsung.android.knox.location;

import android.os.Parcel;
import android.os.ParcelFormatException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class LinearGeofence extends Geofence implements Serializable {
    private static final long serialVersionUID = 1;
    public BoundingBox boundingBox;
    public List<LatLongPoint> optimizedPoints;
    public List<LatLongPoint> points;
    public double width;

    public LinearGeofence(List<LatLongPoint> list, double d) {
        this.type = 3;
        this.points = list;
        this.width = d;
    }

    @Override // com.samsung.android.knox.location.Geofence, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.samsung.android.knox.location.Geofence
    public final void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            LatLongPoint createFromParcel = LatLongPoint.CREATOR.createFromParcel(parcel);
            if (createFromParcel != null) {
                this.points.add(createFromParcel);
            } else {
                throw new ParcelFormatException("Parcel format exception");
            }
        }
        this.width = parcel.readDouble();
    }

    @Override // com.samsung.android.knox.location.Geofence, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.points.size());
        for (int i2 = 0; i2 < this.points.size(); i2++) {
            this.points.get(i2).writeToParcel(parcel, i);
        }
        parcel.writeDouble(this.width);
    }

    public LinearGeofence(List<LatLongPoint> list, List<LatLongPoint> list2, BoundingBox boundingBox, double d) {
        this.type = 3;
        this.points = list;
        this.optimizedPoints = list2;
        this.boundingBox = boundingBox;
        this.width = d;
    }

    public LinearGeofence(Parcel parcel) {
        this.points = new ArrayList();
        readFromParcel(parcel);
    }
}
