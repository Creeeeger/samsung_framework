package com.android.wm.shell.common;

import com.samsung.android.knox.EnterpriseContainerCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragResizePointer {
    public static int convertDexPointerIconType(int i) {
        if (i != 1000) {
            switch (i) {
                case EnterpriseContainerCallback.CONTAINER_VERIFY_PWD_SUCCESSFUL /* 1014 */:
                    return 10122;
                case EnterpriseContainerCallback.CONTAINER_VERIFY_PWD_FAILED /* 1015 */:
                    return 10123;
                case EnterpriseContainerCallback.CONTAINER_CANCELLED /* 1016 */:
                    return 10125;
                case 1017:
                    return 10124;
                default:
                    return i;
            }
        }
        return 10121;
    }

    public static int convertStylusIconType(int i) {
        if (i != 20001) {
            switch (i) {
                case EnterpriseContainerCallback.CONTAINER_VERIFY_PWD_SUCCESSFUL /* 1014 */:
                    return 20006;
                case EnterpriseContainerCallback.CONTAINER_VERIFY_PWD_FAILED /* 1015 */:
                    return 20007;
                case EnterpriseContainerCallback.CONTAINER_CANCELLED /* 1016 */:
                    return 20009;
                case 1017:
                    return 20008;
                default:
                    return i;
            }
        }
        return 10121;
    }
}
