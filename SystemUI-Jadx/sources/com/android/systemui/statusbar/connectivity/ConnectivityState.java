package com.android.systemui.statusbar.connectivity;

import com.android.settingslib.SignalIcon$IconGroup;
import com.android.systemui.bixby2.actionresult.ActionResults;
import com.android.systemui.controls.ui.util.ControlExtension$Companion$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ConnectivityState {
    public boolean activityIn;
    public boolean activityOut;
    public boolean connected;
    public boolean enabled;
    public SignalIcon$IconGroup iconGroup;
    public int inetCondition;
    public int level;
    public int rssi;
    public long time;

    public void copyFrom(ConnectivityState connectivityState) {
        this.connected = connectivityState.connected;
        this.enabled = connectivityState.enabled;
        this.activityIn = connectivityState.activityIn;
        this.activityOut = connectivityState.activityOut;
        this.level = connectivityState.level;
        this.iconGroup = connectivityState.iconGroup;
        this.inetCondition = connectivityState.inetCondition;
        this.rssi = connectivityState.rssi;
        this.time = connectivityState.time;
    }

    public boolean equals(Object obj) {
        if (obj == null || !Intrinsics.areEqual(obj.getClass(), getClass())) {
            return false;
        }
        ConnectivityState connectivityState = (ConnectivityState) obj;
        if (connectivityState.connected != this.connected || connectivityState.enabled != this.enabled || connectivityState.level != this.level || connectivityState.inetCondition != this.inetCondition || connectivityState.iconGroup != this.iconGroup || connectivityState.activityIn != this.activityIn || connectivityState.activityOut != this.activityOut || connectivityState.rssi != this.rssi) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i;
        int hashCode = (((Boolean.hashCode(this.activityOut) + ((Boolean.hashCode(this.activityIn) + ((Boolean.hashCode(this.enabled) + (Boolean.hashCode(this.connected) * 31)) * 31)) * 31)) * 31) + this.level) * 31;
        SignalIcon$IconGroup signalIcon$IconGroup = this.iconGroup;
        if (signalIcon$IconGroup != null) {
            i = signalIcon$IconGroup.hashCode();
        } else {
            i = 0;
        }
        return Long.hashCode(this.time) + ((((((hashCode + i) * 31) + this.inetCondition) * 31) + this.rssi) * 31);
    }

    public List tableColumns() {
        return CollectionsKt__CollectionsKt.listOf("connected", "enabled", "activityIn", "activityOut", ActionResults.RESULT_SET_VOLUME_SUCCESS, "iconGroup", "inetCondition", "rssi", "time");
    }

    public List tableData() {
        List listOf = CollectionsKt__CollectionsKt.listOf(Boolean.valueOf(this.connected), Boolean.valueOf(this.enabled), Boolean.valueOf(this.activityIn), Boolean.valueOf(this.activityOut), Integer.valueOf(this.level), this.iconGroup, Integer.valueOf(this.inetCondition), Integer.valueOf(this.rssi), ConnectivityStateKt.sSDF.format(Long.valueOf(this.time)));
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10));
        Iterator it = listOf.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next()));
        }
        return arrayList;
    }

    public final String toString() {
        if (this.time != 0) {
            StringBuilder sb = new StringBuilder();
            toString(sb);
            return sb.toString();
        }
        return "Empty ".concat(getClass().getSimpleName());
    }

    public void toString(StringBuilder sb) {
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("connected=", this.connected, ",", sb);
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("enabled=", this.enabled, ",", sb);
        sb.append("level=" + this.level + ",");
        sb.append("inetCondition=" + this.inetCondition + ",");
        sb.append("iconGroup=" + this.iconGroup + ",");
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("activityIn=", this.activityIn, ",", sb);
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("activityOut=", this.activityOut, ",", sb);
        sb.append("rssi=" + this.rssi + ",");
        sb.append("lastModified=" + ConnectivityStateKt.sSDF.format(Long.valueOf(this.time)));
    }
}
