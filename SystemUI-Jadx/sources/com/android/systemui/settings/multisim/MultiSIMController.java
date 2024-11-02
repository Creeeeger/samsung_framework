package com.android.systemui.settings.multisim;

import android.app.ActivityThread;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Message;
import android.os.SemSystemProperties;
import android.os.SystemProperties;
import android.os.UserManager;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.settingslib.net.DataUsageController;
import com.android.systemui.Dependency;
import com.android.systemui.Operator;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.settings.multisim.MultiSIMPreferredSlotView;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.statusbar.connectivity.NetworkControllerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.google.android.collect.Lists;
import com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider;
import com.samsung.android.ims.SemImsManager;
import com.samsung.android.ims.SemImsRegistrationListener;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.sec.ims.configuration.DATA;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.volte2.data.VolteConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultiSIMController {
    public static final Uri INTERNAL_URI = Uri.parse("content://com.samsung.android.app.telephonyui.internal");
    public ActivityStarter mActivityStarter;
    public final AnonymousClass3 mChangNetModeObserver;
    public final Context mContext;
    public MultiSIMData mData;
    public DataUsageController mDataController;
    public MultiSIMData mDataNotified;
    public boolean mInitDone;
    public final AnonymousClass9 mIntentReceiver;
    public String mInvalidSimInfo;
    public boolean mIsSlotReversed;
    public int mMaxSimIconNumber;
    public final AnonymousClass7 mMobileDataObserver;
    public final AnonymousClass5 mMultiSimDataCrossSlotObserver;
    public String mNetworkNameDefault;
    public final MultiSIMController$$ExternalSyntheticLambda1 mNotifyDataToCallbackRunnable;
    public final MultiSIMController$$ExternalSyntheticLambda1 mNotifyVisToCallbackRunnable;
    public final AnonymousClass2 mOnSubscriptionsChangeListener;
    public final AnonymousClass4 mPreferedVoiceObserver;
    public final MultiSIMPreferredSlotView.SIMInfoIconManager.Factory mSIMInfoIconManagerFactory;
    public final AnonymousClass6 mSettingsListener;
    public SimCardManagerServiceProvider mSimCardManagerService;
    public final AnonymousClass8 mSimIconAndNameObserver;
    public final AnonymousClass12 mUIHandler;
    public String mUnknownPhoneNumber;
    public final AnonymousClass11 mUpdateDataHandler;
    public final UserTracker.Callback mUserChangedCallback;
    public final UserManager mUserManager;
    public AnonymousClass13 mSimCardCallback = null;
    public boolean mUIVisible = false;
    public final ArrayList mDataCallbacks = Lists.newArrayList();
    public final ArrayList mVisCallbacks = Lists.newArrayList();
    public final ArrayList mDefaultIdUpdateList = new ArrayList();
    public boolean mIsLoadedMultiSim = false;
    public boolean mHasOpportunisticESim = false;
    public boolean mNeedCheckOpportunisticESim = true;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.settings.multisim.MultiSIMController$13, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass13 {
        public AnonymousClass13() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.settings.multisim.MultiSIMController$14, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass14 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType;

        static {
            int[] iArr = new int[ButtonType.values().length];
            $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType = iArr;
            try {
                iArr[ButtonType.VOICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[ButtonType.SMS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[ButtonType.DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    enum ButtonType {
        VOICE(0),
        SMS(1),
        DATA(2),
        SIMINFO1(3),
        SIMINFO2(4);

        private final int index;

        ButtonType(int i) {
            this.index = i;
        }

        public final int getIndex() {
            return this.index;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum KoreanSimCarrier {
        /* JADX INFO: Fake field, exist only in values array */
        KT("45008"),
        /* JADX INFO: Fake field, exist only in values array */
        LG_U_PLUS("45006");

        private final String mNumeric;

        KoreanSimCarrier(String str) {
            this.mNumeric = str;
        }

        public final String getNumeric() {
            return this.mNumeric;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface MultiSIMDataChangedCallback {
        default boolean isPhoneNumberNeeded() {
            return false;
        }

        void onDataChanged(MultiSIMData multiSIMData);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface MultiSIMVisibilityChangedCallback {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum PhoneNumberSource {
        /* JADX INFO: Fake field, exist only in values array */
        CARRIER(2),
        /* JADX INFO: Fake field, exist only in values array */
        UICC(1),
        /* JADX INFO: Fake field, exist only in values array */
        IMS(3);

        private final int value;

        PhoneNumberSource(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.android.systemui.settings.multisim.MultiSIMController$6, com.android.systemui.util.SettingsHelper$OnChangedCallback] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.android.systemui.settings.multisim.MultiSIMController$7, android.database.ContentObserver] */
    /* JADX WARN: Type inference failed for: r13v1, types: [com.android.systemui.settings.multisim.MultiSIMController$8, android.database.ContentObserver] */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.android.systemui.settings.multisim.MultiSIMController$11] */
    /* JADX WARN: Type inference failed for: r14v1, types: [android.os.Handler, com.android.systemui.settings.multisim.MultiSIMController$12] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.android.systemui.settings.multisim.MultiSIMController$2, android.telephony.SubscriptionManager$OnSubscriptionsChangedListener] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.systemui.settings.multisim.MultiSIMController$3, android.database.ContentObserver] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.android.systemui.settings.multisim.MultiSIMController$9, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r8v2, types: [com.android.systemui.settings.multisim.MultiSIMController$4, android.database.ContentObserver] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.android.systemui.settings.multisim.MultiSIMController$5, android.database.ContentObserver] */
    public MultiSIMController(Context context, NetworkController networkController, UserTracker userTracker, MultiSIMPreferredSlotView.SIMInfoIconManager.Factory factory) {
        char c;
        char c2;
        boolean z;
        boolean z2;
        new SemImsRegistrationListener[]{null, null};
        new SemImsManager[]{null, null};
        this.mIsSlotReversed = false;
        this.mInitDone = false;
        UserTracker.Callback callback = new UserTracker.Callback() { // from class: com.android.systemui.settings.multisim.MultiSIMController.1
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                MultiSIMController multiSIMController = MultiSIMController.this;
                UserInfo userInfo = multiSIMController.mUserManager.getUserInfo(i);
                multiSIMController.mData.isSecondaryUser = !userInfo.isAdmin();
                multiSIMController.notifyDataToCallback();
            }
        };
        this.mUserChangedCallback = callback;
        this.mNotifyDataToCallbackRunnable = new MultiSIMController$$ExternalSyntheticLambda1(this, 0);
        ?? r5 = new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.android.systemui.settings.multisim.MultiSIMController.2
            @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
            public final void onSubscriptionsChanged() {
                Log.d("MultiSIMController", "onSubscriptionsChanged: ");
                AnonymousClass11 anonymousClass11 = MultiSIMController.this.mUpdateDataHandler;
                if (anonymousClass11 != null) {
                    anonymousClass11.removeMessages(VolteConstants.ErrorCode.CALL_FORBIDDEN);
                    AnonymousClass11 anonymousClass112 = MultiSIMController.this.mUpdateDataHandler;
                    anonymousClass112.sendMessage(anonymousClass112.obtainMessage(VolteConstants.ErrorCode.CALL_FORBIDDEN));
                }
            }
        };
        this.mOnSubscriptionsChangeListener = r5;
        Dependency.DependencyKey dependencyKey = Dependency.MAIN_HANDLER;
        ?? r6 = new ContentObserver((Handler) Dependency.get(dependencyKey)) { // from class: com.android.systemui.settings.multisim.MultiSIMController.3
            @Override // android.database.ContentObserver
            public final void onChange(boolean z3, Uri uri) {
                onChange(z3);
                if (uri != null && uri.equals(Settings.Global.getUriFor("set_network_mode_by_quick_panel"))) {
                    boolean z4 = false;
                    if (Settings.Global.getInt(MultiSIMController.this.mContext.getContentResolver(), "set_network_mode_by_quick_panel", 0) != 0) {
                        z4 = true;
                    }
                    KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onChanged() -set_network_mode_by_quick_panel : ", z4, "MultiSIMController");
                    if (z4) {
                        MultiSIMController multiSIMController = MultiSIMController.this;
                        multiSIMController.mData.changingNetMode = true;
                        AnonymousClass12 anonymousClass12 = multiSIMController.mUIHandler;
                        if (anonymousClass12 != null) {
                            anonymousClass12.removeMessages(1001);
                            AnonymousClass12 anonymousClass122 = MultiSIMController.this.mUIHandler;
                            anonymousClass122.sendMessageDelayed(anonymousClass122.obtainMessage(1001), 1000L);
                        }
                    }
                    MultiSIMController.this.notifyDataToCallback();
                }
            }
        };
        this.mChangNetModeObserver = r6;
        ?? r8 = new ContentObserver(new Handler()) { // from class: com.android.systemui.settings.multisim.MultiSIMController.4
            @Override // android.database.ContentObserver
            public final void onChange(boolean z3) {
                MultiSIMController multiSIMController = MultiSIMController.this;
                ButtonType buttonType = ButtonType.VOICE;
                Uri uri = MultiSIMController.INTERNAL_URI;
                multiSIMController.updateCurrentDefaultSlot(buttonType);
                RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("PreferedVoiceObserver onChange():"), MultiSIMController.this.mData.defaultVoiceSimId, "MultiSIMController");
            }
        };
        this.mPreferedVoiceObserver = r8;
        ?? r9 = new ContentObserver(new Handler()) { // from class: com.android.systemui.settings.multisim.MultiSIMController.5
            @Override // android.database.ContentObserver
            public final void onChange(boolean z3) {
                MultiSIMController multiSIMController = MultiSIMController.this;
                multiSIMController.mData.isRestrictionsForMmsUse = multiSIMController.isRestrictionsForMmsUse();
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("mMultiSimDataCrossSlotObserver onChange() "), MultiSIMController.this.mData.isRestrictionsForMmsUse, "MultiSIMController");
                MultiSIMController.this.notifyDataToCallback();
            }
        };
        this.mMultiSimDataCrossSlotObserver = r9;
        Uri[] uriArr = {Settings.System.getUriFor("airplane_mode_on")};
        ?? r11 = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.settings.multisim.MultiSIMController.6
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (uri != null && uri.equals(Settings.System.getUriFor("airplane_mode_on"))) {
                    MultiSIMController multiSIMController = MultiSIMController.this;
                    multiSIMController.mData.airplaneMode = ((SettingsHelper) Dependency.get(SettingsHelper.class)).isAirplaneModeOn();
                    Log.d("MultiSIMController", "onChanged() - airplane_mode : " + multiSIMController.mData.airplaneMode);
                    multiSIMController.notifyDataToCallback();
                }
            }
        };
        this.mSettingsListener = r11;
        ?? r12 = new ContentObserver(new Handler()) { // from class: com.android.systemui.settings.multisim.MultiSIMController.7
            @Override // android.database.ContentObserver
            public final void onChange(boolean z3) {
                MultiSIMController multiSIMController = MultiSIMController.this;
                multiSIMController.mData.isDataEnabled = multiSIMController.isDataEnabled();
                MultiSIMController.this.notifyDataToCallback();
            }
        };
        this.mMobileDataObserver = r12;
        ?? r13 = new ContentObserver((Handler) Dependency.get(dependencyKey)) { // from class: com.android.systemui.settings.multisim.MultiSIMController.8
            @Override // android.database.ContentObserver
            public final void onChange(boolean z3, Uri uri) {
                onChange(z3);
                if (uri == null) {
                    return;
                }
                if (uri.equals(Settings.Global.getUriFor("select_icon_1"))) {
                    MultiSIMController multiSIMController = MultiSIMController.this;
                    multiSIMController.mData.simImageIdx[0] = Settings.Global.getInt(multiSIMController.mContext.getContentResolver(), "select_icon_1", 0);
                    MultiSIMController multiSIMController2 = MultiSIMController.this;
                    int i = multiSIMController2.mData.simImageIdx[0];
                    if (i < 0 || i >= multiSIMController2.mMaxSimIconNumber) {
                        Log.e("MultiSIMController", "mSimIconAndNameObserver onChange() SimImageIdx[0] = " + MultiSIMController.this.mData.simImageIdx[0]);
                        MultiSIMController.this.mData.simImageIdx[0] = 0;
                    }
                } else if (uri.equals(Settings.Global.getUriFor("select_name_1"))) {
                    MultiSIMController multiSIMController3 = MultiSIMController.this;
                    multiSIMController3.mData.simName[0] = Settings.Global.getString(multiSIMController3.mContext.getContentResolver(), "select_name_1");
                } else if (uri.equals(Settings.Global.getUriFor("select_icon_2"))) {
                    MultiSIMController multiSIMController4 = MultiSIMController.this;
                    multiSIMController4.mData.simImageIdx[1] = Settings.Global.getInt(multiSIMController4.mContext.getContentResolver(), "select_icon_2", 1);
                    MultiSIMController multiSIMController5 = MultiSIMController.this;
                    int i2 = multiSIMController5.mData.simImageIdx[1];
                    if (i2 < 0 || i2 >= multiSIMController5.mMaxSimIconNumber) {
                        Log.e("MultiSIMController", "mSimIconAndNameObserver onChange() SimImageIdx[1] = " + MultiSIMController.this.mData.simImageIdx[1]);
                        MultiSIMController.this.mData.simImageIdx[1] = 1;
                    }
                } else if (uri.equals(Settings.Global.getUriFor("select_name_2"))) {
                    MultiSIMController multiSIMController6 = MultiSIMController.this;
                    multiSIMController6.mData.simName[1] = Settings.Global.getString(multiSIMController6.mContext.getContentResolver(), "select_name_2");
                }
                MultiSIMController multiSIMController7 = MultiSIMController.this;
                Uri uri2 = MultiSIMController.INTERNAL_URI;
                multiSIMController7.notifyDataToCallback();
            }
        };
        this.mSimIconAndNameObserver = r13;
        ?? r7 = new BroadcastReceiver() { // from class: com.android.systemui.settings.multisim.MultiSIMController.9
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                AnonymousClass12 anonymousClass12;
                AnonymousClass12 anonymousClass122;
                String action = intent.getAction();
                Log.d("MultiSIMController", "onReceive() - action = " + action);
                if (action.equals("com.samsung.telecom.action.DEFAULT_OUTGOING_PHONE_ACCOUNT_CHANGED")) {
                    MultiSIMController multiSIMController = MultiSIMController.this;
                    ButtonType buttonType = ButtonType.VOICE;
                    Uri uri = MultiSIMController.INTERNAL_URI;
                    multiSIMController.updateCurrentDefaultSlot(buttonType);
                } else {
                    boolean z3 = false;
                    if (action.equals("android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED")) {
                        ListPopupWindow$$ExternalSyntheticOutline0.m("onReceive() - subId = ", intent.getIntExtra("subscription", 0), "MultiSIMController");
                        MultiSIMController multiSIMController2 = MultiSIMController.this;
                        ButtonType buttonType2 = ButtonType.VOICE;
                        Uri uri2 = MultiSIMController.INTERNAL_URI;
                        multiSIMController2.updateCurrentDefaultSlot(buttonType2);
                    } else if (action.equals("android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED")) {
                        ListPopupWindow$$ExternalSyntheticOutline0.m("onReceive() - subId = ", intent.getIntExtra("subscription", 0), "MultiSIMController");
                        MultiSIMController multiSIMController3 = MultiSIMController.this;
                        ButtonType buttonType3 = ButtonType.SMS;
                        Uri uri3 = MultiSIMController.INTERNAL_URI;
                        multiSIMController3.updateCurrentDefaultSlot(buttonType3);
                    } else if (action.equals("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED")) {
                        ListPopupWindow$$ExternalSyntheticOutline0.m("onReceive() - subId = ", intent.getIntExtra("subscription", 0), "MultiSIMController");
                        MultiSIMController multiSIMController4 = MultiSIMController.this;
                        ButtonType buttonType4 = ButtonType.DATA;
                        Uri uri4 = MultiSIMController.INTERNAL_URI;
                        multiSIMController4.updateCurrentDefaultSlot(buttonType4);
                    } else if (action.equals("com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS")) {
                        ListPopupWindow$$ExternalSyntheticOutline0.m("onReceive() - subId = ", intent.getIntExtra("subscription", 0), "MultiSIMController");
                        MultiSIMController multiSIMController5 = MultiSIMController.this;
                        if (multiSIMController5.mData.changingDataInternally && (anonymousClass122 = multiSIMController5.mUIHandler) != null) {
                            anonymousClass122.removeMessages(1000);
                            AnonymousClass12 anonymousClass123 = MultiSIMController.this.mUIHandler;
                            anonymousClass123.sendMessageDelayed(anonymousClass123.obtainMessage(1000), 60000L);
                        }
                    } else if (action.equals("android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH")) {
                        MultiSIMController multiSIMController6 = MultiSIMController.this;
                        if (multiSIMController6.mData.changingDataInternally && (anonymousClass12 = multiSIMController6.mUIHandler) != null) {
                            anonymousClass12.removeMessages(1000);
                            AnonymousClass12 anonymousClass124 = MultiSIMController.this.mUIHandler;
                            anonymousClass124.sendMessage(anonymousClass124.obtainMessage(1000));
                        }
                    } else if (action.equals("android.intent.action.LOCALE_CHANGED")) {
                        MultiSIMController multiSIMController7 = MultiSIMController.this;
                        Uri uri5 = MultiSIMController.INTERNAL_URI;
                        multiSIMController7.updateCarrierNameAndPhoneNumber(true);
                    } else if (action.equals("android.intent.action.SERVICE_STATE")) {
                        AnonymousClass11 anonymousClass11 = MultiSIMController.this.mUpdateDataHandler;
                        if (anonymousClass11 != null) {
                            anonymousClass11.removeMessages(2000);
                            AnonymousClass11 anonymousClass112 = MultiSIMController.this.mUpdateDataHandler;
                            anonymousClass112.sendMessage(anonymousClass112.obtainMessage(2000));
                        }
                    } else if ("android.intent.action.SIM_STATE_CHANGED".equals(action)) {
                        MultiSIMController multiSIMController8 = MultiSIMController.this;
                        Uri uri6 = MultiSIMController.INTERNAL_URI;
                        multiSIMController8.updateMultiSimReadyState(true);
                        String stringExtra = intent.getStringExtra(ImsProfile.SERVICE_SS);
                        if ("READY".equals(stringExtra) || "LOADED".equals(stringExtra)) {
                            MultiSIMController multiSIMController9 = MultiSIMController.this;
                            multiSIMController9.mData.isDataEnabled = multiSIMController9.isDataEnabled();
                            MultiSIMController.this.updateSimSlotType();
                        }
                        if ("LOADED".equals(stringExtra)) {
                            MultiSIMController.this.updateCurrentDefaultSlot(ButtonType.VOICE);
                            MultiSIMController.this.updateCurrentDefaultSlot(ButtonType.SMS);
                            MultiSIMController.this.updateCurrentDefaultSlot(ButtonType.DATA);
                        }
                    } else if (action.equals("com.samsung.settings.SIMCARD_MGT_ACTIVATED")) {
                        MultiSIMController multiSIMController10 = MultiSIMController.this;
                        Uri uri7 = MultiSIMController.INTERNAL_URI;
                        multiSIMController10.updateMultiSimReadyState(true);
                    } else if (action.equals("android.intent.action.PHONE_STATE")) {
                        String stringExtra2 = intent.getStringExtra("state");
                        if (!stringExtra2.isEmpty()) {
                            MultiSIMData multiSIMData = MultiSIMController.this.mData;
                            if (TelephonyManager.EXTRA_STATE_RINGING.equals(stringExtra2) || TelephonyManager.EXTRA_STATE_OFFHOOK.equals(stringExtra2)) {
                                z3 = true;
                            }
                            multiSIMData.isCalling = z3;
                        }
                    } else if (action.equals("com.samsung.android.softsim.ServiceStatus")) {
                        MultiSIMController multiSIMController11 = MultiSIMController.this;
                        MultiSIMData multiSIMData2 = multiSIMController11.mData;
                        if (multiSIMController11.getSRoamingVirtualSlot() == 1) {
                            z3 = true;
                        }
                        multiSIMData2.isSRoaming = z3;
                    }
                }
                MultiSIMController multiSIMController12 = MultiSIMController.this;
                Uri uri8 = MultiSIMController.INTERNAL_URI;
                multiSIMController12.notifyDataToCallback();
            }
        };
        this.mIntentReceiver = r7;
        this.mUpdateDataHandler = new Handler() { // from class: com.android.systemui.settings.multisim.MultiSIMController.11
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                switch (message.what) {
                    case 2000:
                        Log.d("MultiSIMController", "MESSAGE_UPDATE_SERVICE_STATE");
                        MultiSIMController multiSIMController = MultiSIMController.this;
                        multiSIMController.mData.isDataEnabled = multiSIMController.isDataEnabled();
                        MultiSIMController.this.updateCarrierNameAndPhoneNumber(false);
                        break;
                    case VolteConstants.ErrorCode.CALL_FORBIDDEN /* 2001 */:
                        Log.d("MultiSIMController", "MESSAGE_UPDATE_SUBSCRIPTION_INFO");
                        MultiSIMController multiSIMController2 = MultiSIMController.this;
                        multiSIMController2.mIsSlotReversed = DeviceState.isSubInfoReversed(multiSIMController2.mContext);
                        MultiSIMController multiSIMController3 = MultiSIMController.this;
                        multiSIMController3.mNeedCheckOpportunisticESim = true;
                        multiSIMController3.updateMultiSimReadyState(false);
                        MultiSIMController multiSIMController4 = MultiSIMController.this;
                        multiSIMController4.mData.isDataEnabled = multiSIMController4.isDataEnabled();
                        MultiSIMController.this.updateCarrierNameAndPhoneNumber(false);
                        break;
                    case VolteConstants.ErrorCode.MAKECALL_REG_FAILURE_TIMER_F /* 2002 */:
                        Log.d("MultiSIMController", "MESSAGE_IMS_MANAGER_CONNECTED");
                        MultiSIMController multiSIMController5 = MultiSIMController.this;
                        Uri uri = MultiSIMController.INTERNAL_URI;
                        multiSIMController5.updateCarrierNameAndPhoneNumber(false);
                        break;
                    default:
                        Log.d("MultiSIMController", "UpdateDataHandler MESSAGE_EMPTY");
                        break;
                }
                MultiSIMController multiSIMController6 = MultiSIMController.this;
                Uri uri2 = MultiSIMController.INTERNAL_URI;
                multiSIMController6.notifyDataToCallback();
            }
        };
        ?? r14 = new Handler() { // from class: com.android.systemui.settings.multisim.MultiSIMController.12
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i = message.what;
                if (i != 1000) {
                    if (i != 1001) {
                        Log.d("MultiSIMController", "UIHandler MESSAGE_EMPTY");
                        return;
                    }
                    Log.d("MultiSIMController", "MESSAGE_UPDATE_SET_NETMODE_DELAY_STATE");
                    MultiSIMController multiSIMController = MultiSIMController.this;
                    MultiSIMData multiSIMData = multiSIMController.mData;
                    if (multiSIMData.changingNetMode) {
                        multiSIMData.changingNetMode = false;
                        multiSIMController.notifyDataToCallback();
                        return;
                    }
                    return;
                }
                Log.d("MultiSIMController", "MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON");
                MultiSIMController multiSIMController2 = MultiSIMController.this;
                MultiSIMData multiSIMData2 = multiSIMController2.mData;
                if (multiSIMData2.changingDataInternally) {
                    multiSIMData2.changingDataInternally = false;
                    multiSIMController2.notifyDataToCallback();
                }
            }
        };
        this.mUIHandler = r14;
        this.mNotifyVisToCallbackRunnable = new MultiSIMController$$ExternalSyntheticLambda1(this, 1);
        this.mContext = context;
        this.mUserManager = (UserManager) context.getSystemService("user");
        this.mSIMInfoIconManagerFactory = factory;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter.addAction("com.samsung.settings.SIMCARD_MGT_ACTIVATED");
        intentFilter.addAction("com.samsung.telecom.action.DEFAULT_OUTGOING_PHONE_ACCOUNT_CHANGED");
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED");
        intentFilter.addAction("android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED");
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        intentFilter.addAction("com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS");
        intentFilter.addAction("android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH");
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        intentFilter.addAction("android.intent.action.SERVICE_STATE");
        intentFilter.addAction("com.samsung.android.softsim.ServiceStatus");
        intentFilter.addAction(EnterpriseDeviceManager.ACTION_KNOX_RESTRICTIONS_CHANGED);
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).registerReceiver(intentFilter, r7);
        this.mSimCardManagerService = SimCardManagerServiceProvider.getService(context);
        if (networkController != null) {
            this.mDataController = ((NetworkControllerImpl) networkController).mDataUsageController;
        }
        this.mDataNotified = new MultiSIMData();
        this.mData = new MultiSIMData();
        this.mInitDone = false;
        updateCurrentDefaultSlot(ButtonType.VOICE);
        updateCurrentDefaultSlot(ButtonType.SMS);
        updateCurrentDefaultSlot(ButtonType.DATA);
        this.mMaxSimIconNumber = context.getResources().getStringArray(R.array.multisim_psim_icon_res_id_list).length;
        this.mData.simImageIdx[0] = Settings.Global.getInt(context.getContentResolver(), "select_icon_1", 0);
        int i = this.mData.simImageIdx[0];
        if (i >= 0 && i < this.mMaxSimIconNumber) {
            c = 0;
        } else {
            StringBuilder sb = new StringBuilder("MultiSIMPreferredSlotBar SimImageIdx[0] = ");
            c = 0;
            sb.append(this.mData.simImageIdx[0]);
            Log.e("MultiSIMController", sb.toString());
            this.mData.simImageIdx[0] = 0;
        }
        this.mData.simName[c] = Settings.Global.getString(context.getContentResolver(), "select_name_1");
        this.mData.simImageIdx[1] = Settings.Global.getInt(context.getContentResolver(), "select_icon_2", 1);
        int i2 = this.mData.simImageIdx[1];
        if (i2 >= 0 && i2 < this.mMaxSimIconNumber) {
            c2 = 1;
        } else {
            StringBuilder sb2 = new StringBuilder("MultiSIMPreferredSlotBar SimImageIdx[1] = ");
            c2 = 1;
            sb2.append(this.mData.simImageIdx[1]);
            Log.e("MultiSIMController", sb2.toString());
            this.mData.simImageIdx[1] = 1;
        }
        this.mData.simName[c2] = Settings.Global.getString(context.getContentResolver(), "select_name_2");
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("select_icon_1"), false, r13);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("select_name_1"), false, r13);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("select_icon_2"), false, r13);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("select_name_2"), false, r13);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor("prefered_voice_call"), false, r8);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("mobile_data"), false, r12);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("device_provisioned"), false, r12);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("multi_sim_datacross_slot"), false, r9);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("set_network_mode_by_quick_panel"), false, r6);
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(r11, uriArr);
        r11.onChanged(uriArr[0]);
        if (getSRoamingVirtualSlot() == 1) {
            this.mData.isSRoaming = true;
        }
        this.mActivityStarter = (ActivityStarter) Dependency.get(ActivityStarter.class);
        SubscriptionManager.from(context).addOnSubscriptionsChangedListener(r5);
        updateSimSlotType();
        this.mData.isRestrictionsForMmsUse = isRestrictionsForMmsUse();
        updateMultiSimReadyState(true);
        MultiSIMData multiSIMData = this.mData;
        int callState = TelephonyManager.from(ActivityThread.currentApplication().getApplicationContext()).getCallState(getSubId(0));
        int callState2 = TelephonyManager.from(ActivityThread.currentApplication().getApplicationContext()).getCallState(getSubId(1));
        Log.i("MultiSIMController", "Check Call SIM1 : " + callState + ", SIM2 : " + callState2);
        if (callState != 1 && callState != 2 && callState2 != 1 && callState2 != 2) {
            z = false;
        } else {
            z = true;
        }
        multiSIMData.isCalling = z;
        this.mData.isDataEnabled = isDataEnabled();
        this.mData.airplaneMode = ((SettingsHelper) Dependency.get(SettingsHelper.class)).isAirplaneModeOn();
        updateCarrierNameAndPhoneNumber(true);
        UserTrackerImpl userTrackerImpl = (UserTrackerImpl) userTracker;
        userTrackerImpl.addCallback(callback, new HandlerExecutor((Handler) r14));
        MultiSIMData multiSIMData2 = this.mData;
        if (userTrackerImpl.getUserId() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        multiSIMData2.isSecondaryUser = z2;
        this.mIsSlotReversed = DeviceState.isSubInfoReversed(context);
        this.mInitDone = true;
        notifyDataToCallback();
    }

    public static int getSRoamingStatus(String str) {
        if (!str.equals("activating") && !str.equals("activated")) {
            if (!str.equals("deactivating") && !str.equals("deactivated")) {
                return 9;
            }
            return 0;
        }
        return 1;
    }

    public static int getSubId(int i) {
        int[] subId = SubscriptionManager.getSubId(i);
        if (subId != null && subId.length > 0) {
            return subId[0];
        }
        Log.e("MultiSIMController", "getSubId: no valid subs");
        return -1;
    }

    public static boolean isBlockedAllMultiSimBar() {
        if ((!Operator.QUICK_IS_XNX_BRANDING || !SystemProperties.get("ril.lockpolicy", DATA.DM_FIELD_INDEX.PCSCF_DOMAIN).equals("1")) && !((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBlockedEdmSettingsChange$1() && !((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isUserMobileDataRestricted()) {
            return false;
        }
        return true;
    }

    public final int getCurrentVoiceSlotByMethodCall() {
        try {
            Bundle call = this.mContext.getContentResolver().call(INTERNAL_URI, "getCurrentVoiceCall", (String) null, new Bundle());
            if (call == null) {
                Log.d("MultiSIMController", "bundle is null : getCurrentVoiceCall");
                return 0;
            }
            boolean z = call.getBoolean("success");
            int i = call.getInt("result");
            Log.d("MultiSIMController", "getCurrentVoiceCall, " + z + ", " + i);
            return i;
        } catch (Throwable th) {
            Log.e("MultiSIMController", "getCurrentVoiceCall, " + th);
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getSRoamingVirtualSlot() {
        /*
            r6 = this;
            java.lang.String r0 = "com.samsung.android.globalroaming"
            java.lang.String r1 = "MultiSIMController"
            r2 = 0
            r3 = 1
            android.content.Context r6 = r6.mContext
            if (r6 != 0) goto L10
            java.lang.String r6 = "context is null : com.samsung.android.globalroaming"
            android.util.Log.d(r1, r6)
            goto L20
        L10:
            android.content.pm.PackageManager r6 = r6.getPackageManager()
            r4 = 128(0x80, float:1.794E-43)
            r6.getApplicationInfo(r0, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1b
            r6 = r3
            goto L21
        L1b:
            java.lang.String r6 = "Package not found : com.samsung.android.globalroaming"
            android.util.Log.e(r1, r6)
        L20:
            r6 = r2
        L21:
            r0 = 9
            if (r6 == 0) goto L53
            java.lang.String r6 = "has sroaming package"
            android.util.Log.i(r1, r6)
            java.lang.String r6 = "persist.sys.softsim.status"
            java.lang.String r4 = "default"
            java.lang.String r5 = com.android.systemui.util.DeviceState.getMSimSystemProperty(r2, r6, r4)
            java.lang.String r6 = com.android.systemui.util.DeviceState.getMSimSystemProperty(r3, r6, r4)
            int r4 = getSRoamingStatus(r5)
            int r6 = getSRoamingStatus(r6)
            if (r4 == r3) goto L4b
            if (r6 != r3) goto L44
            goto L4b
        L44:
            if (r4 != 0) goto L49
            if (r6 != 0) goto L49
            goto L4c
        L49:
            r2 = r0
            goto L4c
        L4b:
            r2 = r3
        L4c:
            java.lang.String r6 = "sroaming status : "
            androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0.m(r6, r2, r1)
            r0 = r2
        L53:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.settings.multisim.MultiSIMController.getSRoamingVirtualSlot():int");
    }

    public final boolean isDataBlocked(int i) {
        if (this.mIsSlotReversed) {
            i = 1 - i;
        }
        SimCardManagerServiceProvider simCardManagerServiceProvider = this.mSimCardManagerService;
        boolean z = false;
        Context context = this.mContext;
        if (simCardManagerServiceProvider != null && SimCardManagerServiceProvider.isServiceRunningCheck(context)) {
            try {
                return !this.mSimCardManagerService.isDefaultDataSlotAllowed(i);
            } catch (Exception e) {
                Log.d("MultiSIMController", "Caught exception from isDataBlocked", e);
                return false;
            }
        }
        if (this.mSimCardManagerService != null) {
            Log.e("MultiSIMController", "isDataBlocked : isDefaultDataSlotAllowedByMethodCall");
            try {
                Bundle bundle = new Bundle();
                bundle.putInt("selectItem", i);
                Bundle call = context.getContentResolver().call(INTERNAL_URI, "isDefaultDataSlotAllowed", (String) null, bundle);
                if (call == null) {
                    Log.d("MultiSIMController", "bundle is null : isDefaultDataSlotAllowed");
                } else {
                    boolean z2 = call.getBoolean("success");
                    boolean z3 = call.getBoolean("result");
                    Log.d("MultiSIMController", "isDefaultDataSlotAllowed, " + z2 + ", " + z3);
                    z = z3;
                }
            } catch (Throwable th) {
                Log.e("MultiSIMController", "isDefaultDataSlotAllowed, " + th);
            }
            boolean z4 = !z;
            this.mSimCardManagerService = SimCardManagerServiceProvider.getService(context);
            return z4;
        }
        Log.e("MultiSIMController", "isDataBlocked : mSimCardManagerService is null.");
        return false;
    }

    public final boolean isDataEnabled() {
        DataUsageController dataUsageController = this.mDataController;
        if (dataUsageController != null && dataUsageController.isMobileDataSupported() && this.mDataController.isMobileDataEnabled()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isMultiSimAvailable() {
        /*
            r6 = this;
            com.android.systemui.settings.multisim.MultiSIMData r0 = r6.mData
            boolean r0 = r0.isMultiSimReady
            r1 = 0
            if (r0 == 0) goto L78
            boolean r0 = com.android.systemui.util.DeviceType.isLDUSKU()
            r2 = 1
            if (r0 == 0) goto Lf
            goto L49
        Lf:
            java.lang.String r0 = "ro.csc.sales_code"
            java.lang.String r0 = android.os.SystemProperties.get(r0)     // Catch: java.lang.Exception -> L24
            boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L26
            if (r3 == 0) goto L2e
            java.lang.String r3 = "ril.sales_code"
            java.lang.String r0 = android.os.SystemProperties.get(r3)     // Catch: java.lang.Exception -> L26
            goto L2e
        L24:
            java.lang.String r0 = ""
        L26:
            java.lang.String r3 = "TAG"
            java.lang.String r4 = "readSalesCode failed"
            android.util.Log.d(r3, r4)
        L2e:
            java.lang.String r3 = "PAP"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L49
            java.lang.String r3 = "FOP"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L49
            java.lang.String r3 = "LDU"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L47
            goto L49
        L47:
            r0 = r1
            goto L4a
        L49:
            r0 = r2
        L4a:
            java.lang.String r3 = "isLDUModel = "
            java.lang.String r4 = " isSecondaryUser = "
            java.lang.StringBuilder r3 = androidx.slice.widget.RowView$$ExternalSyntheticOutline0.m(r3, r0, r4)
            com.android.systemui.settings.multisim.MultiSIMData r4 = r6.mData
            boolean r4 = r4.isSecondaryUser
            java.lang.String r5 = "MultiSIMController"
            androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0.m(r3, r4, r5)
            if (r0 != 0) goto L66
            com.android.systemui.settings.multisim.MultiSIMData r6 = r6.mData
            boolean r6 = r6.isSecondaryUser
            if (r6 == 0) goto L64
            goto L66
        L64:
            r6 = r1
            goto L67
        L66:
            r6 = r2
        L67:
            if (r6 != 0) goto L78
            java.lang.Class<com.android.systemui.util.SettingsHelper> r6 = com.android.systemui.util.SettingsHelper.class
            java.lang.Object r6 = com.android.systemui.Dependency.get(r6)
            com.android.systemui.util.SettingsHelper r6 = (com.android.systemui.util.SettingsHelper) r6
            boolean r6 = r6.isEmergencyMode()
            if (r6 != 0) goto L78
            r1 = r2
        L78:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.settings.multisim.MultiSIMController.isMultiSimAvailable():boolean");
    }

    public final boolean isRestrictionsForMmsUse() {
        boolean z;
        int i = DeviceType.supportTablet;
        if ("qcom".equalsIgnoreCase(SemSystemProperties.get("ro.hardware", "")) || Build.VERSION.SEM_FIRST_SDK_INT >= 31) {
            return false;
        }
        int i2 = Settings.Global.getInt(this.mContext.getContentResolver(), "multi_sim_datacross_slot", -1);
        SeslColorSpectrumView$$ExternalSyntheticOutline0.m("isMMSuse =", i2, "MultiSIMController");
        if (i2 != -1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final void launchSimManager() {
        if (isBlockedAllMultiSimBar()) {
            return;
        }
        Intent intent = new Intent();
        Log.e("MultiSIMController", "onClick()");
        try {
            intent.setClassName("com.samsung.android.app.telephonyui", "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.SimCardMgrActivity");
            intent.addFlags(268468224);
            this.mActivityStarter.postStartActivityDismissingKeyguard(intent, 0);
        } catch (ActivityNotFoundException unused) {
            Log.e("MultiSIMController", "activity not found");
        }
    }

    public final void notifyDataToCallback() {
        if (this.mInitDone) {
            AnonymousClass12 anonymousClass12 = this.mUIHandler;
            MultiSIMController$$ExternalSyntheticLambda1 multiSIMController$$ExternalSyntheticLambda1 = this.mNotifyDataToCallbackRunnable;
            anonymousClass12.removeCallbacks(multiSIMController$$ExternalSyntheticLambda1);
            anonymousClass12.post(multiSIMController$$ExternalSyntheticLambda1);
        }
    }

    public final void registerCallback(MultiSIMDataChangedCallback multiSIMDataChangedCallback) {
        if (multiSIMDataChangedCallback != null) {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.mDataCallbacks;
                if (i < arrayList.size()) {
                    if (((WeakReference) arrayList.get(i)).get() == multiSIMDataChangedCallback) {
                        return;
                    } else {
                        i++;
                    }
                } else {
                    arrayList.add(new WeakReference(multiSIMDataChangedCallback));
                    arrayList.removeIf(new MultiSIMController$$ExternalSyntheticLambda0(null, 0));
                    return;
                }
            }
        }
    }

    public final void reverseSlotIfNeed(MultiSIMData multiSIMData) {
        if (this.mIsSlotReversed) {
            multiSIMData.defaultDataSimId = 1 - multiSIMData.defaultDataSimId;
            int i = multiSIMData.defaultVoiceSimId;
            if (i == 1 || i == 2) {
                multiSIMData.defaultVoiceSimId = 3 - i;
            }
            multiSIMData.defaultSmsSimId = 1 - multiSIMData.defaultSmsSimId;
            int[] iArr = multiSIMData.simImageIdx;
            int i2 = iArr[0];
            String[] strArr = multiSIMData.simName;
            String str = strArr[0];
            String[] strArr2 = multiSIMData.phoneNumber;
            String str2 = strArr2[0];
            String[] strArr3 = multiSIMData.carrierName;
            String str3 = strArr3[0];
            boolean[] zArr = multiSIMData.isESimSlot;
            boolean z = zArr[0];
            iArr[0] = iArr[1];
            strArr[0] = strArr[1];
            strArr2[0] = strArr2[1];
            strArr3[0] = strArr3[1];
            zArr[0] = zArr[1];
            iArr[1] = i2;
            strArr[1] = str;
            strArr2[1] = str2;
            strArr3[1] = str3;
            zArr[1] = z;
        }
    }

    public final void setDefaultSlot(ButtonType buttonType, int i) {
        int i2 = i;
        ButtonType buttonType2 = ButtonType.VOICE;
        if (buttonType != buttonType2) {
            if (this.mIsSlotReversed) {
                i2 = 1 - i2;
            }
        } else if ((i2 == 1 || i2 == 2) && this.mIsSlotReversed) {
            i2 = 3 - i2;
        }
        Log.e("MultiSIMController", "setDefaultSlot : type = " + buttonType + ", slotId = " + i2);
        ButtonType buttonType3 = ButtonType.DATA;
        if (buttonType == buttonType3) {
            MultiSIMData multiSIMData = this.mData;
            if (i2 != multiSIMData.defaultDataSimId) {
                multiSIMData.changingDataInternally = true;
            }
        }
        Context context = this.mContext;
        String str = "PREFERRED_MOBILE_DATA";
        if (SimCardManagerServiceProvider.isServiceRunningCheck(context)) {
            int index = buttonType.getIndex();
            try {
                Bundle bundle = new Bundle();
                if (index == 0) {
                    bundle.putString("changeType", "PREFERRED_VOICE_CALLS");
                } else if (index == 1) {
                    bundle.putString("changeType", "PREFERRED_TEXT_MESSAGES");
                } else if (index == 2) {
                    bundle.putString("changeType", "PREFERRED_MOBILE_DATA");
                    SimCardManagerServiceProvider.mIsRemainCallbackCall = true;
                }
                Log.d("SimCardManagerServiceProvider", "setChangeSimCardManagerSlot : mIsRemainCallbackCall = " + SimCardManagerServiceProvider.mIsRemainCallbackCall);
                bundle.putInt("selectItem", i2);
                Bundle call = SimCardManagerServiceProvider.mContext.getContentResolver().call(SimCardManagerServiceProvider.INTERNAL_URI, "quickpanel_simcard_change", (String) null, bundle);
                if (call == null) {
                    Log.d("SimCardManagerServiceProvider", "bundle is null : quickpanel_simcard_change");
                    return;
                } else {
                    call.getBoolean("success");
                    return;
                }
            } catch (Throwable th) {
                Log.e("SimCardManagerServiceProvider", th.toString());
                return;
            }
        }
        Log.e("MultiSIMController", "setDefaultSlotByMethodCall");
        if (buttonType == buttonType2) {
            str = "PREFERRED_VOICE_CALLS";
        } else if (buttonType == ButtonType.SMS) {
            str = "PREFERRED_TEXT_MESSAGES";
        } else if (buttonType != buttonType3) {
            str = null;
        }
        try {
            Bundle bundle2 = new Bundle();
            bundle2.putString("changeType", str);
            bundle2.putInt("selectItem", i2);
            Bundle call2 = context.getContentResolver().call(INTERNAL_URI, "quickpanel_simcard_change", (String) null, bundle2);
            if (call2 == null) {
                Log.d("MultiSIMController", "bundle is null : quickpanel_simcard_change");
            } else {
                Log.d("MultiSIMController", "quickpanel_simcard_change, " + call2.getBoolean("success") + ", " + ((Throwable) call2.getParcelable("error")));
            }
        } catch (Throwable th2) {
            Log.e("MultiSIMController", "quickpanel_simcard_change, " + th2);
        }
        this.mSimCardManagerService = SimCardManagerServiceProvider.getService(context);
    }

    public final void updateCarrierNameAndPhoneNumber(boolean z) {
        String str;
        Context context = this.mContext;
        if (z) {
            this.mNetworkNameDefault = context.getString(android.R.string.quick_contacts_not_available);
            this.mUnknownPhoneNumber = context.getString(R.string.qs_multisim_unknown_number);
            this.mInvalidSimInfo = context.getString(R.string.qs_multisim_invalid_sim_info);
        }
        for (int i = 0; i < 2; i++) {
            SubscriptionInfo activeSubscriptionInfoForSimSlotIndex = SubscriptionManager.from(context).getActiveSubscriptionInfoForSimSlotIndex(i);
            if (activeSubscriptionInfoForSimSlotIndex != null) {
                String[] strArr = this.mData.carrierName;
                if (activeSubscriptionInfoForSimSlotIndex.getCarrierName() != null && activeSubscriptionInfoForSimSlotIndex.getCarrierName().length() > 0) {
                    str = activeSubscriptionInfoForSimSlotIndex.getCarrierName().toString();
                } else {
                    str = this.mNetworkNameDefault;
                }
                strArr[i] = str;
            }
        }
        updatePhoneNumberWhenNeeded();
    }

    public final void updateCurrentDefaultSlot(ButtonType buttonType) {
        int currentVoiceSlotByMethodCall;
        if (!this.mUIVisible) {
            ArrayList arrayList = this.mDefaultIdUpdateList;
            if (!arrayList.contains(buttonType)) {
                arrayList.add(buttonType);
            }
            Log.d("MultiSIMController", "updateCurrentDefaultSlot later type = " + buttonType);
            return;
        }
        int i = AnonymousClass14.$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[buttonType.ordinal()];
        boolean z = true;
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    this.mData.defaultDataSimId = SubscriptionManager.getPhoneId(SubscriptionManager.getDefaultDataSubscriptionId());
                    RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("updateCurrentDefaultSlot : data = "), this.mData.defaultDataSimId, "MultiSIMController");
                }
            } else {
                this.mData.defaultSmsSimId = SubscriptionManager.getPhoneId(SubscriptionManager.getDefaultSmsSubscriptionId());
                RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("updateCurrentDefaultSlot : sms = "), this.mData.defaultSmsSimId, "MultiSIMController");
            }
        } else {
            try {
                if (this.mSimCardManagerService == null || !SimCardManagerServiceProvider.isServiceRunningCheck(this.mContext)) {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                MultiSIMData multiSIMData = this.mData;
                if (valueOf.booleanValue()) {
                    currentVoiceSlotByMethodCall = this.mSimCardManagerService.GetCurrentVoiceCall();
                } else {
                    currentVoiceSlotByMethodCall = getCurrentVoiceSlotByMethodCall();
                }
                multiSIMData.defaultVoiceSimId = currentVoiceSlotByMethodCall;
                Log.d("MultiSIMController", "updateCurrentDefaultSlot : voice = " + this.mData.defaultVoiceSimId + " " + valueOf);
            } catch (Exception e) {
                Log.e("MultiSIMController", "Caught exception from updateCurrentDefaultSlot", e);
            }
        }
        notifyDataToCallback();
    }

    public final void updateMultiSimReadyState(boolean z) {
        boolean z2;
        int i;
        Context context = this.mContext;
        boolean z3 = true;
        if (z) {
            int i2 = 0;
            for (int i3 = 0; i3 < DeviceState.sPhoneCount; i3++) {
                if ("LOADED".equals(DeviceState.getMSimSystemProperty(i3, "gsm.sim.state", "NOT_READY"))) {
                    if (i3 == 0) {
                        i = Settings.Global.getInt(context.getContentResolver(), "phone1_on", 1);
                    } else {
                        i = Settings.Global.getInt(context.getContentResolver(), "phone2_on", 1);
                    }
                    if (i != 0) {
                        i2++;
                    }
                }
            }
            if (i2 == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.mIsLoadedMultiSim = z2;
        }
        if (this.mIsLoadedMultiSim && this.mNeedCheckOpportunisticESim) {
            this.mHasOpportunisticESim = false;
            List<SubscriptionInfo> completeActiveSubscriptionInfoList = SubscriptionManager.from(context).getCompleteActiveSubscriptionInfoList();
            if (completeActiveSubscriptionInfoList.size() == 2) {
                SubscriptionInfo subscriptionInfo = completeActiveSubscriptionInfoList.get(0);
                SubscriptionInfo subscriptionInfo2 = completeActiveSubscriptionInfoList.get(1);
                if (subscriptionInfo.getGroupUuid() != null && subscriptionInfo.getGroupUuid().equals(subscriptionInfo2.getGroupUuid()) && (subscriptionInfo.isOpportunistic() || subscriptionInfo2.isOpportunistic())) {
                    this.mHasOpportunisticESim = true;
                }
            }
            this.mNeedCheckOpportunisticESim = false;
            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("updateMultiSimReadyState: mHasOpportunisticESim = "), this.mHasOpportunisticESim, "MultiSIMController");
        }
        MultiSIMData multiSIMData = this.mData;
        if (!this.mIsLoadedMultiSim || this.mHasOpportunisticESim) {
            z3 = false;
        }
        multiSIMData.isMultiSimReady = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab A[EDGE_INSN: B:24:0x00ab->B:25:0x00ab BREAK  A[LOOP:2: B:15:0x0055->B:56:0x00a8], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updatePhoneNumberWhenNeeded() {
        /*
            Method dump skipped, instructions count: 359
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.settings.multisim.MultiSIMController.updatePhoneNumberWhenNeeded():void");
    }

    public final void updateSimSlotType() {
        int i = 0;
        while (true) {
            boolean[] zArr = this.mData.isESimSlot;
            if (i < zArr.length) {
                zArr[i] = DeviceState.isESIM(i, this.mContext);
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateSimSlotType() - sim slot ", i, " is eSim: ");
                m.append(this.mData.isESimSlot[i]);
                Log.d("MultiSIMController", m.toString());
                i++;
            } else {
                return;
            }
        }
    }
}
