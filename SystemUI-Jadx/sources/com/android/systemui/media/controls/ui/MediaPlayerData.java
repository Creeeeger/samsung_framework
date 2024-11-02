package com.android.systemui.media.controls.ui;

import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.app.motiontool.TraceMetadata$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.ui.MediaPlayerData;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;
import kotlin.collections.EmptyList;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaPlayerData {
    public static final MediaPlayerData INSTANCE = new MediaPlayerData();
    public static final MediaPlayerData$special$$inlined$thenByDescending$8 comparator;
    public static final Map mediaData;
    public static final TreeMap mediaPlayers;
    public static final LinkedHashMap visibleMediaPlayers;

    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$8, java.util.Comparator] */
    static {
        EmptyList emptyList = EmptyList.INSTANCE;
        new MediaData(-1, false, null, null, null, null, null, emptyList, emptyList, null, "INVALID", null, null, null, true, null, 0, false, null, false, null, false, 0L, InstanceId.fakeInstanceId(-1), -1, false, null, null, 243204608, null);
        final Comparator comparator2 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$compareByDescending$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                boolean z;
                MediaPlayerData.MediaSortKey mediaSortKey = (MediaPlayerData.MediaSortKey) obj2;
                Boolean bool = mediaSortKey.data.isPlaying;
                Boolean bool2 = Boolean.TRUE;
                boolean z2 = true;
                if (Intrinsics.areEqual(bool, bool2) && mediaSortKey.data.playbackLocation == 0) {
                    z = true;
                } else {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                MediaPlayerData.MediaSortKey mediaSortKey2 = (MediaPlayerData.MediaSortKey) obj;
                if (!Intrinsics.areEqual(mediaSortKey2.data.isPlaying, bool2) || mediaSortKey2.data.playbackLocation != 0) {
                    z2 = false;
                }
                return ComparisonsKt__ComparisonsKt.compareValues(valueOf, Boolean.valueOf(z2));
            }
        };
        final Comparator comparator3 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                boolean z;
                int compare = comparator2.compare(obj, obj2);
                if (compare == 0) {
                    MediaPlayerData.MediaSortKey mediaSortKey = (MediaPlayerData.MediaSortKey) obj2;
                    Boolean bool = mediaSortKey.data.isPlaying;
                    Boolean bool2 = Boolean.TRUE;
                    boolean z2 = false;
                    if (Intrinsics.areEqual(bool, bool2) && mediaSortKey.data.playbackLocation == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Boolean valueOf = Boolean.valueOf(z);
                    MediaPlayerData.MediaSortKey mediaSortKey2 = (MediaPlayerData.MediaSortKey) obj;
                    if (Intrinsics.areEqual(mediaSortKey2.data.isPlaying, bool2) && mediaSortKey2.data.playbackLocation == 1) {
                        z2 = true;
                    }
                    return ComparisonsKt__ComparisonsKt.compareValues(valueOf, Boolean.valueOf(z2));
                }
                return compare;
            }
        };
        final Comparator comparator4 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare = comparator3.compare(obj, obj2);
                if (compare == 0) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(((MediaPlayerData.MediaSortKey) obj2).data.active), Boolean.valueOf(((MediaPlayerData.MediaSortKey) obj).data.active));
                }
                return compare;
            }
        };
        final Comparator comparator5 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$3
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare = comparator4.compare(obj, obj2);
                if (compare == 0) {
                    MediaPlayerData mediaPlayerData = MediaPlayerData.INSTANCE;
                    mediaPlayerData.getClass();
                    Boolean valueOf = Boolean.valueOf(!((MediaPlayerData.MediaSortKey) obj2).isSsMediaRec);
                    mediaPlayerData.getClass();
                    return ComparisonsKt__ComparisonsKt.compareValues(valueOf, Boolean.valueOf(!((MediaPlayerData.MediaSortKey) obj).isSsMediaRec));
                }
                return compare;
            }
        };
        final Comparator comparator6 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$4
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare = comparator5.compare(obj, obj2);
                if (compare == 0) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(!((MediaPlayerData.MediaSortKey) obj2).data.resumption), Boolean.valueOf(!((MediaPlayerData.MediaSortKey) obj).data.resumption));
                }
                return compare;
            }
        };
        final Comparator comparator7 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                boolean z;
                int compare = comparator6.compare(obj, obj2);
                if (compare == 0) {
                    int i = ((MediaPlayerData.MediaSortKey) obj2).data.playbackLocation;
                    boolean z2 = true;
                    if (i != 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Boolean valueOf = Boolean.valueOf(z);
                    if (((MediaPlayerData.MediaSortKey) obj).data.playbackLocation == 2) {
                        z2 = false;
                    }
                    return ComparisonsKt__ComparisonsKt.compareValues(valueOf, Boolean.valueOf(z2));
                }
                return compare;
            }
        };
        final Comparator comparator8 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare = comparator7.compare(obj, obj2);
                if (compare == 0) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((MediaPlayerData.MediaSortKey) obj2).data.lastActive), Long.valueOf(((MediaPlayerData.MediaSortKey) obj).data.lastActive));
                }
                return compare;
            }
        };
        final Comparator comparator9 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$7
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare = comparator8.compare(obj, obj2);
                if (compare == 0) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((MediaPlayerData.MediaSortKey) obj2).updateTime), Long.valueOf(((MediaPlayerData.MediaSortKey) obj).updateTime));
                }
                return compare;
            }
        };
        ?? r0 = new Comparator() { // from class: com.android.systemui.media.controls.ui.MediaPlayerData$special$$inlined$thenByDescending$8
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare = comparator9.compare(obj, obj2);
                if (compare == 0) {
                    return ComparisonsKt__ComparisonsKt.compareValues(((MediaPlayerData.MediaSortKey) obj2).data.notificationKey, ((MediaPlayerData.MediaSortKey) obj).data.notificationKey);
                }
                return compare;
            }
        };
        comparator = r0;
        mediaPlayers = new TreeMap((Comparator) r0);
        mediaData = new LinkedHashMap();
        visibleMediaPlayers = new LinkedHashMap();
    }

    private MediaPlayerData() {
    }

    public final void clear() {
        ((LinkedHashMap) mediaData).clear();
        mediaPlayers.clear();
        visibleMediaPlayers.clear();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaSortKey {
        public final MediaData data;
        public final boolean isSsMediaRec;
        public final boolean isSsReactivated;
        public final String key;
        public final long updateTime;

        public MediaSortKey(boolean z, MediaData mediaData, String str, long j, boolean z2) {
            this.isSsMediaRec = z;
            this.data = mediaData;
            this.key = str;
            this.updateTime = j;
            this.isSsReactivated = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaSortKey)) {
                return false;
            }
            MediaSortKey mediaSortKey = (MediaSortKey) obj;
            if (this.isSsMediaRec == mediaSortKey.isSsMediaRec && Intrinsics.areEqual(this.data, mediaSortKey.data) && Intrinsics.areEqual(this.key, mediaSortKey.key) && this.updateTime == mediaSortKey.updateTime && this.isSsReactivated == mediaSortKey.isSsReactivated) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r1v8 */
        public final int hashCode() {
            int i = 1;
            boolean z = this.isSsMediaRec;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int m = TraceMetadata$$ExternalSyntheticOutline0.m(this.updateTime, AppInfo$$ExternalSyntheticOutline0.m(this.key, (this.data.hashCode() + (r1 * 31)) * 31, 31), 31);
            boolean z2 = this.isSsReactivated;
            if (!z2) {
                i = z2 ? 1 : 0;
            }
            return m + i;
        }

        public final String toString() {
            return "MediaSortKey(isSsMediaRec=" + this.isSsMediaRec + ", data=" + this.data + ", key=" + this.key + ", updateTime=" + this.updateTime + ", isSsReactivated=" + this.isSsReactivated + ")";
        }

        public /* synthetic */ MediaSortKey(boolean z, MediaData mediaData, String str, long j, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, mediaData, str, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? false : z2);
        }
    }
}
