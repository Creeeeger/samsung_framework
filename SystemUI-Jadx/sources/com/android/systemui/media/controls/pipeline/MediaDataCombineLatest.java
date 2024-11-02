package com.android.systemui.media.controls.pipeline;

import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.models.player.MediaDeviceData;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaDataCombineLatest implements MediaDataManager.Listener {
    public final Set listeners = new LinkedHashSet();
    public final Map entries = new LinkedHashMap();

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataLoaded(String str, String str2, MediaData mediaData, boolean z, int i, boolean z2) {
        Map map = this.entries;
        MediaDeviceData mediaDeviceData = null;
        if (str2 != null && !Intrinsics.areEqual(str2, str) && map.containsKey(str2)) {
            Pair pair = (Pair) map.remove(str2);
            if (pair != null) {
                mediaDeviceData = (MediaDeviceData) pair.getSecond();
            }
            map.put(str, new Pair(mediaData, mediaDeviceData));
            update(str, str2);
            return;
        }
        Pair pair2 = (Pair) ((LinkedHashMap) map).get(str);
        if (pair2 != null) {
            mediaDeviceData = (MediaDeviceData) pair2.getSecond();
        }
        map.put(str, new Pair(mediaData, mediaDeviceData));
        update(str, str);
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataRemoved(String str) {
        remove(str);
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataLoaded(String str, SmartspaceMediaData smartspaceMediaData) {
        Iterator it = CollectionsKt___CollectionsKt.toSet(this.listeners).iterator();
        while (it.hasNext()) {
            ((MediaDataManager.Listener) it.next()).onSmartspaceMediaDataLoaded(str, smartspaceMediaData);
        }
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataRemoved(String str, boolean z) {
        Iterator it = CollectionsKt___CollectionsKt.toSet(this.listeners).iterator();
        while (it.hasNext()) {
            ((MediaDataManager.Listener) it.next()).onSmartspaceMediaDataRemoved(str, z);
        }
    }

    public final void remove(String str) {
        if (((Pair) this.entries.remove(str)) != null) {
            Iterator it = CollectionsKt___CollectionsKt.toSet(this.listeners).iterator();
            while (it.hasNext()) {
                ((MediaDataManager.Listener) it.next()).onMediaDataRemoved(str);
            }
        }
    }

    public final void update(String str, String str2) {
        Pair pair = (Pair) ((LinkedHashMap) this.entries).get(str);
        if (pair == null) {
            pair = new Pair(null, null);
        }
        MediaData mediaData = (MediaData) pair.component1();
        MediaDeviceData mediaDeviceData = (MediaDeviceData) pair.component2();
        if (mediaData != null && mediaDeviceData != null) {
            MediaData copy$default = MediaData.copy$default(mediaData, null, null, null, null, null, mediaDeviceData, false, null, false, false, null, false, null, 0, 268427263);
            Iterator it = CollectionsKt___CollectionsKt.toSet(this.listeners).iterator();
            while (it.hasNext()) {
                MediaDataManager.Listener.DefaultImpls.onMediaDataLoaded$default((MediaDataManager.Listener) it.next(), str, str2, copy$default, false, 0, false, 56);
            }
        }
    }
}
