package com.android.systemui.statusbar.phone.fragment;

import android.util.Log;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.statusbar.disableflags.DisableFlagsLogger;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CollapsedStatusBarFragmentLogger {
    public final LogBuffer buffer;
    public final DisableFlagsLogger disableFlagsLogger;
    public StatusBarHideType previousType = StatusBarHideType.NULL;

    public CollapsedStatusBarFragmentLogger(LogBuffer logBuffer, DisableFlagsLogger disableFlagsLogger) {
        this.buffer = logBuffer;
        this.disableFlagsLogger = disableFlagsLogger;
    }

    public final void logInternalStatusBarHideState(StatusBarHideType statusBarHideType) {
        StatusBarHideType statusBarHideType2 = this.previousType;
        if (statusBarHideType2 != statusBarHideType) {
            final String str = "hide status bar " + statusBarHideType2 + " >> " + statusBarHideType;
            Log.d("CollapsedSbFragment", str);
            LogLevel logLevel = LogLevel.INFO;
            Function1 function1 = new Function1() { // from class: com.android.systemui.statusbar.phone.fragment.CollapsedStatusBarFragmentLogger$logInternalStatusBarHideState$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return str;
                }
            };
            LogBuffer logBuffer = this.buffer;
            logBuffer.commit(logBuffer.obtain("CollapsedSbFragment", logLevel, function1, null));
            this.previousType = statusBarHideType;
        }
    }
}
