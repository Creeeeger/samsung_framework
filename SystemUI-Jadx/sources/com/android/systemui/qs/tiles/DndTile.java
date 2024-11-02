package com.android.systemui.qs.tiles;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.notification.ZenModeConfig;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.settingslib.notification.EnableZenModeDialog;
import com.android.systemui.R;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.DNDDetailItems;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.SecQSDetail;
import com.android.systemui.qs.SettingObserver;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.qs.tiles.dialog.QSZenModeDialogMetricsLogger;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.ZenModeController;
import com.android.systemui.statusbar.policy.ZenModeControllerImpl;
import com.android.systemui.util.settings.GlobalSettings;
import com.android.systemui.util.settings.GlobalSettingsImpl;
import com.android.systemui.util.settings.SecureSettings;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.ArrayList;
import java.util.Calendar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DndTile extends SQSTileImpl {
    public static final Intent DND_SETTINGS;
    public static final int mZenOneHourSession;
    public final ZenModeController mController;
    public final DndDetailAdapter mDetailAdapter;
    public int mDndMenuSelectedItem;
    public String mDndMenuSummary;
    public final GlobalSettings mGlobalSettings;
    public boolean mIsSettingsUpdated;
    public int mLastDndDurationSelected;
    public boolean mListening;
    public final PanelInteractor mPanelInteractor;
    public final AnonymousClass3 mPrefListener;
    public int mPreviousSetZenDuration;
    public SecQSDetail mSecQSDetail;
    public final AnonymousClass1 mSettingZenDuration;
    public final AnonymousClass2 mSettingsObserver;
    public final SharedPreferences mSharedPreferences;
    public final AnonymousClass4 mZenCallback;

    static {
        new Intent("android.settings.ZEN_MODE_SETTINGS");
        new Intent("android.settings.ZEN_MODE_PRIORITY_SETTINGS");
        DND_SETTINGS = new Intent().setComponent(new ComponentName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.Settings$ZenModeSettingsActivity")).setAction("android.intent.action.MAIN");
        mZenOneHourSession = 60;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.systemui.qs.tiles.DndTile$2, android.database.ContentObserver] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.systemui.qs.tiles.DndTile$3] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, com.android.systemui.qs.tiles.DndTile$4] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.systemui.qs.tiles.DndTile$1] */
    public DndTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, ZenModeController zenModeController, SharedPreferences sharedPreferences, SecureSettings secureSettings, DialogLaunchAnimator dialogLaunchAnimator, PanelInteractor panelInteractor, GlobalSettings globalSettings) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mDndMenuSelectedItem = 0;
        this.mLastDndDurationSelected = -1;
        this.mIsSettingsUpdated = false;
        this.mPreviousSetZenDuration = -2;
        ?? r2 = new ContentObserver(this.mUiHandler) { // from class: com.android.systemui.qs.tiles.DndTile.2
            @Override // android.database.ContentObserver
            public final void onChange(boolean z, Uri uri) {
                boolean z2;
                super.onChange(z, uri);
                int value = getValue();
                RecyclerView$$ExternalSyntheticOutline0.m(KeyguardFMMViewController$$ExternalSyntheticOutline0.m("ZEN_MODE: onChange = ", z, ",currentZen = ", value, ",previousZen = "), DndTile.this.mPreviousSetZenDuration, "DndTile");
                DndTile dndTile = DndTile.this;
                int i = dndTile.mPreviousSetZenDuration;
                if (i != -2 && !(z2 = dndTile.mIsSettingsUpdated)) {
                    if (!z2 && i != value) {
                        Settings.Secure.putInt(dndTile.mContext.getContentResolver(), "zen_duration", DndTile.this.mPreviousSetZenDuration);
                    }
                } else {
                    dndTile.mPreviousSetZenDuration = value;
                }
                DndTile.this.mIsSettingsUpdated = true;
            }
        };
        this.mSettingsObserver = r2;
        this.mPrefListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.android.systemui.qs.tiles.DndTile.3
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                if ("DndTileCombinedIcon".equals(str) || "DndTileVisible".equals(str)) {
                    DndTile.this.refreshState(null);
                }
            }
        };
        ?? r3 = new ZenModeController.Callback() { // from class: com.android.systemui.qs.tiles.DndTile.4
            @Override // com.android.systemui.statusbar.policy.ZenModeController.Callback
            public final void onZenChanged(int i) {
                Integer valueOf = Integer.valueOf(i);
                Intent intent = DndTile.DND_SETTINGS;
                DndTile.this.refreshState(valueOf);
            }
        };
        this.mZenCallback = r3;
        this.mController = zenModeController;
        this.mSharedPreferences = sharedPreferences;
        this.mDetailAdapter = new DndDetailAdapter();
        zenModeController.observe(((QSTileImpl) this).mLifecycle, r3);
        this.mSettingZenDuration = new SettingObserver(secureSettings, this.mUiHandler, "zen_duration", this.mHost.getUserId()) { // from class: com.android.systemui.qs.tiles.DndTile.1
            @Override // com.android.systemui.qs.SettingObserver
            public final void handleValueChanged(int i, boolean z) {
                KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("handleValueChanged: value = ", i, ",observedChange = ", z, "DndTile");
                DndTile.this.refreshState(null);
            }
        };
        this.mGlobalSettings = globalSettings;
        GlobalSettingsImpl globalSettingsImpl = (GlobalSettingsImpl) globalSettings;
        globalSettingsImpl.registerContentObserverForUser(globalSettingsImpl.getUriFor("zen_mode"), false, (ContentObserver) r2, globalSettingsImpl.getUserId());
        new QSZenModeDialogMetricsLogger(this.mContext);
        this.mPanelInteractor = panelInteractor;
    }

    public static String getStringFromMillis(Context context, long j) {
        if (j >= 0 && j < 1440) {
            Calendar calendar = Calendar.getInstance();
            int i = (int) j;
            calendar.set(11, i / 60);
            calendar.set(12, i % 60);
            return DateFormat.getTimeFormat(context).format(calendar.getTime());
        }
        return DateFormat.getTimeFormat(context).format(Long.valueOf(j));
    }

    public final String getApplicationNameFromPackage(String str) {
        PackageManager packageManager = ((ZenModeControllerImpl) this.mController).mContext.getPackageManager();
        try {
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
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
        return 118;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_sec_dnd_label);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(View view) {
        boolean z;
        ZenModeControllerImpl zenModeControllerImpl = (ZenModeControllerImpl) this.mController;
        boolean hasUserRestriction = zenModeControllerImpl.mUserManager.hasUserRestriction("no_adjust_volume", UserHandle.of(zenModeControllerImpl.mUserId));
        Context context = this.mContext;
        if (hasUserRestriction) {
            this.mPanelInteractor.collapsePanels();
            Toast.makeText(context, context.getString(android.R.string.mediasize_iso_b5), 1).show();
            return;
        }
        QSTile.BooleanState booleanState = (QSTile.BooleanState) this.mState;
        if (!booleanState.value && booleanState.state == 2) {
            if (zenModeControllerImpl.mZenMode != 0) {
                z = true;
            } else {
                z = false;
            }
            booleanState.value = z;
            Log.d("DndTile", "handleClick refresh value ");
        }
        ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("handleClick ="), ((QSTile.BooleanState) this.mState).value, "DndTile");
        boolean z2 = !((QSTile.BooleanState) this.mState).value;
        if (z2) {
            int i = Settings.Global.getInt(this.mHost.getUserContext().getContentResolver(), "zen_duration", 0);
            if (i != -1) {
                if (i != 0) {
                    zenModeControllerImpl.setZen(1, ZenModeConfig.toTimeCondition(context, i, ActivityManager.getCurrentUser(), true).id, "DndTile");
                } else {
                    zenModeControllerImpl.setZen(1, null, "DndTile");
                }
            } else {
                final ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, android.R.style.Theme.DeviceDefault.Settings);
                this.mUiHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.DndTile$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DndTile dndTile = DndTile.this;
                        ContextThemeWrapper contextThemeWrapper2 = contextThemeWrapper;
                        dndTile.getClass();
                        AlertDialog createDialog = new EnableZenModeDialog(contextThemeWrapper2).createDialog();
                        createDialog.getWindow().setType(2009);
                        SystemUIDialog.setShowForAllUsers(createDialog);
                        SystemUIDialog.registerDismissListener(createDialog, null);
                        SystemUIDialog.setWindowOnTop(createDialog, true);
                        SystemUIDialog.setDialogSize(createDialog);
                        dndTile.mUiHandler.post(new DndTile$$ExternalSyntheticLambda1(createDialog, 1));
                        dndTile.mPanelInteractor.collapsePanels();
                    }
                });
            }
        } else {
            zenModeControllerImpl.setZen(0, null, "DndTile");
        }
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setZen state: ", z2, "DndTile");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        super.handleDestroy();
        setListening(false);
        this.mGlobalSettings.unregisterContentObserver(this.mSettingsObserver);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        showDetail(true);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        super.handleSetListening(z);
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
        AnonymousClass3 anonymousClass3 = this.mPrefListener;
        Context context = this.mContext;
        if (z) {
            context.getSharedPreferences(context.getPackageName(), 0).registerOnSharedPreferenceChangeListener(anonymousClass3);
        } else {
            context.getSharedPreferences(context.getPackageName(), 0).unregisterOnSharedPreferenceChangeListener(anonymousClass3);
        }
        setListening(z);
        AnonymousClass2 anonymousClass2 = this.mSettingsObserver;
        GlobalSettings globalSettings = this.mGlobalSettings;
        if (!z) {
            GlobalSettingsImpl globalSettingsImpl = (GlobalSettingsImpl) globalSettings;
            globalSettingsImpl.registerContentObserverForUser(globalSettingsImpl.getUriFor("zen_mode"), false, (ContentObserver) anonymousClass2, globalSettingsImpl.getUserId());
        } else {
            globalSettings.unregisterContentObserver(anonymousClass2);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        int i;
        boolean z;
        boolean z2;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        ZenModeController zenModeController = this.mController;
        if (zenModeController != null) {
            if (obj instanceof Integer) {
                i = ((Integer) obj).intValue();
            } else {
                i = ((ZenModeControllerImpl) zenModeController).mZenMode;
            }
            Log.d("DndTile", "handleUpdateState zen " + i + "  state = " + booleanState);
            int i2 = 1;
            if (i != 0) {
                z = true;
            } else {
                z = false;
            }
            if (booleanState.value != z) {
                z2 = true;
            } else {
                z2 = false;
            }
            booleanState.dualTarget = true;
            booleanState.value = z;
            if (z) {
                i2 = 2;
            }
            booleanState.state = i2;
            booleanState.label = this.mContext.getString(R.string.quick_settings_sec_dnd_label);
            booleanState.icon = QSTileImpl.ResourceIcon.get(R.drawable.quick_panel_icon_donot_disturb);
            if (z2) {
                fireToggleStateChanged(booleanState.value);
            }
            this.mUiHandler.post(new DndTile$$ExternalSyntheticLambda1(this, 0));
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUserSwitch(int i) {
        handleRefreshState(null);
        setUserId(i);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        if (!this.mSharedPreferences.getBoolean("DndTileVisible", false)) {
            return false;
        }
        if (this.mHost.shouldBeHiddenByKnox(this.mTileSpec)) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DndDetailAdapter implements DetailAdapter, View.OnAttachStateChangeListener, DNDDetailItems.Callback {
        public static final /* synthetic */ int $r8$clinit = 0;
        public DNDDetailItems mDNDActivationItems;
        public ViewGroup mMenuOptions;
        public TextView mSummary;
        public final ArrayList mItemsList = new ArrayList();
        public final String[] mDndMenuOptions = new String[6];

        public DndDetailAdapter() {
        }

        /* JADX WARN: Removed duplicated region for block: B:104:0x0237 A[Catch: Exception -> 0x0261, TryCatch #2 {Exception -> 0x0261, blocks: (B:77:0x0131, B:81:0x01ad, B:83:0x01c1, B:85:0x01ca, B:88:0x01d0, B:89:0x01d2, B:94:0x01df, B:96:0x0201, B:97:0x0214, B:102:0x022c, B:104:0x0237, B:115:0x0245, B:116:0x0210, B:119:0x0152, B:121:0x015a, B:125:0x0165, B:128:0x016a, B:129:0x016f, B:132:0x017a, B:134:0x0184, B:137:0x018f, B:147:0x01a7, B:154:0x016d), top: B:76:0x0131 }] */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0256  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x0245 A[Catch: Exception -> 0x0261, TRY_LEAVE, TryCatch #2 {Exception -> 0x0261, blocks: (B:77:0x0131, B:81:0x01ad, B:83:0x01c1, B:85:0x01ca, B:88:0x01d0, B:89:0x01d2, B:94:0x01df, B:96:0x0201, B:97:0x0214, B:102:0x022c, B:104:0x0237, B:115:0x0245, B:116:0x0210, B:119:0x0152, B:121:0x015a, B:125:0x0165, B:128:0x016a, B:129:0x016f, B:132:0x017a, B:134:0x0184, B:137:0x018f, B:147:0x01a7, B:154:0x016d), top: B:76:0x0131 }] */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0234  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x017a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:136:0x018f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:139:0x0195  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x019e  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0357  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0383  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x01c1 A[Catch: Exception -> 0x0261, TryCatch #2 {Exception -> 0x0261, blocks: (B:77:0x0131, B:81:0x01ad, B:83:0x01c1, B:85:0x01ca, B:88:0x01d0, B:89:0x01d2, B:94:0x01df, B:96:0x0201, B:97:0x0214, B:102:0x022c, B:104:0x0237, B:115:0x0245, B:116:0x0210, B:119:0x0152, B:121:0x015a, B:125:0x0165, B:128:0x016a, B:129:0x016f, B:132:0x017a, B:134:0x0184, B:137:0x018f, B:147:0x01a7, B:154:0x016d), top: B:76:0x0131 }] */
        @Override // com.android.systemui.plugins.qs.DetailAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final android.view.View createDetailView(android.content.Context r18, android.view.View r19, android.view.ViewGroup r20) {
            /*
                Method dump skipped, instructions count: 1032
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.DndTile.DndDetailAdapter.createDetailView(android.content.Context, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final String getDetailAdapterSummary() {
            return DndTile.this.mDndMenuSummary;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return 149;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            return DndTile.DND_SETTINGS;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            DndTile dndTile = DndTile.this;
            Intent intent = DndTile.DND_SETTINGS;
            return dndTile.mContext.getString(R.string.quick_settings_dnd_detail_title);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            return null;
        }

        public final void updateDetailItem(DNDDetailItems.Item item, boolean z) {
            boolean z2;
            Drawable drawable;
            item.getClass();
            DndTile dndTile = DndTile.this;
            Intent intent = DndTile.DND_SETTINGS;
            Resources resources = dndTile.mContext.getResources();
            int i = 1;
            Typeface create = Typeface.create(Typeface.create("sec", 1), VolteConstants.ErrorCode.BUSY_EVERYWHERE, false);
            Typeface create2 = Typeface.create(Typeface.create("sec", 0), 400, false);
            int color = resources.getColor(R.color.dnd_detail_selected_text_color);
            int color2 = resources.getColor(R.color.dnd_detail_unselected_text_color);
            int color3 = resources.getColor(R.color.dnd_detail_unselected_text_summary_color);
            CheckedTextView checkedTextView = item.ctv;
            TextView textView = item.stv;
            if (textView.getText().toString() == "") {
                textView.setVisibility(8);
            }
            if (checkedTextView != null) {
                if (resources.getConfiguration().getLayoutDirection() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                checkedTextView.setChecked(z);
                if (z) {
                    color3 = color;
                }
                textView.setTextColor(color3);
                if (!z) {
                    color = color2;
                }
                checkedTextView.setTextColor(color);
                Drawable drawable2 = DndTile.this.mContext.getResources().getDrawable(R.drawable.dnd_detail_option_ic_check);
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
                if (z && z2) {
                    drawable = drawable2;
                } else {
                    drawable = null;
                }
                if (!z || z2) {
                    drawable2 = null;
                }
                checkedTextView.setCompoundDrawables(drawable, null, drawable2, null);
                if (!z) {
                    create = create2;
                }
                checkedTextView.setTypeface(create);
            }
            DNDDetailItems dNDDetailItems = this.mDNDActivationItems;
            if (dNDDetailItems.mAdapter.getCount() <= 0) {
                i = 0;
            }
            dNDDetailItems.mHandler.removeMessages(3);
            dNDDetailItems.mHandler.obtainMessage(3, i, 0).sendToTarget();
        }

        public final void updateDndActivationItems(boolean z) {
            int i;
            DNDDetailItems dNDDetailItems = this.mDNDActivationItems;
            int i2 = DndTile.this.mDndMenuSelectedItem;
            String str = this.mDndMenuOptions[i2];
            dNDDetailItems.getClass();
            int i3 = DNDDetailItems.$r8$clinit;
            if (i2 != 0) {
                if (i2 != 1 && i2 != 2 && i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            dNDDetailItems.updateQSPanelOptions(0);
                        }
                    } else {
                        dNDDetailItems.updateQSPanelOptions(1);
                    }
                } else {
                    dNDDetailItems.updateQSPanelOptions(1);
                }
            } else {
                dNDDetailItems.updateQSPanelOptions(1);
            }
            dNDDetailItems.mSelectedMenu = str;
            DNDDetailItems dNDDetailItems2 = this.mDNDActivationItems;
            if (dNDDetailItems2.mAdapter.getCount() > 0) {
                i = 1;
            } else {
                i = 0;
            }
            dNDDetailItems2.mHandler.removeMessages(3);
            dNDDetailItems2.mHandler.obtainMessage(3, i, 0).sendToTarget();
            if (!z) {
                ((SQSTileImpl) DndTile.this).mHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.DndTile.DndDetailAdapter.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        final DndDetailAdapter dndDetailAdapter = DndTile.this.mDetailAdapter;
                        if (dndDetailAdapter.mDNDActivationItems != null) {
                            Log.d("DndTile", "setItems");
                            ArrayList arrayList = new ArrayList();
                            for (String str2 : dndDetailAdapter.mDndMenuOptions) {
                                DNDDetailItems.Item item = new DNDDetailItems.Item();
                                item.line1 = str2;
                                arrayList.add(item);
                            }
                            DNDDetailItems dNDDetailItems3 = dndDetailAdapter.mDNDActivationItems;
                            DNDDetailItems.Item[] itemArr = (DNDDetailItems.Item[]) arrayList.toArray(new DNDDetailItems.Item[arrayList.size()]);
                            dNDDetailItems3.mHandler.removeMessages(1);
                            dNDDetailItems3.mHandler.obtainMessage(1, itemArr).sendToTarget();
                            dndDetailAdapter.mDNDActivationItems.post(new Runnable() { // from class: com.android.systemui.qs.tiles.DndTile.DndDetailAdapter.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i4;
                                    DndDetailAdapter dndDetailAdapter2 = DndDetailAdapter.this;
                                    ViewGroup viewGroup = dndDetailAdapter2.mMenuOptions;
                                    if (dndDetailAdapter2.mDNDActivationItems.mAdapter.getCount() > 0) {
                                        i4 = 0;
                                    } else {
                                        i4 = 8;
                                    }
                                    viewGroup.setVisibility(i4);
                                }
                            });
                            dndDetailAdapter.mItemsList.clear();
                            dndDetailAdapter.mItemsList.addAll(arrayList);
                        }
                    }
                });
                return;
            }
            DNDDetailItems dNDDetailItems3 = this.mDNDActivationItems;
            ArrayList arrayList = this.mItemsList;
            DNDDetailItems.Item[] itemArr = (DNDDetailItems.Item[]) arrayList.toArray(new DNDDetailItems.Item[arrayList.size()]);
            dNDDetailItems3.mHandler.removeMessages(1);
            dNDDetailItems3.mHandler.obtainMessage(1, itemArr).sendToTarget();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final void setToggleState(boolean z) {
        }
    }
}
