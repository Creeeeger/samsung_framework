package com.android.wm.shell.util;

import android.util.Log;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KtProtoLog {
    public static final Companion Companion = new Companion(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void d(ShellProtoLogGroup shellProtoLogGroup, String str, Object... objArr) {
            if (ShellProtoLogImpl.isEnabled(shellProtoLogGroup)) {
                String tag = shellProtoLogGroup.getTag();
                int i = StringCompanionObject.$r8$clinit;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                Log.d(tag, String.format(str, Arrays.copyOf(copyOf, copyOf.length)));
            }
        }

        public static void v(ShellProtoLogGroup shellProtoLogGroup, String str, Object... objArr) {
            if (ShellProtoLogImpl.isEnabled(shellProtoLogGroup)) {
                shellProtoLogGroup.getTag();
                int i = StringCompanionObject.$r8$clinit;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                String.format(str, Arrays.copyOf(copyOf, copyOf.length));
            }
        }

        public static void w(ShellProtoLogGroup shellProtoLogGroup, String str, Object... objArr) {
            if (ShellProtoLogImpl.isEnabled(shellProtoLogGroup)) {
                String tag = shellProtoLogGroup.getTag();
                int i = StringCompanionObject.$r8$clinit;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                Log.w(tag, String.format(str, Arrays.copyOf(copyOf, copyOf.length)));
            }
        }
    }
}
