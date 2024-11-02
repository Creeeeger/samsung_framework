package com.android.systemui.media.controls.pipeline;

import android.content.ComponentName;
import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.util.Log;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter;
import com.android.systemui.statusbar.phone.NotificationListenerWithPlugins;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaSessionBasedFilter implements MediaDataManager.Listener {
    public final Executor backgroundExecutor;
    public final Executor foregroundExecutor;
    public final MediaSessionManager sessionManager;
    public final Set listeners = new LinkedHashSet();
    public final LinkedHashMap packageControllers = new LinkedHashMap();
    public final Map keyedTokens = new LinkedHashMap();
    public final Set tokensWithNotifications = new LinkedHashSet();
    public final MediaSessionBasedFilter$sessionListener$1 sessionListener = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$sessionListener$1
        @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
        public final void onActiveSessionsChanged(List list) {
            MediaSessionBasedFilter.access$handleControllersChanged(MediaSessionBasedFilter.this, list);
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class TokenId {
        public final int id;

        public TokenId(int i) {
            this.id = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof TokenId) && this.id == ((TokenId) obj).id) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.id);
        }

        public final String toString() {
            return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("TokenId(id="), this.id, ")");
        }

        public TokenId(MediaSession.Token token) {
            this(token.hashCode());
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$sessionListener$1] */
    public MediaSessionBasedFilter(final Context context, MediaSessionManager mediaSessionManager, Executor executor, Executor executor2) {
        this.sessionManager = mediaSessionManager;
        this.foregroundExecutor = executor;
        this.backgroundExecutor = executor2;
        executor2.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter.1
            @Override // java.lang.Runnable
            public final void run() {
                ComponentName componentName = new ComponentName(context, (Class<?>) NotificationListenerWithPlugins.class);
                MediaSessionBasedFilter mediaSessionBasedFilter = this;
                mediaSessionBasedFilter.sessionManager.addOnActiveSessionsChangedListener(mediaSessionBasedFilter.sessionListener, componentName);
                MediaSessionBasedFilter mediaSessionBasedFilter2 = this;
                MediaSessionBasedFilter.access$handleControllersChanged(mediaSessionBasedFilter2, mediaSessionBasedFilter2.sessionManager.getActiveSessions(componentName));
            }
        });
    }

    public static final void access$handleControllersChanged(MediaSessionBasedFilter mediaSessionBasedFilter, List list) {
        LinkedHashMap linkedHashMap = mediaSessionBasedFilter.packageControllers;
        linkedHashMap.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaController mediaController = (MediaController) it.next();
            List list2 = (List) linkedHashMap.get(mediaController.getPackageName());
            if (list2 != null) {
                list2.add(mediaController);
            }
        }
        Set set = mediaSessionBasedFilter.tokensWithNotifications;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new TokenId(((MediaController) it2.next()).getSessionToken()));
        }
        set.retainAll(arrayList);
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataLoaded(final String str, final String str2, final MediaData mediaData, final boolean z, int i, boolean z2) {
        this.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$onMediaDataLoaded$1
            @Override // java.lang.Runnable
            public final void run() {
                boolean z3;
                ArrayList arrayList;
                boolean z4;
                MediaSession.Token token = MediaData.this.token;
                if (token != null) {
                    this.tokensWithNotifications.add(new MediaSessionBasedFilter.TokenId(token));
                }
                String str3 = str2;
                boolean z5 = false;
                if (str3 != null && !Intrinsics.areEqual(str, str3)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    Set set = (Set) TypeIntrinsics.asMutableMap(this.keyedTokens).remove(str2);
                    if (set != null) {
                    }
                }
                if (MediaData.this.token != null) {
                    Set set2 = (Set) ((LinkedHashMap) this.keyedTokens).get(str);
                    if (set2 != null) {
                        set2.add(new MediaSessionBasedFilter.TokenId(MediaData.this.token));
                    } else {
                        MediaSessionBasedFilter mediaSessionBasedFilter = this;
                        MediaData mediaData2 = MediaData.this;
                        String str4 = str;
                        MediaSessionBasedFilter.TokenId[] tokenIdArr = {new MediaSessionBasedFilter.TokenId(mediaData2.token)};
                        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsJVMKt.mapCapacity(1));
                        linkedHashSet.add(tokenIdArr[0]);
                    }
                }
                List list = (List) this.packageControllers.get(MediaData.this.packageName);
                MediaController mediaController = null;
                if (list != null) {
                    arrayList = new ArrayList();
                    for (Object obj : list) {
                        MediaController.PlaybackInfo playbackInfo = ((MediaController) obj).getPlaybackInfo();
                        if (playbackInfo != null && playbackInfo.getPlaybackType() == 2) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            arrayList.add(obj);
                        }
                    }
                } else {
                    arrayList = null;
                }
                if (arrayList != null && arrayList.size() == 1) {
                    z5 = true;
                }
                if (z5) {
                    mediaController = (MediaController) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList);
                }
                if (!z3 && mediaController != null && !Intrinsics.areEqual(mediaController.getSessionToken(), MediaData.this.token) && this.tokensWithNotifications.contains(new MediaSessionBasedFilter.TokenId(mediaController.getSessionToken()))) {
                    Log.d("MediaSessionBasedFilter", "filtering key=" + str + " local=" + MediaData.this.token + " remote=" + mediaController.getSessionToken());
                    Object obj2 = ((LinkedHashMap) this.keyedTokens).get(str);
                    Intrinsics.checkNotNull(obj2);
                    if (!((Set) obj2).contains(new MediaSessionBasedFilter.TokenId(mediaController.getSessionToken()))) {
                        MediaSessionBasedFilter mediaSessionBasedFilter2 = this;
                        String str5 = str;
                        mediaSessionBasedFilter2.getClass();
                        mediaSessionBasedFilter2.foregroundExecutor.execute(new MediaSessionBasedFilter$dispatchMediaDataRemoved$1(mediaSessionBasedFilter2, str5));
                        return;
                    }
                    return;
                }
                final MediaSessionBasedFilter mediaSessionBasedFilter3 = this;
                final String str6 = str;
                final String str7 = str2;
                final MediaData mediaData3 = MediaData.this;
                final boolean z6 = z;
                mediaSessionBasedFilter3.getClass();
                mediaSessionBasedFilter3.foregroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$dispatchMediaDataLoaded$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Set set3 = CollectionsKt___CollectionsKt.toSet(MediaSessionBasedFilter.this.listeners);
                        String str8 = str6;
                        String str9 = str7;
                        MediaData mediaData4 = mediaData3;
                        boolean z7 = z6;
                        Iterator it = set3.iterator();
                        while (it.hasNext()) {
                            MediaDataManager.Listener.DefaultImpls.onMediaDataLoaded$default((MediaDataManager.Listener) it.next(), str8, str9, mediaData4, z7, 0, false, 48);
                        }
                    }
                });
            }
        });
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataRemoved(final String str) {
        this.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$onMediaDataRemoved$1
            @Override // java.lang.Runnable
            public final void run() {
                MediaSessionBasedFilter.this.keyedTokens.remove(str);
                MediaSessionBasedFilter mediaSessionBasedFilter = MediaSessionBasedFilter.this;
                String str2 = str;
                mediaSessionBasedFilter.getClass();
                mediaSessionBasedFilter.foregroundExecutor.execute(new MediaSessionBasedFilter$dispatchMediaDataRemoved$1(mediaSessionBasedFilter, str2));
            }
        });
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataLoaded(final String str, final SmartspaceMediaData smartspaceMediaData) {
        this.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1
            @Override // java.lang.Runnable
            public final void run() {
                final MediaSessionBasedFilter mediaSessionBasedFilter = MediaSessionBasedFilter.this;
                final String str2 = str;
                final SmartspaceMediaData smartspaceMediaData2 = smartspaceMediaData;
                mediaSessionBasedFilter.getClass();
                mediaSessionBasedFilter.foregroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Set set = CollectionsKt___CollectionsKt.toSet(MediaSessionBasedFilter.this.listeners);
                        String str3 = str2;
                        SmartspaceMediaData smartspaceMediaData3 = smartspaceMediaData2;
                        Iterator it = set.iterator();
                        while (it.hasNext()) {
                            ((MediaDataManager.Listener) it.next()).onSmartspaceMediaDataLoaded(str3, smartspaceMediaData3);
                        }
                    }
                });
            }
        });
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataRemoved(final String str, final boolean z) {
        this.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$onSmartspaceMediaDataRemoved$1
            @Override // java.lang.Runnable
            public final void run() {
                final MediaSessionBasedFilter mediaSessionBasedFilter = MediaSessionBasedFilter.this;
                final String str2 = str;
                final boolean z2 = z;
                mediaSessionBasedFilter.getClass();
                mediaSessionBasedFilter.foregroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Set set = CollectionsKt___CollectionsKt.toSet(MediaSessionBasedFilter.this.listeners);
                        String str3 = str2;
                        boolean z3 = z2;
                        Iterator it = set.iterator();
                        while (it.hasNext()) {
                            ((MediaDataManager.Listener) it.next()).onSmartspaceMediaDataRemoved(str3, z3);
                        }
                    }
                });
            }
        });
    }
}
