package com.android.systemui.qs.tiles;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.R;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.SettingObserver;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.util.WindowUtils;
import com.android.systemui.util.settings.SystemSettings;
import com.samsung.android.feature.SemFloatingFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ColorAdjustmentTile extends QSTileImpl {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ActivityStarter mActivityStarter;
    public final AnonymousClass1 mSetting;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.qs.tiles.ColorAdjustmentTile$1] */
    public ColorAdjustmentTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, Resources resources, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardStateController keyguardStateController, UserTracker userTracker, SystemSettings systemSettings) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mActivityStarter = activityStarter;
        this.mSetting = new SettingObserver(systemSettings, this.mHandler, "color_blind", ((UserTrackerImpl) userTracker).getUserId()) { // from class: com.android.systemui.qs.tiles.ColorAdjustmentTile.1
            @Override // com.android.systemui.qs.SettingObserver
            public final void handleValueChanged(int i, boolean z) {
                ColorAdjustmentTile colorAdjustmentTile = ColorAdjustmentTile.this;
                Integer valueOf = Integer.valueOf(i);
                int i2 = ColorAdjustmentTile.$r8$clinit;
                colorAdjustmentTile.handleRefreshState(valueOf);
            }
        };
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final void destroy() {
        super.destroy();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        return new Intent("com.samsung.accessibility.COLOR_ADJUSTMENT");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 5011;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_color_adjustment_title);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleClick(android.view.View r3) {
        /*
            r2 = this;
            java.lang.Class<com.android.systemui.knox.KnoxStateMonitor> r3 = com.android.systemui.knox.KnoxStateMonitor.class
            java.lang.Object r3 = com.android.systemui.Dependency.get(r3)
            com.android.systemui.knox.KnoxStateMonitor r3 = (com.android.systemui.knox.KnoxStateMonitor) r3
            com.android.systemui.knox.KnoxStateMonitorImpl r3 = (com.android.systemui.knox.KnoxStateMonitorImpl) r3
            com.android.systemui.knox.EdmMonitor r3 = r3.mEdmMonitor
            r0 = 1
            if (r3 == 0) goto L1a
            com.android.systemui.knox.KnoxStateMonitorImpl r1 = r3.knoxStateMonitor
            android.content.Context r1 = r1.mContext
            boolean r3 = r3.mSettingsChangesAllowed
            r3 = r3 ^ r0
            if (r3 == 0) goto L1a
            r3 = r0
            goto L1b
        L1a:
            r3 = 0
        L1b:
            if (r3 == 0) goto L21
            r2.showItPolicyToast()
            return
        L21:
            com.android.systemui.plugins.qs.QSTile$State r3 = r2.mState
            com.android.systemui.plugins.qs.QSTile$BooleanState r3 = (com.android.systemui.plugins.qs.QSTile.BooleanState) r3
            boolean r3 = r3.value
            r3 = r3 ^ r0
            com.android.systemui.qs.tiles.ColorAdjustmentTile$1 r2 = r2.mSetting
            r2.setValue(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.ColorAdjustmentTile.handleClick(android.view.View):void");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        super.handleDestroy();
        setListening(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
    
        if ((!r3.mSettingsChangesAllowed) != false) goto L8;
     */
    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleSecondaryClick(android.view.View r3) {
        /*
            r2 = this;
            java.lang.Class<com.android.systemui.knox.KnoxStateMonitor> r3 = com.android.systemui.knox.KnoxStateMonitor.class
            java.lang.Object r3 = com.android.systemui.Dependency.get(r3)
            com.android.systemui.knox.KnoxStateMonitor r3 = (com.android.systemui.knox.KnoxStateMonitor) r3
            com.android.systemui.knox.KnoxStateMonitorImpl r3 = (com.android.systemui.knox.KnoxStateMonitorImpl) r3
            com.android.systemui.knox.EdmMonitor r3 = r3.mEdmMonitor
            r0 = 0
            if (r3 == 0) goto L1a
            com.android.systemui.knox.KnoxStateMonitorImpl r1 = r3.knoxStateMonitor
            android.content.Context r1 = r1.mContext
            boolean r3 = r3.mSettingsChangesAllowed
            r1 = 1
            r3 = r3 ^ r1
            if (r3 == 0) goto L1a
            goto L1b
        L1a:
            r1 = r0
        L1b:
            if (r1 == 0) goto L21
            r2.showItPolicyToast()
            return
        L21:
            android.content.Intent r3 = r2.getLongClickIntent()
            com.android.systemui.plugins.ActivityStarter r2 = r2.mActivityStarter
            r2.postStartActivityDismissingKeyguard(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.ColorAdjustmentTile.handleSecondaryClick(android.view.View):void");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        super.handleSetListening(z);
        setListening(z);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        int value;
        boolean z;
        int i;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        if (obj instanceof Integer) {
            value = ((Integer) obj).intValue();
        } else {
            value = getValue();
        }
        int i2 = 0;
        if (value != 0) {
            z = true;
        } else {
            z = false;
        }
        booleanState.value = z;
        if (z) {
            i = 2;
        } else {
            i = 1;
        }
        booleanState.state = i;
        booleanState.dualTarget = true;
        Context context = this.mContext;
        booleanState.label = context.getString(R.string.quick_settings_color_adjustment_title);
        booleanState.icon = QSTileImpl.ResourceIcon.get(R.drawable.ic_quick_panel_icon_accessibility_color_adjustment);
        boolean z2 = booleanState.value;
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        if (accessibilityManager != null) {
            int i3 = Settings.Secure.getInt(context.getContentResolver(), "color_adjustment_type", 2);
            if (i3 == 0) {
                AccessibilityManager accessibilityManager2 = (AccessibilityManager) context.getSystemService("accessibility");
                if (accessibilityManager2 != null) {
                    if (z2) {
                        accessibilityManager2.semSetMdnieAccessibilityMode(4, true);
                        return;
                    } else {
                        accessibilityManager2.semSetMdnieAccessibilityMode(1, false);
                        return;
                    }
                }
                return;
            }
            AccessibilityManager accessibilityManager3 = (AccessibilityManager) context.getSystemService("accessibility");
            if (accessibilityManager3 != null) {
                accessibilityManager3.semSetMdnieAccessibilityMode(1, false);
            }
            if (i3 >= 1 && i3 <= 4) {
                if (i3 == 4) {
                    i2 = (int) (Settings.Secure.getFloat(context.getContentResolver(), "color_blind_user_parameter", 0.0f) * 10.0f);
                } else {
                    String string = Settings.Secure.getString(context.getContentResolver(), "predefined_color_blind_intensity");
                    if (!TextUtils.isEmpty(string)) {
                        i2 = Integer.parseInt(string.split(",")[i3 - 1]);
                    }
                }
            } else {
                Log.d(this.TAG, "getColorAdjustmentIntensity - wrong type entered.");
            }
            accessibilityManager.semSetMdnieColorBlind(z2, i2 / 10.0f);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUserSwitch(int i) {
        AnonymousClass1 anonymousClass1 = this.mSetting;
        anonymousClass1.setUserId(i);
        handleRefreshState(Integer.valueOf(anonymousClass1.getValue()));
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        boolean z = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW");
        int i = SystemProperties.getInt("ro.product.first_api_level", 0);
        boolean isDesktopDualModeMonitorDisplay = WindowUtils.isDesktopDualModeMonitorDisplay(this.mContext);
        if (!z || i >= 33 || isDesktopDualModeMonitorDisplay) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }
}
