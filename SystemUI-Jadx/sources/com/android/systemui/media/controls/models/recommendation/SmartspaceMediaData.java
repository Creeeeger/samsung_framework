package com.android.systemui.media.controls.models.recommendation;

import android.app.smartspace.SmartspaceAction;
import android.content.Intent;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.app.motiontool.TraceMetadata$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SmartspaceMediaData {
    public final SmartspaceAction cardAction;
    public final Intent dismissIntent;
    public final long expiryTimeMs;
    public final long headphoneConnectionTimeMillis;
    public final InstanceId instanceId;
    public final boolean isActive;
    public final String packageName;
    public final List recommendations;
    public final String targetId;

    public SmartspaceMediaData(String str, boolean z, String str2, SmartspaceAction smartspaceAction, List<SmartspaceAction> list, Intent intent, long j, InstanceId instanceId, long j2) {
        this.targetId = str;
        this.isActive = z;
        this.packageName = str2;
        this.cardAction = smartspaceAction;
        this.recommendations = list;
        this.dismissIntent = intent;
        this.headphoneConnectionTimeMillis = j;
        this.instanceId = instanceId;
        this.expiryTimeMs = j2;
    }

    public static SmartspaceMediaData copy$default(SmartspaceMediaData smartspaceMediaData, String str, boolean z, Intent intent, long j, InstanceId instanceId, long j2, int i) {
        String str2;
        boolean z2;
        String str3;
        SmartspaceAction smartspaceAction;
        List list;
        Intent intent2;
        long j3;
        InstanceId instanceId2;
        long j4;
        if ((i & 1) != 0) {
            str2 = smartspaceMediaData.targetId;
        } else {
            str2 = str;
        }
        if ((i & 2) != 0) {
            z2 = smartspaceMediaData.isActive;
        } else {
            z2 = z;
        }
        if ((i & 4) != 0) {
            str3 = smartspaceMediaData.packageName;
        } else {
            str3 = null;
        }
        if ((i & 8) != 0) {
            smartspaceAction = smartspaceMediaData.cardAction;
        } else {
            smartspaceAction = null;
        }
        if ((i & 16) != 0) {
            list = smartspaceMediaData.recommendations;
        } else {
            list = null;
        }
        if ((i & 32) != 0) {
            intent2 = smartspaceMediaData.dismissIntent;
        } else {
            intent2 = intent;
        }
        if ((i & 64) != 0) {
            j3 = smartspaceMediaData.headphoneConnectionTimeMillis;
        } else {
            j3 = j;
        }
        if ((i & 128) != 0) {
            instanceId2 = smartspaceMediaData.instanceId;
        } else {
            instanceId2 = instanceId;
        }
        if ((i & 256) != 0) {
            j4 = smartspaceMediaData.expiryTimeMs;
        } else {
            j4 = j2;
        }
        smartspaceMediaData.getClass();
        return new SmartspaceMediaData(str2, z2, str3, smartspaceAction, list, intent2, j3, instanceId2, j4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SmartspaceMediaData)) {
            return false;
        }
        SmartspaceMediaData smartspaceMediaData = (SmartspaceMediaData) obj;
        if (Intrinsics.areEqual(this.targetId, smartspaceMediaData.targetId) && this.isActive == smartspaceMediaData.isActive && Intrinsics.areEqual(this.packageName, smartspaceMediaData.packageName) && Intrinsics.areEqual(this.cardAction, smartspaceMediaData.cardAction) && Intrinsics.areEqual(this.recommendations, smartspaceMediaData.recommendations) && Intrinsics.areEqual(this.dismissIntent, smartspaceMediaData.dismissIntent) && this.headphoneConnectionTimeMillis == smartspaceMediaData.headphoneConnectionTimeMillis && Intrinsics.areEqual(this.instanceId, smartspaceMediaData.instanceId) && this.expiryTimeMs == smartspaceMediaData.expiryTimeMs) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.targetId.hashCode() * 31;
        boolean z = this.isActive;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.packageName, (hashCode2 + i) * 31, 31);
        int i2 = 0;
        SmartspaceAction smartspaceAction = this.cardAction;
        if (smartspaceAction == null) {
            hashCode = 0;
        } else {
            hashCode = smartspaceAction.hashCode();
        }
        int hashCode3 = (this.recommendations.hashCode() + ((m + hashCode) * 31)) * 31;
        Intent intent = this.dismissIntent;
        if (intent != null) {
            i2 = intent.hashCode();
        }
        return Long.hashCode(this.expiryTimeMs) + ((this.instanceId.hashCode() + TraceMetadata$$ExternalSyntheticOutline0.m(this.headphoneConnectionTimeMillis, (hashCode3 + i2) * 31, 31)) * 31);
    }

    public final boolean isValid() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.recommendations.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((SmartspaceAction) next).getIcon() == null) {
                z = false;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() >= 3) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return "SmartspaceMediaData(targetId=" + this.targetId + ", isActive=" + this.isActive + ", packageName=" + this.packageName + ", cardAction=" + this.cardAction + ", recommendations=" + this.recommendations + ", dismissIntent=" + this.dismissIntent + ", headphoneConnectionTimeMillis=" + this.headphoneConnectionTimeMillis + ", instanceId=" + this.instanceId + ", expiryTimeMs=" + this.expiryTimeMs + ")";
    }
}
