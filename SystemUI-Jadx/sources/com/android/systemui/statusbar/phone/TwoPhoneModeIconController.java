package com.android.systemui.statusbar.phone;

import android.app.ActivityManager;
import android.content.Context;
import android.net.Uri;
import android.os.UserManager;
import android.util.Log;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.slimindicator.SlimIndicatorViewMediator;
import com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl;
import com.android.systemui.slimindicator.SlimIndicatorViewSubscriber;
import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.samsung.systemui.splugins.slimindicator.SPluginSlimIndicatorModel;
import java.io.PrintWriter;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TwoPhoneModeIconController implements Dumpable {
    public final CarrierInfraMediator carrierInfraMediator;
    public final ConfigurationController configurationController;
    public final Context context;
    public final DarkIconDispatcher darkIconDispatcher;
    public final DelayableExecutor executor;
    public final IndicatorScaleGardener indicatorScaleGardener;
    public boolean isBModeCreated;
    public boolean isBModeUser;
    public boolean isOwner;
    public ImageView modeIconView;
    public final SettingsHelper settingsHelper;
    public final SlimIndicatorViewMediator slimIndicatorViewMediator;
    public final UserManager userManager;
    public final UserTracker userTracker;
    public TwoPhoneModeState state = new TwoPhoneModeState(false, false, false, false);
    public int currentUserId = ActivityManager.getCurrentUser();
    public final TwoPhoneModeIconController$userTrackerCallback$1 userTrackerCallback = new UserTracker.Callback() { // from class: com.android.systemui.statusbar.phone.TwoPhoneModeIconController$userTrackerCallback$1
        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            final TwoPhoneModeIconController twoPhoneModeIconController = TwoPhoneModeIconController.this;
            twoPhoneModeIconController.currentUserId = i;
            Log.d("TwoPhoneModeIconController", "User switched to " + i);
            twoPhoneModeIconController.updateTwoPhoneMode();
            if (twoPhoneModeIconController.isBModeCreated) {
                if (twoPhoneModeIconController.isOwner || twoPhoneModeIconController.isBModeUser) {
                    twoPhoneModeIconController.executor.executeDelayed(5000L, new Runnable() { // from class: com.android.systemui.statusbar.phone.TwoPhoneModeIconController$showSwitchDoneToast$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2;
                            TwoPhoneModeIconController twoPhoneModeIconController2 = TwoPhoneModeIconController.this;
                            Context context2 = twoPhoneModeIconController2.context;
                            if (twoPhoneModeIconController2.isBModeUser) {
                                i2 = R.string.switched_to_twophone_mode;
                            } else {
                                i2 = R.string.switched_to_onephone_mode;
                            }
                            String string = context2.getString(i2);
                            Toast.makeText(TwoPhoneModeIconController.this.context, string, 1000).show();
                            Log.d("TwoPhoneModeIconController", "Two phone mode switched toast " + string);
                        }
                    });
                }
            }
        }
    };
    public final TwoPhoneModeIconController$settingsListener$1 settingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.phone.TwoPhoneModeIconController$settingsListener$1
        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            TwoPhoneModeIconController.this.updateTwoPhoneMode();
        }
    };
    public final TwoPhoneModeIconController$quickStarListener$1 quickStarListener = new SlimIndicatorViewSubscriber() { // from class: com.android.systemui.statusbar.phone.TwoPhoneModeIconController$quickStarListener$1
        @Override // com.android.systemui.slimindicator.SlimIndicatorViewSubscriber
        public final void updateQuickStarStyle() {
            TwoPhoneModeIconController.this.updateTwoPhoneMode();
        }
    };
    public final TwoPhoneModeIconController$configurationListener$1 configurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.phone.TwoPhoneModeIconController$configurationListener$1
        @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
        public final void onDensityOrFontScaleChanged() {
            TwoPhoneModeIconController twoPhoneModeIconController = TwoPhoneModeIconController.this;
            float f = twoPhoneModeIconController.indicatorScaleGardener.getLatestScaleModel(twoPhoneModeIconController.context).ratio;
            ImageView imageView = twoPhoneModeIconController.modeIconView;
            ImageView imageView2 = null;
            if (imageView == null) {
                imageView = null;
            }
            imageView.setScaleX(f);
            ImageView imageView3 = twoPhoneModeIconController.modeIconView;
            if (imageView3 == null) {
                imageView3 = null;
            }
            imageView3.setScaleY(f);
            int dimensionPixelSize = twoPhoneModeIconController.context.getResources().getDimensionPixelSize(R.dimen.two_phone_mode_icon_padding_start);
            ImageView imageView4 = twoPhoneModeIconController.modeIconView;
            if (imageView4 != null) {
                imageView2 = imageView4;
            }
            imageView2.setPaddingRelative(MathKt__MathJVMKt.roundToInt(dimensionPixelSize * f), 0, 0, 0);
        }

        @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
        public final void onDisplayDeviceTypeChanged() {
            if (BasicRune.BASIC_FOLDABLE_TYPE_FOLD) {
                onDensityOrFontScaleChanged();
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TwoPhoneModeState {
        public final boolean callEnabled;
        public final boolean msgEnabled;
        public final boolean registered;
        public final boolean userCreated;

        public TwoPhoneModeState(boolean z, boolean z2, boolean z3, boolean z4) {
            this.userCreated = z;
            this.registered = z2;
            this.callEnabled = z3;
            this.msgEnabled = z4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TwoPhoneModeState)) {
                return false;
            }
            TwoPhoneModeState twoPhoneModeState = (TwoPhoneModeState) obj;
            if (this.userCreated == twoPhoneModeState.userCreated && this.registered == twoPhoneModeState.registered && this.callEnabled == twoPhoneModeState.callEnabled && this.msgEnabled == twoPhoneModeState.msgEnabled) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int i = 1;
            boolean z = this.userCreated;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            int i3 = i2 * 31;
            boolean z2 = this.registered;
            int i4 = z2;
            if (z2 != 0) {
                i4 = 1;
            }
            int i5 = (i3 + i4) * 31;
            boolean z3 = this.callEnabled;
            int i6 = z3;
            if (z3 != 0) {
                i6 = 1;
            }
            int i7 = (i5 + i6) * 31;
            boolean z4 = this.msgEnabled;
            if (!z4) {
                i = z4 ? 1 : 0;
            }
            return i7 + i;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("TwoPhoneModeState(userCreated=");
            sb.append(this.userCreated);
            sb.append(", registered=");
            sb.append(this.registered);
            sb.append(", callEnabled=");
            sb.append(this.callEnabled);
            sb.append(", msgEnabled=");
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.msgEnabled, ")");
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.statusbar.phone.TwoPhoneModeIconController$userTrackerCallback$1] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.phone.TwoPhoneModeIconController$settingsListener$1] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.systemui.statusbar.phone.TwoPhoneModeIconController$quickStarListener$1] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.android.systemui.statusbar.phone.TwoPhoneModeIconController$configurationListener$1] */
    public TwoPhoneModeIconController(Context context, CarrierInfraMediator carrierInfraMediator, UserManager userManager, SettingsHelper settingsHelper, DarkIconDispatcher darkIconDispatcher, SlimIndicatorViewMediator slimIndicatorViewMediator, DumpManager dumpManager, ConfigurationController configurationController, IndicatorScaleGardener indicatorScaleGardener, DelayableExecutor delayableExecutor, UserTracker userTracker) {
        this.context = context;
        this.carrierInfraMediator = carrierInfraMediator;
        this.userManager = userManager;
        this.settingsHelper = settingsHelper;
        this.darkIconDispatcher = darkIconDispatcher;
        this.slimIndicatorViewMediator = slimIndicatorViewMediator;
        this.configurationController = configurationController;
        this.indicatorScaleGardener = indicatorScaleGardener;
        this.executor = delayableExecutor;
        this.userTracker = userTracker;
        dumpManager.registerDumpable(this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("featureEnabled=", featureEnabled(), printWriter);
        printWriter.println("state=" + this.state);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("two phone mode created=", this.isBModeCreated, printWriter);
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("current user(", this.currentUserId, ") is BMode=", this.isBModeUser, " or Owner="), this.isOwner, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("blocked by quick star=", ((SlimIndicatorViewMediatorImpl) this.slimIndicatorViewMediator).isBlocked(SPluginSlimIndicatorModel.DB_KEY_TWO_PHONE_MODE_ICON), printWriter);
    }

    public final boolean featureEnabled() {
        return this.carrierInfraMediator.isEnabled(CarrierInfraMediator.Conditions.SHOW_TWO_PHONE_MODE_ICON, 0, new Object[0]);
    }

    public final int getViewWidth() {
        ImageView imageView = this.modeIconView;
        if (imageView == null) {
            return 0;
        }
        if (imageView == null) {
            imageView = null;
        }
        return imageView.getMeasuredWidth();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateTwoPhoneMode() {
        /*
            Method dump skipped, instructions count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.TwoPhoneModeIconController.updateTwoPhoneMode():void");
    }
}
