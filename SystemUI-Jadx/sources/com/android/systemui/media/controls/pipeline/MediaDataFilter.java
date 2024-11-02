package com.android.systemui.media.controls.pipeline;

import android.content.Context;
import android.util.Log;
import com.android.keyguard.KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.broadcast.BroadcastSender;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.media.controls.util.MediaUiEventLogger;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.util.time.SystemClock;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaDataFilter implements MediaDataManager.Listener {
    public final Executor executor;
    public final NotificationLockscreenUserManager lockscreenUserManager;
    public final MediaUiEventLogger logger;
    public final MediaFlags mediaFlags;
    public String reactivatedKey;
    public final SystemClock systemClock;
    public final MediaDataFilter$userTrackerCallback$1 userTrackerCallback;
    public final Set _listeners = new LinkedHashSet();
    public final LinkedHashMap allEntries = new LinkedHashMap();
    public final LinkedHashMap userEntries = new LinkedHashMap();
    public SmartspaceMediaData smartspaceMediaData = MediaDataManagerKt.EMPTY_SMARTSPACE_MEDIA_DATA;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.systemui.media.controls.pipeline.MediaDataFilter$userTrackerCallback$1, com.android.systemui.settings.UserTracker$Callback] */
    public MediaDataFilter(Context context, UserTracker userTracker, BroadcastSender broadcastSender, NotificationLockscreenUserManager notificationLockscreenUserManager, Executor executor, SystemClock systemClock, MediaUiEventLogger mediaUiEventLogger, MediaFlags mediaFlags) {
        this.lockscreenUserManager = notificationLockscreenUserManager;
        this.executor = executor;
        this.systemClock = systemClock;
        this.logger = mediaUiEventLogger;
        this.mediaFlags = mediaFlags;
        ?? r1 = new UserTracker.Callback() { // from class: com.android.systemui.media.controls.pipeline.MediaDataFilter$userTrackerCallback$1
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                MediaDataFilter.this.handleUserSwitched$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i);
            }
        };
        this.userTrackerCallback = r1;
        ((UserTrackerImpl) userTracker).addCallback(r1, executor);
    }

    public final Set getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        return CollectionsKt___CollectionsKt.toSet(this._listeners);
    }

    public final void handleUserSwitched$frameworks__base__packages__SystemUI__android_common__SystemUI_core(int i) {
        Set listeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core = getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core();
        LinkedHashMap linkedHashMap = this.userEntries;
        ArrayList arrayList = new ArrayList(linkedHashMap.keySet());
        linkedHashMap.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Log.d("MediaDataFilter", "Removing " + str + " after user change");
            Iterator it2 = listeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core.iterator();
            while (it2.hasNext()) {
                ((MediaDataManager.Listener) it2.next()).onMediaDataRemoved(str);
            }
        }
        for (Map.Entry entry : this.allEntries.entrySet()) {
            String str2 = (String) entry.getKey();
            MediaData mediaData = (MediaData) entry.getValue();
            if (((NotificationLockscreenUserManagerImpl) this.lockscreenUserManager).isCurrentProfile(mediaData.userId)) {
                KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("Re-adding ", str2, " after user change", "MediaDataFilter");
                linkedHashMap.put(str2, mediaData);
                Iterator it3 = listeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core.iterator();
                while (it3.hasNext()) {
                    MediaDataManager.Listener.DefaultImpls.onMediaDataLoaded$default((MediaDataManager.Listener) it3.next(), str2, null, mediaData, false, 0, false, 56);
                }
            }
        }
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataLoaded(String str, String str2, MediaData mediaData, boolean z, int i, boolean z2) {
        LinkedHashMap linkedHashMap = this.allEntries;
        if (str2 != null && !Intrinsics.areEqual(str2, str)) {
            linkedHashMap.remove(str2);
        }
        linkedHashMap.put(str, mediaData);
        if (!((NotificationLockscreenUserManagerImpl) this.lockscreenUserManager).isCurrentProfile(mediaData.userId)) {
            return;
        }
        LinkedHashMap linkedHashMap2 = this.userEntries;
        if (str2 != null && !Intrinsics.areEqual(str2, str)) {
            linkedHashMap2.remove(str2);
        }
        linkedHashMap2.put(str, mediaData);
        Iterator it = getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core().iterator();
        while (it.hasNext()) {
            MediaDataManager.Listener.DefaultImpls.onMediaDataLoaded$default((MediaDataManager.Listener) it.next(), str, str2, mediaData, false, 0, false, 56);
        }
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataRemoved(String str) {
        this.allEntries.remove(str);
        if (((MediaData) this.userEntries.remove(str)) != null) {
            Iterator it = getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core().iterator();
            while (it.hasNext()) {
                ((MediaDataManager.Listener) it.next()).onMediaDataRemoved(str);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c3, code lost:
    
        if (r2 != false) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0126 A[LOOP:1: B:45:0x0120->B:47:0x0126, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x008f  */
    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onSmartspaceMediaDataLoaded(java.lang.String r31, com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData r32) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaDataFilter.onSmartspaceMediaDataLoaded(java.lang.String, com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData):void");
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataRemoved(String str, boolean z) {
        String str2 = this.reactivatedKey;
        if (str2 != null) {
            this.reactivatedKey = null;
            Log.d("MediaDataFilter", "expiring reactivated key ".concat(str2));
            MediaData mediaData = (MediaData) this.userEntries.get(str2);
            if (mediaData != null) {
                Iterator it = getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core().iterator();
                while (it.hasNext()) {
                    MediaDataManager.Listener.DefaultImpls.onMediaDataLoaded$default((MediaDataManager.Listener) it.next(), str2, str2, mediaData, z, 0, false, 48);
                }
            }
        }
        SmartspaceMediaData smartspaceMediaData = this.smartspaceMediaData;
        if (smartspaceMediaData.isActive) {
            this.smartspaceMediaData = SmartspaceMediaData.copy$default(MediaDataManagerKt.EMPTY_SMARTSPACE_MEDIA_DATA, smartspaceMediaData.targetId, false, null, 0L, smartspaceMediaData.instanceId, 0L, VolteConstants.ErrorCode.ALTERNATIVE_SERVICES_EMERGENCY_CSFB);
        }
        Iterator it2 = getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core().iterator();
        while (it2.hasNext()) {
            ((MediaDataManager.Listener) it2.next()).onSmartspaceMediaDataRemoved(str, z);
        }
    }
}
