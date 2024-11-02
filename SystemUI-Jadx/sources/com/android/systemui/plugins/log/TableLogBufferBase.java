package com.android.systemui.plugins.log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface TableLogBufferBase {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static void logChange(TableLogBufferBase tableLogBufferBase, String str, String str2, String str3) {
            tableLogBufferBase.logChange(str, str2, str3, false);
        }

        public static void logChange(TableLogBufferBase tableLogBufferBase, String str, String str2, boolean z) {
            tableLogBufferBase.logChange(str, str2, z, false);
        }

        public static void logChange(TableLogBufferBase tableLogBufferBase, String str, String str2, Integer num) {
            tableLogBufferBase.logChange(str, str2, num, false);
        }
    }

    void logChange(String str, String str2, Integer num);

    void logChange(String str, String str2, Integer num, boolean z);

    void logChange(String str, String str2, String str3);

    void logChange(String str, String str2, String str3, boolean z);

    void logChange(String str, String str2, boolean z);

    void logChange(String str, String str2, boolean z, boolean z2);
}
