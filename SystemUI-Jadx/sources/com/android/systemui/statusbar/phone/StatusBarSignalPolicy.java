package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.os.Handler;
import android.util.ArraySet;
import android.util.Log;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.settingslib.mobile.TelephonyIcons;
import com.android.systemui.R;
import com.android.systemui.statusbar.connectivity.IconState;
import com.android.systemui.statusbar.connectivity.MobileDataIndicators;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.statusbar.connectivity.NetworkControllerImpl;
import com.android.systemui.statusbar.connectivity.SignalCallback;
import com.android.systemui.statusbar.connectivity.WifiIndicators;
import com.android.systemui.statusbar.policy.SecurityController;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.CarrierConfigTracker;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarSignalPolicy implements SignalCallback, SecurityController.SecurityControllerCallback, TunerService.Tunable {
    public static final boolean DEBUG = Log.isLoggable("StatusBarSignalPolicy", 3);
    public final boolean mActivityEnabled;
    public int mAirplaneResId;
    public final Context mContext;
    public final DesktopManager mDesktopManager;
    public boolean mHideAirplane;
    public boolean mHideEthernet;
    public boolean mHideMobile;
    public boolean mHideWifi;
    public final StatusBarIconController mIconController;
    public boolean mInitialized;
    public final NetworkController mNetworkController;
    public final SecurityController mSecurityController;
    public final String mSlotAirplane;
    public final String mSlotCallStrength;
    public final String mSlotEthernet;
    public final String mSlotMobile;
    public final String mSlotNoCalling;
    public final String mSlotVpn;
    public final String mSlotWifi;
    public final TunerService mTunerService;
    public final Handler mHandler = Handler.getMain();
    public boolean mIsAirplaneMode = false;
    public boolean mIsWifiEnabled = false;
    public final ArrayList mMobileStates = new ArrayList();
    public final ArrayList mCallIndicatorStates = new ArrayList();
    public WifiIconState mWifiIconState = new WifiIconState();
    public final AnonymousClass1 mDesktopStatusBarIconUpdateCallback = new DesktopCallback() { // from class: com.android.systemui.statusbar.phone.StatusBarSignalPolicy.1
        @Override // com.android.systemui.statusbar.phone.StatusBarSignalPolicy.DesktopCallback
        public final void updateDesktopStatusBarIcons() {
            StatusBarSignalPolicy statusBarSignalPolicy = StatusBarSignalPolicy.this;
            ((DesktopManagerImpl) statusBarSignalPolicy.mDesktopManager).setAirplaneMode(statusBarSignalPolicy.mIsAirplaneMode, statusBarSignalPolicy.mAirplaneResId);
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CallIndicatorIconState {
        public final int callStrengthResId;
        public final int noCallingResId;
        public final int subId;

        public /* synthetic */ CallIndicatorIconState(int i, int i2) {
            this(i);
        }

        public final boolean equals(Object obj) {
            if (obj == null || CallIndicatorIconState.class != obj.getClass()) {
                return false;
            }
            CallIndicatorIconState callIndicatorIconState = (CallIndicatorIconState) obj;
            if (this.noCallingResId != callIndicatorIconState.noCallingResId || this.callStrengthResId != callIndicatorIconState.callStrengthResId || this.subId != callIndicatorIconState.subId) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Objects.hash(Boolean.FALSE, Integer.valueOf(this.noCallingResId), Integer.valueOf(this.callStrengthResId), Integer.valueOf(this.subId), null, null);
        }

        private CallIndicatorIconState(int i) {
            this.subId = i;
            this.noCallingResId = R.drawable.ic_shade_no_calling_sms;
            this.callStrengthResId = TelephonyIcons.MOBILE_CALL_STRENGTH_ICONS[0];
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DesktopCallback {
        void updateDesktopStatusBarIcons();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MobileIconState extends SignalIconState {
        public boolean needsLeadingPadding;
        public boolean roaming;
        public boolean showTriangle;
        public int strengthId;
        public int subId;
        public CharSequence typeContentDescription;
        public int typeId;

        /* renamed from: -$$Nest$smcopyStates, reason: not valid java name */
        public static void m1427$$Nest$smcopyStates(List list) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((ArrayList) list).iterator();
            while (it.hasNext()) {
                MobileIconState mobileIconState = (MobileIconState) it.next();
                MobileIconState mobileIconState2 = new MobileIconState(mobileIconState.subId);
                mobileIconState.copyTo(mobileIconState2);
                arrayList.add(mobileIconState2);
            }
        }

        public /* synthetic */ MobileIconState(int i, int i2) {
            this(i);
        }

        public final MobileIconState copy() {
            MobileIconState mobileIconState = new MobileIconState(this.subId);
            copyTo(mobileIconState);
            return mobileIconState;
        }

        public final void copyTo(MobileIconState mobileIconState) {
            mobileIconState.visible = this.visible;
            mobileIconState.activityIn = this.activityIn;
            mobileIconState.activityOut = this.activityOut;
            mobileIconState.slot = this.slot;
            mobileIconState.contentDescription = this.contentDescription;
            mobileIconState.subId = this.subId;
            mobileIconState.strengthId = this.strengthId;
            mobileIconState.typeId = this.typeId;
            mobileIconState.showTriangle = this.showTriangle;
            mobileIconState.roaming = this.roaming;
            mobileIconState.needsLeadingPadding = this.needsLeadingPadding;
            mobileIconState.typeContentDescription = this.typeContentDescription;
        }

        @Override // com.android.systemui.statusbar.phone.StatusBarSignalPolicy.SignalIconState
        public final boolean equals(Object obj) {
            if (obj == null || MobileIconState.class != obj.getClass() || !super.equals(obj)) {
                return false;
            }
            MobileIconState mobileIconState = (MobileIconState) obj;
            if (this.subId != mobileIconState.subId || this.strengthId != mobileIconState.strengthId || this.typeId != mobileIconState.typeId || this.showTriangle != mobileIconState.showTriangle || this.roaming != mobileIconState.roaming || this.needsLeadingPadding != mobileIconState.needsLeadingPadding || !Objects.equals(this.typeContentDescription, mobileIconState.typeContentDescription)) {
                return false;
            }
            return true;
        }

        @Override // com.android.systemui.statusbar.phone.StatusBarSignalPolicy.SignalIconState
        public final int hashCode() {
            return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.subId), Integer.valueOf(this.strengthId), Integer.valueOf(this.typeId), Boolean.valueOf(this.showTriangle), Boolean.valueOf(this.roaming), Boolean.valueOf(this.needsLeadingPadding), this.typeContentDescription);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MobileIconState(subId=");
            sb.append(this.subId);
            sb.append(", strengthId=");
            sb.append(this.strengthId);
            sb.append(", showTriangle=");
            sb.append(this.showTriangle);
            sb.append(", roaming=");
            sb.append(this.roaming);
            sb.append(", typeId=");
            sb.append(this.typeId);
            sb.append(", visible=");
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.visible, ")");
        }

        private MobileIconState(int i) {
            super(0);
            this.subId = i;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class SignalIconState {
        public boolean activityIn;
        public boolean activityOut;
        public String contentDescription;
        public String slot;
        public boolean visible;

        private SignalIconState() {
        }

        public /* synthetic */ SignalIconState(int i) {
            this();
        }

        public boolean equals(Object obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            SignalIconState signalIconState = (SignalIconState) obj;
            if (this.visible != signalIconState.visible || this.activityOut != signalIconState.activityOut || this.activityIn != signalIconState.activityIn || !Objects.equals(this.contentDescription, signalIconState.contentDescription) || !Objects.equals(this.slot, signalIconState.slot)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(this.visible), Boolean.valueOf(this.activityOut), this.slot);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class WifiIconState extends SignalIconState {
        public boolean airplaneSpacerVisible;
        public boolean noDefaultNetwork;
        public boolean noNetworksAvailable;
        public boolean noValidatedNetwork;
        public int resId;
        public boolean signalSpacerVisible;

        public WifiIconState() {
            super(0);
        }

        public final WifiIconState copy() {
            WifiIconState wifiIconState = new WifiIconState();
            wifiIconState.visible = this.visible;
            wifiIconState.activityIn = this.activityIn;
            wifiIconState.activityOut = this.activityOut;
            wifiIconState.slot = this.slot;
            wifiIconState.contentDescription = this.contentDescription;
            wifiIconState.resId = this.resId;
            wifiIconState.airplaneSpacerVisible = this.airplaneSpacerVisible;
            wifiIconState.signalSpacerVisible = this.signalSpacerVisible;
            wifiIconState.noDefaultNetwork = this.noDefaultNetwork;
            wifiIconState.noValidatedNetwork = this.noValidatedNetwork;
            wifiIconState.noNetworksAvailable = this.noNetworksAvailable;
            return wifiIconState;
        }

        @Override // com.android.systemui.statusbar.phone.StatusBarSignalPolicy.SignalIconState
        public final boolean equals(Object obj) {
            if (obj == null || WifiIconState.class != obj.getClass() || !super.equals(obj)) {
                return false;
            }
            WifiIconState wifiIconState = (WifiIconState) obj;
            if (this.resId != wifiIconState.resId || this.airplaneSpacerVisible != wifiIconState.airplaneSpacerVisible || this.signalSpacerVisible != wifiIconState.signalSpacerVisible || this.noDefaultNetwork != wifiIconState.noDefaultNetwork || this.noValidatedNetwork != wifiIconState.noValidatedNetwork || this.noNetworksAvailable != wifiIconState.noNetworksAvailable) {
                return false;
            }
            return true;
        }

        @Override // com.android.systemui.statusbar.phone.StatusBarSignalPolicy.SignalIconState
        public final int hashCode() {
            return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.resId), Boolean.valueOf(this.airplaneSpacerVisible), Boolean.valueOf(this.signalSpacerVisible), Boolean.valueOf(this.noDefaultNetwork), Boolean.valueOf(this.noValidatedNetwork), Boolean.valueOf(this.noNetworksAvailable));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("WifiIconState(resId=");
            sb.append(this.resId);
            sb.append(", visible=");
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.visible, ")");
        }
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [com.android.systemui.statusbar.phone.StatusBarSignalPolicy$1] */
    public StatusBarSignalPolicy(Context context, StatusBarIconController statusBarIconController, CarrierConfigTracker carrierConfigTracker, NetworkController networkController, SecurityController securityController, TunerService tunerService, DesktopManager desktopManager, CoverScreenIconController coverScreenIconController) {
        this.mContext = context;
        this.mIconController = statusBarIconController;
        this.mNetworkController = networkController;
        this.mSecurityController = securityController;
        this.mTunerService = tunerService;
        this.mSlotAirplane = context.getString(17042905);
        this.mSlotMobile = context.getString(17042930);
        this.mSlotWifi = context.getString(17042951);
        this.mSlotEthernet = context.getString(17042919);
        this.mSlotVpn = context.getString(17042950);
        this.mSlotNoCalling = context.getString(17042935);
        this.mSlotCallStrength = context.getString(17042911);
        this.mActivityEnabled = context.getResources().getBoolean(R.bool.config_showActivity);
        this.mDesktopManager = desktopManager;
    }

    @Override // com.android.systemui.statusbar.policy.SecurityController.SecurityControllerCallback
    public final void onStateChanged() {
        this.mHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.StatusBarSignalPolicy$$ExternalSyntheticLambda0
            /* JADX WARN: Code restructure failed: missing block: B:18:0x0063, code lost:
            
                if (r0 == false) goto L28;
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
            
                if (r0.checkPermission("android.permission.POST_NOTIFICATIONS", "com.samsung.android.fast") == 0) goto L24;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void run() {
                /*
                    r8 = this;
                    com.android.systemui.statusbar.phone.StatusBarSignalPolicy r8 = com.android.systemui.statusbar.phone.StatusBarSignalPolicy.this
                    com.android.systemui.statusbar.policy.SecurityController r0 = r8.mSecurityController
                    com.android.systemui.statusbar.policy.SecurityControllerImpl r0 = (com.android.systemui.statusbar.policy.SecurityControllerImpl) r0
                    boolean r1 = r0.isVpnEnabled()
                    boolean r2 = r0.isVpnBranded()
                    if (r2 == 0) goto L14
                    r2 = 2131235103(0x7f08111f, float:1.808639E38)
                    goto L17
                L14:
                    r2 = 2131235325(0x7f0811fd, float:1.808684E38)
                L17:
                    if (r1 == 0) goto L22
                    boolean r3 = r0.isSecureWifiEnabled()
                    if (r3 == 0) goto L22
                    r2 = 2131235274(0x7f0811ca, float:1.8086737E38)
                L22:
                    android.util.SparseArray r3 = r0.mCurrentVpns
                    int r4 = r0.mVpnUserId
                    java.lang.Object r3 = r3.get(r4)
                    com.android.internal.net.VpnConfig r3 = (com.android.internal.net.VpnConfig) r3
                    r4 = 0
                    if (r3 != 0) goto L31
                    r3 = r4
                    goto L33
                L31:
                    boolean r3 = r3.legacy
                L33:
                    r5 = 1
                    if (r3 != 0) goto L67
                    boolean r3 = r0.isSecureWifiEnabled()
                    if (r3 == 0) goto L66
                    android.content.Context r0 = r0.mContext
                    android.content.pm.PackageManager r0 = r0.getPackageManager()
                    java.lang.String r3 = "android"
                    java.lang.String r6 = "com.samsung.android.fast"
                    int r3 = r0.checkSignatures(r3, r6)
                    if (r3 != 0) goto L62
                    android.content.pm.PackageInfo r3 = r0.getPackageInfo(r6, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
                    android.content.pm.ApplicationInfo r3 = r3.applicationInfo     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
                    int r3 = r3.targetSdkVersion     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
                    r7 = 33
                    if (r3 < r7) goto L60
                    java.lang.String r3 = "android.permission.POST_NOTIFICATIONS"
                    int r0 = r0.checkPermission(r3, r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
                    if (r0 != 0) goto L62
                L60:
                    r0 = r5
                    goto L63
                L62:
                    r0 = r4
                L63:
                    if (r0 == 0) goto L66
                    goto L67
                L66:
                    r5 = r4
                L67:
                    android.content.Context r0 = r8.mContext
                    android.content.res.Resources r0 = r0.getResources()
                    r3 = 2131951928(0x7f130138, float:1.9540284E38)
                    java.lang.String r0 = r0.getString(r3)
                    com.android.systemui.statusbar.phone.StatusBarIconController r3 = r8.mIconController
                    com.android.systemui.statusbar.phone.StatusBarIconControllerImpl r3 = (com.android.systemui.statusbar.phone.StatusBarIconControllerImpl) r3
                    java.util.ArrayList r6 = r3.mSystemIconsAllowList
                    java.lang.String r8 = r8.mSlotVpn
                    boolean r7 = r6.contains(r8)
                    if (r5 == 0) goto L8d
                    if (r7 == 0) goto L92
                    com.android.systemui.statusbar.phone.StatusBarIconControllerImpl$$ExternalSyntheticLambda3 r5 = new com.android.systemui.statusbar.phone.StatusBarIconControllerImpl$$ExternalSyntheticLambda3
                    r5.<init>()
                    r6.removeIf(r5)
                    goto L92
                L8d:
                    if (r7 != 0) goto L92
                    r6.add(r8)
                L92:
                    com.android.systemui.statusbar.pipeline.StatusBarPipelineFlags r5 = r3.mStatusBarPipelineFlags
                    boolean r5 = r5.isIconControlledByFlags(r8)
                    if (r5 == 0) goto Lb3
                    java.lang.StringBuilder r4 = new java.lang.StringBuilder
                    java.lang.String r5 = "Ignoring removal of ("
                    r4.<init>(r5)
                    r4.append(r8)
                    java.lang.String r5 = "). It should be controlled elsewhere"
                    r4.append(r5)
                    java.lang.String r4 = r4.toString()
                    java.lang.String r5 = "StatusBarIconController"
                    android.util.Log.i(r5, r4)
                    goto Ld9
                Lb3:
                    com.android.systemui.statusbar.phone.StatusBarIconList r5 = r3.mStatusBarIconList
                    com.android.systemui.statusbar.phone.StatusBarIconHolder r6 = r5.getIconHolder(r4, r8)
                    if (r6 != 0) goto Lbc
                    goto Ld9
                Lbc:
                    int r6 = r5.getViewIndex(r4, r8)
                    java.util.ArrayList r7 = r5.mSlots
                    int r5 = r5.findOrInsertSlot(r8)
                    java.lang.Object r5 = r7.get(r5)
                    com.android.systemui.statusbar.phone.StatusBarIconList$Slot r5 = (com.android.systemui.statusbar.phone.StatusBarIconList.Slot) r5
                    r5.removeForTag(r4)
                    com.android.systemui.statusbar.phone.StatusBarIconControllerImpl$$ExternalSyntheticLambda1 r5 = new com.android.systemui.statusbar.phone.StatusBarIconControllerImpl$$ExternalSyntheticLambda1
                    r5.<init>(r6, r4)
                    java.util.ArrayList r4 = r3.mIconGroups
                    r4.forEach(r5)
                Ld9:
                    r3.setIcon(r0, r8, r2)
                    r3.setIconVisibility(r8, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.StatusBarSignalPolicy$$ExternalSyntheticLambda0.run():void");
            }
        });
    }

    @Override // com.android.systemui.tuner.TunerService.Tunable
    public final void onTuningChanged(String str, String str2) {
        if (!"icon_blacklist".equals(str)) {
            return;
        }
        ArraySet iconHideList = StatusBarIconController.getIconHideList(this.mContext, str2);
        boolean contains = iconHideList.contains(this.mSlotAirplane);
        boolean contains2 = iconHideList.contains(this.mSlotMobile);
        boolean contains3 = iconHideList.contains(this.mSlotWifi);
        boolean contains4 = iconHideList.contains(this.mSlotEthernet);
        if (contains != this.mHideAirplane || contains2 != this.mHideMobile || contains4 != this.mHideEthernet || contains3 != this.mHideWifi) {
            this.mHideAirplane = contains;
            this.mHideMobile = contains2;
            this.mHideEthernet = contains4;
            this.mHideWifi = contains3;
            NetworkController networkController = this.mNetworkController;
            ((NetworkControllerImpl) networkController).removeCallback(this);
            ((NetworkControllerImpl) networkController).addCallback(this);
        }
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalCallback
    public final void setEthernetIndicators(IconState iconState) {
        if (iconState.visible) {
            boolean z = this.mHideEthernet;
        }
        String str = this.mSlotEthernet;
        StatusBarIconController statusBarIconController = this.mIconController;
        int i = iconState.icon;
        if (i > 0) {
            ((StatusBarIconControllerImpl) statusBarIconController).setIcon(iconState.contentDescription, str, i);
            ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, true);
        } else {
            ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, false);
        }
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalCallback
    public final void setIsAirplaneMode(IconState iconState) {
        boolean z;
        String iconState2;
        if (DEBUG) {
            if (iconState == null) {
                iconState2 = "";
            } else {
                iconState2 = iconState.toString();
            }
            Log.d("StatusBarSignalPolicy", "setIsAirplaneMode: icon = ".concat(iconState2));
        }
        if (iconState.visible && !this.mHideAirplane) {
            z = true;
        } else {
            z = false;
        }
        this.mIsAirplaneMode = z;
        String str = this.mSlotAirplane;
        StatusBarIconController statusBarIconController = this.mIconController;
        int i = iconState.icon;
        if (z && i > 0) {
            String str2 = iconState.contentDescription;
            i = R.drawable.samsung_stat_sys_airplane_mode;
            ((StatusBarIconControllerImpl) statusBarIconController).setIcon(str2, str, R.drawable.samsung_stat_sys_airplane_mode);
            ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, true);
        } else {
            ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, false);
        }
        this.mAirplaneResId = i;
        ((DesktopManagerImpl) this.mDesktopManager).setAirplaneMode(this.mIsAirplaneMode, i);
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalCallback
    public final void setMobileDataIndicators(MobileDataIndicators mobileDataIndicators) {
        MobileIconState mobileIconState;
        MobileIconState mobileIconState2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = DEBUG;
        if (z5) {
            Log.d("StatusBarSignalPolicy", "setMobileDataIndicators: " + mobileDataIndicators);
        }
        int i = mobileDataIndicators.subId;
        ArrayList arrayList = this.mMobileStates;
        Iterator it = arrayList.iterator();
        while (true) {
            mobileIconState = null;
            if (it.hasNext()) {
                mobileIconState2 = (MobileIconState) it.next();
                if (mobileIconState2.subId == i) {
                    break;
                }
            } else {
                NestedScrollView$$ExternalSyntheticOutline0.m("Unexpected subscription ", i, "StatusBarSignalPolicy");
                mobileIconState2 = null;
                break;
            }
        }
        if (mobileIconState2 == null) {
            return;
        }
        int i2 = mobileIconState2.typeId;
        boolean z6 = false;
        int i3 = mobileDataIndicators.statusType;
        if (i3 != i2 && (i3 == 0 || i2 == 0)) {
            z = true;
        } else {
            z = false;
        }
        IconState iconState = mobileDataIndicators.statusIcon;
        if (iconState.visible && !this.mHideMobile) {
            z2 = true;
        } else {
            z2 = false;
        }
        mobileIconState2.visible = z2;
        mobileIconState2.strengthId = iconState.icon;
        mobileIconState2.typeId = i3;
        mobileIconState2.contentDescription = iconState.contentDescription;
        mobileIconState2.typeContentDescription = mobileDataIndicators.typeContentDescription;
        mobileIconState2.showTriangle = mobileDataIndicators.showTriangle;
        mobileIconState2.roaming = mobileDataIndicators.roaming;
        boolean z7 = mobileDataIndicators.activityIn;
        boolean z8 = this.mActivityEnabled;
        if (z7 && z8) {
            z3 = true;
        } else {
            z3 = false;
        }
        mobileIconState2.activityIn = z3;
        if (mobileDataIndicators.activityOut && z8) {
            z4 = true;
        } else {
            z4 = false;
        }
        mobileIconState2.activityOut = z4;
        if (z5) {
            Log.d("StatusBarSignalPolicy", "MobileIconStates: " + arrayList.toString());
        }
        MobileIconState.m1427$$Nest$smcopyStates(arrayList);
        ((StatusBarIconControllerImpl) this.mIconController).mStatusBarPipelineFlags.useNewMobileIcons();
        Log.d("StatusBarIconController", "ignoring old pipeline callbacks, because the new mobile icons are enabled");
        if (z) {
            WifiIconState copy = this.mWifiIconState.copy();
            if (arrayList.size() > 0) {
                mobileIconState = (MobileIconState) arrayList.get(0);
            }
            if (mobileIconState != null && mobileIconState.typeId != 0) {
                z6 = true;
            }
            copy.signalSpacerVisible = z6;
            if (!copy.equals(this.mWifiIconState)) {
                updateWifiIconWithState(copy);
                this.mWifiIconState = copy;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    @Override // com.android.systemui.statusbar.connectivity.SignalCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setSubs(java.util.List r11) {
        /*
            r10 = this;
            boolean r0 = com.android.systemui.statusbar.phone.StatusBarSignalPolicy.DEBUG
            if (r0 == 0) goto L1a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "setSubs: "
            r0.<init>(r1)
            if (r11 != 0) goto L11
            java.lang.String r1 = ""
            goto L15
        L11:
            java.lang.String r1 = r11.toString()
        L15:
            java.lang.String r2 = "StatusBarSignalPolicy"
            androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0.m(r0, r1, r2)
        L1a:
            int r0 = r11.size()
            java.util.ArrayList r1 = r10.mMobileStates
            int r2 = r1.size()
            r3 = 0
            r4 = 1
            if (r0 == r2) goto L29
            goto L40
        L29:
            r2 = r3
        L2a:
            if (r2 >= r0) goto L45
            java.lang.Object r5 = r1.get(r2)
            com.android.systemui.statusbar.phone.StatusBarSignalPolicy$MobileIconState r5 = (com.android.systemui.statusbar.phone.StatusBarSignalPolicy.MobileIconState) r5
            int r5 = r5.subId
            java.lang.Object r6 = r11.get(r2)
            android.telephony.SubscriptionInfo r6 = (android.telephony.SubscriptionInfo) r6
            int r6 = r6.getSubscriptionId()
            if (r5 == r6) goto L42
        L40:
            r0 = r3
            goto L46
        L42:
            int r2 = r2 + 1
            goto L2a
        L45:
            r0 = r4
        L46:
            if (r0 == 0) goto L49
            return
        L49:
            com.android.systemui.statusbar.phone.StatusBarIconController r0 = r10.mIconController
            com.android.systemui.statusbar.phone.StatusBarIconControllerImpl r0 = (com.android.systemui.statusbar.phone.StatusBarIconControllerImpl) r0
            java.lang.String r2 = r10.mSlotMobile
            r0.removeAllIconsForSlot(r2)
            java.lang.String r2 = r10.mSlotNoCalling
            r0.removeAllIconsForSlot(r2)
            java.lang.String r2 = r10.mSlotCallStrength
            r0.removeAllIconsForSlot(r2)
            r1.clear()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r10 = r10.mCallIndicatorStates
            r0.addAll(r10)
            r10.clear()
            int r2 = r11.size()
            r5 = r3
        L71:
            if (r5 >= r2) goto Lc0
            com.android.systemui.statusbar.phone.StatusBarSignalPolicy$MobileIconState r6 = new com.android.systemui.statusbar.phone.StatusBarSignalPolicy$MobileIconState
            java.lang.Object r7 = r11.get(r5)
            android.telephony.SubscriptionInfo r7 = (android.telephony.SubscriptionInfo) r7
            int r7 = r7.getSubscriptionId()
            r6.<init>(r7, r3)
            r1.add(r6)
            java.util.Iterator r6 = r0.iterator()
        L89:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto La8
            java.lang.Object r7 = r6.next()
            com.android.systemui.statusbar.phone.StatusBarSignalPolicy$CallIndicatorIconState r7 = (com.android.systemui.statusbar.phone.StatusBarSignalPolicy.CallIndicatorIconState) r7
            int r8 = r7.subId
            java.lang.Object r9 = r11.get(r5)
            android.telephony.SubscriptionInfo r9 = (android.telephony.SubscriptionInfo) r9
            int r9 = r9.getSubscriptionId()
            if (r8 != r9) goto L89
            r10.add(r7)
            r6 = r3
            goto La9
        La8:
            r6 = r4
        La9:
            if (r6 == 0) goto Lbd
            com.android.systemui.statusbar.phone.StatusBarSignalPolicy$CallIndicatorIconState r6 = new com.android.systemui.statusbar.phone.StatusBarSignalPolicy$CallIndicatorIconState
            java.lang.Object r7 = r11.get(r5)
            android.telephony.SubscriptionInfo r7 = (android.telephony.SubscriptionInfo) r7
            int r7 = r7.getSubscriptionId()
            r6.<init>(r7, r3)
            r10.add(r6)
        Lbd:
            int r5 = r5 + 1
            goto L71
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.StatusBarSignalPolicy.setSubs(java.util.List):void");
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalCallback
    public final void setWifiIndicators(WifiIndicators wifiIndicators) {
        boolean z;
        boolean z2;
        boolean z3;
        MobileIconState mobileIconState;
        boolean z4;
        if (DEBUG) {
            Log.d("StatusBarSignalPolicy", "setWifiIndicators: " + wifiIndicators);
        }
        boolean z5 = false;
        if (wifiIndicators.statusIcon.visible && !this.mHideWifi) {
            z = true;
        } else {
            z = false;
        }
        boolean z6 = wifiIndicators.activityIn;
        boolean z7 = this.mActivityEnabled;
        if (z6 && z7 && z) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (wifiIndicators.activityOut && z7 && z) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.mIsWifiEnabled = wifiIndicators.enabled;
        WifiIconState copy = this.mWifiIconState.copy();
        WifiIconState wifiIconState = this.mWifiIconState;
        boolean z8 = wifiIconState.noDefaultNetwork;
        if (z8 && wifiIconState.noNetworksAvailable && !this.mIsAirplaneMode) {
            copy.visible = true;
            copy.resId = R.drawable.ic_qs_no_internet_unavailable;
        } else if (z8 && !wifiIconState.noNetworksAvailable && (!(z4 = this.mIsAirplaneMode) || (z4 && this.mIsWifiEnabled))) {
            copy.visible = true;
            copy.resId = R.drawable.ic_qs_no_internet_available;
        } else {
            copy.visible = z;
            IconState iconState = wifiIndicators.statusIcon;
            copy.resId = iconState.icon;
            copy.activityIn = z2;
            copy.activityOut = z3;
            copy.contentDescription = iconState.contentDescription;
            ArrayList arrayList = this.mMobileStates;
            if (arrayList.size() > 0) {
                mobileIconState = (MobileIconState) arrayList.get(0);
            } else {
                mobileIconState = null;
            }
            if (mobileIconState != null && mobileIconState.typeId != 0) {
                z5 = true;
            }
            copy.signalSpacerVisible = z5;
        }
        copy.slot = this.mSlotWifi;
        copy.airplaneSpacerVisible = this.mIsAirplaneMode;
        updateWifiIconWithState(copy);
        this.mWifiIconState = copy;
    }

    public final void updateWifiIconWithState(WifiIconState wifiIconState) {
        String wifiIconState2;
        if (DEBUG) {
            if (("WifiIconState: " + wifiIconState) == null) {
                wifiIconState2 = "";
            } else {
                wifiIconState2 = wifiIconState.toString();
            }
            Log.d("StatusBarSignalPolicy", wifiIconState2);
        }
        boolean z = wifiIconState.visible;
        String str = this.mSlotWifi;
        StatusBarIconController statusBarIconController = this.mIconController;
        if (z && wifiIconState.resId > 0) {
            StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) statusBarIconController;
            statusBarIconControllerImpl.mStatusBarPipelineFlags.useNewWifiIcon();
            Log.d("StatusBarIconController", "ignoring old pipeline callback because the new wifi icon is enabled");
            statusBarIconControllerImpl.setIconVisibility(str, true);
            return;
        }
        ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, false);
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalCallback
    public final void setMobileDataEnabled(boolean z) {
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalCallback
    public final void setNoSims(boolean z, boolean z2) {
    }
}
