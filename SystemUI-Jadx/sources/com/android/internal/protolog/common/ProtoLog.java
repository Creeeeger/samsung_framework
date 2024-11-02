package com.android.internal.protolog.common;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ProtoLog {
    public static boolean REQUIRE_PROTOLOGTOOL = true;

    public static void v(IProtoLogGroup iProtoLogGroup, String str, Object... objArr) {
        if (!REQUIRE_PROTOLOGTOOL) {
        } else {
            throw new UnsupportedOperationException("ProtoLog calls MUST be processed with ProtoLogTool");
        }
    }
}
