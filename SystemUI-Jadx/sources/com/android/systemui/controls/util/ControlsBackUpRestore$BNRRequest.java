package com.android.systemui.controls.util;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsBackUpRestore$BNRRequest {
    public final ControlsBackUpRestore$BNRAction action;
    public final String exportSessionTime;
    public final ArrayList extraBackupItem;
    public final String intentAction;
    public final String savePath;
    public final ControlsBackUpRestore$BNRSecurityLevel securityLevel;
    public final String sessionKey;
    public final String source;

    public /* synthetic */ ControlsBackUpRestore$BNRRequest(String str, String str2, ControlsBackUpRestore$BNRAction controlsBackUpRestore$BNRAction, String str3, String str4, ControlsBackUpRestore$BNRSecurityLevel controlsBackUpRestore$BNRSecurityLevel, ArrayList arrayList, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, controlsBackUpRestore$BNRAction, str3, str4, controlsBackUpRestore$BNRSecurityLevel, arrayList, str5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ControlsBackUpRestore$BNRRequest)) {
            return false;
        }
        ControlsBackUpRestore$BNRRequest controlsBackUpRestore$BNRRequest = (ControlsBackUpRestore$BNRRequest) obj;
        if (Intrinsics.areEqual(this.intentAction, controlsBackUpRestore$BNRRequest.intentAction) && Intrinsics.areEqual(this.savePath, controlsBackUpRestore$BNRRequest.savePath) && this.action == controlsBackUpRestore$BNRRequest.action && Intrinsics.areEqual(this.sessionKey, controlsBackUpRestore$BNRRequest.sessionKey) && Intrinsics.areEqual(this.source, controlsBackUpRestore$BNRRequest.source) && this.securityLevel == controlsBackUpRestore$BNRRequest.securityLevel && Intrinsics.areEqual(this.extraBackupItem, controlsBackUpRestore$BNRRequest.extraBackupItem) && Intrinsics.areEqual(this.exportSessionTime, controlsBackUpRestore$BNRRequest.exportSessionTime)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int i = 0;
        String str = this.intentAction;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = hashCode * 31;
        String str2 = this.savePath;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int hashCode3 = (this.extraBackupItem.hashCode() + ((this.securityLevel.hashCode() + AppInfo$$ExternalSyntheticOutline0.m(this.source, AppInfo$$ExternalSyntheticOutline0.m(this.sessionKey, (this.action.hashCode() + ((i2 + hashCode2) * 31)) * 31, 31), 31)) * 31)) * 31;
        String str3 = this.exportSessionTime;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return hashCode3 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BNRRequest(intentAction=");
        sb.append(this.intentAction);
        sb.append(", savePath=");
        sb.append(this.savePath);
        sb.append(", action=");
        sb.append(this.action);
        sb.append(", sessionKey=, source=");
        sb.append(this.source);
        sb.append(", securityLevel=");
        sb.append(this.securityLevel);
        sb.append(", extraBackupItem=");
        sb.append(this.extraBackupItem);
        sb.append(", exportSessionTime=");
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.exportSessionTime, ")");
    }

    private ControlsBackUpRestore$BNRRequest(String str, String str2, ControlsBackUpRestore$BNRAction controlsBackUpRestore$BNRAction, String str3, String str4, ControlsBackUpRestore$BNRSecurityLevel controlsBackUpRestore$BNRSecurityLevel, ArrayList<String> arrayList, String str5) {
        this.intentAction = str;
        this.savePath = str2;
        this.action = controlsBackUpRestore$BNRAction;
        this.sessionKey = str3;
        this.source = str4;
        this.securityLevel = controlsBackUpRestore$BNRSecurityLevel;
        this.extraBackupItem = arrayList;
        this.exportSessionTime = str5;
    }
}
