package com.samsung.android.knox.location;

import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class GeofenceFactory {
    public static Geofence createGeofence(int i, Parcel parcel) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return null;
                }
                return new LinearGeofence(parcel);
            }
            return new PolygonalGeofence(parcel);
        }
        return new CircularGeofence(parcel);
    }
}
