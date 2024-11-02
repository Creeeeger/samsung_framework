package com.samsung.android.sdk.routines.automationservice.data;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class MetaInfo {
    public static final Companion Companion = new Companion(null);
    public final String packageName;
    public final String tag;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ MetaInfo(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    public final String toString() {
        return this.packageName + '%' + this.tag;
    }

    private MetaInfo(String str, String str2) {
        this.packageName = str;
        this.tag = str2;
    }
}
