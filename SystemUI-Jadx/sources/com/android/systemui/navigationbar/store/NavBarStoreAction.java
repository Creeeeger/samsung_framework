package com.android.systemui.navigationbar.store;

import android.widget.LinearLayout;
import android.widget.RemoteViews;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;
import com.android.systemui.shared.navigationbar.NavBarEvents;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface NavBarStoreAction {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Action {
        public final boolean a11yClickable;
        public final boolean a11yLongClickable;
        public final boolean contextualButtonVisible;
        public final float dampingRatio;
        public final float darkIntensity;
        public final boolean disableSUWBack;
        public final int displayId;
        public final boolean edgeBackGestureDisabled;
        public final boolean folded;
        public final GestureHintVIInfo gestureHintVIInfo;
        public final LinearLayout leftRemoteViewContainer;
        public final int navBarIconHints;
        public final NavBarLayoutInfo navBarLayoutInfo;
        public final int navBarVisibility;
        public final OneHandModeInfo oneHandModeInfo;
        public final float remoteViewDarkIntensity;
        public final RemoteViewShortcut remoteViewShortcut;
        public final LinearLayout rightRemoteViewContainer;
        public final float stiffness;
        public final List sysUiFlagInfoList;
        public final boolean taskbarEnabled;
        public final NavBarEvents taskbarNavBarEvents;

        public Action() {
            this(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4194303, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Action)) {
                return false;
            }
            Action action = (Action) obj;
            if (Intrinsics.areEqual(this.oneHandModeInfo, action.oneHandModeInfo) && Intrinsics.areEqual(this.navBarLayoutInfo, action.navBarLayoutInfo) && Intrinsics.areEqual(this.leftRemoteViewContainer, action.leftRemoteViewContainer) && Intrinsics.areEqual(this.rightRemoteViewContainer, action.rightRemoteViewContainer) && this.contextualButtonVisible == action.contextualButtonVisible && Float.compare(this.remoteViewDarkIntensity, action.remoteViewDarkIntensity) == 0 && Intrinsics.areEqual(this.remoteViewShortcut, action.remoteViewShortcut) && this.disableSUWBack == action.disableSUWBack && Float.compare(this.darkIntensity, action.darkIntensity) == 0 && this.navBarIconHints == action.navBarIconHints && this.a11yClickable == action.a11yClickable && this.a11yLongClickable == action.a11yLongClickable && this.navBarVisibility == action.navBarVisibility && this.edgeBackGestureDisabled == action.edgeBackGestureDisabled && Intrinsics.areEqual(this.gestureHintVIInfo, action.gestureHintVIInfo) && Intrinsics.areEqual(this.sysUiFlagInfoList, action.sysUiFlagInfoList) && this.folded == action.folded && this.taskbarEnabled == action.taskbarEnabled && Intrinsics.areEqual(this.taskbarNavBarEvents, action.taskbarNavBarEvents) && Float.compare(this.stiffness, action.stiffness) == 0 && Float.compare(this.dampingRatio, action.dampingRatio) == 0 && this.displayId == action.displayId) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            int hashCode2 = (this.navBarLayoutInfo.hashCode() + (this.oneHandModeInfo.hashCode() * 31)) * 31;
            int i = 0;
            LinearLayout linearLayout = this.leftRemoteViewContainer;
            if (linearLayout == null) {
                hashCode = 0;
            } else {
                hashCode = linearLayout.hashCode();
            }
            int i2 = (hashCode2 + hashCode) * 31;
            LinearLayout linearLayout2 = this.rightRemoteViewContainer;
            if (linearLayout2 != null) {
                i = linearLayout2.hashCode();
            }
            int i3 = (i2 + i) * 31;
            int i4 = 1;
            boolean z = this.contextualButtonVisible;
            int i5 = z;
            if (z != 0) {
                i5 = 1;
            }
            int hashCode3 = (this.remoteViewShortcut.hashCode() + UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.remoteViewDarkIntensity, (i3 + i5) * 31, 31)) * 31;
            boolean z2 = this.disableSUWBack;
            int i6 = z2;
            if (z2 != 0) {
                i6 = 1;
            }
            int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.navBarIconHints, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.darkIntensity, (hashCode3 + i6) * 31, 31), 31);
            boolean z3 = this.a11yClickable;
            int i7 = z3;
            if (z3 != 0) {
                i7 = 1;
            }
            int i8 = (m + i7) * 31;
            boolean z4 = this.a11yLongClickable;
            int i9 = z4;
            if (z4 != 0) {
                i9 = 1;
            }
            int m2 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.navBarVisibility, (i8 + i9) * 31, 31);
            boolean z5 = this.edgeBackGestureDisabled;
            int i10 = z5;
            if (z5 != 0) {
                i10 = 1;
            }
            int hashCode4 = (this.sysUiFlagInfoList.hashCode() + ((this.gestureHintVIInfo.hashCode() + ((m2 + i10) * 31)) * 31)) * 31;
            boolean z6 = this.folded;
            int i11 = z6;
            if (z6 != 0) {
                i11 = 1;
            }
            int i12 = (hashCode4 + i11) * 31;
            boolean z7 = this.taskbarEnabled;
            if (!z7) {
                i4 = z7 ? 1 : 0;
            }
            return Integer.hashCode(this.displayId) + UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.dampingRatio, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.stiffness, (this.taskbarNavBarEvents.hashCode() + ((i12 + i4) * 31)) * 31, 31), 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Action(oneHandModeInfo=");
            sb.append(this.oneHandModeInfo);
            sb.append(", navBarLayoutInfo=");
            sb.append(this.navBarLayoutInfo);
            sb.append(", leftRemoteViewContainer=");
            sb.append(this.leftRemoteViewContainer);
            sb.append(", rightRemoteViewContainer=");
            sb.append(this.rightRemoteViewContainer);
            sb.append(", contextualButtonVisible=");
            sb.append(this.contextualButtonVisible);
            sb.append(", remoteViewDarkIntensity=");
            sb.append(this.remoteViewDarkIntensity);
            sb.append(", remoteViewShortcut=");
            sb.append(this.remoteViewShortcut);
            sb.append(", disableSUWBack=");
            sb.append(this.disableSUWBack);
            sb.append(", darkIntensity=");
            sb.append(this.darkIntensity);
            sb.append(", navBarIconHints=");
            sb.append(this.navBarIconHints);
            sb.append(", a11yClickable=");
            sb.append(this.a11yClickable);
            sb.append(", a11yLongClickable=");
            sb.append(this.a11yLongClickable);
            sb.append(", navBarVisibility=");
            sb.append(this.navBarVisibility);
            sb.append(", edgeBackGestureDisabled=");
            sb.append(this.edgeBackGestureDisabled);
            sb.append(", gestureHintVIInfo=");
            sb.append(this.gestureHintVIInfo);
            sb.append(", sysUiFlagInfoList=");
            sb.append(this.sysUiFlagInfoList);
            sb.append(", folded=");
            sb.append(this.folded);
            sb.append(", taskbarEnabled=");
            sb.append(this.taskbarEnabled);
            sb.append(", taskbarNavBarEvents=");
            sb.append(this.taskbarNavBarEvents);
            sb.append(", stiffness=");
            sb.append(this.stiffness);
            sb.append(", dampingRatio=");
            sb.append(this.dampingRatio);
            sb.append(", displayId=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.displayId, ")");
        }

        public Action(OneHandModeInfo oneHandModeInfo, NavBarLayoutInfo navBarLayoutInfo, LinearLayout linearLayout, LinearLayout linearLayout2, boolean z, float f, RemoteViewShortcut remoteViewShortcut, boolean z2, float f2, int i, boolean z3, boolean z4, int i2, boolean z5, GestureHintVIInfo gestureHintVIInfo, List<SysUiFlagInfo> list, boolean z6, boolean z7, NavBarEvents navBarEvents, float f3, float f4, int i3) {
            this.oneHandModeInfo = oneHandModeInfo;
            this.navBarLayoutInfo = navBarLayoutInfo;
            this.leftRemoteViewContainer = linearLayout;
            this.rightRemoteViewContainer = linearLayout2;
            this.contextualButtonVisible = z;
            this.remoteViewDarkIntensity = f;
            this.remoteViewShortcut = remoteViewShortcut;
            this.disableSUWBack = z2;
            this.darkIntensity = f2;
            this.navBarIconHints = i;
            this.a11yClickable = z3;
            this.a11yLongClickable = z4;
            this.navBarVisibility = i2;
            this.edgeBackGestureDisabled = z5;
            this.gestureHintVIInfo = gestureHintVIInfo;
            this.sysUiFlagInfoList = list;
            this.folded = z6;
            this.taskbarEnabled = z7;
            this.taskbarNavBarEvents = navBarEvents;
            this.stiffness = f3;
            this.dampingRatio = f4;
            this.displayId = i3;
        }

        public /* synthetic */ Action(OneHandModeInfo oneHandModeInfo, NavBarLayoutInfo navBarLayoutInfo, LinearLayout linearLayout, LinearLayout linearLayout2, boolean z, float f, RemoteViewShortcut remoteViewShortcut, boolean z2, float f2, int i, boolean z3, boolean z4, int i2, boolean z5, GestureHintVIInfo gestureHintVIInfo, List list, boolean z6, boolean z7, NavBarEvents navBarEvents, float f3, float f4, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? new OneHandModeInfo(0, 0, 0.0f, 7, null) : oneHandModeInfo, (i4 & 2) != 0 ? new NavBarLayoutInfo(0, 0, 0, 0, 0, 31, null) : navBarLayoutInfo, (i4 & 4) != 0 ? null : linearLayout, (i4 & 8) == 0 ? linearLayout2 : null, (i4 & 16) != 0 ? false : z, (i4 & 32) != 0 ? 1.0f : f, (i4 & 64) != 0 ? new RemoteViewShortcut(null, null, 0, 0, 15, null) : remoteViewShortcut, (i4 & 128) != 0 ? false : z2, (i4 & 256) == 0 ? f2 : 1.0f, (i4 & 512) != 0 ? 0 : i, (i4 & 1024) != 0 ? false : z3, (i4 & 2048) != 0 ? false : z4, (i4 & 4096) != 0 ? 0 : i2, (i4 & 8192) != 0 ? false : z5, (i4 & 16384) != 0 ? new GestureHintVIInfo(0, 0, 0, 0L, 15, null) : gestureHintVIInfo, (i4 & 32768) != 0 ? new ArrayList() : list, (i4 & 65536) != 0 ? false : z6, (i4 & 131072) != 0 ? false : z7, (i4 & 262144) != 0 ? new NavBarEvents(null, null, null, null, false, 0, false, false, 0, null, false, null, 4095, null) : navBarEvents, (i4 & 524288) != 0 ? 0.0f : f3, (i4 & QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING) == 0 ? f4 : 0.0f, (i4 & QuickStepContract.SYSUI_STATE_DEVICE_DOZING) != 0 ? 0 : i3);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ForceHideGestureHint implements NavBarStoreAction {
        public final Action action;

        public ForceHideGestureHint() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ForceHideGestureHint) && Intrinsics.areEqual(this.action, ((ForceHideGestureHint) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("ForceHideGestureHint(action="), this.action, ")");
        }

        public ForceHideGestureHint(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ ForceHideGestureHint(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.ForceHideGestureHint.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class GestureHintVIInfo {
        public final int distanceX;
        public final int distanceY;
        public final long duration;
        public final int hintID;

        public GestureHintVIInfo() {
            this(0, 0, 0, 0L, 15, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GestureHintVIInfo)) {
                return false;
            }
            GestureHintVIInfo gestureHintVIInfo = (GestureHintVIInfo) obj;
            if (this.hintID == gestureHintVIInfo.hintID && this.distanceX == gestureHintVIInfo.distanceX && this.distanceY == gestureHintVIInfo.distanceY && this.duration == gestureHintVIInfo.duration) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Long.hashCode(this.duration) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.distanceY, AppInfoViewData$$ExternalSyntheticOutline0.m(this.distanceX, Integer.hashCode(this.hintID) * 31, 31), 31);
        }

        public final String toString() {
            return "GestureHintVIInfo(hintID=" + this.hintID + ", distanceX=" + this.distanceX + ", distanceY=" + this.distanceY + ", duration=" + this.duration + ")";
        }

        public GestureHintVIInfo(int i, int i2, int i3, long j) {
            this.hintID = i;
            this.distanceX = i2;
            this.distanceY = i3;
            this.duration = j;
        }

        public /* synthetic */ GestureHintVIInfo(int i, int i2, int i3, long j, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? 0 : i, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? 0 : i3, (i4 & 8) != 0 ? 0L : j);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class InvalidateRemoteView implements NavBarStoreAction {
        public final Action action;

        public InvalidateRemoteView() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof InvalidateRemoteView) && Intrinsics.areEqual(this.action, ((InvalidateRemoteView) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("InvalidateRemoteView(action="), this.action, ")");
        }

        public InvalidateRemoteView(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ InvalidateRemoteView(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.InvalidateRemoteView.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MoveHintVI implements NavBarStoreAction {
        public final Action action;

        public MoveHintVI() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof MoveHintVI) && Intrinsics.areEqual(this.action, ((MoveHintVI) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("MoveHintVI(action="), this.action, ")");
        }

        public MoveHintVI(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ MoveHintVI(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.MoveHintVI.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class NavBarIconMarquee implements NavBarStoreAction {
        public final Action action;

        public NavBarIconMarquee() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof NavBarIconMarquee) && Intrinsics.areEqual(this.action, ((NavBarIconMarquee) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("NavBarIconMarquee(action="), this.action, ")");
        }

        public NavBarIconMarquee(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ NavBarIconMarquee(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.NavBarIconMarquee.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class NavBarLayoutInfo {
        public final int gravity;
        public final int height;
        public final int insetHeight;
        public final int insetWidth;
        public final int width;

        public NavBarLayoutInfo() {
            this(0, 0, 0, 0, 0, 31, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NavBarLayoutInfo)) {
                return false;
            }
            NavBarLayoutInfo navBarLayoutInfo = (NavBarLayoutInfo) obj;
            if (this.width == navBarLayoutInfo.width && this.height == navBarLayoutInfo.height && this.insetHeight == navBarLayoutInfo.insetHeight && this.insetWidth == navBarLayoutInfo.insetWidth && this.gravity == navBarLayoutInfo.gravity) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.gravity) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.insetWidth, AppInfoViewData$$ExternalSyntheticOutline0.m(this.insetHeight, AppInfoViewData$$ExternalSyntheticOutline0.m(this.height, Integer.hashCode(this.width) * 31, 31), 31), 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("NavBarLayoutInfo(width=");
            sb.append(this.width);
            sb.append(", height=");
            sb.append(this.height);
            sb.append(", insetHeight=");
            sb.append(this.insetHeight);
            sb.append(", insetWidth=");
            sb.append(this.insetWidth);
            sb.append(", gravity=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.gravity, ")");
        }

        public NavBarLayoutInfo(int i, int i2, int i3, int i4, int i5) {
            this.width = i;
            this.height = i2;
            this.insetHeight = i3;
            this.insetWidth = i4;
            this.gravity = i5;
        }

        public /* synthetic */ NavBarLayoutInfo(int i, int i2, int i3, int i4, int i5, int i6, DefaultConstructorMarker defaultConstructorMarker) {
            this((i6 & 1) != 0 ? -1 : i, (i6 & 2) != 0 ? -1 : i2, (i6 & 4) != 0 ? -1 : i3, (i6 & 8) != 0 ? -1 : i4, (i6 & 16) != 0 ? 80 : i5);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OneHandModeInfo {
        public final int offsetX;
        public final int offsetY;
        public final float scale;

        public OneHandModeInfo() {
            this(0, 0, 0.0f, 7, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OneHandModeInfo)) {
                return false;
            }
            OneHandModeInfo oneHandModeInfo = (OneHandModeInfo) obj;
            if (this.offsetX == oneHandModeInfo.offsetX && this.offsetY == oneHandModeInfo.offsetY && Float.compare(this.scale, oneHandModeInfo.scale) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.scale) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.offsetY, Integer.hashCode(this.offsetX) * 31, 31);
        }

        public final String toString() {
            return "OneHandModeInfo(offsetX=" + this.offsetX + ", offsetY=" + this.offsetY + ", scale=" + this.scale + ")";
        }

        public OneHandModeInfo(int i, int i2, float f) {
            this.offsetX = i;
            this.offsetY = i2;
            this.scale = f;
        }

        public /* synthetic */ OneHandModeInfo(int i, int i2, float f, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? -1 : i, (i3 & 2) != 0 ? -1 : i2, (i3 & 4) != 0 ? 0.0f : f);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RecalculateGestureInsetScale implements NavBarStoreAction {
        public final Action action;

        public RecalculateGestureInsetScale() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof RecalculateGestureInsetScale) && Intrinsics.areEqual(this.action, ((RecalculateGestureInsetScale) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("RecalculateGestureInsetScale(action="), this.action, ")");
        }

        public RecalculateGestureInsetScale(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ RecalculateGestureInsetScale(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.RecalculateGestureInsetScale.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ReevaluateNavBar implements NavBarStoreAction {
        public final Action action;

        public ReevaluateNavBar() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ReevaluateNavBar) && Intrinsics.areEqual(this.action, ((ReevaluateNavBar) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("ReevaluateNavBar(action="), this.action, ")");
        }

        public ReevaluateNavBar(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ ReevaluateNavBar(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.ReevaluateNavBar.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ReinflateNavBar implements NavBarStoreAction {
        public final Action action;

        public ReinflateNavBar() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ReinflateNavBar) && Intrinsics.areEqual(this.action, ((ReinflateNavBar) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("ReinflateNavBar(action="), this.action, ")");
        }

        public ReinflateNavBar(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ ReinflateNavBar(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.ReinflateNavBar.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RemoteViewShortcut {
        public final int position;
        public final int priority;
        public final RemoteViews remoteViews;
        public final String requestClass;

        public RemoteViewShortcut() {
            this(null, null, 0, 0, 15, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteViewShortcut)) {
                return false;
            }
            RemoteViewShortcut remoteViewShortcut = (RemoteViewShortcut) obj;
            if (Intrinsics.areEqual(this.requestClass, remoteViewShortcut.requestClass) && Intrinsics.areEqual(this.remoteViews, remoteViewShortcut.remoteViews) && this.position == remoteViewShortcut.position && this.priority == remoteViewShortcut.priority) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int i = 0;
            String str = this.requestClass;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = hashCode * 31;
            RemoteViews remoteViews = this.remoteViews;
            if (remoteViews != null) {
                i = remoteViews.hashCode();
            }
            return Integer.hashCode(this.priority) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.position, (i2 + i) * 31, 31);
        }

        public final String toString() {
            return "RemoteViewShortcut(requestClass=" + this.requestClass + ", remoteViews=" + this.remoteViews + ", position=" + this.position + ", priority=" + this.priority + ")";
        }

        public RemoteViewShortcut(String str, RemoteViews remoteViews, int i, int i2) {
            this.requestClass = str;
            this.remoteViews = remoteViews;
            this.position = i;
            this.priority = i2;
        }

        public /* synthetic */ RemoteViewShortcut(String str, RemoteViews remoteViews, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? null : remoteViews, (i3 & 4) != 0 ? -1 : i, (i3 & 8) != 0 ? -1 : i2);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ResetHintVI implements NavBarStoreAction {
        public final Action action;

        public ResetHintVI() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ResetHintVI) && Intrinsics.areEqual(this.action, ((ResetHintVI) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("ResetHintVI(action="), this.action, ")");
        }

        public ResetHintVI(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ ResetHintVI(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.ResetHintVI.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SetGestureHintViewGroup implements NavBarStoreAction {
        public final Action action;

        public SetGestureHintViewGroup() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof SetGestureHintViewGroup) && Intrinsics.areEqual(this.action, ((SetGestureHintViewGroup) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("SetGestureHintViewGroup(action="), this.action, ")");
        }

        public SetGestureHintViewGroup(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ SetGestureHintViewGroup(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.SetGestureHintViewGroup.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SetNavBarVisibility implements NavBarStoreAction {
        public final Action action;

        public SetNavBarVisibility() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof SetNavBarVisibility) && Intrinsics.areEqual(this.action, ((SetNavBarVisibility) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("SetNavBarVisibility(action="), this.action, ")");
        }

        public SetNavBarVisibility(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ SetNavBarVisibility(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.SetNavBarVisibility.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ShowA11ySwipeUpTipPopup implements NavBarStoreAction {
        public final Action action;

        public ShowA11ySwipeUpTipPopup() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ShowA11ySwipeUpTipPopup) && Intrinsics.areEqual(this.action, ((ShowA11ySwipeUpTipPopup) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("ShowA11ySwipeUpTipPopup(action="), this.action, ")");
        }

        public ShowA11ySwipeUpTipPopup(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ ShowA11ySwipeUpTipPopup(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.ShowA11ySwipeUpTipPopup.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class StartHintVI implements NavBarStoreAction {
        public final Action action;

        public StartHintVI() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof StartHintVI) && Intrinsics.areEqual(this.action, ((StartHintVI) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("StartHintVI(action="), this.action, ")");
        }

        public StartHintVI(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ StartHintVI(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.StartHintVI.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SysUiFlagInfo {
        public final long flag;
        public final boolean value;

        public SysUiFlagInfo() {
            this(0L, false, 3, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SysUiFlagInfo)) {
                return false;
            }
            SysUiFlagInfo sysUiFlagInfo = (SysUiFlagInfo) obj;
            if (this.flag == sysUiFlagInfo.flag && this.value == sysUiFlagInfo.value) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode = Long.hashCode(this.flag) * 31;
            boolean z = this.value;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return hashCode + i;
        }

        public final String toString() {
            return "SysUiFlagInfo(flag=" + this.flag + ", value=" + this.value + ")";
        }

        public SysUiFlagInfo(long j, boolean z) {
            this.flag = j;
            this.value = z;
        }

        public /* synthetic */ SysUiFlagInfo(long j, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? false : z);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateA11YStatus implements NavBarStoreAction {
        public final Action action;

        public UpdateA11YStatus() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateA11YStatus) && Intrinsics.areEqual(this.action, ((UpdateA11YStatus) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateA11YStatus(action="), this.action, ")");
        }

        public UpdateA11YStatus(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateA11YStatus(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateA11YStatus.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateDefaultNavigationBarStatus implements NavBarStoreAction {
        public final Action action;

        public UpdateDefaultNavigationBarStatus() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateDefaultNavigationBarStatus) && Intrinsics.areEqual(this.action, ((UpdateDefaultNavigationBarStatus) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateDefaultNavigationBarStatus(action="), this.action, ")");
        }

        public UpdateDefaultNavigationBarStatus(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateDefaultNavigationBarStatus(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateDefaultNavigationBarStatus.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateEdgeBackGestureDisabledPolicy implements NavBarStoreAction {
        public final Action action;

        public UpdateEdgeBackGestureDisabledPolicy() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateEdgeBackGestureDisabledPolicy) && Intrinsics.areEqual(this.action, ((UpdateEdgeBackGestureDisabledPolicy) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateEdgeBackGestureDisabledPolicy(action="), this.action, ")");
        }

        public UpdateEdgeBackGestureDisabledPolicy(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateEdgeBackGestureDisabledPolicy(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateEdgeBackGestureDisabledPolicy.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateGestureHintVisibility implements NavBarStoreAction {
        public final Action action;

        public UpdateGestureHintVisibility() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateGestureHintVisibility) && Intrinsics.areEqual(this.action, ((UpdateGestureHintVisibility) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateGestureHintVisibility(action="), this.action, ")");
        }

        public UpdateGestureHintVisibility(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateGestureHintVisibility(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateGestureHintVisibility.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateIndicatorSpringParams implements NavBarStoreAction {
        public final Action action;

        public UpdateIndicatorSpringParams() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateIndicatorSpringParams) && Intrinsics.areEqual(this.action, ((UpdateIndicatorSpringParams) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateIndicatorSpringParams(action="), this.action, ")");
        }

        public UpdateIndicatorSpringParams(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateIndicatorSpringParams(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateIndicatorSpringParams.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateNavBarGoneStateFlag implements NavBarStoreAction {
        public final Action action;

        public UpdateNavBarGoneStateFlag() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateNavBarGoneStateFlag) && Intrinsics.areEqual(this.action, ((UpdateNavBarGoneStateFlag) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateNavBarGoneStateFlag(action="), this.action, ")");
        }

        public UpdateNavBarGoneStateFlag(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateNavBarGoneStateFlag(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateNavBarGoneStateFlag.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateNavBarIconAndHints implements NavBarStoreAction {
        public final Action action;

        public UpdateNavBarIconAndHints() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateNavBarIconAndHints) && Intrinsics.areEqual(this.action, ((UpdateNavBarIconAndHints) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateNavBarIconAndHints(action="), this.action, ")");
        }

        public UpdateNavBarIconAndHints(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateNavBarIconAndHints(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateNavBarIconAndHints.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateNavBarLayoutParams implements NavBarStoreAction {
        public final Action action;

        public UpdateNavBarLayoutParams() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateNavBarLayoutParams) && Intrinsics.areEqual(this.action, ((UpdateNavBarLayoutParams) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateNavBarLayoutParams(action="), this.action, ")");
        }

        public UpdateNavBarLayoutParams(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateNavBarLayoutParams(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateNavBarLayoutParams.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateNavBarNormalStyle implements NavBarStoreAction {
        public final Action action;

        public UpdateNavBarNormalStyle() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateNavBarNormalStyle) && Intrinsics.areEqual(this.action, ((UpdateNavBarNormalStyle) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateNavBarNormalStyle(action="), this.action, ")");
        }

        public UpdateNavBarNormalStyle(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateNavBarNormalStyle(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateNavBarNormalStyle.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateNavBarOpaqueColor implements NavBarStoreAction {
        public final Action action;

        public UpdateNavBarOpaqueColor() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateNavBarOpaqueColor) && Intrinsics.areEqual(this.action, ((UpdateNavBarOpaqueColor) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateNavBarOpaqueColor(action="), this.action, ")");
        }

        public UpdateNavBarOpaqueColor(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateNavBarOpaqueColor(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateNavBarOpaqueColor.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateNavBarSUWStyle implements NavBarStoreAction {
        public final Action action;

        public UpdateNavBarSUWStyle() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateNavBarSUWStyle) && Intrinsics.areEqual(this.action, ((UpdateNavBarSUWStyle) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateNavBarSUWStyle(action="), this.action, ")");
        }

        public UpdateNavBarSUWStyle(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateNavBarSUWStyle(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateNavBarSUWStyle.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateNavigationIcon implements NavBarStoreAction {
        public final Action action;

        public UpdateNavigationIcon() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateNavigationIcon) && Intrinsics.areEqual(this.action, ((UpdateNavigationIcon) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateNavigationIcon(action="), this.action, ")");
        }

        public UpdateNavigationIcon(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateNavigationIcon(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateNavigationIcon.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateOneHandModeInfo implements NavBarStoreAction {
        public final Action action;

        public UpdateOneHandModeInfo() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateOneHandModeInfo) && Intrinsics.areEqual(this.action, ((UpdateOneHandModeInfo) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateOneHandModeInfo(action="), this.action, ")");
        }

        public UpdateOneHandModeInfo(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateOneHandModeInfo(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateOneHandModeInfo.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateRegionSamplingRect implements NavBarStoreAction {
        public final Action action;

        public UpdateRegionSamplingRect() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateRegionSamplingRect) && Intrinsics.areEqual(this.action, ((UpdateRegionSamplingRect) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateRegionSamplingRect(action="), this.action, ")");
        }

        public UpdateRegionSamplingRect(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateRegionSamplingRect(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateRegionSamplingRect.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateRemoteViewContainer implements NavBarStoreAction {
        public final Action action;

        public UpdateRemoteViewContainer() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateRemoteViewContainer) && Intrinsics.areEqual(this.action, ((UpdateRemoteViewContainer) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateRemoteViewContainer(action="), this.action, ")");
        }

        public UpdateRemoteViewContainer(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateRemoteViewContainer(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateRemoteViewContainer.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateRemoteViewDarkIntensity implements NavBarStoreAction {
        public final Action action;

        public UpdateRemoteViewDarkIntensity() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateRemoteViewDarkIntensity) && Intrinsics.areEqual(this.action, ((UpdateRemoteViewDarkIntensity) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateRemoteViewDarkIntensity(action="), this.action, ")");
        }

        public UpdateRemoteViewDarkIntensity(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateRemoteViewDarkIntensity(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateRemoteViewDarkIntensity.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateRemoteViewShortcut implements NavBarStoreAction {
        public final Action action;

        public UpdateRemoteViewShortcut() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateRemoteViewShortcut) && Intrinsics.areEqual(this.action, ((UpdateRemoteViewShortcut) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateRemoteViewShortcut(action="), this.action, ")");
        }

        public UpdateRemoteViewShortcut(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateRemoteViewShortcut(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateRemoteViewShortcut.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateSUWA11yIcon implements NavBarStoreAction {
        public final Action action;

        public UpdateSUWA11yIcon() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateSUWA11yIcon) && Intrinsics.areEqual(this.action, ((UpdateSUWA11yIcon) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateSUWA11yIcon(action="), this.action, ")");
        }

        public UpdateSUWA11yIcon(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateSUWA11yIcon(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateSUWA11yIcon.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateSUWDarkIntensity implements NavBarStoreAction {
        public final Action action;

        public UpdateSUWDarkIntensity() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateSUWDarkIntensity) && Intrinsics.areEqual(this.action, ((UpdateSUWDarkIntensity) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateSUWDarkIntensity(action="), this.action, ")");
        }

        public UpdateSUWDarkIntensity(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateSUWDarkIntensity(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateSUWDarkIntensity.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateSUWDisabled implements NavBarStoreAction {
        public final Action action;

        public UpdateSUWDisabled() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateSUWDisabled) && Intrinsics.areEqual(this.action, ((UpdateSUWDisabled) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateSUWDisabled(action="), this.action, ")");
        }

        public UpdateSUWDisabled(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateSUWDisabled(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateSUWDisabled.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateSUWIconHints implements NavBarStoreAction {
        public final Action action;

        public UpdateSUWIconHints() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateSUWIconHints) && Intrinsics.areEqual(this.action, ((UpdateSUWIconHints) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateSUWIconHints(action="), this.action, ")");
        }

        public UpdateSUWIconHints(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateSUWIconHints(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateSUWIconHints.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateSysUiFlags implements NavBarStoreAction {
        public final Action action;

        public UpdateSysUiFlags() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateSysUiFlags) && Intrinsics.areEqual(this.action, ((UpdateSysUiFlags) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateSysUiFlags(action="), this.action, ")");
        }

        public UpdateSysUiFlags(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateSysUiFlags(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateSysUiFlags.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateTaskBarIconsAndHints implements NavBarStoreAction {
        public final Action action;

        public UpdateTaskBarIconsAndHints() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateTaskBarIconsAndHints) && Intrinsics.areEqual(this.action, ((UpdateTaskBarIconsAndHints) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateTaskBarIconsAndHints(action="), this.action, ")");
        }

        public UpdateTaskBarIconsAndHints(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateTaskBarIconsAndHints(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateTaskBarIconsAndHints.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateTaskBarNavBarEvents implements NavBarStoreAction {
        public final Action action;

        public UpdateTaskBarNavBarEvents() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateTaskBarNavBarEvents) && Intrinsics.areEqual(this.action, ((UpdateTaskBarNavBarEvents) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateTaskBarNavBarEvents(action="), this.action, ")");
        }

        public UpdateTaskBarNavBarEvents(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateTaskBarNavBarEvents(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateTaskBarNavBarEvents.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UpdateTaskbarStatus implements NavBarStoreAction {
        public final Action action;

        public UpdateTaskbarStatus() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UpdateTaskbarStatus) && Intrinsics.areEqual(this.action, ((UpdateTaskbarStatus) obj).action)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0.m(new StringBuilder("UpdateTaskbarStatus(action="), this.action, ")");
        }

        public UpdateTaskbarStatus(Action action) {
            this.action = action;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
            	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
            	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
            	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
            	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
            */
        public /* synthetic */ UpdateTaskbarStatus(com.android.systemui.navigationbar.store.NavBarStoreAction.Action r27, int r28, kotlin.jvm.internal.DefaultConstructorMarker r29) {
            /*
                r26 = this;
                r0 = r28 & 1
                if (r0 == 0) goto L30
                com.android.systemui.navigationbar.store.NavBarStoreAction$Action r0 = new com.android.systemui.navigationbar.store.NavBarStoreAction$Action
                r1 = r0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 0
                r16 = 0
                r17 = 0
                r18 = 0
                r19 = 0
                r20 = 0
                r21 = 0
                r22 = 0
                r23 = 0
                r24 = 4194303(0x3fffff, float:5.87747E-39)
                r25 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                r1 = r26
                goto L34
            L30:
                r1 = r26
                r0 = r27
            L34:
                r1.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreAction.UpdateTaskbarStatus.<init>(com.android.systemui.navigationbar.store.NavBarStoreAction$Action, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
