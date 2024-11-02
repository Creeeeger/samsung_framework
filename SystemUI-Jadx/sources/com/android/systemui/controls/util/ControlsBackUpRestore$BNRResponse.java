package com.android.systemui.controls.util;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsBackUpRestore$BNRResponse {
    public final ControlsBackUpRestore$BNRErrCode errCode;
    public final String exportSessionTime;
    public final HashMap extraErrCode;
    public final String intentAction;
    public final int reqSize;
    public final ControlsBackUpRestore$BNRResult result;
    public final String source;

    public ControlsBackUpRestore$BNRResponse(String str, ControlsBackUpRestore$BNRResult controlsBackUpRestore$BNRResult, ControlsBackUpRestore$BNRErrCode controlsBackUpRestore$BNRErrCode, int i, String str2, HashMap<String, Integer> hashMap, String str3) {
        this.intentAction = str;
        this.result = controlsBackUpRestore$BNRResult;
        this.errCode = controlsBackUpRestore$BNRErrCode;
        this.reqSize = i;
        this.source = str2;
        this.extraErrCode = hashMap;
        this.exportSessionTime = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ControlsBackUpRestore$BNRResponse)) {
            return false;
        }
        ControlsBackUpRestore$BNRResponse controlsBackUpRestore$BNRResponse = (ControlsBackUpRestore$BNRResponse) obj;
        if (Intrinsics.areEqual(this.intentAction, controlsBackUpRestore$BNRResponse.intentAction) && this.result == controlsBackUpRestore$BNRResponse.result && this.errCode == controlsBackUpRestore$BNRResponse.errCode && this.reqSize == controlsBackUpRestore$BNRResponse.reqSize && Intrinsics.areEqual(this.source, controlsBackUpRestore$BNRResponse.source) && Intrinsics.areEqual(this.extraErrCode, controlsBackUpRestore$BNRResponse.extraErrCode) && Intrinsics.areEqual(this.exportSessionTime, controlsBackUpRestore$BNRResponse.exportSessionTime)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i = 0;
        String str = this.intentAction;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.reqSize, (this.errCode.hashCode() + ((this.result.hashCode() + (hashCode * 31)) * 31)) * 31, 31);
        String str2 = this.source;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i2 = (m + hashCode2) * 31;
        HashMap hashMap = this.extraErrCode;
        if (hashMap == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = hashMap.hashCode();
        }
        int i3 = (i2 + hashCode3) * 31;
        String str3 = this.exportSessionTime;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return i3 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BNRResponse(intentAction=");
        sb.append(this.intentAction);
        sb.append(", result=");
        sb.append(this.result);
        sb.append(", errCode=");
        sb.append(this.errCode);
        sb.append(", reqSize=");
        sb.append(this.reqSize);
        sb.append(", source=");
        sb.append(this.source);
        sb.append(", extraErrCode=");
        sb.append(this.extraErrCode);
        sb.append(", exportSessionTime=");
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.exportSessionTime, ")");
    }

    public /* synthetic */ ControlsBackUpRestore$BNRResponse(String str, ControlsBackUpRestore$BNRResult controlsBackUpRestore$BNRResult, ControlsBackUpRestore$BNRErrCode controlsBackUpRestore$BNRErrCode, int i, String str2, HashMap hashMap, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, controlsBackUpRestore$BNRResult, controlsBackUpRestore$BNRErrCode, i, str2, (i2 & 32) != 0 ? null : hashMap, (i2 & 64) != 0 ? null : str3);
    }
}
