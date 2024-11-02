package com.android.systemui.qs.tiles;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.HapticFeedbackConstants;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.bixby2.actionresult.ActionResults;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.android.systemui.qp.SubscreenQSControllerContract$FlashLightView;
import com.android.systemui.qp.SubscreenQsPanelController;
import com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity;
import com.android.systemui.qp.flashlight.SubscreenFlashLightController;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.QSBackupRestoreManager;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.sec.ims.IMSParameter;
import com.sec.ims.gls.GlsIntent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FlashlightTile extends SQSTileImpl implements FlashlightController.FlashlightListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final FlashlightDetailAdapter mDetailAdapter;
    public final QSTileImpl.AnimationIcon mDisable;
    public final DisplayLifecycle mDisplayLifecycle;
    public final QSTileImpl.AnimationIcon mEnable;
    public final HashMap mFeatureEnabled;
    public final AnonymousClass3 mFeatureSettingsCallback;
    public final FlashlightController mFlashlightController;
    public boolean mIsLowBattery;
    public NotificationManager mNotiManager;
    public final AnonymousClass2 mReceiver;
    public final SettingsHelper mSettingsHelper;
    public final Context mSubscreenContext;
    public final SubscreenFlashLightController mSubscreenFlashlightController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FlashlightDetailAdapter implements DetailAdapter {
        public SeekBar mSlider;
        public TextView mWarningTextView;
        public final AnonymousClass3 torchLevelChangedListener;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.systemui.qs.tiles.FlashlightTile$FlashlightDetailAdapter$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass2 implements Runnable {
            public final /* synthetic */ boolean val$state;

            public AnonymousClass2(boolean z) {
                this.val$state = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i;
                float f;
                FlashlightDetailAdapter flashlightDetailAdapter = FlashlightDetailAdapter.this;
                int i2 = ((FlashlightControllerImpl) FlashlightTile.this.mFlashlightController).mFlashlightLevel;
                SeekBar seekBar = flashlightDetailAdapter.mSlider;
                if (seekBar != null) {
                    seekBar.setProgress(i2);
                    FlashlightDetailAdapter.this.mSlider.setEnabled(this.val$state);
                    SeekBar seekBar2 = FlashlightDetailAdapter.this.mSlider;
                    if (this.val$state) {
                        f = 1.0f;
                    } else {
                        f = 0.6f;
                    }
                    seekBar2.setAlpha(f);
                    if (!FlashlightTile.this.mSettingsHelper.isVoiceAssistantEnabled()) {
                        FlashlightDetailAdapter.this.mSlider.setContentDescription(Integer.toString(i2 + 1));
                    }
                }
                TextView textView = FlashlightDetailAdapter.this.mWarningTextView;
                if (textView != null) {
                    if (i2 >= 3 && this.val$state) {
                        i = 0;
                    } else {
                        i = 8;
                    }
                    textView.setVisibility(i);
                }
            }
        }

        public /* synthetic */ FlashlightDetailAdapter(FlashlightTile flashlightTile, int i) {
            this();
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final View createDetailView(Context context, View view, ViewGroup viewGroup) {
            int i = FlashlightTile.$r8$clinit;
            FlashlightTile flashlightTile = FlashlightTile.this;
            View inflate = LayoutInflater.from(flashlightTile.mContext).inflate(R.layout.qs_detail_flashlight, viewGroup, false);
            this.mWarningTextView = (TextView) inflate.findViewById(R.id.text_warning);
            Context context2 = flashlightTile.mContext;
            String string = context2.getString(R.string.quick_settings_flashlight_detail_warning, context2.getString(R.string.sec_quick_settings_flashlight_label));
            TextView textView = this.mWarningTextView;
            if (textView != null) {
                textView.setText(string);
            }
            SeekBar seekBar = (SeekBar) inflate.findViewById(R.id.flashlight_slider);
            this.mSlider = seekBar;
            seekBar.getProgressDrawable().setColorFilter(context2.getColor(R.color.qs_flashlight_seekbar_progress_color), PorterDuff.Mode.SRC_ATOP);
            this.mSlider.setOnSeekBarChangeListener(this.torchLevelChangedListener);
            this.mSlider.setMax(4);
            this.mSlider.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.android.systemui.qs.tiles.FlashlightTile.FlashlightDetailAdapter.1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return false;
                }
            });
            flashlightTile.mUiHandler.post(new AnonymousClass2(((QSTile.BooleanState) flashlightTile.mState).value));
            return inflate;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return 119;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            return null;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            int i = FlashlightTile.$r8$clinit;
            return FlashlightTile.this.mContext.getString(R.string.qs_detail_flashlight_title);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            int i = FlashlightTile.$r8$clinit;
            return Boolean.valueOf(((QSTile.BooleanState) FlashlightTile.this.mState).value);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final void setToggleState(boolean z) {
            boolean isFlashlightTileBlocked = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isFlashlightTileBlocked();
            FlashlightTile flashlightTile = FlashlightTile.this;
            if (isFlashlightTileBlocked) {
                int i = FlashlightTile.$r8$clinit;
                flashlightTile.showItPolicyToast();
                Log.d("FlashlightTile", "setToggleState blocked");
                flashlightTile.fireToggleStateChanged(getToggleState().booleanValue());
                return;
            }
            if (flashlightTile.mIsLowBattery) {
                flashlightTile.showWarningMessage(flashlightTile.mContext.getString(R.string.flash_light_disabled_by_low_battery));
                flashlightTile.fireToggleStateChanged(getToggleState().booleanValue());
                return;
            }
            FlashlightController flashlightController = flashlightTile.mFlashlightController;
            if (flashlightController != null) {
                if (!((FlashlightControllerImpl) flashlightController).isAvailable()) {
                    ((FlashlightControllerImpl) flashlightController).showUnavailableMessage();
                    flashlightTile.fireToggleStateChanged(getToggleState().booleanValue());
                    return;
                } else {
                    KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setToggleState ", z, "FlashlightTile");
                    ((FlashlightControllerImpl) flashlightController).setFlashlight(z);
                    int i2 = FlashlightTile.$r8$clinit;
                    flashlightTile.mUiHandler.post(new AnonymousClass2(z));
                }
            }
            SystemUIAnalytics.sendEventCDLog(SystemUIAnalytics.sCurrentScreenID, "QPDE1008", GlsIntent.Extras.EXTRA_LOCATION, "flashlight");
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.qs.tiles.FlashlightTile$FlashlightDetailAdapter$3] */
        private FlashlightDetailAdapter() {
            this.mSlider = null;
            this.mWarningTextView = null;
            this.torchLevelChangedListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.android.systemui.qs.tiles.FlashlightTile.FlashlightDetailAdapter.3
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                    if (z) {
                        int i2 = i + 1;
                        int i3 = 0;
                        ((FlashlightControllerImpl) FlashlightTile.this.mFlashlightController).setFlashlightLevel(i2, false);
                        FlashlightDetailAdapter.this.mSlider.performHapticFeedback(HapticFeedbackConstants.semGetVibrationIndex(41));
                        TextView textView = FlashlightDetailAdapter.this.mWarningTextView;
                        if (textView != null) {
                            if (i < 3) {
                                i3 = 8;
                            }
                            textView.setVisibility(i3);
                        }
                        SystemUIAnalytics.sendEventLog(i, SystemUIAnalytics.sCurrentScreenID, "QPDE1014");
                        SystemUIAnalytics.sendEventLog(i2, SystemUIAnalytics.sCurrentScreenID, "QPDS1014");
                        if (!FlashlightTile.this.mSettingsHelper.isVoiceAssistantEnabled()) {
                            FlashlightDetailAdapter.this.mSlider.setContentDescription(Integer.toString(i2));
                        }
                    }
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public final void onStopTrackingTouch(SeekBar seekBar) {
                    ((FlashlightControllerImpl) FlashlightTile.this.mFlashlightController).setFlashlightLevel(seekBar.getProgress() + 1, true);
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public final void onStartTrackingTouch(SeekBar seekBar) {
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.content.BroadcastReceiver, com.android.systemui.qs.tiles.FlashlightTile$2] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.android.systemui.qs.tiles.FlashlightTile$3] */
    public FlashlightTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, FlashlightController flashlightController, SettingsHelper settingsHelper, BroadcastDispatcher broadcastDispatcher, DisplayLifecycle displayLifecycle) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        QSTileImpl.ResourceIcon.get(R.drawable.quick_panel_icon_flashlight);
        this.mEnable = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_flashlight_on, R.drawable.quick_panel_icon_flashlight_on_010);
        this.mDisable = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_flashlight_off, R.drawable.quick_panel_icon_flashlight_off_010);
        this.mFeatureEnabled = new HashMap();
        this.mIsLowBattery = false;
        ?? r2 = new BroadcastReceiver() { // from class: com.android.systemui.qs.tiles.FlashlightTile.2
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
                    if (((FlashlightControllerImpl) FlashlightTile.this.mFlashlightController).isEnabled()) {
                        FlashlightTile.this.updateFlashlightNotification(true);
                        return;
                    }
                    return;
                }
                if (!"com.sec.android.systemui.action.FLASHLIGHT_OFF".equals(action) && !"android.intent.action.ACTION_SHUTDOWN".equals(action)) {
                    if ("android.intent.action.BATTERY_CHANGED".equals(action)) {
                        int intExtra = intent.getIntExtra(ActionResults.RESULT_SET_VOLUME_SUCCESS, 0);
                        int intExtra2 = intent.getIntExtra(IMSParameter.CALL.STATUS, 1);
                        if (intExtra <= 5 && intExtra2 != 2) {
                            FlashlightTile flashlightTile = FlashlightTile.this;
                            flashlightTile.mIsLowBattery = true;
                            boolean isEmergencyMode = flashlightTile.mSettingsHelper.isEmergencyMode();
                            if (((FlashlightControllerImpl) FlashlightTile.this.mFlashlightController).isEnabled() && !isEmergencyMode) {
                                FlashlightTile flashlightTile2 = FlashlightTile.this;
                                flashlightTile2.showWarningMessage(flashlightTile2.mContext.getString(R.string.flash_light_turn_off_by_low_battery));
                                ((FlashlightControllerImpl) FlashlightTile.this.mFlashlightController).setFlashlight(false);
                            }
                        } else {
                            FlashlightTile.this.mIsLowBattery = false;
                        }
                        FlashlightTile flashlightTile3 = FlashlightTile.this;
                        ((FlashlightControllerImpl) flashlightTile3.mFlashlightController).mIsLowBattery = flashlightTile3.mIsLowBattery;
                        return;
                    }
                    return;
                }
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onReceive : ", action, "FlashlightTile");
                if (((FlashlightControllerImpl) FlashlightTile.this.mFlashlightController).isEnabled()) {
                    ((FlashlightControllerImpl) FlashlightTile.this.mFlashlightController).setFlashlight(false);
                }
            }
        };
        this.mReceiver = r2;
        this.mFeatureSettingsCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.tiles.FlashlightTile.3
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                boolean z;
                FlashlightTile flashlightTile = FlashlightTile.this;
                Iterator it = flashlightTile.mFeatureEnabled.keySet().iterator();
                while (it.hasNext()) {
                    Log.d("FlashlightTile", "Feature onChange " + ((String) it.next()).toString());
                    if (flashlightTile.mSettingsHelper.mItemLists.get("flashlight_sos_enabled").getIntValue() == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (((QSTile.BooleanState) flashlightTile.mState).value) {
                        flashlightTile.updateFlashlightNotification(!z);
                    }
                }
            }
        };
        this.mFlashlightController = flashlightController;
        FlashlightControllerImpl flashlightControllerImpl = (FlashlightControllerImpl) flashlightController;
        flashlightControllerImpl.addListener(this);
        this.mDetailAdapter = new FlashlightDetailAdapter(this, 0);
        this.mSettingsHelper = settingsHelper;
        this.mBroadcastDispatcher = broadcastDispatcher;
        updateFlashlightNotification(flashlightControllerImpl.isEnabled());
        addFeature();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        intentFilter.addAction("com.sec.android.systemui.action.FLASHLIGHT_OFF");
        broadcastDispatcher.registerReceiver(intentFilter, r2);
        if (QpRune.QUICK_PANEL_SUBSCREEN) {
            ((SubscreenQsPanelController) Dependency.get(SubscreenQsPanelController.class)).getClass();
            Context context = SubscreenQsPanelController.mContext;
            this.mSubscreenContext = context;
            this.mSubscreenFlashlightController = SubscreenFlashLightController.getInstance(context);
            this.mDisplayLifecycle = displayLifecycle;
        }
        ((QSBackupRestoreManager) Dependency.get(QSBackupRestoreManager.class)).addCallback("Flashlight_brightness_level", new QSBackupRestoreManager.Callback() { // from class: com.android.systemui.qs.tiles.FlashlightTile.1
            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            public final boolean isValidDB() {
                FlashlightTile.this.getClass();
                return true;
            }

            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            public final String onBackup(boolean z) {
                String str;
                int i = FlashlightTile.$r8$clinit;
                StringBuilder sb = new StringBuilder("TAG::Flashlight_brightness_level::");
                FlashlightTile flashlightTile = FlashlightTile.this;
                if (z) {
                    str = "" + flashlightTile.mSettingsHelper.mItemLists.get("Flashlight_brightness_level").getIntValue();
                } else {
                    flashlightTile.getClass();
                    str = null;
                }
                sb.append(str);
                String sb2 = sb.toString();
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("backupData: ", sb2, "FlashlightTile");
                return sb2;
            }

            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            public final void onRestore(String str) {
                int i = FlashlightTile.$r8$clinit;
                FlashlightTile flashlightTile = FlashlightTile.this;
                flashlightTile.getClass();
                String[] split = str.split("::");
                Log.d("FlashlightTile", "restoreData: ".concat(str));
                for (String str2 : split) {
                    Log.d("FlashlightTile", "String: " + str2);
                }
                if (split.length > 1 && split[0].equals("Flashlight_brightness_level")) {
                    String str3 = split[1];
                    if (str3 == null) {
                        Log.w("FlashlightTile", "restoredFlashlightBrightnessLevel is null");
                        return;
                    }
                    int parseInt = Integer.parseInt(str3);
                    SettingsHelper settingsHelper2 = flashlightTile.mSettingsHelper;
                    Settings.System.putIntForUser(settingsHelper2.mContext.getContentResolver(), "Flashlight_brightness_level", parseInt, -2);
                    settingsHelper2.mItemLists.get("Flashlight_brightness_level").mIntValue = parseInt;
                }
            }
        });
    }

    public final void addFeature() {
        HashMap hashMap = this.mFeatureEnabled;
        hashMap.clear();
        Log.d("FlashlightTile", " addFeature flashlight_sos_enabled");
        SettingsHelper settingsHelper = this.mSettingsHelper;
        boolean z = true;
        if (settingsHelper.mItemLists.get("flashlight_sos_enabled").getIntValue() != 1) {
            z = false;
        }
        hashMap.put("flashlight_sos_enabled", Boolean.valueOf(z));
        settingsHelper.registerCallback(this.mFeatureSettingsCallback, Settings.System.getUriFor("flashlight_sos_enabled"));
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final DetailAdapter getDetailAdapter() {
        return this.mDetailAdapter;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 119;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.indexsearch.Searchable
    public final ArrayList getSearchWords() {
        ArrayList searchWords = super.getSearchWords();
        if (searchWords != null) {
            for (String str : this.mContext.getResources().getStringArray(R.array.quick_settings_flashlight_proper_noun_search_keywords)) {
                searchWords.add(str);
            }
        }
        return searchWords;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.sec_quick_settings_flashlight_label);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(View view) {
        DisplayLifecycle displayLifecycle;
        SubscreenFlashLightController subscreenFlashLightController;
        boolean z;
        boolean z2;
        FlashlightController flashlightController = this.mFlashlightController;
        boolean z3 = true;
        if (flashlightController != null) {
            FlashlightControllerImpl flashlightControllerImpl = (FlashlightControllerImpl) flashlightController;
            if (flashlightControllerImpl.mCameraId != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                Log.d("FlashlightTile", "CameraManager is not ready");
                flashlightControllerImpl.updateTorchCallback();
            }
        }
        if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isFlashlightTileBlocked()) {
            showItPolicyToast();
            return;
        }
        Context context = this.mContext;
        if ((flashlightController != null && !((FlashlightControllerImpl) flashlightController).isAvailable()) || ((QSTile.BooleanState) this.mState).state == 0) {
            if (flashlightController != null) {
                FlashlightControllerImpl flashlightControllerImpl2 = (FlashlightControllerImpl) flashlightController;
                synchronized (flashlightControllerImpl2) {
                    z = flashlightControllerImpl2.mIsThermalRestricted;
                }
                if (z) {
                    showWarningMessage(context.getString(R.string.unable_to_turn_on_by_high_temperature));
                    return;
                }
            }
            if (flashlightController != null) {
                ((FlashlightControllerImpl) flashlightController).showUnavailableMessage();
                return;
            }
            return;
        }
        if (this.mIsLowBattery) {
            showWarningMessage(context.getString(R.string.flash_light_disabled_by_low_battery));
            return;
        }
        if (ActivityManager.isUserAMonkey()) {
            return;
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN && (displayLifecycle = this.mDisplayLifecycle) != null && !displayLifecycle.mIsFolderOpened && (subscreenFlashLightController = this.mSubscreenFlashlightController) != null) {
            if (flashlightController == null || !((FlashlightControllerImpl) flashlightController).isEnabled()) {
                SubscreenQSControllerContract$FlashLightView subscreenQSControllerContract$FlashLightView = subscreenFlashLightController.mFlashLightPresentationView;
                if (subscreenQSControllerContract$FlashLightView == null || ((SubroomFlashLightSettingsActivity) subscreenQSControllerContract$FlashLightView).getActivityState() == 0) {
                    z3 = false;
                }
                if (!z3) {
                    subscreenFlashLightController.startFlashActivity();
                    return;
                }
            }
            ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).closeSubscreenPanel();
            if (flashlightController != null) {
                ((FlashlightControllerImpl) flashlightController).setFlashlight(false);
            }
            this.mUiHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.FlashlightTile$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FlashlightTile.this.mSubscreenFlashlightController.finishFlashLightActivity();
                }
            });
            return;
        }
        boolean z4 = true ^ ((QSTile.BooleanState) this.mState).value;
        refreshState(Boolean.valueOf(z4));
        if (flashlightController != null) {
            ((FlashlightControllerImpl) flashlightController).setFlashlight(z4);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        super.handleDestroy();
        Log.d("FlashlightTile", "handleDestroy : ");
        SettingsHelper settingsHelper = this.mSettingsHelper;
        if (settingsHelper.isEmergencyMode()) {
            updateFlashlightNotification(false);
        }
        FlashlightControllerImpl flashlightControllerImpl = (FlashlightControllerImpl) this.mFlashlightController;
        synchronized (flashlightControllerImpl.mListeners) {
            flashlightControllerImpl.cleanUpListenersLocked(this);
        }
        this.mBroadcastDispatcher.unregisterReceiver(this.mReceiver);
        settingsHelper.unregisterCallback(this.mFeatureSettingsCallback);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        boolean z;
        FlashlightControllerImpl flashlightControllerImpl = (FlashlightControllerImpl) this.mFlashlightController;
        boolean isAvailable = flashlightControllerImpl.isAvailable();
        Context context = this.mContext;
        if (!isAvailable) {
            synchronized (flashlightControllerImpl) {
                z = flashlightControllerImpl.mIsThermalRestricted;
            }
            if (z) {
                showWarningMessage(context.getString(R.string.unable_to_turn_on_by_high_temperature));
                return;
            } else {
                flashlightControllerImpl.showUnavailableMessage();
                return;
            }
        }
        if (this.mIsLowBattery) {
            showWarningMessage(context.getString(R.string.flash_light_disabled_by_low_battery));
        } else if (QpRune.QUICK_TILE_FLASHLIGHT_INTENSITY) {
            showDetail(true);
        } else {
            handleClick(view);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        FlashlightController flashlightController;
        super.handleSetListening(z);
        if (z && (flashlightController = this.mFlashlightController) != null) {
            ((FlashlightControllerImpl) flashlightController).tryInitCamera();
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        int i;
        QSTileImpl.AnimationIcon animationIcon;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        if (obj instanceof Boolean) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (booleanValue != booleanState.value) {
                booleanState.value = booleanValue;
            } else {
                return;
            }
        } else {
            booleanState.value = ((FlashlightControllerImpl) this.mFlashlightController).isEnabled();
        }
        if (booleanState.value) {
            i = 2;
        } else {
            i = 1;
        }
        booleanState.state = i;
        booleanState.label = this.mHost.getContext().getString(R.string.sec_quick_settings_flashlight_label);
        booleanState.dualTarget = true;
        if (booleanState.value) {
            animationIcon = this.mEnable;
        } else {
            animationIcon = this.mDisable;
        }
        booleanState.icon = animationIcon;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUserSwitch(int i) {
        addFeature();
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        if (((FlashlightControllerImpl) this.mFlashlightController).mHasFlashlight) {
            if (!this.mHost.shouldBeHiddenByKnox(this.mTileSpec)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    @Override // com.android.systemui.statusbar.policy.FlashlightController.FlashlightListener
    public final void onFlashlightAvailabilityChanged(boolean z) {
        refreshState(null);
        if (!z) {
            updateFlashlightNotification(false);
        }
    }

    @Override // com.android.systemui.statusbar.policy.FlashlightController.FlashlightListener
    public final void onFlashlightChanged(boolean z) {
        refreshState(Boolean.valueOf(z));
        updateFlashlightNotification(z);
        FlashlightDetailAdapter flashlightDetailAdapter = this.mDetailAdapter;
        if (flashlightDetailAdapter != null) {
            fireToggleStateChanged(z);
            FlashlightTile.this.mUiHandler.post(new FlashlightDetailAdapter.AnonymousClass2(z));
        }
    }

    @Override // com.android.systemui.statusbar.policy.FlashlightController.FlashlightListener
    public final void onFlashlightError() {
        refreshState(Boolean.FALSE);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final void removeCallback(QSTile.Callback callback) {
        super.removeCallback(callback);
        if (!((FlashlightControllerImpl) this.mFlashlightController).isEnabled()) {
            updateFlashlightNotification(false);
        }
    }

    public final void showWarningMessage(CharSequence charSequence) {
        DisplayLifecycle displayLifecycle;
        boolean z = QpRune.QUICK_PANEL_SUBSCREEN;
        Context context = this.mContext;
        if (z) {
            if (z && (displayLifecycle = this.mDisplayLifecycle) != null && !displayLifecycle.mIsFolderOpened) {
                context = this.mSubscreenContext;
            }
            Toast.makeText(context, charSequence, 0).show();
            return;
        }
        Toast.makeText(context, charSequence, 0).show();
    }

    public final void updateFlashlightNotification(boolean z) {
        NotificationManager notificationManager = this.mNotiManager;
        Context context = this.mContext;
        if (notificationManager == null) {
            this.mNotiManager = (NotificationManager) context.getSystemService(SubRoom.EXTRA_VALUE_NOTIFICATION);
        }
        if (z) {
            Log.d("FlashlightTile", "notifyNotification!!!");
            if (this.mSettingsHelper.isEmergencyMode()) {
                Log.d("FlashlightTile", "cancelNotification due to Emergency Mode!!!");
                this.mNotiManager.cancelAsUser("Flashlight", 4660, UserHandle.ALL);
                return;
            }
            Intent intent = new Intent();
            intent.setAction("com.sec.android.systemui.action.FLASHLIGHT_OFF");
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 201326592);
            String string = context.getResources().getString(R.string.flash_light_notification_title);
            Notification.Builder builder = new Notification.Builder(context, "ONGOING");
            builder.setSmallIcon(R.drawable.stat_notify_assistivelight).setVisibility(1).setContentTitle(string).setWhen(0L).setOngoing(true).addAction(0, context.getResources().getString(R.string.flash_light_notification_button), broadcast);
            this.mNotiManager.notifyAsUser("Flashlight", 4660, builder.getNotification(), UserHandle.ALL);
            return;
        }
        Log.d("FlashlightTile", "cancelNotification!!!");
        this.mNotiManager.cancelAsUser("Flashlight", 4660, UserHandle.ALL);
    }
}
