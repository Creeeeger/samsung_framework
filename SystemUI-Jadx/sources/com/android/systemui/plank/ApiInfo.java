package com.android.systemui.plank;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ApiInfo {
    public final String name;
    public final long timestamp;

    public ApiInfo(String str, long j) {
        this.name = str;
        this.timestamp = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApiInfo)) {
            return false;
        }
        ApiInfo apiInfo = (ApiInfo) obj;
        if (Intrinsics.areEqual(this.name, apiInfo.name) && this.timestamp == apiInfo.timestamp) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.timestamp) + (this.name.hashCode() * 31);
    }

    public final String toString() {
        return "ApiInfo(name=" + this.name + ", timestamp=" + this.timestamp + ")";
    }
}
