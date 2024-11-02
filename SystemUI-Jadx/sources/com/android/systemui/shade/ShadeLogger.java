package com.android.systemui.shade;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.view.MotionEvent;
import androidx.fragment.app.FragmentTransaction$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeLogger {
    public final LogBuffer buffer;

    public ShadeLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void d(String str) {
        LogBuffer.log$default(this.buffer, "systemui.shade", LogLevel.DEBUG, str, null, 8, null);
    }

    public final void logEndMotionEvent(String str, boolean z, boolean z2) {
        LogLevel logLevel = LogLevel.VERBOSE;
        ShadeLogger$logEndMotionEvent$2 shadeLogger$logEndMotionEvent$2 = new Function1() { // from class: com.android.systemui.shade.ShadeLogger$logEndMotionEvent$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return logMessage.getStr1() + "; force=" + logMessage.getBool1() + "; expand=" + logMessage.getBool2();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("systemui.shade", logLevel, shadeLogger$logEndMotionEvent$2, null);
        obtain.setStr1(str);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        logBuffer.commit(obtain);
    }

    public final void logExpansionChanged(String str, float f, boolean z, boolean z2, final float f2) {
        LogLevel logLevel = LogLevel.VERBOSE;
        Function1 function1 = new Function1() { // from class: com.android.systemui.shade.ShadeLogger$logExpansionChanged$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                double double1 = logMessage.getDouble1();
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                float f3 = f2;
                StringBuilder sb = new StringBuilder();
                sb.append(str1);
                sb.append(" fraction=");
                sb.append(double1);
                sb.append(",expanded=");
                KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, bool1, ",tracking=", bool2, ",dragDownPxAmount=");
                sb.append(f3);
                return sb.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("systemui.shade", logLevel, function1, null);
        obtain.setStr1(str);
        obtain.setDouble1(f);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setLong1(f2);
        logBuffer.commit(obtain);
    }

    public final void logMotionEvent(MotionEvent motionEvent, String str) {
        LogLevel logLevel = LogLevel.VERBOSE;
        ShadeLogger$logMotionEvent$2 shadeLogger$logMotionEvent$2 = new Function1() { // from class: com.android.systemui.shade.ShadeLogger$logMotionEvent$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return logMessage.getStr1() + ": eventTime=" + logMessage.getLong1() + ",downTime=" + logMessage.getLong2() + ",y=" + logMessage.getDouble1() + ",action=" + logMessage.getInt1() + ",class=" + logMessage.getInt2();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("systemui.shade", logLevel, shadeLogger$logMotionEvent$2, null);
        obtain.setStr1(str);
        obtain.setLong1(motionEvent.getEventTime());
        obtain.setLong2(motionEvent.getDownTime());
        obtain.setInt1(motionEvent.getAction());
        obtain.setInt2(motionEvent.getClassification());
        obtain.setDouble1(motionEvent.getY());
        logBuffer.commit(obtain);
    }

    public final void logMotionEventStatusBarState(MotionEvent motionEvent, int i, String str) {
        LogLevel logLevel = LogLevel.VERBOSE;
        ShadeLogger$logMotionEventStatusBarState$2 shadeLogger$logMotionEventStatusBarState$2 = new Function1() { // from class: com.android.systemui.shade.ShadeLogger$logMotionEventStatusBarState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str2;
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                long long1 = logMessage.getLong1();
                long long2 = logMessage.getLong2();
                double double1 = logMessage.getDouble1();
                int int1 = logMessage.getInt1();
                int int2 = logMessage.getInt2();
                if (int2 != 0) {
                    if (int2 != 1) {
                        if (int2 != 2) {
                            str2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("UNKNOWN:", logMessage.getInt2());
                        } else {
                            str2 = "SHADE_LOCKED";
                        }
                    } else {
                        str2 = "KEYGUARD";
                    }
                } else {
                    str2 = "SHADE";
                }
                return str1 + "\neventTime=" + long1 + ",downTime=" + long2 + ",y=" + double1 + ",action=" + int1 + ",statusBarState=" + str2;
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("systemui.shade", logLevel, shadeLogger$logMotionEventStatusBarState$2, null);
        obtain.setStr1(str);
        obtain.setLong1(motionEvent.getEventTime());
        obtain.setLong2(motionEvent.getDownTime());
        obtain.setInt1(motionEvent.getAction());
        obtain.setInt2(i);
        obtain.setDouble1(motionEvent.getY());
        logBuffer.commit(obtain);
    }

    public final void logUpdateNotificationPanelTouchState(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        LogLevel logLevel = LogLevel.VERBOSE;
        ShadeLogger$logUpdateNotificationPanelTouchState$2 shadeLogger$logUpdateNotificationPanelTouchState$2 = new Function1() { // from class: com.android.systemui.shade.ShadeLogger$logUpdateNotificationPanelTouchState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                boolean bool3 = logMessage.getBool3();
                boolean bool4 = logMessage.getBool4();
                String str1 = logMessage.getStr1();
                String str2 = logMessage.getStr2();
                StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("CentralSurfaces updateNotificationPanelTouchState set disabled to: ", bool1, "\nisGoingToSleep: ", bool2, ", !shouldControlScreenOff: ");
                KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, bool3, ",!mDeviceInteractive: ", bool4, ", !isPulsing: ");
                return FragmentTransaction$$ExternalSyntheticOutline0.m(m, str1, ", isFrpActive: ", str2);
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("systemui.shade", logLevel, shadeLogger$logUpdateNotificationPanelTouchState$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setBool3(z3);
        obtain.setBool4(z4);
        obtain.setStr1(String.valueOf(z5));
        obtain.setStr2(String.valueOf(z6));
        logBuffer.commit(obtain);
    }

    public final void v(String str) {
        LogBuffer.log$default(this.buffer, "systemui.shade", LogLevel.VERBOSE, str, null, 8, null);
    }
}
