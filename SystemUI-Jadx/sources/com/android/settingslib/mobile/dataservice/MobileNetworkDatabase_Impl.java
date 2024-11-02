package com.android.settingslib.mobile.dataservice;

import androidx.room.InvalidationTracker;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MobileNetworkDatabase_Impl extends MobileNetworkDatabase {
    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "subscriptionInfo", "uiccInfo", "MobileNetworkInfo");
    }
}
