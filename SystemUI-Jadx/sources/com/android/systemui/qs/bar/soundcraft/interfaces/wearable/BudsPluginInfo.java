package com.android.systemui.qs.bar.soundcraft.interfaces.wearable;

import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public enum BudsPluginInfo {
    /* JADX INFO: Fake field, exist only in values array */
    Buds3Pro("paran", true, null, 4, null),
    /* JADX INFO: Fake field, exist only in values array */
    Buds3("jelly", true, null, 4, null),
    /* JADX INFO: Fake field, exist only in values array */
    BudsFE("pearl", false, null, 4, null),
    /* JADX INFO: Fake field, exist only in values array */
    Buds2Pro("zenith", false, null, 4, null),
    /* JADX INFO: Fake field, exist only in values array */
    Buds2("berry", false, null, 4, null);

    public static final Companion Companion = new Companion(null);
    private final boolean isSupport;
    private final String packageName;
    private final String projectName;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static String findProjectName(String str) {
            BudsPluginInfo budsPluginInfo;
            BudsPluginInfo[] values = BudsPluginInfo.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    budsPluginInfo = values[i];
                    if (Intrinsics.areEqual(budsPluginInfo.getPackageName(), str)) {
                        break;
                    }
                    i++;
                } else {
                    budsPluginInfo = null;
                    break;
                }
            }
            if (budsPluginInfo == null) {
                return null;
            }
            return budsPluginInfo.getProjectName();
        }
    }

    /* synthetic */ BudsPluginInfo(String str, boolean z, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, (i & 4) != 0 ? PathParser$$ExternalSyntheticOutline0.m("com.samsung.accessory.", str, "mgr") : str2);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getProjectName() {
        return this.projectName;
    }

    public final boolean isSupport() {
        return this.isSupport;
    }

    BudsPluginInfo(String str, boolean z, String str2) {
        this.projectName = str;
        this.isSupport = z;
        this.packageName = str2;
    }
}
