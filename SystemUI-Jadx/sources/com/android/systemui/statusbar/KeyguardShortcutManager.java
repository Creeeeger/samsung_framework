package com.android.systemui.statusbar;

import android.app.ActivityManager;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.animation.Expandable;
import com.android.systemui.biometrics.SideFpsController$$ExternalSyntheticOutline0;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.data.quickaffordance.DoNotDisturbQuickAffordanceConfig;
import com.android.systemui.keyguard.data.quickaffordance.FlashlightQuickAffordanceConfig;
import com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig;
import com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition;
import com.android.systemui.statusbar.KeyguardShortcutManager;
import com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView;
import com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController;
import com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.policy.UserSwitcherController;
import com.android.systemui.statusbar.policy.ZenModeControllerImpl;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.feature.SemCscFeature;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.function.IntPredicate;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardShortcutManager extends KeyguardUpdateMonitorCallback implements SettingsHelper.OnChangedCallback, Dumpable {
    public final BroadcastDispatcher broadcastDispatcher;
    public int dndShortcutIndex;
    public boolean isDndCallbackAdded;
    public boolean isLockTaskMode;
    public final Context mContext;
    public final Executor mExecutor;
    public final Handler mHandler;
    public final boolean mHasSPenFeature;
    public int mIconSize;
    public final boolean mIsFlashlightSupported;
    public boolean mIsPermDisabled;
    public final boolean mIsTablet;
    public final KeyguardStateController mKeyguardStateController;
    public final PackageManager mPm;
    public final SettingsHelper mSettingsHelper;
    public boolean mShortcutVisibleForMDM;
    public final KeyguardUpdateMonitor mUpdateMonitor;
    public final Set taskConfigs;
    public final UserSwitcherController userSwitcherController;
    public static final Companion Companion = new Companion(null);
    public static final String DEF_SHORTCUT = SemCscFeature.getInstance().getString("CscFeature_Setting_ConfigDefAppShortcutForLockScreen");
    public static final String[] SAMSUNG_LIVE_ICON_PACKAGES = {"com.samsung.android.calendar", "com.android.calendar", "com.sec.android.app.clockpackage"};
    public static final Intent SECURE_CAMERA_INTENT = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setClassName("com.sec.android.app.camera", "com.sec.android.app.camera.Camera");
    public static final Intent INSECURE_CAMERA_INTENT = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setClassName("com.sec.android.app.camera", "com.sec.android.app.camera.Camera");
    public static final Intent SAMSUNG_EXPERT_RAW_CAMERA_INTENT = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setClassName("com.samsung.android.app.galaxyraw", "com.samsung.android.app.galaxyraw.GalaxyRaw");
    public static final Intent PHONE_INTENT = new Intent("android.intent.action.DIAL").setClassName("com.samsung.android.dialer", "com.samsung.android.dialer.DialtactsActivity");
    public static final KeyguardShortcutManager$Companion$EMPTY_CONFIG$1 EMPTY_CONFIG = new KeyguardQuickAffordanceConfig() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$Companion$EMPTY_CONFIG$1
        public final String key = "";
        public final FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 lockScreenState = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(KeyguardQuickAffordanceConfig.LockScreenState.Hidden.INSTANCE);

        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
        public final String getKey() {
            return this.key;
        }

        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
        public final Flow getLockScreenState() {
            return this.lockScreenState;
        }

        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
        public final int getPickerIconResourceId() {
            return 0;
        }

        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
        public final Object getPickerScreenState(Continuation continuation) {
            return new KeyguardQuickAffordanceConfig.PickerScreenState.Default(null, 1, null);
        }

        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
        public final KeyguardQuickAffordanceConfig.OnTriggeredResult onTriggered(Expandable expandable) {
            return KeyguardQuickAffordanceConfig.OnTriggeredResult.Handled.INSTANCE;
        }

        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
        public final String pickerName() {
            return "";
        }
    };
    public final KeyguardQuickAffordanceConfig[] mKeyguardBottomAreaShortcutTask = new KeyguardQuickAffordanceConfig[2];
    public final ShortcutData[] mShortcuts = new ShortcutData[2];
    public final StringBuilder mSb = new StringBuilder();
    public final ArrayList mCallbacks = new ArrayList();
    public final KeyguardShortcutManager$mUpdateShortcutsRunnable$1 mUpdateShortcutsRunnable = new Runnable() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$mUpdateShortcutsRunnable$1
        /* JADX WARN: Removed duplicated region for block: B:35:0x0194  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 447
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardShortcutManager$mUpdateShortcutsRunnable$1.run():void");
        }
    };
    public final ColorMatrix WHITE_BG_INVERT = new ColorMatrix(new float[]{-1.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, -1.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, -1.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    public final ColorMatrix WHITE_BG_CONTRAST_60 = new ColorMatrix(new float[]{3.1f, 0.0f, 0.0f, 0.0f, -213.0f, 0.0f, 3.1f, 0.0f, 0.0f, -213.0f, 0.0f, 0.0f, 3.1f, 0.0f, -213.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    public final ColorMatrix BLACK_BG_CONTRAST_60 = new ColorMatrix(new float[]{2.3f, 0.0f, 0.0f, 0.0f, -213.0f, 0.0f, 2.3f, 0.0f, 0.0f, -213.0f, 0.0f, 0.0f, 2.3f, 0.0f, -213.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    public final HashMap themeShortcutHashMap = new HashMap();
    public final KeyguardShortcutManager$mIntentReceiver$1 mIntentReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$mIntentReceiver$1
        /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0010. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0193  */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onReceive(android.content.Context r8, android.content.Intent r9) {
            /*
                Method dump skipped, instructions count: 546
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardShortcutManager$mIntentReceiver$1.onReceive(android.content.Context, android.content.Intent):void");
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ShortcutCallback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ShortcutData {
        public boolean enabled;
        public boolean launchInsecureMain;
        public String mAppLabel;
        public ComponentName mComponentName;
        public Drawable mDrawable;
        public boolean mNoUnlockNeeded;
        public Drawable mPanelDrawable;
        public Drawable mPanelTransitDrawable;
        public int shortcutProperty;
        public String taskName;
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.systemui.statusbar.KeyguardShortcutManager$mUpdateShortcutsRunnable$1] */
    /* JADX WARN: Type inference failed for: r3v9, types: [com.android.systemui.statusbar.KeyguardShortcutManager$mIntentReceiver$1] */
    public KeyguardShortcutManager(Context context, BroadcastDispatcher broadcastDispatcher, Executor executor, Handler handler, KeyguardUpdateMonitor keyguardUpdateMonitor, SettingsHelper settingsHelper, PackageManager packageManager, KeyguardStateController keyguardStateController, Set<KeyguardQuickAffordanceConfig> set, UserSwitcherController userSwitcherController) {
        boolean z;
        String[] stringArray;
        String[] stringArray2;
        this.mContext = context;
        this.broadcastDispatcher = broadcastDispatcher;
        this.mExecutor = executor;
        this.mHandler = handler;
        this.mUpdateMonitor = keyguardUpdateMonitor;
        this.mSettingsHelper = settingsHelper;
        this.mPm = packageManager;
        this.mKeyguardStateController = keyguardStateController;
        this.taskConfigs = set;
        this.userSwitcherController = userSwitcherController;
        try {
            stringArray = context.getResources().getStringArray(R.array.theme_app_icon_package);
            stringArray2 = context.getResources().getStringArray(R.array.theme_app_icon_drawable);
        } catch (IllegalArgumentException e) {
            Log.d("KeyguardShortcutManager", "Making theme hash error : " + e);
        }
        if (stringArray.length == stringArray2.length) {
            int length = stringArray2.length;
            for (int i = 0; i < length; i++) {
                this.themeShortcutHashMap.put(stringArray[i], stringArray2[i]);
            }
            this.mIconSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.keyguard_affordance_height);
            SettingsHelper.ItemMap itemMap = this.mSettingsHelper.mItemLists;
            if (itemMap.get("set_shortcuts_mode") != null && itemMap.get("set_shortcuts_mode").getIntValue() != 0) {
                z = true;
            } else {
                z = false;
            }
            this.mShortcutVisibleForMDM = z;
            this.mIsTablet = DeviceType.isTablet();
            boolean hasSystemFeature = this.mContext.getPackageManager().hasSystemFeature("com.sec.feature.spen_usp");
            ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("isSupportActionMemoOnLockScreen FEATURE_SPEN : ", hasSystemFeature, "DeviceType");
            this.mHasSPenFeature = hasSystemFeature;
            this.mIsFlashlightSupported = ((FlashlightControllerImpl) ((FlashlightController) Dependency.get(FlashlightController.class))).mHasFlashlight;
            for (int i2 = 0; i2 < 2; i2++) {
                this.mShortcuts[i2] = new ShortcutData();
            }
            this.mSettingsHelper.registerCallback(this, Settings.System.getUriFor("lock_application_shortcut"), Settings.System.getUriFor("set_shortcuts_mode"), Settings.System.getUriFor("current_sec_appicon_theme_package"), Settings.System.getUriFor("accessibility_reduce_transparency"));
            this.mUpdateMonitor.registerCallback(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
            intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            BroadcastDispatcher.registerReceiver$default(this.broadcastDispatcher, this.mIntentReceiver, intentFilter, null, UserHandle.CURRENT, 0, null, 48);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("android.intent.action.LOCALE_CHANGED");
            intentFilter2.addAction("android.intent.action.USER_SWITCHED");
            intentFilter2.addAction("com.samsung.intent.action.EMERGENCY_STATE_CHANGED");
            BroadcastDispatcher.registerReceiver$default(this.broadcastDispatcher, this.mIntentReceiver, intentFilter2, null, UserHandle.CURRENT, 0, null, 48);
            IntentFilter intentFilter3 = new IntentFilter();
            intentFilter3.addAction("android.intent.action.PACKAGES_SUSPENDED");
            intentFilter3.addAction("android.intent.action.PACKAGES_UNSUSPENDED");
            BroadcastDispatcher.registerReceiver$default(this.broadcastDispatcher, this.mIntentReceiver, intentFilter3, null, UserHandle.CURRENT, 0, null, 48);
            IntentFilter intentFilter4 = new IntentFilter();
            intentFilter4.addAction("com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED");
            intentFilter4.addAction("com.samsung.applock.intent.action.SSECURE_UPDATE");
            intentFilter4.addAction("com.samsung.android.action.LOCK_TASK_MODE");
            BroadcastDispatcher.registerReceiver$default(this.broadcastDispatcher, this.mIntentReceiver, intentFilter4, null, UserHandle.CURRENT, 0, null, 48);
            return;
        }
        Log.d("KeyguardShortcutManager", "themeAppIconPackageArray error :" + stringArray.length);
        Log.d("KeyguardShortcutManager", "themeAppIconDrawableArray error :" + stringArray2.length);
        throw new IllegalArgumentException("Arrays must have the same size");
    }

    public static final Drawable access$getFgPanelIcon(KeyguardShortcutManager keyguardShortcutManager, Drawable drawable) {
        keyguardShortcutManager.getClass();
        return new BitmapDrawable(keyguardShortcutManager.getCropFg(((BitmapDrawable) drawable).getBitmap()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d7, code lost:
    
        if (r13 != null) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final android.graphics.drawable.Drawable access$getShortcutIcon(com.android.systemui.statusbar.KeyguardShortcutManager r12, android.content.pm.ActivityInfo r13, boolean r14) {
        /*
            r12.getClass()
            java.lang.String r0 = r13.packageName
            com.android.systemui.util.SettingsHelper r1 = r12.mSettingsHelper
            com.android.systemui.util.SettingsHelper$ItemMap r2 = r1.mItemLists
            java.lang.String r3 = "current_sec_appicon_theme_package"
            com.android.systemui.util.SettingsHelper$Item r2 = r2.get(r3)
            java.lang.String r2 = r2.getStringValue()
            r4 = 0
            r5 = 1
            android.content.pm.PackageManager r6 = r12.mPm
            r7 = 0
            if (r2 != 0) goto L20
            android.graphics.drawable.Drawable r2 = r12.getSamsungAppIconDrawable(r0)
            goto L8c
        L20:
            java.util.HashMap r2 = r12.themeShortcutHashMap
            java.lang.Object r2 = r2.get(r0)
            java.lang.String r2 = (java.lang.String) r2
            if (r2 != 0) goto L2b
            r2 = r7
        L2b:
            android.content.Context r8 = r12.mContext
            if (r2 == 0) goto L69
            android.content.res.Resources r9 = r8.getResources()
            java.lang.String r10 = "drawable"
            java.lang.String r11 = r8.getPackageName()
            int r2 = r9.getIdentifier(r2, r10, r11)
            if (r2 == 0) goto L69
            android.graphics.BitmapFactory$Options r9 = new android.graphics.BitmapFactory$Options
            r9.<init>()
            r9.inJustDecodeBounds = r5
            android.content.res.Resources r10 = r8.getResources()
            android.graphics.BitmapFactory.decodeResource(r10, r2, r9)
            android.graphics.BitmapFactory$Options r9 = new android.graphics.BitmapFactory$Options
            r9.<init>()
            r9.inJustDecodeBounds = r5
            android.content.res.Resources r10 = r8.getResources()
            android.graphics.BitmapFactory.decodeResource(r10, r2, r9)
            int r9 = r9.outWidth
            if (r9 == r5) goto L61
            r9 = r5
            goto L62
        L61:
            r9 = r4
        L62:
            if (r9 == 0) goto L69
            android.graphics.drawable.Drawable r2 = r8.getDrawable(r2)
            goto L6a
        L69:
            r2 = r7
        L6a:
            if (r2 != 0) goto L8c
            android.graphics.BitmapFactory$Options r9 = new android.graphics.BitmapFactory$Options
            r9.<init>()
            r9.inJustDecodeBounds = r5
            android.content.res.Resources r8 = r8.getResources()
            r10 = 2131233457(0x7f080ab1, float:1.8083052E38)
            android.graphics.BitmapFactory.decodeResource(r8, r10, r9)
            int r8 = r9.outWidth
            if (r8 == r5) goto L83
            r8 = r5
            goto L84
        L83:
            r8 = r4
        L84:
            if (r8 == 0) goto L8c
            r2 = 256(0x100, float:3.59E-43)
            android.graphics.drawable.Drawable r2 = r13.loadIcon(r6, r5, r2)
        L8c:
            if (r2 != 0) goto L92
            android.graphics.drawable.Drawable r2 = r13.loadIcon(r6, r5, r5)
        L92:
            if (r2 != 0) goto L98
            android.graphics.drawable.Drawable r2 = r13.loadDefaultIcon(r6)
        L98:
            boolean r13 = r12.isblendNeeded(r13, r2)
            if (r13 == 0) goto Le2
            java.lang.String r13 = "com.sec.android.app.camera"
            boolean r13 = kotlin.jvm.internal.Intrinsics.areEqual(r13, r0)     // Catch: java.lang.Exception -> Lda
            if (r13 == 0) goto Lb3
            com.android.systemui.util.SettingsHelper$ItemMap r13 = r1.mItemLists     // Catch: java.lang.Exception -> Lda
            com.android.systemui.util.SettingsHelper$Item r13 = r13.get(r3)     // Catch: java.lang.Exception -> Lda
            java.lang.String r13 = r13.getStringValue()     // Catch: java.lang.Exception -> Lda
            if (r13 != 0) goto Lb3
            goto Lb4
        Lb3:
            r5 = r4
        Lb4:
            if (r5 == 0) goto Lbb
            android.graphics.drawable.Drawable r13 = r12.getSamsungAppIconDrawable(r0)     // Catch: java.lang.Exception -> Lda
            goto Lcd
        Lbb:
            r13 = r2
            android.graphics.drawable.DrawableWrapper r13 = (android.graphics.drawable.DrawableWrapper) r13     // Catch: java.lang.Exception -> Lda
            if (r13 == 0) goto Lc4
            android.graphics.drawable.Drawable r7 = r13.getDrawable()     // Catch: java.lang.Exception -> Lda
        Lc4:
            android.graphics.drawable.AdaptiveIconDrawable r7 = (android.graphics.drawable.AdaptiveIconDrawable) r7     // Catch: java.lang.Exception -> Lda
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: java.lang.Exception -> Lda
            android.graphics.drawable.Drawable r13 = r7.getForeground()     // Catch: java.lang.Exception -> Lda
        Lcd:
            if (r13 == 0) goto Le2
            if (r14 == 0) goto Ld3
        Ld1:
            r2 = r13
            goto Le2
        Ld3:
            android.graphics.drawable.Drawable r13 = r12.getBlendingFgIcon(r0, r13, r4, r4)     // Catch: java.lang.Exception -> Lda
            if (r13 == 0) goto Le2
            goto Ld1
        Lda:
            r13 = move-exception
            java.lang.String r14 = "Making samsung Icon error : "
            java.lang.String r0 = "KeyguardShortcutManager"
            androidx.picker.adapter.AbsAdapter$1$$ExternalSyntheticOutline0.m(r14, r13, r0)
        Le2:
            int r13 = r12.mIconSize
            android.graphics.drawable.BitmapDrawable r12 = r12.drawableToScaledBitmapDrawable(r2, r13, r13)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardShortcutManager.access$getShortcutIcon(com.android.systemui.statusbar.KeyguardShortcutManager, android.content.pm.ActivityInfo, boolean):android.graphics.drawable.Drawable");
    }

    public static final void access$resetShortcut(KeyguardShortcutManager keyguardShortcutManager, int i) {
        ShortcutData[] shortcutDataArr = keyguardShortcutManager.mShortcuts;
        ShortcutData shortcutData = shortcutDataArr[i];
        Intrinsics.checkNotNull(shortcutData);
        shortcutData.enabled = false;
        ShortcutData shortcutData2 = shortcutDataArr[i];
        Intrinsics.checkNotNull(shortcutData2);
        shortcutData2.mDrawable = null;
        ShortcutData shortcutData3 = shortcutDataArr[i];
        Intrinsics.checkNotNull(shortcutData3);
        shortcutData3.mPanelDrawable = null;
        ShortcutData shortcutData4 = shortcutDataArr[i];
        Intrinsics.checkNotNull(shortcutData4);
        shortcutData4.mPanelTransitDrawable = null;
        ShortcutData shortcutData5 = shortcutDataArr[i];
        Intrinsics.checkNotNull(shortcutData5);
        shortcutData5.mAppLabel = null;
        keyguardShortcutManager.sendUpdateShortcutViewToCallback(i);
    }

    public static final void access$sendUpdateIconOnlyToCallback(KeyguardShortcutManager keyguardShortcutManager, final int i) {
        Iterator it = keyguardShortcutManager.mCallbacks.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            if (((ShortcutCallback) weakReference.get()) != null) {
                Object obj = weakReference.get();
                Intrinsics.checkNotNull(obj);
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                final KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = ((KeyguardSecBottomAreaViewController$shortcutManagerCallback$1) ((ShortcutCallback) obj)).this$0;
                ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).post(new Runnable() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (i == 0) {
                            KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController2 = keyguardSecBottomAreaViewController;
                            String str2 = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                            if (keyguardSecBottomAreaViewController2.getLeftView() != null) {
                                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController3 = keyguardSecBottomAreaViewController;
                                keyguardSecBottomAreaViewController3.updateCustomShortcutIcon(keyguardSecBottomAreaViewController3.getLeftView(), 0, keyguardSecBottomAreaViewController.shortcutManager.hasShortcut(0));
                                return;
                            }
                            return;
                        }
                        KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController4 = keyguardSecBottomAreaViewController;
                        String str3 = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                        if (keyguardSecBottomAreaViewController4.getRightView() != null) {
                            KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController5 = keyguardSecBottomAreaViewController;
                            keyguardSecBottomAreaViewController5.updateCustomShortcutIcon(keyguardSecBottomAreaViewController5.getRightView(), 1, keyguardSecBottomAreaViewController.shortcutManager.hasShortcut(1));
                        }
                    }
                });
            }
        }
    }

    public static Bitmap imgShadow(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ALPHA_8);
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()), new RectF(0.0f, 0.0f, width, height), Matrix.ScaleToFit.CENTER);
        Matrix matrix2 = new Matrix(matrix);
        matrix2.postTranslate(0.0f, 0.0f);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        canvas.drawBitmap(bitmap, matrix, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT));
        canvas.drawBitmap(bitmap, matrix2, paint);
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(4.0f, BlurMaskFilter.Blur.SOLID);
        paint.reset();
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setMaskFilter(blurMaskFilter);
        paint.setFilterBitmap(true);
        Paint paint2 = new Paint(1);
        paint2.setFilterBitmap(true);
        Bitmap createBitmap2 = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap2);
        canvas2.drawBitmap(createBitmap, 0.0f, 0.0f, paint);
        canvas2.drawBitmap(bitmap, matrix, paint2);
        createBitmap.recycle();
        return createBitmap2;
    }

    public static boolean isAllowNonPlatformKeyApp(Context context, String str, String str2) {
        Signature[] signingCertificateHistory;
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        Unit unit = Unit.INSTANCE;
        ArrayList arrayList2 = new ArrayList();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            SigningInfo signingInfo = context.getPackageManager().getPackageInfo(str, 134217728).signingInfo;
            if (signingInfo.hasMultipleSigners()) {
                signingCertificateHistory = signingInfo.getApkContentsSigners();
            } else {
                signingCertificateHistory = signingInfo.getSigningCertificateHistory();
            }
            for (Signature signature : signingCertificateHistory) {
                StringBuilder sb = new StringBuilder();
                for (byte b : messageDigest.digest(signature.toCharsString().getBytes(Charset.defaultCharset()))) {
                    CharsKt__CharJVMKt.checkRadix(16);
                    sb.append(Integer.toString((b & 255) + 256, 16).substring(1));
                }
                arrayList2.add(sb.toString());
            }
        } catch (Exception e) {
            Log.e("AppSignature", "isAllowNonPlatformKeyApp : " + e.getMessage());
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (arrayList2.contains((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSamsungCameraPackage(ComponentName componentName) {
        if (componentName == null) {
            return false;
        }
        return Intrinsics.areEqual("com.sec.android.app.camera", componentName.getPackageName());
    }

    public final BitmapDrawable drawableToScaledBitmapDrawable(Drawable drawable, int i, int i2) {
        if (drawable == null) {
            Log.d("KeyguardShortcutManager", "drawableToScaledBitmapDrawable : drawable is null");
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        Context context = this.mContext;
        createBitmap.setDensity(context.getResources().getDisplayMetrics().densityDpi);
        return new BitmapDrawable(context.getResources(), createBitmap);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        boolean z;
        printWriter.println("ShortcutManager state:");
        printWriter.println("  CurrentUserId = " + ActivityManager.getCurrentUser());
        printWriter.println("  Shortcut count = 2");
        if (this.mSettingsHelper.mItemLists.get("lockscreen_show_shortcut").getIntValue() == 1) {
            z = true;
        } else {
            z = false;
        }
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  Master switch = ", z, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  disabled shortcut by MDM = ", !this.mShortcutVisibleForMDM, printWriter);
        ShortcutData[] shortcutDataArr = this.mShortcuts;
        int length = shortcutDataArr.length;
        for (int i = 0; i < length; i++) {
            SideFpsController$$ExternalSyntheticOutline0.m("  Shortcut ", i, printWriter);
            ShortcutData shortcutData = shortcutDataArr[i];
            if (shortcutData == null) {
                printWriter.println("    null");
            } else {
                ActiveUnlockConfig$$ExternalSyntheticOutline0.m("    enabled = ", shortcutData.enabled, printWriter);
                printWriter.println("    component = " + shortcutData.mComponentName);
                FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("    label = ", shortcutData.mAppLabel, printWriter);
                ComponentName componentName = shortcutData.mComponentName;
                if (componentName != null) {
                    ActiveUnlockConfig$$ExternalSyntheticOutline0.m("    isSuspended = ", getSuspended(componentName.getPackageName()), printWriter);
                    ComponentName componentName2 = shortcutData.mComponentName;
                    Intrinsics.checkNotNull(componentName2);
                    ActiveUnlockConfig$$ExternalSyntheticOutline0.m("    isLockTaskPermitted = ", isLockTaskPermitted(componentName2.getPackageName()), printWriter);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006c A[Catch: Exception -> 0x00b5, TryCatch #0 {Exception -> 0x00b5, blocks: (B:3:0x0008, B:8:0x002f, B:12:0x003c, B:14:0x0056, B:16:0x005e, B:21:0x006c, B:23:0x0074, B:27:0x0086, B:36:0x0014), top: B:2:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable getBlendingFgIcon(java.lang.String r11, android.graphics.drawable.Drawable r12, boolean r13, boolean r14) {
        /*
            r10 = this;
            android.content.Context r0 = r10.mContext
            java.lang.String r1 = "bottom"
            boolean r1 = com.android.systemui.wallpaper.WallpaperUtils.isWhiteKeyguardWallpaper(r1)
            android.graphics.Bitmap r3 = androidx.core.graphics.drawable.DrawableKt.toBitmap$default(r12)     // Catch: java.lang.Exception -> Lb5
            android.content.res.Resources r12 = r0.getResources()     // Catch: java.lang.Exception -> Lb5
            if (r13 == 0) goto L14
            if (r14 != 0) goto L1c
        L14:
            com.android.systemui.util.SettingsHelper r2 = r10.mSettingsHelper     // Catch: java.lang.Exception -> Lb5
            boolean r2 = r2.isReduceTransparencyEnabled()     // Catch: java.lang.Exception -> Lb5
            if (r2 == 0) goto L26
        L1c:
            if (r1 == 0) goto L22
            r2 = 2131232411(0x7f08069b, float:1.808093E38)
            goto L2f
        L22:
            r2 = 2131232419(0x7f0806a3, float:1.8080947E38)
            goto L2f
        L26:
            if (r1 == 0) goto L2c
            r2 = 2131232410(0x7f08069a, float:1.8080928E38)
            goto L2f
        L2c:
            r2 = 2131232417(0x7f0806a1, float:1.8080943E38)
        L2f:
            android.graphics.Bitmap r12 = android.graphics.BitmapFactory.decodeResource(r12, r2)     // Catch: java.lang.Exception -> Lb5
            r8 = 0
            r9 = 1
            if (r13 == 0) goto L3b
            if (r14 == 0) goto L3b
            r6 = r9
            goto L3c
        L3b:
            r6 = r8
        L3c:
            r7 = 0
            r2 = r10
            r4 = r1
            r5 = r11
            android.graphics.Bitmap r13 = r2.grayInvertDrawable(r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> Lb5
            android.graphics.Bitmap r10 = r10.getCropFg(r13)     // Catch: java.lang.Exception -> Lb5
            int r13 = r12.getWidth()     // Catch: java.lang.Exception -> Lb5
            int r14 = r12.getHeight()     // Catch: java.lang.Exception -> Lb5
            android.graphics.Bitmap r10 = android.graphics.Bitmap.createScaledBitmap(r10, r13, r14, r9)     // Catch: java.lang.Exception -> Lb5
            if (r1 == 0) goto L83
            java.lang.String r1 = "com.samsung.android.oneconnect"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r11)     // Catch: java.lang.Exception -> Lb5
            if (r1 != 0) goto L69
            java.lang.String r1 = "com.samsung.android.tvplus"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r11)     // Catch: java.lang.Exception -> Lb5
            if (r1 == 0) goto L67
            goto L69
        L67:
            r1 = r8
            goto L6a
        L69:
            r1 = r9
        L6a:
            if (r1 != 0) goto L83
            java.lang.String r1 = "com.samsung.android.aremoji"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r11)     // Catch: java.lang.Exception -> Lb5
            if (r1 != 0) goto L7c
            java.lang.String r1 = "com.sec.android.mimage.avatarstickers"
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r11)     // Catch: java.lang.Exception -> Lb5
            if (r11 == 0) goto L7d
        L7c:
            r8 = r9
        L7d:
            if (r8 != 0) goto L83
            r11 = 2131101694(0x7f0607fe, float:1.7815805E38)
            goto L86
        L83:
            r11 = 2131101691(0x7f0607fb, float:1.7815799E38)
        L86:
            int r11 = r0.getColor(r11)     // Catch: java.lang.Exception -> Lb5
            android.graphics.Bitmap r10 = imgShadow(r10, r11)     // Catch: java.lang.Exception -> Lb5
            android.graphics.Bitmap$Config r11 = android.graphics.Bitmap.Config.ARGB_8888     // Catch: java.lang.Exception -> Lb5
            android.graphics.Bitmap r11 = android.graphics.Bitmap.createBitmap(r13, r14, r11)     // Catch: java.lang.Exception -> Lb5
            android.graphics.Canvas r13 = new android.graphics.Canvas     // Catch: java.lang.Exception -> Lb5
            r13.<init>(r11)     // Catch: java.lang.Exception -> Lb5
            android.graphics.Paint r14 = new android.graphics.Paint     // Catch: java.lang.Exception -> Lb5
            r14.<init>()     // Catch: java.lang.Exception -> Lb5
            r0 = 0
            r13.drawBitmap(r12, r0, r0, r14)     // Catch: java.lang.Exception -> Lb5
            android.graphics.PorterDuff$Mode r12 = android.graphics.PorterDuff.Mode.SRC_OVER     // Catch: java.lang.Exception -> Lb5
            android.graphics.PorterDuffXfermode r1 = new android.graphics.PorterDuffXfermode     // Catch: java.lang.Exception -> Lb5
            r1.<init>(r12)     // Catch: java.lang.Exception -> Lb5
            r14.setXfermode(r1)     // Catch: java.lang.Exception -> Lb5
            r13.drawBitmap(r10, r0, r0, r14)     // Catch: java.lang.Exception -> Lb5
            android.graphics.drawable.BitmapDrawable r10 = new android.graphics.drawable.BitmapDrawable     // Catch: java.lang.Exception -> Lb5
            r10.<init>(r11)     // Catch: java.lang.Exception -> Lb5
            goto Lbe
        Lb5:
            r10 = move-exception
            java.lang.String r11 = "Making samsung Icon error : "
            java.lang.String r12 = "KeyguardShortcutManager"
            androidx.picker.adapter.AbsAdapter$1$$ExternalSyntheticOutline0.m(r11, r10, r12)
            r10 = 0
        Lbe:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardShortcutManager.getBlendingFgIcon(java.lang.String, android.graphics.drawable.Drawable, boolean, boolean):android.graphics.drawable.Drawable");
    }

    public final Bitmap getCropFg(Bitmap bitmap) {
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.keyguard_affordance_fg_margin);
        int i = dimensionPixelSize * 2;
        return Bitmap.createBitmap(bitmap, dimensionPixelSize, dimensionPixelSize, bitmap.getWidth() - i, bitmap.getHeight() - i);
    }

    public final Intent getIntent(int i) {
        boolean areEqual;
        String str;
        ActivityInfo activityInfo = null;
        if (i >= 0 && i < 2) {
            ShortcutData[] shortcutDataArr = this.mShortcuts;
            ShortcutData shortcutData = shortcutDataArr[i];
            Intrinsics.checkNotNull(shortcutData);
            if (isSamsungCameraPackage(shortcutData.mComponentName)) {
                Log.d("KeyguardShortcutManager", "th = " + i + " is camera package");
                if (isSecure()) {
                    return SECURE_CAMERA_INTENT;
                }
                return INSECURE_CAMERA_INTENT;
            }
            ShortcutData shortcutData2 = shortcutDataArr[i];
            Intrinsics.checkNotNull(shortcutData2);
            ComponentName componentName = shortcutData2.mComponentName;
            if (componentName == null) {
                areEqual = false;
            } else {
                areEqual = Intrinsics.areEqual("com.samsung.android.app.galaxyraw", componentName.getPackageName());
            }
            if (areEqual) {
                NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("th = ", i, " is expert raw camera package", "KeyguardShortcutManager");
                return SAMSUNG_EXPERT_RAW_CAMERA_INTENT;
            }
            Intent intent = new Intent("android.intent.action.MAIN");
            boolean isSecure = isSecure();
            if (!isSecure) {
                ShortcutData shortcutData3 = shortcutDataArr[i];
                Intrinsics.checkNotNull(shortcutData3);
                if (shortcutData3.launchInsecureMain) {
                    intent.addCategory("android.intent.category.LAUNCHER");
                    ShortcutData shortcutData4 = shortcutDataArr[i];
                    Intrinsics.checkNotNull(shortcutData4);
                    ComponentName componentName2 = shortcutData4.mComponentName;
                    if (componentName2 != null) {
                        str = componentName2.getPackageName();
                    } else {
                        str = null;
                    }
                    intent.setPackage(str);
                    ResolveInfo resolveActivityAsUser = this.mPm.resolveActivityAsUser(intent, 1, KeyguardUpdateMonitor.getCurrentUser());
                    if (resolveActivityAsUser != null) {
                        activityInfo = resolveActivityAsUser.activityInfo;
                    }
                    if (activityInfo != null) {
                        ActivityInfo activityInfo2 = resolveActivityAsUser.activityInfo;
                        intent.setComponent(new ComponentName(activityInfo2.packageName, activityInfo2.name));
                    } else {
                        ShortcutData shortcutData5 = shortcutDataArr[i];
                        Intrinsics.checkNotNull(shortcutData5);
                        intent.setComponent(shortcutData5.mComponentName);
                    }
                    intent.putExtra("isSecure", isSecure);
                    return intent.addFlags(268500992);
                }
            }
            ShortcutData shortcutData6 = shortcutDataArr[i];
            Intrinsics.checkNotNull(shortcutData6);
            intent.setComponent(shortcutData6.mComponentName);
            intent.putExtra("isSecure", isSecure);
            return intent.addFlags(268500992);
        }
        NestedScrollView$$ExternalSyntheticOutline0.m("getIntent wrong param : ", i, "KeyguardShortcutManager");
        return null;
    }

    public final KeyguardQuickAffordanceConfig getKeyguardBottomAreaShortcutTask(String str) {
        Object obj;
        Iterator it = this.taskConfigs.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((KeyguardQuickAffordanceConfig) obj).getKey(), str)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig = (KeyguardQuickAffordanceConfig) obj;
        if (keyguardQuickAffordanceConfig == null) {
            return EMPTY_CONFIG;
        }
        return keyguardQuickAffordanceConfig;
    }

    public final List getQuickAffordanceConfigList() {
        KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig;
        String str;
        ComponentName componentName;
        KeyguardQuickAffordancePosition[] values = KeyguardQuickAffordancePosition.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (KeyguardQuickAffordancePosition keyguardQuickAffordancePosition : values) {
            final int ordinal = keyguardQuickAffordancePosition.ordinal();
            ShortcutData[] shortcutDataArr = this.mShortcuts;
            final ShortcutData shortcutData = shortcutDataArr[ordinal];
            if (shortcutData != null && shortcutData.enabled && (isTaskType(ordinal) || ((componentName = shortcutData.mComponentName) != null && componentName.getPackageName() != null))) {
                if (isTaskType(ordinal)) {
                    ShortcutData shortcutData2 = shortcutDataArr[ordinal];
                    if (shortcutData2 != null) {
                        str = shortcutData2.taskName;
                    } else {
                        str = null;
                    }
                    keyguardQuickAffordanceConfig = getKeyguardBottomAreaShortcutTask(str);
                } else {
                    keyguardQuickAffordanceConfig = new KeyguardQuickAffordanceConfig() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$generateQuickAffordanceConfig$1$1
                        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
                        public final String getKey() {
                            String str2;
                            ComponentName componentName2 = KeyguardShortcutManager.ShortcutData.this.mComponentName;
                            if (componentName2 != null) {
                                str2 = componentName2.flattenToString();
                            } else {
                                str2 = null;
                            }
                            Intrinsics.checkNotNull(str2);
                            return str2;
                        }

                        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
                        public final Flow getLockScreenState() {
                            KeyguardShortcutManager keyguardShortcutManager = this;
                            int i = ordinal;
                            Drawable shortcutDrawable = keyguardShortcutManager.getShortcutDrawable(i);
                            Intrinsics.checkNotNull(shortcutDrawable);
                            return new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(new KeyguardQuickAffordanceConfig.LockScreenState.Visible(new Icon.Loaded(shortcutDrawable, new ContentDescription.Loaded((String) this.getShortcutContentDescription(i))), null, 2, null));
                        }

                        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
                        public final int getPickerIconResourceId() {
                            return 0;
                        }

                        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
                        public final Object getPickerScreenState(Continuation continuation) {
                            return new KeyguardQuickAffordanceConfig.PickerScreenState.Default(null, 1, null);
                        }

                        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
                        public final KeyguardQuickAffordanceConfig.OnTriggeredResult onTriggered(Expandable expandable) {
                            KeyguardShortcutManager keyguardShortcutManager = this;
                            int i = ordinal;
                            Intent intent = keyguardShortcutManager.getIntent(i);
                            Intrinsics.checkNotNull(intent);
                            return new KeyguardQuickAffordanceConfig.OnTriggeredResult.StartActivity(intent, this.isNoUnlockNeeded(i));
                        }

                        @Override // com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig
                        public final String pickerName() {
                            String str2 = KeyguardShortcutManager.ShortcutData.this.mAppLabel;
                            Intrinsics.checkNotNull(str2);
                            return str2;
                        }
                    };
                }
            } else {
                keyguardQuickAffordanceConfig = EMPTY_CONFIG;
            }
            arrayList.add(keyguardQuickAffordanceConfig);
        }
        return arrayList;
    }

    public final Drawable getSamsungAppIconDrawable(String str) {
        int i;
        if (str == null || !isDefaultShortcutIcon(str)) {
            return null;
        }
        if (Intrinsics.areEqual(str, "com.sec.android.app.camera")) {
            i = R.drawable.fg_camera;
        } else {
            i = 0;
        }
        if (i == 0) {
            return null;
        }
        return this.mContext.getResources().getDrawable(i);
    }

    public final CharSequence getShortcutContentDescription(int i) {
        if (i >= 0 && i < 2) {
            ShortcutData[] shortcutDataArr = this.mShortcuts;
            ShortcutData shortcutData = shortcutDataArr[i];
            Intrinsics.checkNotNull(shortcutData);
            if (TextUtils.isEmpty(shortcutData.mAppLabel)) {
                return "Shortcut";
            }
            ShortcutData shortcutData2 = shortcutDataArr[i];
            Intrinsics.checkNotNull(shortcutData2);
            return shortcutData2.mAppLabel;
        }
        NestedScrollView$$ExternalSyntheticOutline0.m("IllegalArgument : ", i, "KeyguardShortcutManager");
        return null;
    }

    public final Drawable getShortcutDrawable(int i) {
        if (i >= 0 && i < 2) {
            ShortcutData shortcutData = this.mShortcuts[i];
            Intrinsics.checkNotNull(shortcutData);
            return shortcutData.mDrawable;
        }
        NestedScrollView$$ExternalSyntheticOutline0.m("IllegalArgument : ", i, "KeyguardShortcutManager");
        return null;
    }

    public final boolean getSuspended(String str) {
        PackageManager packageManager = this.mPm;
        if (packageManager != null) {
            try {
                return packageManager.isPackageSuspended(str);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("KeyguardShortcutManager", "getSuspended() - Not found package name = " + str);
                return false;
            }
        }
        return false;
    }

    public final Bitmap grayInvertDrawable(Bitmap bitmap, boolean z, String str, boolean z2, boolean z3) {
        boolean z4;
        boolean z5;
        boolean z6 = false;
        Bitmap copy = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight()).copy(Bitmap.Config.ARGB_8888, true);
        Paint paint = new Paint();
        if (!Intrinsics.areEqual("com.samsung.android.aremoji", str) && !Intrinsics.areEqual("com.sec.android.mimage.avatarstickers", str)) {
            z4 = false;
        } else {
            z4 = true;
        }
        if (!z4) {
            int i = R.color.shortcut_smartthing_tint_whitebg;
            Context context = this.mContext;
            if (str == null && z2) {
                if (z) {
                    i = R.color.shortcut_smartthing_tint;
                }
                paint.setColorFilter(new PorterDuffColorFilter(context.getColor(i), PorterDuff.Mode.SRC_IN));
            } else {
                if (!Intrinsics.areEqual("com.samsung.android.oneconnect", str) && !Intrinsics.areEqual("com.samsung.android.tvplus", str)) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                if (z5) {
                    if (!z) {
                        i = R.color.shortcut_smartthing_tint;
                    }
                    paint.setColorFilter(new PorterDuffColorFilter(context.getColor(i), PorterDuff.Mode.SRC_IN));
                } else {
                    ColorMatrix colorMatrix = new ColorMatrix();
                    colorMatrix.setSaturation(0.0f);
                    if (this.mSettingsHelper.isReduceTransparencyEnabled() && !z3) {
                        z6 = true;
                    }
                    if (z ^ z6) {
                        colorMatrix.postConcat(this.WHITE_BG_INVERT);
                        colorMatrix.postConcat(this.WHITE_BG_CONTRAST_60);
                    } else {
                        colorMatrix.postConcat(this.BLACK_BG_CONTRAST_60);
                    }
                    paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
                }
            }
        }
        new Canvas(copy).drawBitmap(copy, 0.0f, 0.0f, paint);
        return copy;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
    
        if (r2.taskName == null) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean hasShortcut(int r6) {
        /*
            r5 = this;
            java.lang.Class<com.android.systemui.util.DesktopManager> r0 = com.android.systemui.util.DesktopManager.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.util.DesktopManager r0 = (com.android.systemui.util.DesktopManager) r0
            com.android.systemui.util.DesktopManagerImpl r0 = (com.android.systemui.util.DesktopManagerImpl) r0
            boolean r0 = r0.isStandalone()
            r1 = 0
            if (r0 != 0) goto L68
            r0 = 1
            r2 = 2
            com.android.systemui.statusbar.KeyguardShortcutManager$ShortcutData[] r3 = r5.mShortcuts
            if (r2 > r6) goto L18
            goto L38
        L18:
            com.android.systemui.util.SettingsHelper r2 = r5.mSettingsHelper
            com.android.systemui.util.SettingsHelper$ItemMap r2 = r2.mItemLists
            java.lang.String r4 = "lockscreen_show_shortcut"
            com.android.systemui.util.SettingsHelper$Item r2 = r2.get(r4)
            int r2 = r2.getIntValue()
            if (r2 != r0) goto L2a
            r2 = r0
            goto L2b
        L2a:
            r2 = r1
        L2b:
            if (r2 == 0) goto L38
            r2 = r3[r6]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            boolean r2 = r2.enabled
            if (r2 == 0) goto L38
            r2 = r0
            goto L39
        L38:
            r2 = r1
        L39:
            if (r2 == 0) goto L68
            boolean r2 = r5.isTaskType(r6)
            if (r2 == 0) goto L4a
            r2 = r3[r6]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            java.lang.String r2 = r2.taskName
            if (r2 != 0) goto L67
        L4a:
            r2 = r3[r6]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            android.content.ComponentName r2 = r2.mComponentName
            if (r2 == 0) goto L68
            r6 = r3[r6]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            android.content.ComponentName r6 = r6.mComponentName
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            java.lang.String r6 = r6.getPackageName()
            boolean r5 = r5.isLockTaskPermitted(r6)
            if (r5 == 0) goto L68
        L67:
            r1 = r0
        L68:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardShortcutManager.hasShortcut(int):boolean");
    }

    public final boolean isDefaultShortcutIcon(String str) {
        String str2 = DEF_SHORTCUT;
        if (!TextUtils.isEmpty(str2)) {
            Intrinsics.checkNotNull(str);
            if (!StringsKt__StringsKt.contains(str2, str, false)) {
                return false;
            }
        }
        if (str == null) {
            return false;
        }
        int hashCode = str.hashCode();
        boolean z = this.mHasSPenFeature;
        boolean z2 = this.mIsTablet;
        switch (hashCode) {
            case 68858:
                if (!str.equals("Dnd")) {
                    return false;
                }
                break;
            case 640747243:
                if (!str.equals("com.sec.android.app.sbrowser") || !z2 || z) {
                    return false;
                }
                break;
            case 708520957:
                if (!str.equals("com.samsung.android.dialer")) {
                    return false;
                }
                return !z2;
            case 810391366:
                if (!str.equals("Flashlight")) {
                    return false;
                }
                break;
            case 1181686996:
                if (!str.equals("com.samsung.android.app.notes") || !z2 || !z) {
                    return false;
                }
                break;
            case 1923638331:
                if (!str.equals("com.sec.android.app.camera")) {
                    return false;
                }
                break;
            default:
                return false;
        }
        return true;
    }

    public final boolean isLockTaskPermitted(String str) {
        if (this.isLockTaskMode) {
            return ((DevicePolicyManager) this.mContext.getSystemService("device_policy")).isLockTaskPermitted(str);
        }
        return true;
    }

    public final boolean isNoUnlockNeeded(int i) {
        if (i >= 0 && i < 2) {
            ShortcutData shortcutData = this.mShortcuts[i];
            Intrinsics.checkNotNull(shortcutData);
            return shortcutData.mNoUnlockNeeded;
        }
        NestedScrollView$$ExternalSyntheticOutline0.m("isNoUnlockNeeded wrong param: ", i, "KeyguardShortcutManager");
        return false;
    }

    public final boolean isPanelIconTransitionNeeded(int i) {
        KeyguardQuickAffordanceConfig[] keyguardQuickAffordanceConfigArr;
        KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig;
        if (i >= 0 && i < 2 && (keyguardQuickAffordanceConfig = (keyguardQuickAffordanceConfigArr = this.mKeyguardBottomAreaShortcutTask)[i]) != null && !Intrinsics.areEqual(keyguardQuickAffordanceConfig, EMPTY_CONFIG)) {
            KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig2 = keyguardQuickAffordanceConfigArr[i];
            Intrinsics.checkNotNull(keyguardQuickAffordanceConfig2);
            return Intrinsics.areEqual(keyguardQuickAffordanceConfig2.getKey(), "Flashlight");
        }
        NestedScrollView$$ExternalSyntheticOutline0.m("IllegalArgument : ", i, "KeyguardShortcutManager");
        return false;
    }

    public final boolean isSecure() {
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        boolean z = ((KeyguardStateControllerImpl) keyguardStateController).mCanDismissLockScreen;
        if (((KeyguardStateControllerImpl) keyguardStateController).mSecure && !z) {
            return true;
        }
        return false;
    }

    public final boolean isShortcutForCamera(int i) {
        ShortcutData shortcutData = this.mShortcuts[i];
        Intrinsics.checkNotNull(shortcutData);
        return isSamsungCameraPackage(shortcutData.mComponentName);
    }

    public final boolean isShortcutForLiveIcon(int i) {
        ShortcutData[] shortcutDataArr = this.mShortcuts;
        ShortcutData shortcutData = shortcutDataArr[i];
        Intrinsics.checkNotNull(shortcutData);
        if (shortcutData.mComponentName == null) {
            return false;
        }
        ShortcutData shortcutData2 = shortcutDataArr[i];
        Intrinsics.checkNotNull(shortcutData2);
        ComponentName componentName = shortcutData2.mComponentName;
        Intrinsics.checkNotNull(componentName);
        String packageName = componentName.getPackageName();
        for (String str : SAMSUNG_LIVE_ICON_PACKAGES) {
            if (Intrinsics.areEqual(str, packageName)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isShortcutForPhone(int i) {
        ShortcutData shortcutData = this.mShortcuts[i];
        Intrinsics.checkNotNull(shortcutData);
        ComponentName componentName = shortcutData.mComponentName;
        if (componentName != null && Intrinsics.areEqual("com.samsung.android.dialer", componentName.getPackageName()) && Intrinsics.areEqual("com.samsung.android.dialer.DialtactsActivity", componentName.getClassName())) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003b, code lost:
    
        if (r6.equals("com.sec.android.app.popupcalculator") == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0061, code lost:
    
        if (isAllowNonPlatformKeyApp(r5, r6, "9e92121f90ad13d9f1085b06ea9e7c72ca6d5b603cdfd6adaff7b3071792d71f") == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isShortcutPermission(java.lang.String r6) {
        /*
            r5 = this;
            android.content.pm.PackageManager r0 = r5.mPm
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            java.lang.String r1 = "com.samsung.keyguard.SHORTCUT_PERMISSION"
            int r0 = r0.checkPermission(r1, r6)
            r1 = 1
            if (r0 == 0) goto L6b
            int r0 = r6.hashCode()
            r2 = 0
            r3 = -662003450(0xffffffffd88aa106, float:-1.21939356E15)
            java.lang.String r4 = "com.snapchat.android"
            android.content.Context r5 = r5.mContext
            if (r0 == r3) goto L3e
            r3 = 988032088(0x3ae42c58, float:0.0017408235)
            if (r0 == r3) goto L35
            r3 = 2094270320(0x7cd40770, float:8.807342E36)
            if (r0 == r3) goto L27
            goto L46
        L27:
            boolean r0 = r6.equals(r4)
            if (r0 != 0) goto L2e
            goto L46
        L2e:
            java.lang.String r0 = "9c1c8918e17cc686d3274f41cd04154b4cbe6a5272700de3f4f30c2c62ae2ad4"
            boolean r5 = isAllowNonPlatformKeyApp(r5, r6, r0)
            goto L67
        L35:
            java.lang.String r0 = "com.sec.android.app.popupcalculator"
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L66
            goto L46
        L3e:
            java.lang.String r0 = "com.instagram.android"
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L53
        L46:
            boolean r0 = r6.startsWith(r4)
            if (r0 == 0) goto L64
            java.lang.String r0 = "2f4eaa0c67e2a670935ca79164f3ba4b426988b6997a97bb31152cc317dc648a"
            boolean r5 = isAllowNonPlatformKeyApp(r5, r6, r0)
            goto L67
        L53:
            java.lang.String r0 = "a044dbdb712ab81e76949f5d76ada4dd7035643b462cb7ea2b75ecae637c2da3"
            boolean r0 = isAllowNonPlatformKeyApp(r5, r6, r0)
            if (r0 != 0) goto L66
            java.lang.String r0 = "9e92121f90ad13d9f1085b06ea9e7c72ca6d5b603cdfd6adaff7b3071792d71f"
            boolean r5 = isAllowNonPlatformKeyApp(r5, r6, r0)
            if (r5 == 0) goto L64
            goto L66
        L64:
            r5 = r2
            goto L67
        L66:
            r5 = r1
        L67:
            if (r5 == 0) goto L6a
            goto L6b
        L6a:
            r1 = r2
        L6b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardShortcutManager.isShortcutPermission(java.lang.String):boolean");
    }

    public final boolean isTaskType(int i) {
        if (i >= 0 && i < 2) {
            ShortcutData shortcutData = this.mShortcuts[i];
            Intrinsics.checkNotNull(shortcutData);
            if (shortcutData.shortcutProperty != 1) {
                return false;
            }
            return true;
        }
        NestedScrollView$$ExternalSyntheticOutline0.m("isTaskType wrong param: ", i, "KeyguardShortcutManager");
        return false;
    }

    public final boolean isTaskTypeEnabled(int i) {
        KeyguardQuickAffordanceConfig[] keyguardQuickAffordanceConfigArr;
        KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig;
        if (i >= 0 && i < 2 && (keyguardQuickAffordanceConfig = (keyguardQuickAffordanceConfigArr = this.mKeyguardBottomAreaShortcutTask)[i]) != null && !Intrinsics.areEqual(keyguardQuickAffordanceConfig, EMPTY_CONFIG)) {
            KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig2 = keyguardQuickAffordanceConfigArr[i];
            Intrinsics.checkNotNull(keyguardQuickAffordanceConfig2);
            String key = keyguardQuickAffordanceConfig2.getKey();
            if (Intrinsics.areEqual(key, "Flashlight")) {
                return ((FlashlightControllerImpl) ((FlashlightQuickAffordanceConfig) keyguardQuickAffordanceConfigArr[i]).flashlightController).isEnabled();
            }
            if (!Intrinsics.areEqual(key, "Dnd") || ((ZenModeControllerImpl) ((DoNotDisturbQuickAffordanceConfig) keyguardQuickAffordanceConfigArr[i]).controller).mZenMode == 0) {
                return false;
            }
            return true;
        }
        NestedScrollView$$ExternalSyntheticOutline0.m("IllegalArgument : ", i, "KeyguardShortcutManager");
        return false;
    }

    public final boolean isblendNeeded(ActivityInfo activityInfo, Drawable drawable) {
        boolean z;
        if (Intrinsics.areEqual("com.sec.android.app.camera", activityInfo.packageName) && this.mSettingsHelper.mItemLists.get("current_sec_appicon_theme_package").getStringValue() == null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        if (drawable instanceof DrawableWrapper) {
            Bundle bundle = activityInfo.metaData;
            String str = null;
            if (bundle != null) {
                str = bundle.getString("com.sec.android.app.launcher.icon_theme", null);
            }
            if (str != null) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
    public final void onChanged(Uri uri) {
        boolean z;
        if (!Intrinsics.areEqual(uri, Settings.System.getUriFor("lock_application_shortcut")) && !Intrinsics.areEqual(uri, Settings.System.getUriFor("current_sec_appicon_theme_package"))) {
            if (Intrinsics.areEqual(uri, Settings.System.getUriFor("set_shortcuts_mode"))) {
                boolean z2 = this.mShortcutVisibleForMDM;
                SettingsHelper.ItemMap itemMap = this.mSettingsHelper.mItemLists;
                if (itemMap.get("set_shortcuts_mode") != null && itemMap.get("set_shortcuts_mode").getIntValue() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.mShortcutVisibleForMDM = z;
                EmergencyButtonController$$ExternalSyntheticOutline0.m("onSystemSettingsChanged oldShortcutVisibleForMDM = ", z2, ", mShortcutVisibleForMDM = ", z, "KeyguardShortcutManager");
                if (z2 != this.mShortcutVisibleForMDM) {
                    updateShortcuts();
                    return;
                }
                return;
            }
            if (Intrinsics.areEqual(uri, Settings.System.getUriFor("accessibility_reduce_transparency"))) {
                updateShortcutIcons();
                return;
            }
            return;
        }
        updateShortcuts();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onSimStateChanged(int i, int i2, int i3) {
        boolean z;
        boolean z2 = this.mIsPermDisabled;
        if (LsRune.SECURITY_SIM_PERM_DISABLED && this.mUpdateMonitor.isIccBlockedPermanently()) {
            z = true;
        } else {
            z = false;
        }
        this.mIsPermDisabled = z;
        if (z2 != z) {
            updateShortcuts();
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onStartedWakingUp() {
        if (isShortcutForLiveIcon(0)) {
            updateShortcutIcon(0);
        }
        if (isShortcutForLiveIcon(1)) {
            updateShortcutIcon(1);
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onUserSwitchComplete(int i) {
        updateShortcuts();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onUserUnlocked() {
        updateShortcuts();
    }

    public final void sendUpdateShortcutViewToCallback(int i) {
        Iterator it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            if (((ShortcutCallback) weakReference.get()) != null) {
                Object obj = weakReference.get();
                Intrinsics.checkNotNull(obj);
                ((KeyguardSecBottomAreaViewController$shortcutManagerCallback$1) ((ShortcutCallback) obj)).updateShortcutView(i);
            }
        }
    }

    public final void updateShortcutIcon(final int i) {
        boolean isTaskType = isTaskType(i);
        Executor executor = this.mExecutor;
        if (isTaskType) {
            executor.execute(new Runnable() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcutIcon$1
                @Override // java.lang.Runnable
                public final void run() {
                    final KeyguardShortcutManager keyguardShortcutManager = this;
                    final int i2 = i;
                    if (new IntPredicate() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcutIcon$1.1
                        @Override // java.util.function.IntPredicate
                        public final boolean test(int i3) {
                            int i4;
                            KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig = KeyguardShortcutManager.this.mKeyguardBottomAreaShortcutTask[i3];
                            if (keyguardQuickAffordanceConfig != null && !Intrinsics.areEqual(keyguardQuickAffordanceConfig, KeyguardShortcutManager.EMPTY_CONFIG)) {
                                boolean isTaskTypeEnabled = KeyguardShortcutManager.this.isTaskTypeEnabled(i2);
                                KeyguardShortcutManager.ShortcutData shortcutData = KeyguardShortcutManager.this.mShortcuts[i3];
                                Intrinsics.checkNotNull(shortcutData);
                                KeyguardShortcutManager keyguardShortcutManager2 = KeyguardShortcutManager.this;
                                Resources resources = keyguardShortcutManager2.mContext.getResources();
                                KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig2 = KeyguardShortcutManager.this.mKeyguardBottomAreaShortcutTask[i2];
                                Intrinsics.checkNotNull(keyguardQuickAffordanceConfig2);
                                Drawable blendingFgIcon = keyguardShortcutManager2.getBlendingFgIcon(null, resources.getDrawable(keyguardQuickAffordanceConfig2.getPickerIconResourceId()), true, isTaskTypeEnabled);
                                int i5 = KeyguardShortcutManager.this.mIconSize;
                                shortcutData.mDrawable = keyguardShortcutManager2.drawableToScaledBitmapDrawable(blendingFgIcon, i5, i5);
                                KeyguardShortcutManager.ShortcutData shortcutData2 = KeyguardShortcutManager.this.mShortcuts[i2];
                                Intrinsics.checkNotNull(shortcutData2);
                                KeyguardShortcutManager keyguardShortcutManager3 = KeyguardShortcutManager.this;
                                Resources resources2 = keyguardShortcutManager3.mContext.getResources();
                                KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig3 = KeyguardShortcutManager.this.mKeyguardBottomAreaShortcutTask[i2];
                                Intrinsics.checkNotNull(keyguardQuickAffordanceConfig3);
                                shortcutData2.mPanelDrawable = KeyguardShortcutManager.access$getFgPanelIcon(keyguardShortcutManager3, resources2.getDrawable(keyguardQuickAffordanceConfig3.getPickerIconResourceId()));
                                if (KeyguardShortcutManager.this.isPanelIconTransitionNeeded(i2)) {
                                    KeyguardShortcutManager.ShortcutData shortcutData3 = KeyguardShortcutManager.this.mShortcuts[i2];
                                    Intrinsics.checkNotNull(shortcutData3);
                                    KeyguardShortcutManager keyguardShortcutManager4 = KeyguardShortcutManager.this;
                                    Resources resources3 = keyguardShortcutManager4.mContext.getResources();
                                    if (isTaskTypeEnabled) {
                                        i4 = R.drawable.fg_flash_off;
                                    } else {
                                        i4 = R.drawable.fg_flash_on;
                                    }
                                    shortcutData3.mPanelTransitDrawable = KeyguardShortcutManager.access$getFgPanelIcon(keyguardShortcutManager4, resources3.getDrawable(i4));
                                }
                                return true;
                            }
                            NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("updateShortcutsIcon : ", i3, " is invalid task name", "KeyguardShortcutManager");
                            return false;
                        }
                    }.test(i)) {
                        final KeyguardShortcutManager keyguardShortcutManager2 = this;
                        Handler handler = keyguardShortcutManager2.mHandler;
                        final int i3 = i;
                        handler.post(new Runnable() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcutIcon$1.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                KeyguardShortcutManager.access$sendUpdateIconOnlyToCallback(KeyguardShortcutManager.this, i3);
                            }
                        });
                    }
                }
            });
            return;
        }
        ShortcutData shortcutData = this.mShortcuts[i];
        Intrinsics.checkNotNull(shortcutData);
        if (shortcutData.mComponentName != null) {
            executor.execute(new Runnable() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcutIcon$2
                @Override // java.lang.Runnable
                public final void run() {
                    final KeyguardShortcutManager keyguardShortcutManager = this;
                    if (new IntPredicate() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcutIcon$2.1
                        @Override // java.util.function.IntPredicate
                        public final boolean test(int i2) {
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                KeyguardShortcutManager.ShortcutData shortcutData2 = KeyguardShortcutManager.this.mShortcuts[i2];
                                Intrinsics.checkNotNull(shortcutData2);
                                intent.setComponent(shortcutData2.mComponentName);
                                ActivityInfo activityInfo = KeyguardShortcutManager.this.mPm.resolveActivityAsUser(intent, 129, KeyguardUpdateMonitor.getCurrentUser()).activityInfo;
                                if (activityInfo != null) {
                                    KeyguardShortcutManager.ShortcutData shortcutData3 = KeyguardShortcutManager.this.mShortcuts[i2];
                                    Intrinsics.checkNotNull(shortcutData3);
                                    shortcutData3.mDrawable = KeyguardShortcutManager.access$getShortcutIcon(KeyguardShortcutManager.this, activityInfo, false);
                                    KeyguardShortcutManager.ShortcutData shortcutData4 = KeyguardShortcutManager.this.mShortcuts[i2];
                                    Intrinsics.checkNotNull(shortcutData4);
                                    shortcutData4.mPanelDrawable = KeyguardShortcutManager.access$getShortcutIcon(KeyguardShortcutManager.this, activityInfo, true);
                                }
                                return true;
                            } catch (Exception e) {
                                Log.e("KeyguardShortcutManager", "NameNotFoundException while updating icon : " + e.getMessage());
                                return false;
                            }
                        }
                    }.test(i)) {
                        final KeyguardShortcutManager keyguardShortcutManager2 = this;
                        Handler handler = keyguardShortcutManager2.mHandler;
                        final int i2 = i;
                        handler.post(new Runnable() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcutIcon$2.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                KeyguardShortcutManager.access$sendUpdateIconOnlyToCallback(KeyguardShortcutManager.this, i2);
                            }
                        });
                    }
                }
            });
        }
    }

    public final void updateShortcutIcons() {
        for (int i = 0; i < 2; i++) {
            updateShortcutIcon(i);
        }
    }

    public final void updateShortcuts() {
        Handler handler = this.mHandler;
        KeyguardShortcutManager$mUpdateShortcutsRunnable$1 keyguardShortcutManager$mUpdateShortcutsRunnable$1 = this.mUpdateShortcutsRunnable;
        handler.removeCallbacks(keyguardShortcutManager$mUpdateShortcutsRunnable$1);
        handler.post(keyguardShortcutManager$mUpdateShortcutsRunnable$1);
        if (this.isDndCallbackAdded) {
            DoNotDisturbQuickAffordanceConfig doNotDisturbQuickAffordanceConfig = (DoNotDisturbQuickAffordanceConfig) this.mKeyguardBottomAreaShortcutTask[this.dndShortcutIndex];
            ((ZenModeControllerImpl) doNotDisturbQuickAffordanceConfig.controller).removeCallback(doNotDisturbQuickAffordanceConfig.callback);
            this.isDndCallbackAdded = false;
        }
    }

    public static /* synthetic */ void getMIntentReceiver$annotations() {
    }
}
