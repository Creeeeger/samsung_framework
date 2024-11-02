package com.android.systemui.media.controls.models.player;

import android.app.PendingIntent;
import android.graphics.drawable.Icon;
import android.media.session.MediaSession;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.app.motiontool.TraceMetadata$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.systemui.media.controls.resume.MediaResumeListener$getResumeAction$1;
import java.sql.Timestamp;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaData {
    public final List actions;
    public final List actionsToShowInCompact;
    public boolean active;
    public final String app;
    public final Icon appIcon;
    public final int appUid;
    public final CharSequence artist;
    public final Icon artwork;
    public final PendingIntent clickIntent;
    public final SecMediaDataImpl customMediaData;
    public final MediaDeviceData device;
    public boolean hasCheckedForResume;
    public final boolean initialized;
    public final InstanceId instanceId;
    public final boolean isClearable;
    public final boolean isExplicit;
    public final Boolean isPlaying;
    public final long lastActive;
    public final String notificationKey;
    public final String packageName;
    public final int playbackLocation;
    public Runnable resumeAction;
    public final Double resumeProgress;
    public final boolean resumption;
    public final MediaButton semanticActions;
    public final CharSequence song;
    public final MediaSession.Token token;
    public final int userId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public MediaData(int i, boolean z, String str, Icon icon, CharSequence charSequence, CharSequence charSequence2, Icon icon2, List<MediaAction> list, List<Integer> list2, MediaButton mediaButton, String str2, MediaSession.Token token, PendingIntent pendingIntent, MediaDeviceData mediaDeviceData, boolean z2, Runnable runnable, int i2, boolean z3, String str3, boolean z4, Boolean bool, boolean z5, long j, InstanceId instanceId, int i3, boolean z6, Double d, SecMediaDataImpl secMediaDataImpl) {
        this.userId = i;
        this.initialized = z;
        this.app = str;
        this.appIcon = icon;
        this.artist = charSequence;
        this.song = charSequence2;
        this.artwork = icon2;
        this.actions = list;
        this.actionsToShowInCompact = list2;
        this.semanticActions = mediaButton;
        this.packageName = str2;
        this.token = token;
        this.clickIntent = pendingIntent;
        this.device = mediaDeviceData;
        this.active = z2;
        this.resumeAction = runnable;
        this.playbackLocation = i2;
        this.resumption = z3;
        this.notificationKey = str3;
        this.hasCheckedForResume = z4;
        this.isPlaying = bool;
        this.isClearable = z5;
        this.lastActive = j;
        this.instanceId = instanceId;
        this.appUid = i3;
        this.isExplicit = z6;
        this.resumeProgress = d;
        this.customMediaData = secMediaDataImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v42, types: [java.lang.Runnable] */
    public static MediaData copy$default(MediaData mediaData, List list, List list2, MediaButton mediaButton, String str, PendingIntent pendingIntent, MediaDeviceData mediaDeviceData, boolean z, MediaResumeListener$getResumeAction$1 mediaResumeListener$getResumeAction$1, boolean z2, boolean z3, Boolean bool, boolean z4, InstanceId instanceId, int i, int i2) {
        int i3;
        boolean z5;
        String str2;
        Icon icon;
        CharSequence charSequence;
        CharSequence charSequence2;
        Icon icon2;
        List list3;
        List list4;
        MediaButton mediaButton2;
        String str3;
        MediaSession.Token token;
        PendingIntent pendingIntent2;
        MediaDeviceData mediaDeviceData2;
        boolean z6;
        MediaResumeListener$getResumeAction$1 mediaResumeListener$getResumeAction$12;
        int i4;
        boolean z7;
        String str4;
        boolean z8;
        Boolean bool2;
        boolean z9;
        long j;
        InstanceId instanceId2;
        int i5;
        boolean z10;
        Double d;
        SecMediaDataImpl secMediaDataImpl;
        if ((i2 & 1) != 0) {
            i3 = mediaData.userId;
        } else {
            i3 = 0;
        }
        if ((i2 & 2) != 0) {
            z5 = mediaData.initialized;
        } else {
            z5 = false;
        }
        if ((i2 & 4) != 0) {
            str2 = mediaData.app;
        } else {
            str2 = null;
        }
        if ((i2 & 8) != 0) {
            icon = mediaData.appIcon;
        } else {
            icon = null;
        }
        if ((i2 & 16) != 0) {
            charSequence = mediaData.artist;
        } else {
            charSequence = null;
        }
        if ((i2 & 32) != 0) {
            charSequence2 = mediaData.song;
        } else {
            charSequence2 = null;
        }
        if ((i2 & 64) != 0) {
            icon2 = mediaData.artwork;
        } else {
            icon2 = null;
        }
        if ((i2 & 128) != 0) {
            list3 = mediaData.actions;
        } else {
            list3 = list;
        }
        if ((i2 & 256) != 0) {
            list4 = mediaData.actionsToShowInCompact;
        } else {
            list4 = list2;
        }
        if ((i2 & 512) != 0) {
            mediaButton2 = mediaData.semanticActions;
        } else {
            mediaButton2 = mediaButton;
        }
        if ((i2 & 1024) != 0) {
            str3 = mediaData.packageName;
        } else {
            str3 = str;
        }
        if ((i2 & 2048) != 0) {
            token = mediaData.token;
        } else {
            token = null;
        }
        if ((i2 & 4096) != 0) {
            pendingIntent2 = mediaData.clickIntent;
        } else {
            pendingIntent2 = pendingIntent;
        }
        if ((i2 & 8192) != 0) {
            mediaDeviceData2 = mediaData.device;
        } else {
            mediaDeviceData2 = mediaDeviceData;
        }
        if ((i2 & 16384) != 0) {
            z6 = mediaData.active;
        } else {
            z6 = z;
        }
        if ((32768 & i2) != 0) {
            mediaResumeListener$getResumeAction$12 = mediaData.resumeAction;
        } else {
            mediaResumeListener$getResumeAction$12 = mediaResumeListener$getResumeAction$1;
        }
        if ((65536 & i2) != 0) {
            i4 = mediaData.playbackLocation;
        } else {
            i4 = 0;
        }
        if ((131072 & i2) != 0) {
            z7 = mediaData.resumption;
        } else {
            z7 = z2;
        }
        if ((262144 & i2) != 0) {
            str4 = mediaData.notificationKey;
        } else {
            str4 = null;
        }
        if ((524288 & i2) != 0) {
            z8 = mediaData.hasCheckedForResume;
        } else {
            z8 = z3;
        }
        if ((1048576 & i2) != 0) {
            bool2 = mediaData.isPlaying;
        } else {
            bool2 = bool;
        }
        if ((2097152 & i2) != 0) {
            z9 = mediaData.isClearable;
        } else {
            z9 = z4;
        }
        if ((4194304 & i2) != 0) {
            j = mediaData.lastActive;
        } else {
            j = 0;
        }
        long j2 = j;
        if ((8388608 & i2) != 0) {
            instanceId2 = mediaData.instanceId;
        } else {
            instanceId2 = instanceId;
        }
        if ((16777216 & i2) != 0) {
            i5 = mediaData.appUid;
        } else {
            i5 = i;
        }
        if ((33554432 & i2) != 0) {
            z10 = mediaData.isExplicit;
        } else {
            z10 = false;
        }
        if ((67108864 & i2) != 0) {
            d = mediaData.resumeProgress;
        } else {
            d = null;
        }
        if ((i2 & 134217728) != 0) {
            secMediaDataImpl = mediaData.customMediaData;
        } else {
            secMediaDataImpl = null;
        }
        mediaData.getClass();
        return new MediaData(i3, z5, str2, icon, charSequence, charSequence2, icon2, list3, list4, mediaButton2, str3, token, pendingIntent2, mediaDeviceData2, z6, mediaResumeListener$getResumeAction$12, i4, z7, str4, z8, bool2, z9, j2, instanceId2, i5, z10, d, secMediaDataImpl);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaData)) {
            return false;
        }
        MediaData mediaData = (MediaData) obj;
        if (this.userId == mediaData.userId && this.initialized == mediaData.initialized && Intrinsics.areEqual(this.app, mediaData.app) && Intrinsics.areEqual(this.appIcon, mediaData.appIcon) && Intrinsics.areEqual(this.artist, mediaData.artist) && Intrinsics.areEqual(this.song, mediaData.song) && Intrinsics.areEqual(this.artwork, mediaData.artwork) && Intrinsics.areEqual(this.actions, mediaData.actions) && Intrinsics.areEqual(this.actionsToShowInCompact, mediaData.actionsToShowInCompact) && Intrinsics.areEqual(this.semanticActions, mediaData.semanticActions) && Intrinsics.areEqual(this.packageName, mediaData.packageName) && Intrinsics.areEqual(this.token, mediaData.token) && Intrinsics.areEqual(this.clickIntent, mediaData.clickIntent) && Intrinsics.areEqual(this.device, mediaData.device) && this.active == mediaData.active && Intrinsics.areEqual(this.resumeAction, mediaData.resumeAction) && this.playbackLocation == mediaData.playbackLocation && this.resumption == mediaData.resumption && Intrinsics.areEqual(this.notificationKey, mediaData.notificationKey) && this.hasCheckedForResume == mediaData.hasCheckedForResume && Intrinsics.areEqual(this.isPlaying, mediaData.isPlaying) && this.isClearable == mediaData.isClearable && this.lastActive == mediaData.lastActive && Intrinsics.areEqual(this.instanceId, mediaData.instanceId) && this.appUid == mediaData.appUid && this.isExplicit == mediaData.isExplicit && Intrinsics.areEqual(this.resumeProgress, mediaData.resumeProgress) && Intrinsics.areEqual(this.customMediaData, mediaData.customMediaData)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9;
        int hashCode10;
        int hashCode11;
        int hashCode12;
        int hashCode13 = Integer.hashCode(this.userId) * 31;
        int i = 1;
        boolean z = this.initialized;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (hashCode13 + i2) * 31;
        int i4 = 0;
        String str = this.app;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i5 = (i3 + hashCode) * 31;
        Icon icon = this.appIcon;
        if (icon == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = icon.hashCode();
        }
        int i6 = (i5 + hashCode2) * 31;
        CharSequence charSequence = this.artist;
        if (charSequence == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = charSequence.hashCode();
        }
        int i7 = (i6 + hashCode3) * 31;
        CharSequence charSequence2 = this.song;
        if (charSequence2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = charSequence2.hashCode();
        }
        int i8 = (i7 + hashCode4) * 31;
        Icon icon2 = this.artwork;
        if (icon2 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = icon2.hashCode();
        }
        int hashCode14 = (this.actionsToShowInCompact.hashCode() + ((this.actions.hashCode() + ((i8 + hashCode5) * 31)) * 31)) * 31;
        MediaButton mediaButton = this.semanticActions;
        if (mediaButton == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = mediaButton.hashCode();
        }
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.packageName, (hashCode14 + hashCode6) * 31, 31);
        MediaSession.Token token = this.token;
        if (token == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = token.hashCode();
        }
        int i9 = (m + hashCode7) * 31;
        PendingIntent pendingIntent = this.clickIntent;
        if (pendingIntent == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = pendingIntent.hashCode();
        }
        int i10 = (i9 + hashCode8) * 31;
        MediaDeviceData mediaDeviceData = this.device;
        if (mediaDeviceData == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = mediaDeviceData.hashCode();
        }
        int i11 = (i10 + hashCode9) * 31;
        boolean z2 = this.active;
        int i12 = z2;
        if (z2 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        Runnable runnable = this.resumeAction;
        if (runnable == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = runnable.hashCode();
        }
        int m2 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.playbackLocation, (i13 + hashCode10) * 31, 31);
        boolean z3 = this.resumption;
        int i14 = z3;
        if (z3 != 0) {
            i14 = 1;
        }
        int i15 = (m2 + i14) * 31;
        String str2 = this.notificationKey;
        if (str2 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = str2.hashCode();
        }
        int i16 = (i15 + hashCode11) * 31;
        boolean z4 = this.hasCheckedForResume;
        int i17 = z4;
        if (z4 != 0) {
            i17 = 1;
        }
        int i18 = (i16 + i17) * 31;
        Boolean bool = this.isPlaying;
        if (bool == null) {
            hashCode12 = 0;
        } else {
            hashCode12 = bool.hashCode();
        }
        int i19 = (i18 + hashCode12) * 31;
        boolean z5 = this.isClearable;
        int i20 = z5;
        if (z5 != 0) {
            i20 = 1;
        }
        int m3 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.appUid, (this.instanceId.hashCode() + TraceMetadata$$ExternalSyntheticOutline0.m(this.lastActive, (i19 + i20) * 31, 31)) * 31, 31);
        boolean z6 = this.isExplicit;
        if (!z6) {
            i = z6 ? 1 : 0;
        }
        int i21 = (m3 + i) * 31;
        Double d = this.resumeProgress;
        if (d != null) {
            i4 = d.hashCode();
        }
        return this.customMediaData.hashCode() + ((i21 + i4) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" [ USERID : " + this.userId + " ]");
        sb.append(" [ INITIALIZED : " + this.initialized + " ]");
        String str = this.app;
        if (str != null) {
            sb.append(" [ APP : " + str + " ]");
        }
        CharSequence charSequence = this.artist;
        if (charSequence != null) {
            sb.append(" [ ARTIST : " + ((Object) charSequence) + " ]");
        }
        CharSequence charSequence2 = this.song;
        if (charSequence2 != null) {
            sb.append(" [ SONG : " + ((Object) charSequence2) + " ]");
        }
        sb.append(" [ ACTIONS : ");
        Iterator it = this.actions.iterator();
        while (it.hasNext()) {
            sb.append(((Object) ((MediaAction) it.next()).contentDescription) + ", ");
        }
        sb.append(" ]");
        sb.append(" [ ACTIONSTOSHOWINCOMPACT : " + this.actionsToShowInCompact + " ]");
        sb.append(" [ PACKAGENAME : " + this.packageName + " ]");
        MediaDeviceData mediaDeviceData = this.device;
        if (mediaDeviceData != null) {
            sb.append(" [ DEVICE : " + ((Object) mediaDeviceData.name) + " ]");
            sb.append(" [ SECMEDIADEVICEDATA : " + mediaDeviceData.customMediaDeviceData.deviceType + " ]");
        }
        sb.append(" [ ACTIVE : " + this.active + " ]");
        sb.append(" [ PLAYBACKLOCATION : " + this.playbackLocation + " ]");
        sb.append(" [ RESUMPTION : " + this.resumption + " ]");
        String str2 = this.notificationKey;
        if (str2 != null) {
            sb.append(" [ NOTIFICATIONKEY : " + str2 + " ]");
        }
        sb.append(" [ HASCHECKFORRESUME : " + this.hasCheckedForResume + " ]");
        sb.append(" [ ISPLAYING : " + this.isPlaying + " ]");
        sb.append(" [ ISCLEARABLE : " + this.isClearable + " ]");
        sb.append(" [ LASTACTIVE : " + new Timestamp(this.lastActive) + " ]");
        sb.append(" [ INSTANCEID : " + this.instanceId.getId() + " ]");
        sb.append(" [ APPUID : " + this.appUid + " ]");
        sb.append(" [ CUSTOMMEDIADATA : " + this.customMediaData.uid + " ]");
        return sb.toString();
    }

    public /* synthetic */ MediaData(int i, boolean z, String str, Icon icon, CharSequence charSequence, CharSequence charSequence2, Icon icon2, List list, List list2, MediaButton mediaButton, String str2, MediaSession.Token token, PendingIntent pendingIntent, MediaDeviceData mediaDeviceData, boolean z2, Runnable runnable, int i2, boolean z3, String str3, boolean z4, Boolean bool, boolean z5, long j, InstanceId instanceId, int i3, boolean z6, Double d, SecMediaDataImpl secMediaDataImpl, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i4 & 2) != 0 ? false : z, str, icon, charSequence, charSequence2, icon2, list, list2, (i4 & 512) != 0 ? null : mediaButton, str2, token, pendingIntent, mediaDeviceData, z2, runnable, (65536 & i4) != 0 ? 0 : i2, (131072 & i4) != 0 ? false : z3, (262144 & i4) != 0 ? null : str3, (524288 & i4) != 0 ? false : z4, (1048576 & i4) != 0 ? null : bool, (2097152 & i4) != 0 ? true : z5, (4194304 & i4) != 0 ? 0L : j, instanceId, i3, (33554432 & i4) != 0 ? false : z6, (67108864 & i4) != 0 ? null : d, (i4 & 134217728) != 0 ? new SecMediaDataImpl(-1) : secMediaDataImpl);
    }
}
