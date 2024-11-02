package androidx.picker.common.log;

import android.os.Build;
import android.util.Log;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class LogTagHelperKt {
    public static final boolean IS_DEBUG_DEVICE;

    static {
        String str = Build.TYPE;
        Locale locale = Locale.ROOT;
        boolean z = false;
        if (StringsKt__StringsKt.contains(str.toLowerCase(locale), "debug", false) || Intrinsics.areEqual(str.toLowerCase(locale), "eng")) {
            z = true;
        }
        IS_DEBUG_DEVICE = z;
    }

    public static final void debug(LogTag logTag, String str) {
        if (IS_DEBUG_DEVICE) {
            Log.d("SeslAppPicker[1.0.44-sesl6]." + logTag.getLogTag(), str);
        }
    }

    public static final void info(LogTag logTag, String str) {
        Log.i("SeslAppPicker[1.0.44-sesl6]." + logTag.getLogTag(), str);
    }

    public static final void warn(LogTag logTag, String str) {
        Log.w("SeslAppPicker[1.0.44-sesl6]." + logTag.getLogTag(), str);
    }
}
