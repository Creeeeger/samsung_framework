package com.android.systemui.statusbar.notification;

import android.util.FloatProperty;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1 extends FloatProperty {
    public NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1() {
        super("delayedDozeAmount");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        if ((r6 == 0.0f) == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void setValue(com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator r5, float r6) {
        /*
            r5.delayedDozeAmountOverride = r6
            com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger r0 = r5.logger
            r0.getClass()
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L11
            r1 = r2
            goto L12
        L11:
            r1 = r3
        L12:
            if (r1 != 0) goto L1f
            r1 = 0
            int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r1 != 0) goto L1b
            r1 = r2
            goto L1c
        L1b:
            r1 = r3
        L1c:
            if (r1 != 0) goto L1f
            goto L20
        L1f:
            r2 = r3
        L20:
            boolean r1 = r0.lastSetDelayDozeAmountOverrideLogWasFractional
            if (r1 == 0) goto L2b
            if (r2 == 0) goto L2b
            boolean r1 = r0.allowThrottle
            if (r1 == 0) goto L2b
            goto L41
        L2b:
            r0.lastSetDelayDozeAmountOverrideLogWasFractional = r2
            com.android.systemui.log.LogLevel r1 = com.android.systemui.log.LogLevel.DEBUG
            com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2 r2 = new kotlin.jvm.functions.Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2
                static {
                    /*
                        com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2 r0 = new com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2) com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2.INSTANCE com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public final java.lang.Object invoke(java.lang.Object r3) {
                    /*
                        r2 = this;
                        com.android.systemui.log.LogMessage r3 = (com.android.systemui.log.LogMessage) r3
                        double r2 = r3.getDouble1()
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        java.lang.String r1 = "setDelayDozeAmountOverride("
                        r0.<init>(r1)
                        r0.append(r2)
                        java.lang.String r2 = ")"
                        r0.append(r2)
                        java.lang.String r2 = r0.toString()
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2.invoke(java.lang.Object):java.lang.Object");
                }
            }
            r3 = 0
            com.android.systemui.log.LogBuffer r0 = r0.buffer
            java.lang.String r4 = "NotificationWakeUpCoordinator"
            com.android.systemui.log.LogMessage r1 = r0.obtain(r4, r1, r2, r3)
            double r2 = (double) r6
            r1.setDouble1(r2)
            r0.commit(r1)
        L41:
            r5.updateDozeAmount()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1.setValue(com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator, float):void");
    }

    @Override // android.util.Property
    public final Float get(Object obj) {
        return Float.valueOf(((NotificationWakeUpCoordinator) obj).delayedDozeAmountOverride);
    }

    @Override // android.util.FloatProperty
    public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
        setValue((NotificationWakeUpCoordinator) obj, f);
    }
}
