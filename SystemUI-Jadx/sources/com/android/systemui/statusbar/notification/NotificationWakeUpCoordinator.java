package com.android.systemui.statusbar.notification;

import android.util.FloatProperty;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.animation.Animator;
import androidx.core.animation.ObjectAnimator;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.app.animation.InterpolatorsAndroidX;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;
import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.stack.AmbientState;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.phone.ScreenOffAnimationController;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.policy.OnHeadsUpChangedListener;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationWakeUpCoordinator implements OnHeadsUpChangedListener, StatusBarStateController.StateListener, ShadeExpansionListener, Dumpable {
    public static final NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1 delayedDozeAmount;
    public static final NotificationWakeUpCoordinator$Companion$notificationVisibility$1 notificationVisibility;
    public final KeyguardBypassController bypassController;
    public boolean collapsedEnoughToHide;
    public ObjectAnimator delayedDozeAmountAnimator;
    public float delayedDozeAmountOverride;
    public final DozeParameters dozeParameters;
    public boolean fullyAwake;
    public Float hardDozeAmountOverride;
    public float inputEasedDozeAmount;
    public float inputLinearDozeAmount;
    public final NotificationWakeUpCoordinatorLogger logger;
    public final HeadsUpManager mHeadsUpManager;
    public float mLinearVisibilityAmount;
    public boolean mNotificationsVisible;
    public boolean mNotificationsVisibleForExpansion;
    public NotificationStackScrollLayoutController mStackScrollerController;
    public float mVisibilityAmount;
    public ObjectAnimator mVisibilityAnimator;
    public boolean notificationsFullyHidden;
    public float outputEasedDozeAmount;
    public float outputLinearDozeAmount;
    public boolean pulseExpanding;
    public boolean pulsing;
    public final ScreenOffAnimationController screenOffAnimationController;
    public int state;
    public final StatusBarStateController statusBarStateController;
    public final ArrayList wakeUpListeners;
    public boolean wakingUp;
    public boolean willWakeUp;
    public Interpolator mVisibilityInterpolator = Interpolators.FAST_OUT_SLOW_IN_REVERSE;
    public String hardDozeAmountOverrideSource = "n/a";
    public final Interpolator dozeAmountInterpolator = Interpolators.FAST_OUT_SLOW_IN;
    public final Set mEntrySetToClearWhenFinished = new LinkedHashSet();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator$Companion$notificationVisibility$1] */
    static {
        new Companion(null);
        notificationVisibility = new FloatProperty() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator$Companion$notificationVisibility$1
            @Override // android.util.Property
            public final Float get(Object obj) {
                return Float.valueOf(((NotificationWakeUpCoordinator) obj).mLinearVisibilityAmount);
            }

            @Override // android.util.FloatProperty
            public final void setValue(Object obj, float f) {
                NotificationWakeUpCoordinator$Companion$notificationVisibility$1 notificationWakeUpCoordinator$Companion$notificationVisibility$1 = NotificationWakeUpCoordinator.notificationVisibility;
                ((NotificationWakeUpCoordinator) obj).setVisibilityAmount(f);
            }
        };
        delayedDozeAmount = new NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1();
    }

    public NotificationWakeUpCoordinator(DumpManager dumpManager, HeadsUpManager headsUpManager, StatusBarStateController statusBarStateController, KeyguardBypassController keyguardBypassController, DozeParameters dozeParameters, ScreenOffAnimationController screenOffAnimationController, NotificationWakeUpCoordinatorLogger notificationWakeUpCoordinatorLogger) {
        this.mHeadsUpManager = headsUpManager;
        this.statusBarStateController = statusBarStateController;
        this.bypassController = keyguardBypassController;
        this.dozeParameters = dozeParameters;
        this.screenOffAnimationController = screenOffAnimationController;
        this.logger = notificationWakeUpCoordinatorLogger;
        ArrayList arrayList = new ArrayList();
        this.wakeUpListeners = arrayList;
        this.state = 1;
        KeyguardBypassController.OnBypassStateChangedListener onBypassStateChangedListener = new KeyguardBypassController.OnBypassStateChangedListener() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator$bypassStateChangedListener$1
            @Override // com.android.systemui.statusbar.phone.KeyguardBypassController.OnBypassStateChangedListener
            public final void onBypassStateChanged(boolean z) {
                NotificationWakeUpCoordinator$Companion$notificationVisibility$1 notificationWakeUpCoordinator$Companion$notificationVisibility$1 = NotificationWakeUpCoordinator.notificationVisibility;
                NotificationWakeUpCoordinator.this.maybeClearHardDozeAmountOverrideHidingNotifs();
            }
        };
        dumpManager.registerDumpable(this);
        headsUpManager.addListener(this);
        statusBarStateController.addCallback(this);
        keyguardBypassController.registerOnBypassStateChangedListener(onBypassStateChangedListener);
        arrayList.add(new WakeUpListener() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator.1
            @Override // com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator.WakeUpListener
            public final void onFullyHiddenChanged(boolean z) {
                if (z) {
                    NotificationWakeUpCoordinator notificationWakeUpCoordinator = NotificationWakeUpCoordinator.this;
                    if (notificationWakeUpCoordinator.mNotificationsVisibleForExpansion) {
                        notificationWakeUpCoordinator.setNotificationsVisibleForExpansion(false, false, false);
                    }
                }
            }
        });
    }

    public final boolean clearHardDozeAmountOverride() {
        if (this.hardDozeAmountOverride == null) {
            return false;
        }
        this.hardDozeAmountOverride = null;
        this.hardDozeAmountOverrideSource = KeyAttributes$$ExternalSyntheticOutline0.m("Cleared: ", this.hardDozeAmountOverrideSource);
        updateDozeAmount();
        return true;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("inputLinearDozeAmount: " + this.inputLinearDozeAmount);
        printWriter.println("inputEasedDozeAmount: " + this.inputEasedDozeAmount);
        printWriter.println("delayedDozeAmountOverride: " + this.delayedDozeAmountOverride);
        printWriter.println("hardDozeAmountOverride: " + this.hardDozeAmountOverride);
        FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("hardDozeAmountOverrideSource: ", this.hardDozeAmountOverrideSource, printWriter);
        printWriter.println("outputLinearDozeAmount: " + this.outputLinearDozeAmount);
        printWriter.println("outputEasedDozeAmount: " + this.outputEasedDozeAmount);
        printWriter.println("mNotificationVisibleAmount: 0.0");
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("mNotificationsVisible: ", this.mNotificationsVisible, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("mNotificationsVisibleForExpansion: ", this.mNotificationsVisibleForExpansion, printWriter);
        printWriter.println("mVisibilityAmount: " + this.mVisibilityAmount);
        printWriter.println("mLinearVisibilityAmount: " + this.mLinearVisibilityAmount);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("pulseExpanding: ", this.pulseExpanding, printWriter);
        FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("state: ", StatusBarState.toString(this.state), printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("fullyAwake: ", this.fullyAwake, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("wakingUp: ", this.wakingUp, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("willWakeUp: ", this.willWakeUp, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("collapsedEnoughToHide: ", this.collapsedEnoughToHide, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("pulsing: ", this.pulsing, printWriter);
        printWriter.println("notificationsFullyHidden: " + this.notificationsFullyHidden);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("canShowPulsingHuns: ", getCanShowPulsingHuns(), printWriter);
    }

    public final boolean getCanShowPulsingHuns() {
        boolean z;
        boolean z2 = this.pulsing;
        if (this.bypassController.getBypassEnabled()) {
            if (!z2 && ((!this.wakingUp && !this.willWakeUp && !this.fullyAwake) || this.statusBarStateController.getState() != 1)) {
                z = false;
            } else {
                z = true;
            }
            if (this.collapsedEnoughToHide) {
                return false;
            }
            return z;
        }
        return z2;
    }

    public final void logDelayingClockWakeUpAnimation(boolean z) {
        NotificationWakeUpCoordinatorLogger notificationWakeUpCoordinatorLogger = this.logger;
        notificationWakeUpCoordinatorLogger.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        NotificationWakeUpCoordinatorLogger$logDelayingClockWakeUpAnimation$2 notificationWakeUpCoordinatorLogger$logDelayingClockWakeUpAnimation$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logDelayingClockWakeUpAnimation$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return "logDelayingClockWakeUpAnimation(" + ((LogMessage) obj).getBool1() + ")";
            }
        };
        LogBuffer logBuffer = notificationWakeUpCoordinatorLogger.buffer;
        LogMessage obtain = logBuffer.obtain("NotificationWakeUpCoordinator", logLevel, notificationWakeUpCoordinatorLogger$logDelayingClockWakeUpAnimation$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void maybeClearHardDozeAmountOverrideHidingNotifs() {
        boolean z;
        boolean z2;
        Float f = this.hardDozeAmountOverride;
        boolean z3 = true;
        if (f != null && f.floatValue() == 1.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            StatusBarStateController statusBarStateController = this.statusBarStateController;
            if (statusBarStateController.getState() == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean isDozing = statusBarStateController.isDozing();
            boolean bypassEnabled = this.bypassController.getBypassEnabled();
            boolean overrideNotificationsFullyDozingOnKeyguard = this.screenOffAnimationController.overrideNotificationsFullyDozingOnKeyguard();
            if ((z2 && isDozing) || bypassEnabled || overrideNotificationsFullyDozingOnKeyguard) {
                z3 = false;
            }
            NotificationWakeUpCoordinatorLogger notificationWakeUpCoordinatorLogger = this.logger;
            notificationWakeUpCoordinatorLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            NotificationWakeUpCoordinatorLogger$logMaybeClearHardDozeAmountOverrideHidingNotifs$2 notificationWakeUpCoordinatorLogger$logMaybeClearHardDozeAmountOverrideHidingNotifs$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logMaybeClearHardDozeAmountOverrideHidingNotifs$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return KeyAttributes$$ExternalSyntheticOutline0.m("maybeClearHardDozeAmountOverrideHidingNotifs() ", ((LogMessage) obj).getStr1());
                }
            };
            LogBuffer logBuffer = notificationWakeUpCoordinatorLogger.buffer;
            LogMessage obtain = logBuffer.obtain("NotificationWakeUpCoordinator", logLevel, notificationWakeUpCoordinatorLogger$logMaybeClearHardDozeAmountOverrideHidingNotifs$2, null);
            StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("willRemove=", z3, " onKeyguard=", z2, " dozing=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, isDozing, " bypass=", bypassEnabled, " animating=");
            m.append(overrideNotificationsFullyDozingOnKeyguard);
            obtain.setStr1(m.toString());
            logBuffer.commit(obtain);
            if (z3) {
                clearHardDozeAmountOverride();
            }
        }
    }

    public final void notifyAnimationStart(boolean z) {
        float f;
        Interpolator interpolator;
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.mStackScrollerController;
        if (notificationStackScrollLayoutController == null) {
            notificationStackScrollLayoutController = null;
        }
        boolean z2 = !z;
        NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
        float f2 = notificationStackScrollLayout.mInterpolatedHideAmount;
        if (f2 == 0.0f || f2 == 1.0f) {
            if (z2) {
                f = 1.8f;
            } else {
                f = 1.5f;
            }
            notificationStackScrollLayout.mBackgroundXFactor = f;
            if (z2) {
                interpolator = Interpolators.FAST_OUT_SLOW_IN_REVERSE;
            } else {
                interpolator = Interpolators.FAST_OUT_SLOW_IN;
            }
            notificationStackScrollLayout.mHideXInterpolator = interpolator;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0059  */
    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDozeAmountChanged(float r8, float r9) {
        /*
            r7 = this;
            com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger r0 = r7.logger
            r0.getClass()
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            r2 = 1
            r3 = 0
            if (r1 != 0) goto Lf
            r1 = r2
            goto L10
        Lf:
            r1 = r3
        L10:
            if (r1 != 0) goto L1e
            r1 = 0
            int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r1 != 0) goto L19
            r1 = r2
            goto L1a
        L19:
            r1 = r3
        L1a:
            if (r1 != 0) goto L1e
            r1 = r2
            goto L1f
        L1e:
            r1 = r3
        L1f:
            boolean r4 = r0.lastOnDozeAmountChangedLogWasFractional
            if (r4 == 0) goto L2a
            if (r1 == 0) goto L2a
            boolean r4 = r0.allowThrottle
            if (r4 == 0) goto L2a
            goto L47
        L2a:
            r0.lastOnDozeAmountChangedLogWasFractional = r1
            com.android.systemui.log.LogLevel r1 = com.android.systemui.log.LogLevel.DEBUG
            com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2 r4 = new kotlin.jvm.functions.Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2
                static {
                    /*
                        com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2 r0 = new com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2) com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2.INSTANCE com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public final java.lang.Object invoke(java.lang.Object r4) {
                    /*
                        r3 = this;
                        com.android.systemui.log.LogMessage r4 = (com.android.systemui.log.LogMessage) r4
                        double r0 = r4.getDouble1()
                        java.lang.String r3 = r4.getStr2()
                        java.lang.StringBuilder r4 = new java.lang.StringBuilder
                        java.lang.String r2 = "onDozeAmountChanged(linear="
                        r4.<init>(r2)
                        r4.append(r0)
                        java.lang.String r0 = ", eased="
                        r4.append(r0)
                        r4.append(r3)
                        java.lang.String r3 = ")"
                        r4.append(r3)
                        java.lang.String r3 = r4.toString()
                        return r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2.invoke(java.lang.Object):java.lang.Object");
                }
            }
            r5 = 0
            com.android.systemui.log.LogBuffer r0 = r0.buffer
            java.lang.String r6 = "NotificationWakeUpCoordinator"
            com.android.systemui.log.LogMessage r1 = r0.obtain(r6, r1, r4, r5)
            double r4 = (double) r8
            r1.setDouble1(r4)
            java.lang.String r4 = java.lang.String.valueOf(r9)
            r1.setStr2(r4)
            r0.commit(r1)
        L47:
            r7.inputLinearDozeAmount = r8
            r7.inputEasedDozeAmount = r9
            com.android.systemui.statusbar.phone.ScreenOffAnimationController r8 = r7.screenOffAnimationController
            boolean r8 = r8.overrideNotificationsFullyDozingOnKeyguard()
            if (r8 == 0) goto L59
            java.lang.String r8 = "Override: animating screen off"
            r7.setHardDozeAmountOverride(r8, r2)
            goto L5a
        L59:
            r2 = r3
        L5a:
            if (r2 == 0) goto L5d
            return
        L5d:
            boolean r8 = r7.overrideDozeAmountIfBypass()
            if (r8 == 0) goto L64
            return
        L64:
            boolean r8 = r7.clearHardDozeAmountOverride()
            if (r8 == 0) goto L6b
            return
        L6b:
            r7.updateDozeAmount()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator.onDozeAmountChanged(float, float):void");
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onDozingChanged(boolean z) {
        if (z) {
            setNotificationsVisible(false, false, false);
        }
    }

    @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
    public final void onHeadsUpStateChanged(NotificationEntry notificationEntry, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean shouldAnimateVisibility = shouldAnimateVisibility();
        Set set = this.mEntrySetToClearWhenFinished;
        if (!z) {
            if (this.outputLinearDozeAmount == 0.0f) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                if (this.mLinearVisibilityAmount == 0.0f) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (!z3) {
                    ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
                    if (expandableNotificationRow != null && expandableNotificationRow.mDismissed) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        shouldAnimateVisibility = false;
                    } else if (!this.wakingUp && !this.willWakeUp) {
                        if (expandableNotificationRow != null) {
                            expandableNotificationRow.setHeadsUpAnimatingAway(true);
                        }
                        set.add(notificationEntry);
                    }
                }
            }
        } else if (set.contains(notificationEntry)) {
            set.remove(notificationEntry);
            ExpandableNotificationRow expandableNotificationRow2 = notificationEntry.row;
            if (expandableNotificationRow2 != null) {
                expandableNotificationRow2.setHeadsUpAnimatingAway(false);
            }
        }
        updateNotificationVisibility(shouldAnimateVisibility, false);
    }

    @Override // com.android.systemui.shade.ShadeExpansionListener
    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        boolean z;
        if (shadeExpansionChangeEvent.fraction <= 0.9f) {
            z = true;
        } else {
            z = false;
        }
        if (z != this.collapsedEnoughToHide) {
            boolean canShowPulsingHuns = getCanShowPulsingHuns();
            this.collapsedEnoughToHide = z;
            if (canShowPulsingHuns && !getCanShowPulsingHuns()) {
                updateNotificationVisibility(true, true);
                this.mHeadsUpManager.releaseAllImmediately();
            }
        }
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onStateChanged(int i) {
        int i2 = this.state;
        NotificationWakeUpCoordinatorLogger notificationWakeUpCoordinatorLogger = this.logger;
        notificationWakeUpCoordinatorLogger.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        NotificationWakeUpCoordinatorLogger$logOnStateChanged$2 notificationWakeUpCoordinatorLogger$logOnStateChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logOnStateChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("onStateChanged(newState=", StatusBarState.toString(logMessage.getInt1()), ") stored=", StatusBarState.toString(logMessage.getInt2()));
            }
        };
        LogBuffer logBuffer = notificationWakeUpCoordinatorLogger.buffer;
        LogMessage obtain = logBuffer.obtain("NotificationWakeUpCoordinator", logLevel, notificationWakeUpCoordinatorLogger$logOnStateChanged$2, null);
        obtain.setInt1(i);
        obtain.setInt2(i2);
        logBuffer.commit(obtain);
        boolean z = false;
        if (this.state == 0 && i == 0) {
            setHardDozeAmountOverride("Override: Shade->Shade (lock cancelled by unlock)", false);
            this.state = i;
            return;
        }
        if (this.screenOffAnimationController.overrideNotificationsFullyDozingOnKeyguard()) {
            z = true;
            setHardDozeAmountOverride("Override: animating screen off", true);
        }
        if (z) {
            this.state = i;
        } else if (overrideDozeAmountIfBypass()) {
            this.state = i;
        } else {
            maybeClearHardDozeAmountOverrideHidingNotifs();
            this.state = i;
        }
    }

    public final boolean overrideDozeAmountIfBypass() {
        if (!this.bypassController.getBypassEnabled()) {
            return false;
        }
        if (this.statusBarStateController.getState() == 1) {
            setHardDozeAmountOverride("Override: bypass (keyguard)", true);
        } else {
            setHardDozeAmountOverride("Override: bypass (shade)", false);
        }
        return true;
    }

    public final void setHardDozeAmountOverride(String str, boolean z) {
        float f;
        NotificationWakeUpCoordinatorLogger notificationWakeUpCoordinatorLogger = this.logger;
        notificationWakeUpCoordinatorLogger.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        NotificationWakeUpCoordinatorLogger$logSetDozeAmountOverride$2 notificationWakeUpCoordinatorLogger$logSetDozeAmountOverride$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetDozeAmountOverride$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "setDozeAmountOverride(dozing=" + logMessage.getBool1() + ", source=\"" + logMessage.getStr1() + "\")";
            }
        };
        LogBuffer logBuffer = notificationWakeUpCoordinatorLogger.buffer;
        LogMessage obtain = logBuffer.obtain("NotificationWakeUpCoordinator", logLevel, notificationWakeUpCoordinatorLogger$logSetDozeAmountOverride$2, null);
        obtain.setBool1(z);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
        if (z) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this.hardDozeAmountOverride = Float.valueOf(f);
        this.hardDozeAmountOverrideSource = str;
        updateDozeAmount();
    }

    public final void setNotificationsVisible(boolean z, boolean z2, boolean z3) {
        Interpolator interpolator;
        if (this.mNotificationsVisible == z) {
            return;
        }
        this.mNotificationsVisible = z;
        ObjectAnimator objectAnimator = this.mVisibilityAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        float f = 1.0f;
        if (z2) {
            notifyAnimationStart(z);
            boolean z4 = this.mNotificationsVisible;
            if (z4) {
                interpolator = Interpolators.TOUCH_RESPONSE;
            } else {
                interpolator = Interpolators.FAST_OUT_SLOW_IN_REVERSE;
            }
            this.mVisibilityInterpolator = interpolator;
            if (!z4) {
                f = 0.0f;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, notificationVisibility, f);
            ofFloat.setInterpolator(InterpolatorsAndroidX.LINEAR);
            long j = 500;
            if (z3) {
                j = ((float) 500) / 1.5f;
            }
            ofFloat.m9setDuration(j);
            ofFloat.start();
            this.mVisibilityAnimator = ofFloat;
            return;
        }
        if (!z) {
            f = 0.0f;
        }
        setVisibilityAmount(f);
    }

    public final void setNotificationsVisibleForExpansion(boolean z, boolean z2, boolean z3) {
        this.mNotificationsVisibleForExpansion = z;
        updateNotificationVisibility(z2, z3);
        if (!z && this.mNotificationsVisible) {
            this.mHeadsUpManager.releaseAllImmediately();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
    
        if (r3 != false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setVisibilityAmount(float r9) {
        /*
            r8 = this;
            com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger r0 = r8.logger
            r0.getClass()
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            r2 = 0
            r3 = 1
            if (r1 != 0) goto Lf
            r1 = r3
            goto L10
        Lf:
            r1 = r2
        L10:
            r4 = 0
            if (r1 != 0) goto L1e
            int r1 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r1 != 0) goto L19
            r1 = r3
            goto L1a
        L19:
            r1 = r2
        L1a:
            if (r1 != 0) goto L1e
            r1 = r3
            goto L1f
        L1e:
            r1 = r2
        L1f:
            boolean r5 = r0.lastSetVisibilityAmountLogWasFractional
            if (r5 == 0) goto L2a
            if (r1 == 0) goto L2a
            boolean r5 = r0.allowThrottle
            if (r5 == 0) goto L2a
            goto L40
        L2a:
            r0.lastSetVisibilityAmountLogWasFractional = r1
            com.android.systemui.log.LogLevel r1 = com.android.systemui.log.LogLevel.DEBUG
            com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2 r5 = new kotlin.jvm.functions.Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2
                static {
                    /*
                        com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2 r0 = new com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2) com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2.INSTANCE com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public final java.lang.Object invoke(java.lang.Object r3) {
                    /*
                        r2 = this;
                        com.android.systemui.log.LogMessage r3 = (com.android.systemui.log.LogMessage) r3
                        double r2 = r3.getDouble1()
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        java.lang.String r1 = "setVisibilityAmount("
                        r0.<init>(r1)
                        r0.append(r2)
                        java.lang.String r2 = ")"
                        r0.append(r2)
                        java.lang.String r2 = r0.toString()
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2.invoke(java.lang.Object):java.lang.Object");
                }
            }
            r6 = 0
            com.android.systemui.log.LogBuffer r0 = r0.buffer
            java.lang.String r7 = "NotificationWakeUpCoordinator"
            com.android.systemui.log.LogMessage r1 = r0.obtain(r7, r1, r5, r6)
            double r5 = (double) r9
            r1.setDouble1(r5)
            r0.commit(r1)
        L40:
            r8.mLinearVisibilityAmount = r9
            android.view.animation.Interpolator r0 = r8.mVisibilityInterpolator
            float r9 = r0.getInterpolation(r9)
            r8.mVisibilityAmount = r9
            float r9 = r8.outputLinearDozeAmount
            int r9 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r9 != 0) goto L52
            r9 = r3
            goto L53
        L52:
            r9 = r2
        L53:
            if (r9 != 0) goto L5f
            float r9 = r8.mLinearVisibilityAmount
            int r9 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r9 != 0) goto L5c
            goto L5d
        L5c:
            r3 = r2
        L5d:
            if (r3 == 0) goto L7c
        L5f:
            java.util.Set r9 = r8.mEntrySetToClearWhenFinished
            java.util.Iterator r0 = r9.iterator()
        L65:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L79
            java.lang.Object r1 = r0.next()
            com.android.systemui.statusbar.notification.collection.NotificationEntry r1 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r1
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r1 = r1.row
            if (r1 == 0) goto L65
            r1.setHeadsUpAnimatingAway(r2)
            goto L65
        L79:
            r9.clear()
        L7c:
            r8.updateHideAmount()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator.setVisibilityAmount(float):void");
    }

    public final void setWakingUp(boolean z, boolean z2) {
        boolean z3;
        float f;
        boolean z4;
        int collapsedHeight;
        NotificationWakeUpCoordinatorLogger notificationWakeUpCoordinatorLogger = this.logger;
        notificationWakeUpCoordinatorLogger.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        NotificationWakeUpCoordinatorLogger$logSetWakingUp$2 notificationWakeUpCoordinatorLogger$logSetWakingUp$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetWakingUp$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "setWakingUp(wakingUp=" + logMessage.getBool1() + ", requestDelayedAnimation=" + logMessage.getBool2() + ")";
            }
        };
        LogBuffer logBuffer = notificationWakeUpCoordinatorLogger.buffer;
        LogMessage obtain = logBuffer.obtain("NotificationWakeUpCoordinator", logLevel, notificationWakeUpCoordinatorLogger$logSetWakingUp$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        logBuffer.commit(obtain);
        this.wakingUp = z;
        this.willWakeUp = false;
        if (z) {
            boolean z5 = this.mNotificationsVisible;
            KeyguardBypassController keyguardBypassController = this.bypassController;
            if (z5 && !this.mNotificationsVisibleForExpansion && !keyguardBypassController.getBypassEnabled()) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.mStackScrollerController;
                if (notificationStackScrollLayoutController == null) {
                    notificationStackScrollLayoutController = null;
                }
                NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
                ExpandableView firstChildWithBackground = notificationStackScrollLayout.getFirstChildWithBackground();
                if (firstChildWithBackground != null) {
                    if (notificationStackScrollLayout.mKeyguardBypassEnabled) {
                        collapsedHeight = firstChildWithBackground.getHeadsUpHeightWithoutHeader();
                    } else {
                        collapsedHeight = firstChildWithBackground.getCollapsedHeight();
                    }
                    f = collapsedHeight;
                } else {
                    f = 0.0f;
                }
                notificationStackScrollLayout.setPulseHeight(f);
                int childCount = notificationStackScrollLayout.getChildCount();
                float f2 = -1.0f;
                boolean z6 = true;
                for (int i = 0; i < childCount; i++) {
                    ExpandableView childAtIndex = notificationStackScrollLayout.getChildAtIndex(i);
                    if (childAtIndex.getVisibility() != 8) {
                        if (childAtIndex == notificationStackScrollLayout.mShelf) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if ((childAtIndex instanceof ExpandableNotificationRow) || z4) {
                            if (childAtIndex.getVisibility() == 0 && !z4) {
                                if (z6) {
                                    z6 = false;
                                    f2 = (childAtIndex.getTranslationY() + childAtIndex.mActualHeight) - notificationStackScrollLayout.mShelf.getHeight();
                                }
                            } else if (!z6) {
                                childAtIndex.setTranslationY(f2);
                            }
                        }
                    }
                }
                notificationStackScrollLayout.mDimmedNeedsAnimation = true;
            }
            if (keyguardBypassController.getBypassEnabled() && !this.mNotificationsVisible) {
                updateNotificationVisibility(shouldAnimateVisibility(), false);
            }
        }
        if (z && z2) {
            if (this.delayedDozeAmountAnimator != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            LogMessage obtain2 = logBuffer.obtain("NotificationWakeUpCoordinator", LogLevel.DEBUG, new Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logStartDelayedDozeAmountAnimation$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("startDelayedDozeAmountAnimation() alreadyRunning=", ((LogMessage) obj).getBool1());
                }
            }, null);
            obtain2.setBool1(z3);
            logBuffer.commit(obtain2);
            if (!z3) {
                NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1 notificationWakeUpCoordinator$Companion$delayedDozeAmount$1 = delayedDozeAmount;
                notificationWakeUpCoordinator$Companion$delayedDozeAmount$1.getClass();
                NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1.setValue(this, 1.0f);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, notificationWakeUpCoordinator$Companion$delayedDozeAmount$1, 0.0f);
                ofFloat.setInterpolator(InterpolatorsAndroidX.LINEAR);
                ofFloat.m9setDuration(500L);
                ofFloat.setStartDelay(250L);
                ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnStart$1
                    @Override // androidx.core.animation.Animator.AnimatorListener
                    public final void onAnimationStart$1() {
                        Iterator it = NotificationWakeUpCoordinator.this.wakeUpListeners.iterator();
                        while (it.hasNext()) {
                            ((NotificationWakeUpCoordinator.WakeUpListener) it.next()).onDelayedDozeAmountAnimationRunning();
                        }
                    }

                    @Override // androidx.core.animation.Animator.AnimatorListener
                    public final void onAnimationEnd$1(Animator animator) {
                    }

                    @Override // androidx.core.animation.Animator.AnimatorListener
                    public final void onAnimationCancel() {
                    }

                    @Override // androidx.core.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat() {
                    }
                });
                ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1
                    @Override // androidx.core.animation.Animator.AnimatorListener
                    public final void onAnimationEnd$1(Animator animator) {
                        NotificationWakeUpCoordinator notificationWakeUpCoordinator = NotificationWakeUpCoordinator.this;
                        notificationWakeUpCoordinator.delayedDozeAmountAnimator = null;
                        Iterator it = notificationWakeUpCoordinator.wakeUpListeners.iterator();
                        while (it.hasNext()) {
                            ((NotificationWakeUpCoordinator.WakeUpListener) it.next()).onDelayedDozeAmountAnimationRunning();
                        }
                    }

                    @Override // androidx.core.animation.Animator.AnimatorListener
                    public final void onAnimationCancel() {
                    }

                    @Override // androidx.core.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat() {
                    }

                    @Override // androidx.core.animation.Animator.AnimatorListener
                    public final void onAnimationStart$1() {
                    }
                });
                ofFloat.start();
                this.delayedDozeAmountAnimator = ofFloat;
            }
        }
    }

    public final boolean shouldAnimateVisibility() {
        DozeParameters dozeParameters = this.dozeParameters;
        if (dozeParameters.getAlwaysOn() && !dozeParameters.getDisplayNeedsBlanking()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
    
        if (r7 != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00c6, code lost:
    
        if (r11.allowThrottle != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00bf, code lost:
    
        r15 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00b1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateDozeAmount() {
        /*
            Method dump skipped, instructions count: 333
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator.updateDozeAmount():void");
    }

    public final void updateHideAmount() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        float min = Math.min(1.0f - this.mLinearVisibilityAmount, this.outputLinearDozeAmount);
        float min2 = Math.min(1.0f - this.mVisibilityAmount, this.outputEasedDozeAmount);
        NotificationWakeUpCoordinatorLogger notificationWakeUpCoordinatorLogger = this.logger;
        boolean z5 = false;
        if (notificationWakeUpCoordinatorLogger.lastSetHideAmount == min) {
            z = true;
        } else {
            z = false;
        }
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = null;
        boolean z6 = notificationWakeUpCoordinatorLogger.allowThrottle;
        if (!z || !z6) {
            notificationWakeUpCoordinatorLogger.lastSetHideAmount = min;
            if (min == 1.0f) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                if (min == 0.0f) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (!z4) {
                    z3 = true;
                    if (notificationWakeUpCoordinatorLogger.lastSetHideAmountLogWasFractional || !z3 || !z6) {
                        notificationWakeUpCoordinatorLogger.lastSetHideAmountLogWasFractional = z3;
                        LogLevel logLevel = LogLevel.DEBUG;
                        NotificationWakeUpCoordinatorLogger$logSetHideAmount$2 notificationWakeUpCoordinatorLogger$logSetHideAmount$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetHideAmount$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return "setHideAmount(" + ((LogMessage) obj).getDouble1() + ")";
                            }
                        };
                        LogBuffer logBuffer = notificationWakeUpCoordinatorLogger.buffer;
                        LogMessage obtain = logBuffer.obtain("NotificationWakeUpCoordinator", logLevel, notificationWakeUpCoordinatorLogger$logSetHideAmount$2, null);
                        obtain.setDouble1(min);
                        logBuffer.commit(obtain);
                    }
                }
            }
            z3 = false;
            if (notificationWakeUpCoordinatorLogger.lastSetHideAmountLogWasFractional) {
            }
            notificationWakeUpCoordinatorLogger.lastSetHideAmountLogWasFractional = z3;
            LogLevel logLevel2 = LogLevel.DEBUG;
            NotificationWakeUpCoordinatorLogger$logSetHideAmount$2 notificationWakeUpCoordinatorLogger$logSetHideAmount$22 = new Function1() { // from class: com.android.systemui.statusbar.notification.NotificationWakeUpCoordinatorLogger$logSetHideAmount$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return "setHideAmount(" + ((LogMessage) obj).getDouble1() + ")";
                }
            };
            LogBuffer logBuffer2 = notificationWakeUpCoordinatorLogger.buffer;
            LogMessage obtain2 = logBuffer2.obtain("NotificationWakeUpCoordinator", logLevel2, notificationWakeUpCoordinatorLogger$logSetHideAmount$22, null);
            obtain2.setDouble1(min);
            logBuffer2.commit(obtain2);
        }
        NotificationStackScrollLayoutController notificationStackScrollLayoutController2 = this.mStackScrollerController;
        if (notificationStackScrollLayoutController2 != null) {
            notificationStackScrollLayoutController = notificationStackScrollLayoutController2;
        }
        NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
        notificationStackScrollLayout.mLinearHideAmount = min;
        notificationStackScrollLayout.mInterpolatedHideAmount = min2;
        boolean isFullyHidden = notificationStackScrollLayout.mAmbientState.isFullyHidden();
        boolean isHiddenAtAll = notificationStackScrollLayout.mAmbientState.isHiddenAtAll();
        AmbientState ambientState = notificationStackScrollLayout.mAmbientState;
        if (min2 == 1.0f && ambientState.mHideAmount != min2 && 100000.0f != ambientState.mPulseHeight) {
            ambientState.mPulseHeight = 100000.0f;
            Runnable runnable = ambientState.mOnPulseHeightChangedListener;
            if (runnable != null) {
                runnable.run();
            }
        }
        ambientState.mHideAmount = min2;
        boolean isFullyHidden2 = notificationStackScrollLayout.mAmbientState.isFullyHidden();
        boolean isHiddenAtAll2 = notificationStackScrollLayout.mAmbientState.isHiddenAtAll();
        if (isFullyHidden2 != isFullyHidden) {
            notificationStackScrollLayout.updateVisibility();
            notificationStackScrollLayout.resetAllSwipeState();
        }
        if (!isHiddenAtAll && isHiddenAtAll2) {
            notificationStackScrollLayout.mSwipeHelper.resetExposedMenuView(true, true);
        }
        if (isFullyHidden2 != isFullyHidden || isHiddenAtAll != isHiddenAtAll2) {
            notificationStackScrollLayout.invalidateOutline();
        }
        notificationStackScrollLayout.updateAlgorithmHeightAndPadding();
        notificationStackScrollLayout.updateBackgroundDimming();
        notificationStackScrollLayout.requestChildrenUpdate();
        notificationStackScrollLayout.updateOwnTranslationZ();
        if (min == 1.0f) {
            z5 = true;
        }
        if (this.notificationsFullyHidden != z5) {
            this.notificationsFullyHidden = z5;
            Iterator it = this.wakeUpListeners.iterator();
            while (it.hasNext()) {
                ((WakeUpListener) it.next()).onFullyHiddenChanged(z5);
            }
        }
    }

    public final void updateNotificationVisibility(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5 = false;
        if (!this.mNotificationsVisibleForExpansion && !(!this.mHeadsUpManager.mAlertEntries.isEmpty())) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (z3 && getCanShowPulsingHuns()) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (!z4 && this.mNotificationsVisible && (this.wakingUp || this.willWakeUp)) {
            if (this.outputLinearDozeAmount == 0.0f) {
                z5 = true;
            }
            if (!z5) {
                return;
            }
        }
        setNotificationsVisible(z4, z, z2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface WakeUpListener {
        void onFullyHiddenChanged(boolean z);

        default void onPulseExpansionChanged(boolean z) {
        }

        default void onDelayedDozeAmountAnimationRunning() {
        }
    }

    public static /* synthetic */ void getDozeAmountInterpolator$annotations() {
    }

    public static /* synthetic */ void getStatusBarState$annotations() {
    }
}
