package com.android.settingslib.bluetooth;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BluetoothLeBroadcastMetadataExt {
    public static final BluetoothLeBroadcastMetadataExt INSTANCE = new BluetoothLeBroadcastMetadataExt();

    private BluetoothLeBroadcastMetadataExt() {
    }

    public static String toQrCodeString(String str, List list) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            arrayList.add(pair.getFirst() + ":" + pair.getSecond());
        }
        return CollectionsKt___CollectionsKt.joinToString$default(arrayList, str, null, null, null, 62);
    }
}
