package com.android.systemui.statusbar.pipeline.shared.data.model;

import android.content.Context;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConnectivitySlots {
    public final Map slotByName;

    public ConnectivitySlots(Context context) {
        this.slotByName = MapsKt__MapsKt.mapOf(new Pair(context.getString(17042905), ConnectivitySlot.AIRPLANE), new Pair(context.getString(17042930), ConnectivitySlot.MOBILE), new Pair(context.getString(17042951), ConnectivitySlot.WIFI), new Pair(context.getString(17042919), ConnectivitySlot.ETHERNET));
    }
}
