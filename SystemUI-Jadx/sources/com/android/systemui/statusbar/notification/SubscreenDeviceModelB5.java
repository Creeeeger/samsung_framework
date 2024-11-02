package com.android.systemui.statusbar.notification;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.VectorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.StyleSpan;
import android.util.Log;
import android.util.Property;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.DateTimeView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.picker.adapter.AbsAdapter$1$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.android.app.animation.Interpolators;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.utils.ThreadUtils;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.bixby2.controller.NotificationController;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.settings.UserContextProvider;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.notification.SubscreenDeviceModelB5;
import com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter;
import com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter;
import com.android.systemui.statusbar.notification.SubscreenNotificationInfo;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManager;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.subscreen.SubHomeActivity;
import com.android.systemui.subscreen.SubScreenManager;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.samsung.android.desktopsystemui.sharedlib.system.ActivityManagerWrapper;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.sec.ims.gls.GlsIntent;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import noticolorpicker.NotificationColorPicker;
import notification.src.com.android.systemui.BasePromptProcessor;
import notification.src.com.android.systemui.CloudPromptProcessor;
import notification.src.com.android.systemui.SrPromptProcessor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenDeviceModelB5 extends SubscreenDeviceModelCommon {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final String DISPLAY_LANG_CODE_DELIMITER;
    public final String SR_LLM_PACKAGE_NAME;
    public ImageView aiDisclaimerBtn;
    public final SubscreenDeviceModelB5$aodTspUpdateReceiver$1 aodTspUpdateReceiver;
    public final SubscreenDeviceModelB5$broadcastReceiver$1 broadcastReceiver;
    public TextView callBackButtonText;
    public int childGraduateAge;
    public TextView clearButtonText;
    public Account currentAccount;
    public LinearLayout detailButtonContainer;
    public SubscreenNotificationDetailAdapter.ItemViewHolder detailViewHolder;
    public boolean isAiInfoConfirmed;
    public boolean isChildAccount;
    public final boolean isDebug;
    public boolean isPossibleAiReply;
    public boolean isRDUMode;
    public boolean isSALoggedIn;
    public boolean isSuggestResponsesEnabled;
    public boolean isUnusableAccount;
    public ImageView keyboardReplyButton;
    public SubscreenNotificationDialog mDialog;
    public View mHeaderViewLayout;
    public boolean mIsClickedPopupKeyguardUnlockShowing;
    public boolean mIsContentScroll;
    public boolean mIsNaviBarBackButtonClicked;
    public boolean mIsReplySendButtonLoading;
    public boolean mIsStartedReplyActivity;
    public final KeyguardActionInfo mKeyguardActionInfo;
    public SpringAnimation mProgressScaleAnimationX;
    public SpringAnimation mProgressScaleAnimationY;
    public final StringBuilder mPromptSB;
    public final StringBuilder mPromptSBForLog;
    public float mReplyLayoutCurrentPostionY;
    public boolean mSmartReplyClickedByUser;
    public final LinkedHashMap mSmartReplyHashMap;
    public int mSmartReplyResult;
    public StringBuilder mSmartReplyResultCompleteMsg;
    public String mSmartReplyResultFailureMsg;
    public final BasePromptProcessor mSrPromptProcessor;
    public final SubscreenDeviceModelB5$mSrResponseCallback$1 mSrResponseCallback;
    public String mUnlockNotificationPendingIntentItemKey;
    public String metaData;
    public final List onDeviceLanguageList;
    public TextView openAppButtonText;
    public final SubscreenDeviceModelB5$pkgBroadcastReceiver$1 pkgBroadcastReceiver;
    public LinearLayout progressLayout;
    public LottieAnimationView progressingVi;
    public TextView replyButtonText;
    public PopupWindow sendButtonPopupWindow;
    public TextView smartReplyAiLogoText;
    public TextView smartReplyErrorMessageView;
    public int smartReplyStatus;
    public ImageView smartReplyTriggerBtn;
    public TextView smartReplyTriggerBtnText;
    public LinearLayout suggestResponsesBtn;
    public CharSequence titleText;

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
    public final class KeyguardActionInfo {
        public boolean isShowBouncer;
        public int mAction;
        public Context mContext;
        public SubscreenNotificationDetailAdapter.ItemViewHolder mDetailAdapterItemViewHolder;
        public NotificationEntry mEntry;
        public SubscreenParentItemViewHolder mSubscreenParentItemViewHolder;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        static {
            new Companion(null);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LlmLanguage {
        public String language;
        public String languageDisplayName;
        public int order;
        public boolean supportCorrection;
        public boolean supportReply;
        public boolean supportToneConversion;

        public LlmLanguage() {
            this(0, null, null, false, false, false, 63, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LlmLanguage)) {
                return false;
            }
            LlmLanguage llmLanguage = (LlmLanguage) obj;
            if (this.order == llmLanguage.order && Intrinsics.areEqual(this.language, llmLanguage.language) && Intrinsics.areEqual(this.languageDisplayName, llmLanguage.languageDisplayName) && this.supportToneConversion == llmLanguage.supportToneConversion && this.supportCorrection == llmLanguage.supportCorrection && this.supportReply == llmLanguage.supportReply) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int m = AppInfo$$ExternalSyntheticOutline0.m(this.languageDisplayName, AppInfo$$ExternalSyntheticOutline0.m(this.language, Integer.hashCode(this.order) * 31, 31), 31);
            boolean z = this.supportToneConversion;
            int i = 1;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            int i3 = (m + i2) * 31;
            boolean z2 = this.supportCorrection;
            int i4 = z2;
            if (z2 != 0) {
                i4 = 1;
            }
            int i5 = (i3 + i4) * 31;
            boolean z3 = this.supportReply;
            if (!z3) {
                i = z3 ? 1 : 0;
            }
            return i5 + i;
        }

        public final String toString() {
            int i = this.order;
            String str = this.language;
            String str2 = this.languageDisplayName;
            boolean z = this.supportToneConversion;
            boolean z2 = this.supportCorrection;
            boolean z3 = this.supportReply;
            StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("LlmLanguage(order=", i, ", language=", str, ", languageDisplayName=");
            m.append(str2);
            m.append(", supportToneConversion=");
            m.append(z);
            m.append(", supportCorrection=");
            m.append(z2);
            m.append(", supportReply=");
            m.append(z3);
            m.append(")");
            return m.toString();
        }

        public LlmLanguage(int i, String str, String str2, boolean z, boolean z2, boolean z3) {
            this.order = i;
            this.language = str;
            this.languageDisplayName = str2;
            this.supportToneConversion = z;
            this.supportCorrection = z2;
            this.supportReply = z3;
        }

        public /* synthetic */ LlmLanguage(int i, String str, String str2, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? -1 : i, (i2 & 2) != 0 ? "" : str, (i2 & 4) == 0 ? str2 : "", (i2 & 8) != 0 ? true : z, (i2 & 16) != 0 ? true : z2, (i2 & 32) != 0 ? true : z3);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SmartReplyData {
        public String prevPrompt;
        public String replyText;
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$broadcastReceiver$1, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$pkgBroadcastReceiver$1, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$aodTspUpdateReceiver$1] */
    public SubscreenDeviceModelB5(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, SettingsHelper settingsHelper, UserContextProvider userContextProvider, SubscreenNotificationController subscreenNotificationController, Lazy lazy, CommonNotifCollection commonNotifCollection, LogBuffer logBuffer, NotificationInterruptStateProvider notificationInterruptStateProvider, Lazy lazy2, Lazy lazy3, NotificationVisibilityProvider notificationVisibilityProvider, BindEventManager bindEventManager, NotificationController notificationController, UserManager userManager, ConversationNotificationManager conversationNotificationManager) {
        super(context, keyguardUpdateMonitor, settingsHelper, userContextProvider, subscreenNotificationController, lazy, commonNotifCollection, logBuffer, notificationInterruptStateProvider, lazy2, lazy3, notificationVisibilityProvider, bindEventManager, notificationController, userManager, conversationNotificationManager);
        boolean z;
        BasePromptProcessor srPromptProcessor;
        if (DeviceType.getDebugLevel() != 1 && DeviceType.getDebugLevel() != 2) {
            z = false;
        } else {
            z = true;
        }
        this.isDebug = z;
        this.mIsContentScroll = true;
        this.titleText = "";
        this.mPromptSB = new StringBuilder();
        this.mPromptSBForLog = new StringBuilder();
        this.mSmartReplyHashMap = new LinkedHashMap();
        ?? r1 = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$broadcastReceiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter;
                Log.d("S.S.N.", "receive " + intent.getAction());
                if (Intrinsics.areEqual(intent.getAction(), "android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                    if (Intrinsics.areEqual(intent.getStringExtra("reason"), ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY)) {
                        SubscreenSubRoomNotification subscreenSubRoomNotification = SubscreenDeviceModelB5.this.mSubRoomNotification;
                        if (subscreenSubRoomNotification != null && (subscreenNotificationDetailAdapter = subscreenSubRoomNotification.mNotificationDetailAdapter) != null) {
                            subscreenNotificationDetailAdapter.dismissReplyButtons(true);
                        }
                        SubscreenDeviceModelB5.this.closeFullscreenFullPopupWindow();
                        return;
                    }
                    return;
                }
                if (Intrinsics.areEqual(intent.getAction(), "com.samsung.android.action.UNLOCK_NOTIFICATION_PENDING_INTENT")) {
                    SubscreenDeviceModelB5 subscreenDeviceModelB5 = SubscreenDeviceModelB5.this;
                    if (!subscreenDeviceModelB5.mIsFolded) {
                        subscreenDeviceModelB5.mUnlockNotificationPendingIntentItemKey = intent.getStringExtra("key");
                        return;
                    }
                    return;
                }
                if (Intrinsics.areEqual(intent.getAction(), "com.samsung.android.action.INTELLIGENCE_SERVICE_SETTINGS_START_INTENT")) {
                    if (!SubscreenDeviceModelB5.this.mIsFolded) {
                        Intent intent2 = new Intent();
                        intent2.setFlags(335544320);
                        intent2.setClassName("com.android.systemui", "com.android.systemui.statusbar.notification.SubscreenNotificationIntelligenceStartActivity");
                        SubscreenDeviceModelB5.this.mContext.startActivityAsUser(intent2, UserHandle.CURRENT);
                        return;
                    }
                    return;
                }
                if (Intrinsics.areEqual(intent.getAction(), "com.samsung.android.action.INTELLIGENCE_SERVICE_PROCESSING_ONLINE_INTENT") && !SubscreenDeviceModelB5.this.mIsFolded) {
                    Intent intent3 = new Intent();
                    intent3.setFlags(335544320);
                    intent3.setAction("com.samsung.android.settings.action.INTELLIGENCE_SERVICE_GLOBAL_SETTINGS");
                    intent3.setPackage(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG);
                    Bundle bundle = new Bundle();
                    bundle.putString(":settings:fragment_args_key", "prevent_online_processing");
                    intent3.putExtra(":settings:show_fragment_args", bundle);
                    SubscreenDeviceModelB5.this.mContext.startActivityAsUser(intent3, UserHandle.CURRENT);
                }
            }
        };
        this.broadcastReceiver = r1;
        ?? r3 = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$pkgBroadcastReceiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                Log.d("S.S.N.", "receive " + intent.getAction());
                if (Intrinsics.areEqual(intent.getAction(), "android.intent.action.PACKAGE_ADDED") || Intrinsics.areEqual(intent.getAction(), "android.intent.action.PACKAGE_REPLACED") || Intrinsics.areEqual(intent.getAction(), "android.intent.action.PACKAGE_REMOVED")) {
                    String dataString = intent.getDataString();
                    boolean z2 = false;
                    if (dataString != null && StringsKt__StringsKt.contains(dataString, SubscreenDeviceModelB5.this.SR_LLM_PACKAGE_NAME, false)) {
                        z2 = true;
                    }
                    if (z2) {
                        Log.d("S.S.N.", "package intent received - loadOnDeviceMetaData again");
                        SubscreenDeviceModelB5 subscreenDeviceModelB5 = SubscreenDeviceModelB5.this;
                        subscreenDeviceModelB5.metaData = null;
                        subscreenDeviceModelB5.loadOnDeviceMetaData();
                    }
                }
            }
        };
        this.pkgBroadcastReceiver = r3;
        this.aodTspUpdateReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$aodTspUpdateReceiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                Integer num;
                float[] fArr;
                String str;
                String str2 = null;
                if (intent != null) {
                    num = Integer.valueOf(intent.getIntExtra("info", -1));
                } else {
                    num = null;
                }
                if (intent != null) {
                    fArr = intent.getFloatArrayExtra(GlsIntent.Extras.EXTRA_LOCATION);
                } else {
                    fArr = null;
                }
                if (intent != null) {
                    str = intent.getAction();
                } else {
                    str = null;
                }
                Log.d("S.S.N.", "aodTspUpdateReceiver onReceive() action = " + str + ", info = " + num);
                if (num == null || num.intValue() != 11) {
                    Log.d("S.S.N.", "aodTspUpdateReceiver onReceive() return - not double tap");
                    return;
                }
                if (fArr != null) {
                    SubscreenDeviceModelB5 subscreenDeviceModelB5 = SubscreenDeviceModelB5.this;
                    if (fArr.length != 2) {
                        Log.d("S.S.N.", "aodTspUpdateReceiver onReceive() return - There is no [x,y position] value");
                        return;
                    }
                    NotificationEntry notificationEntry = subscreenDeviceModelB5.currentPresentationEntry;
                    if (notificationEntry != null) {
                        str2 = notificationEntry.mKey;
                    }
                    float f = fArr[0];
                    float f2 = fArr[1];
                    StringBuilder sb = new StringBuilder("aodTspUpdateReceiver onReceive() - detailclicked(");
                    sb.append(str2);
                    sb.append("), loc = ");
                    sb.append(f);
                    sb.append(" : ");
                    SeslColorSpectrumView$$ExternalSyntheticOutline0.m(sb, f2, "S.S.N.");
                    subscreenDeviceModelB5.mIsContentScroll = true;
                    subscreenDeviceModelB5.detailClicked(subscreenDeviceModelB5.currentPresentationEntry);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        intentFilter.addAction("com.samsung.android.action.UNLOCK_NOTIFICATION_PENDING_INTENT");
        intentFilter.addAction("com.samsung.android.action.INTELLIGENCE_SERVICE_SETTINGS_START_INTENT");
        boolean z2 = NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA;
        if (z2) {
            intentFilter.addAction("com.samsung.android.action.INTELLIGENCE_SERVICE_PROCESSING_ONLINE_INTENT");
        }
        context.registerReceiverAsUser(r1, UserHandle.ALL, intentFilter, null, null, 2);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter2.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter2.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter2.addDataScheme("package");
        context.registerReceiverAsUser(r3, UserHandle.ALL, intentFilter2, null, null, 2);
        KeyguardStateController keyguardStateController = (KeyguardStateController) Dependency.get(KeyguardStateController.class);
        this.mKeyguardStateController = keyguardStateController;
        if (keyguardStateController != null) {
            ((KeyguardStateControllerImpl) keyguardStateController).addCallback(new KeyguardStateController.Callback() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$initKeyguardStateConroller$1
                @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
                public final void onKeyguardShowingChanged() {
                    NotificationEntry entry;
                    Boolean bool;
                    Boolean bool2;
                    Boolean bool3;
                    Integer num;
                    boolean z3;
                    Integer num2;
                    Context context2;
                    SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder;
                    SubscreenParentItemViewHolder subscreenParentItemViewHolder;
                    NotificationEntry notificationEntry;
                    SubscreenParentItemViewHolder subscreenParentItemViewHolder2;
                    SubscreenSubRoomNotificaitonAnimatorManager subscreenSubRoomNotificaitonAnimatorManager;
                    SubscreenParentItemViewHolder subscreenParentItemViewHolder3;
                    SubscreenNotificationInfo subscreenNotificationInfo;
                    ExpandableNotificationRow expandableNotificationRow;
                    NotificationEntry notificationEntry2;
                    NotificationEntry notificationEntry3;
                    NotificationEntry notificationEntry4;
                    NotificationEntry notificationEntry5;
                    boolean z4;
                    SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter;
                    SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter2;
                    boolean z5;
                    SubscreenDeviceModelB5 subscreenDeviceModelB5 = SubscreenDeviceModelB5.this;
                    SubscreenNotificationDialog subscreenNotificationDialog = subscreenDeviceModelB5.mDialog;
                    if (subscreenNotificationDialog != null) {
                        subscreenNotificationDialog.dismiss();
                    }
                    boolean z6 = subscreenDeviceModelB5.mIsFolded;
                    SubscreenDeviceModelB5.KeyguardActionInfo keyguardActionInfo = subscreenDeviceModelB5.mKeyguardActionInfo;
                    boolean z7 = true;
                    if (z6) {
                        KeyguardStateController keyguardStateController2 = subscreenDeviceModelB5.mKeyguardStateController;
                        if (keyguardStateController2 != null) {
                            bool = Boolean.valueOf(((KeyguardStateControllerImpl) keyguardStateController2).mSecure);
                        } else {
                            bool = null;
                        }
                        KeyguardStateController keyguardStateController3 = subscreenDeviceModelB5.mKeyguardStateController;
                        if (keyguardStateController3 != null) {
                            bool2 = Boolean.valueOf(((KeyguardStateControllerImpl) keyguardStateController3).mShowing);
                        } else {
                            bool2 = null;
                        }
                        KeyguardStateController keyguardStateController4 = subscreenDeviceModelB5.mKeyguardStateController;
                        if (keyguardStateController4 != null) {
                            bool3 = Boolean.valueOf(keyguardStateController4.isUnlocked());
                        } else {
                            bool3 = null;
                        }
                        if (keyguardActionInfo != null) {
                            num = Integer.valueOf(keyguardActionInfo.mAction);
                        } else {
                            num = null;
                        }
                        Log.d("S.S.N.", " onKeyguardShowingChanged() isMethodSecure : " + bool + ", isShowing: " + bool2 + ", isUnlocked : " + bool3 + ", getAction() : " + num);
                        if (!subscreenDeviceModelB5.isKeyguardStats()) {
                            if (keyguardActionInfo != null && keyguardActionInfo.isShowBouncer) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                KeyguardStateController keyguardStateController5 = subscreenDeviceModelB5.mKeyguardStateController;
                                if (keyguardStateController5 != null && !((KeyguardStateControllerImpl) keyguardStateController5).mShowing) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (z5 && keyguardActionInfo != null) {
                                    keyguardActionInfo.isShowBouncer = false;
                                }
                            }
                            if (subscreenDeviceModelB5.isShownDetail()) {
                                SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelB5.mSubRoomNotification;
                                if (subscreenSubRoomNotification != null && (subscreenNotificationDetailAdapter2 = subscreenSubRoomNotification.mNotificationDetailAdapter) != null && subscreenNotificationDetailAdapter2.mCallbackClicked) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (z4) {
                                    subscreenDeviceModelB5.hideDetailNotification();
                                    SubscreenSubRoomNotification subscreenSubRoomNotification2 = subscreenDeviceModelB5.mSubRoomNotification;
                                    if (subscreenSubRoomNotification2 != null && (subscreenNotificationDetailAdapter = subscreenSubRoomNotification2.mNotificationDetailAdapter) != null) {
                                        subscreenNotificationDetailAdapter.cleanAdapter();
                                    }
                                }
                            }
                            if (keyguardActionInfo != null) {
                                num2 = Integer.valueOf(keyguardActionInfo.mAction);
                            } else {
                                num2 = null;
                            }
                            if (num2 != null && num2.intValue() == 4) {
                                if (keyguardActionInfo != null) {
                                    notificationEntry2 = keyguardActionInfo.mEntry;
                                } else {
                                    notificationEntry2 = null;
                                }
                                if (notificationEntry2 != null) {
                                    if (keyguardActionInfo != null) {
                                        notificationEntry3 = keyguardActionInfo.mEntry;
                                    } else {
                                        notificationEntry3 = null;
                                    }
                                    boolean clickKnoxItem = subscreenDeviceModelB5.clickKnoxItem(notificationEntry3);
                                    if (clickKnoxItem) {
                                        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(" isClickedKnoxItem :", clickKnoxItem, "S.S.N.");
                                        if (keyguardActionInfo != null) {
                                            notificationEntry5 = keyguardActionInfo.mEntry;
                                        } else {
                                            notificationEntry5 = null;
                                        }
                                        subscreenDeviceModelB5.dismissImmediately(notificationEntry5);
                                    } else {
                                        if (keyguardActionInfo != null) {
                                            notificationEntry4 = keyguardActionInfo.mEntry;
                                        } else {
                                            notificationEntry4 = null;
                                        }
                                        subscreenDeviceModelB5.detailClicked(notificationEntry4);
                                    }
                                }
                            } else if (num2 != null && num2.intValue() == 1) {
                                if (keyguardActionInfo != null) {
                                    subscreenParentItemViewHolder = keyguardActionInfo.mSubscreenParentItemViewHolder;
                                } else {
                                    subscreenParentItemViewHolder = null;
                                }
                                if (subscreenParentItemViewHolder != null) {
                                    if (keyguardActionInfo != null && (subscreenParentItemViewHolder3 = keyguardActionInfo.mSubscreenParentItemViewHolder) != null && (subscreenNotificationInfo = subscreenParentItemViewHolder3.mInfo) != null && (expandableNotificationRow = subscreenNotificationInfo.mRow) != null) {
                                        notificationEntry = expandableNotificationRow.mEntry;
                                    } else {
                                        notificationEntry = null;
                                    }
                                    boolean clickKnoxItem2 = subscreenDeviceModelB5.clickKnoxItem(notificationEntry);
                                    if (clickKnoxItem2) {
                                        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(" isClickedKnoxItem :", clickKnoxItem2, "S.S.N.");
                                    } else if (keyguardActionInfo != null && (subscreenParentItemViewHolder2 = keyguardActionInfo.mSubscreenParentItemViewHolder) != null) {
                                        SubscreenSubRoomNotification subscreenSubRoomNotification3 = subscreenDeviceModelB5.mSubRoomNotification;
                                        if (subscreenSubRoomNotification3 != null) {
                                            subscreenSubRoomNotificaitonAnimatorManager = subscreenSubRoomNotification3.mNotificationAnimatorManager;
                                        } else {
                                            subscreenSubRoomNotificaitonAnimatorManager = null;
                                        }
                                        subscreenParentItemViewHolder2.animateClickNotification(subscreenSubRoomNotificaitonAnimatorManager, subscreenSubRoomNotification3, false);
                                    }
                                }
                            } else if (num2 != null && num2.intValue() == 2) {
                                System.out.println((Object) "ACTION_KEYGUARD_BIO_LIST_HIDE_CONTENT");
                            } else if (num2 != null && num2.intValue() == 3) {
                                if (keyguardActionInfo != null) {
                                    context2 = keyguardActionInfo.mContext;
                                } else {
                                    context2 = null;
                                }
                                Intrinsics.checkNotNull(context2);
                                if (keyguardActionInfo != null) {
                                    itemViewHolder = keyguardActionInfo.mDetailAdapterItemViewHolder;
                                } else {
                                    itemViewHolder = null;
                                }
                                Intrinsics.checkNotNull(itemViewHolder);
                                SubscreenDeviceModelB5.access$showReplyActivity(subscreenDeviceModelB5, context2, itemViewHolder);
                            }
                        } else {
                            subscreenDeviceModelB5.clearMainList();
                        }
                    } else {
                        String str = subscreenDeviceModelB5.mUnlockNotificationPendingIntentItemKey;
                        if (str != null) {
                            KeyguardStateController keyguardStateController6 = subscreenDeviceModelB5.mKeyguardStateController;
                            if (keyguardStateController6 == null || ((KeyguardStateControllerImpl) keyguardStateController6).mShowing) {
                                z7 = false;
                            }
                            if (z7 && (entry = ((NotifPipeline) subscreenDeviceModelB5.mNotifCollection).getEntry(str)) != null && entry.row != null) {
                                ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Unlock click notification : "), entry.mKey, "S.S.N.");
                                NotificationActivityStarter notificationActivityStarter = subscreenDeviceModelB5.mNotificationActivityStarter;
                                if (notificationActivityStarter != null) {
                                    ((StatusBarNotificationActivityStarter) notificationActivityStarter).onNotificationClicked(entry, entry.row);
                                }
                            }
                        }
                        subscreenDeviceModelB5.mUnlockNotificationPendingIntentItemKey = null;
                    }
                    boolean z8 = subscreenDeviceModelB5.mIsClickedPopupKeyguardUnlockShowing;
                    if (!z8) {
                        if (keyguardActionInfo != null) {
                            keyguardActionInfo.mAction = 0;
                            keyguardActionInfo.mSubscreenParentItemViewHolder = null;
                            keyguardActionInfo.mContext = null;
                            return;
                        }
                        return;
                    }
                    KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onKeyguardShowingChanged - mIsClickedPopupKeyguardUnlockShowing : ", z8, "S.S.N.");
                }
            });
        }
        this.mKeyguardActionInfo = new KeyguardActionInfo();
        updateSmartReplyVariables();
        this.onDeviceLanguageList = new ArrayList();
        this.SR_LLM_PACKAGE_NAME = "com.samsung.android.offline.languagemodel";
        this.DISPLAY_LANG_CODE_DELIMITER = "-";
        this.isSuggestResponsesEnabled = true;
        this.mSmartReplyResult = -1;
        if (z2) {
            srPromptProcessor = new CloudPromptProcessor(this.mContext);
        } else {
            srPromptProcessor = new SrPromptProcessor(this.mContext);
        }
        this.mSrPromptProcessor = srPromptProcessor;
        this.mSrResponseCallback = new SubscreenDeviceModelB5$mSrResponseCallback$1(this);
    }

    public static final void access$handleTextLinkClick(SubscreenDeviceModelB5 subscreenDeviceModelB5, String str) {
        SubRoom.StateChangeListener stateChangeListener;
        subscreenDeviceModelB5.getClass();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://policies.account.samsung.com/terms?appKey=j5p7ll8g33" + "&applicationRegion=".concat(subscreenDeviceModelB5.getIsoCountryCode()) + KeyAttributes$$ExternalSyntheticOutline0.m("&language=", Locale.getDefault().getLanguage()) + "&region=".concat(subscreenDeviceModelB5.getIsoCountryCode()) + "&type=".concat(str)));
        intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
        PendingIntent activity = PendingIntent.getActivity(subscreenDeviceModelB5.mContext, 0, intent, 201326592);
        Intent intent2 = new Intent();
        intent2.putExtra("runOnCover", false);
        intent2.putExtra("ignoreKeyguardState", true);
        intent2.putExtra("showCoverToast", true);
        SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelB5.mSubRoomNotification;
        if (subscreenSubRoomNotification != null && (stateChangeListener = subscreenSubRoomNotification.mStateChangeListener) != null) {
            stateChangeListener.requestCoverPopup(activity, intent2);
        }
    }

    public static final void access$handleTurnOnClick(final SubscreenDeviceModelB5 subscreenDeviceModelB5) {
        SettingsHelper settingsHelper = subscreenDeviceModelB5.mSettingsHelper;
        settingsHelper.getClass();
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH) {
            Settings.Global.putInt(settingsHelper.mContext.getContentResolver(), "suggestion_responses", 1);
            settingsHelper.mItemLists.get("suggestion_responses").mIntValue = 1;
        }
        SettingsHelper settingsHelper2 = subscreenDeviceModelB5.mSettingsHelper;
        settingsHelper2.setSuggestResponsesUsed();
        subscreenDeviceModelB5.isSuggestResponsesEnabled = settingsHelper2.isSuggestResponsesEnabled();
        boolean isSmartReplyUnusable = subscreenDeviceModelB5.isSmartReplyUnusable();
        subscreenDeviceModelB5.isUnusableAccount = isSmartReplyUnusable;
        subscreenDeviceModelB5.isPossibleAiReply = !isSmartReplyUnusable;
        LinearLayout linearLayout = subscreenDeviceModelB5.suggestResponsesBtn;
        if (linearLayout == null) {
            linearLayout = null;
        }
        linearLayout.setVisibility(8);
        ImageView imageView = subscreenDeviceModelB5.smartReplyTriggerBtn;
        if (imageView != null) {
            imageView.post(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$handleTurnOnClick$1
                @Override // java.lang.Runnable
                public final void run() {
                    int i;
                    SubscreenRecyclerView subscreenRecyclerView;
                    SubscreenRecyclerView subscreenRecyclerView2;
                    LinearLayout linearLayout2 = SubscreenDeviceModelB5.this.detailButtonContainer;
                    if (linearLayout2 == null) {
                        linearLayout2 = null;
                    }
                    float y = linearLayout2.getY();
                    SubscreenSubRoomNotification subscreenSubRoomNotification = SubscreenDeviceModelB5.this.mSubRoomNotification;
                    if (subscreenSubRoomNotification != null && (subscreenRecyclerView2 = subscreenSubRoomNotification.mNotificationRecyclerView) != null) {
                        i = subscreenRecyclerView2.computeVerticalScrollOffset();
                    } else {
                        i = 0;
                    }
                    int i2 = ((int) y) - i;
                    if (i2 == 0) {
                        SubscreenDeviceModelB5.this.showAIReply();
                        return;
                    }
                    SubscreenSubRoomNotification subscreenSubRoomNotification2 = SubscreenDeviceModelB5.this.mSubRoomNotification;
                    if (subscreenSubRoomNotification2 != null && (subscreenRecyclerView = subscreenSubRoomNotification2.mNotificationRecyclerView) != null) {
                        subscreenRecyclerView.smoothScrollBy(0, i2, false);
                    }
                }
            });
        }
    }

    public static final boolean access$isSupportableLanguage(SubscreenDeviceModelB5 subscreenDeviceModelB5, String str) {
        subscreenDeviceModelB5.getClass();
        if (!NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA) {
            List list = subscreenDeviceModelB5.onDeviceLanguageList;
            if (list != null) {
                Iterator it = ((ArrayList) list).iterator();
                while (it.hasNext()) {
                    if (((LlmLanguage) it.next()).language.equals(str)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public static final void access$showReplyActivity(SubscreenDeviceModelB5 subscreenDeviceModelB5, final Context context, SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        if (subscreenDeviceModelB5.mIsStartedReplyActivity) {
            Log.d("S.S.N.", "showReplyActivity mIsStartedReplyActivity is true");
            return;
        }
        subscreenDeviceModelB5.mIsStartedReplyActivity = true;
        Display display = subscreenDeviceModelB5.mSubDisplay;
        if (display != null) {
            Bundle bundle = new Bundle();
            bundle.putString("key", itemViewHolder.mInfo.mKey);
            bundle.putInt("maxLength", itemViewHolder.mInfo.mRemoteInputMaxLength);
            bundle.putBoolean("isSms", itemViewHolder.mInfo.mRemoteInputIsSms);
            bundle.putString(com.samsung.android.knox.accounts.Account.SIGNATURE, itemViewHolder.mInfo.mRemoteInputSignature);
            final Intent intent = new Intent();
            intent.setFlags(335544320);
            intent.setClassName("com.android.systemui", "com.android.systemui.statusbar.notification.SubscreenNotificationReplyActivity");
            intent.putExtras(bundle);
            final ActivityOptions makeBasic = ActivityOptions.makeBasic();
            makeBasic.setLaunchDisplayId(display.getDisplayId());
            makeBasic.setForceLaunchWindowingMode(1);
            SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelB5.mSubRoomNotification;
            if (subscreenSubRoomNotification != null) {
                ObjectAnimator duration = ObjectAnimator.ofFloat(subscreenSubRoomNotification.mSubscreenMainLayout, (Property<LinearLayout, Float>) View.ALPHA, 1.0f, 0.0f).setDuration(300L);
                duration.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        context.startActivity(intent, makeBasic.toBundle());
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                });
                duration.start();
            }
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("start SubscreenNotificationReplyActivity. key: ", itemViewHolder.mInfo.mKey, "S.S.N.");
            SystemUIAnalytics.sendEventCDLog("QPN102", "QPNE0203", "app", itemViewHolder.mInfo.mPkg);
        }
    }

    public static void bindContent(View view, String str, SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        boolean z;
        TextView textView = (TextView) view.findViewById(R.id.detail_content_text);
        boolean z2 = true;
        if (str != null) {
            if (StringsKt__StringsKt.trim(str).toString().length() == 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                z2 = false;
            }
        }
        if (!z2) {
            textView.setVisibility(0);
            textView.setText(str);
            itemViewHolder.mBodyLayoutString = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(itemViewHolder.mBodyLayoutString, str);
        }
    }

    public static void bindTime(View view, long j, SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        if (j <= 0) {
            return;
        }
        DateTimeView findViewById = view.findViewById(R.id.detail_clock);
        findViewById.setVisibility(0);
        findViewById.setTime(j);
        itemViewHolder.mBodyLayoutString = itemViewHolder.mBodyLayoutString + ((Object) findViewById.getText());
    }

    public static boolean isCallNotification(NotificationEntry notificationEntry) {
        String str;
        Notification notification2;
        if (ArraysKt___ArraysKt.contains(new String[]{"com.skt.prod.dialer", "com.samsung.android.incallui"}, notificationEntry.mSbn.getPackageName()) && notificationEntry.mSbn.isOngoing()) {
            StatusBarNotification statusBarNotification = notificationEntry.mSbn;
            if (statusBarNotification != null && (notification2 = statusBarNotification.getNotification()) != null) {
                str = notification2.category;
            } else {
                str = null;
            }
            if ("call".equals(str)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static void showErrorMessageWithAnim(View view) {
        if (view != null) {
            view.setAlpha(0.0f);
            view.setVisibility(0);
            view.animate().alpha(1.0f).setDuration(200L).start();
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void cancelReplySendButtonAnimator() {
        this.sendButtonPopupWindow = null;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void clickAdapterItem(Context context, SubscreenParentItemViewHolder subscreenParentItemViewHolder) {
        SubscreenSubRoomNotificaitonAnimatorManager subscreenSubRoomNotificaitonAnimatorManager;
        if (isCallNotification(subscreenParentItemViewHolder.mInfo.mRow.mEntry)) {
            NotificationEntry notificationEntry = subscreenParentItemViewHolder.mInfo.mRow.mEntry;
            Log.d("S.S.N.", "callNotificationLaunchApp B5 - " + notificationEntry.mKey + ", result: " + startNotificationIntent(notificationEntry.mSbn.getNotification().contentIntent));
            SystemUIAnalytics.sendEventLog("QPN100", "QPNE0213");
            return;
        }
        if (subscreenParentItemViewHolder.mInfo.mSbn.getNotification().fullScreenIntent != null && !isLaunchApp(subscreenParentItemViewHolder.mInfo.mRow.mEntry)) {
            String str = subscreenParentItemViewHolder.mInfo.mSbn.getNotification().category;
            if (subscreenParentItemViewHolder.mInfo.mIsCall || "alarm".equals(str)) {
                NotificationEntry notificationEntry2 = subscreenParentItemViewHolder.mInfo.mRow.mEntry;
                StringBuilder sb = new StringBuilder("clickAdapterItem B5 - put fullscreenIntent : ");
                String str2 = notificationEntry2.mKey;
                ExifInterface$$ExternalSyntheticOutline0.m(sb, str2, "S.S.N.");
                this.mFullScreenIntentEntries.put(str2, notificationEntry2);
                makeSubScreenNotification(notificationEntry2);
                showSubscreenNotification();
                return;
            }
        }
        boolean isKeyguardStats = isKeyguardStats();
        KeyguardActionInfo keyguardActionInfo = this.mKeyguardActionInfo;
        if (isKeyguardStats && (subscreenParentItemViewHolder.mInfo.mRow.needsRedaction() || isLaunchApp(subscreenParentItemViewHolder.mInfo.mRow.mEntry))) {
            showBouncer(context, subscreenParentItemViewHolder.mInfo.mRow.mEntry);
            if (keyguardActionInfo != null) {
                keyguardActionInfo.mAction = 1;
                keyguardActionInfo.mSubscreenParentItemViewHolder = subscreenParentItemViewHolder;
                return;
            }
            return;
        }
        if (isKeyguardUnlockShowing()) {
            ((KeyguardManager) context.getSystemService("keyguard")).semDismissKeyguard();
            if (keyguardActionInfo != null) {
                keyguardActionInfo.mAction = 1;
                keyguardActionInfo.mSubscreenParentItemViewHolder = subscreenParentItemViewHolder;
                return;
            }
            return;
        }
        if (clickKnoxItem(subscreenParentItemViewHolder.mInfo.mRow.mEntry)) {
            Log.d("S.S.N.", " clickAdapterItem - clickKnoxItem is true");
            return;
        }
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null) {
            subscreenSubRoomNotificaitonAnimatorManager = subscreenSubRoomNotification.mNotificationAnimatorManager;
        } else {
            subscreenSubRoomNotificaitonAnimatorManager = null;
        }
        subscreenParentItemViewHolder.animateClickNotification(subscreenSubRoomNotificaitonAnimatorManager, subscreenSubRoomNotification, false);
    }

    public final boolean clickKnoxItem(NotificationEntry notificationEntry) {
        PendingIntent pendingIntent;
        SubRoom.StateChangeListener stateChangeListener;
        StatusBarNotification statusBarNotification;
        Notification notification2;
        Notification notification3;
        Intrinsics.checkNotNull(notificationEntry);
        Boolean valueOf = Boolean.valueOf(isKnoxSecurity(notificationEntry));
        Log.d("S.S.N.", " clickKnoxItem - isKnoxSecurity : " + valueOf);
        if (valueOf.booleanValue() && isLaunchApp(notificationEntry)) {
            StatusBarNotification statusBarNotification2 = notificationEntry.mSbn;
            PendingIntent pendingIntent2 = null;
            if (statusBarNotification2 != null && (notification3 = statusBarNotification2.getNotification()) != null) {
                pendingIntent = notification3.contentIntent;
            } else {
                pendingIntent = null;
            }
            if (pendingIntent != null && (statusBarNotification = notificationEntry.mSbn) != null && (notification2 = statusBarNotification.getNotification()) != null) {
                pendingIntent2 = notification2.contentIntent;
            }
            SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
            if (subscreenSubRoomNotification != null && (stateChangeListener = subscreenSubRoomNotification.mStateChangeListener) != null) {
                stateChangeListener.requestCoverPopup(pendingIntent2, notificationEntry.mKey);
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void closeFullscreenFullPopupWindow() {
        if (this.mPresentation != null) {
            LinkedHashMap linkedHashMap = this.mFullScreenIntentEntries;
            if (!linkedHashMap.isEmpty()) {
                linkedHashMap.clear();
                this.mIsFullscreenFullPopupWindowClosing = true;
                dismissImmediately(1);
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void detailClicked(NotificationEntry notificationEntry) {
        String str;
        String str2;
        String str3 = null;
        if (notificationEntry != null) {
            str = notificationEntry.mKey;
        } else {
            str = null;
        }
        Log.d("S.S.N.", " DETAIL CLICKED B5 - " + str);
        if (skipDetailClicked(notificationEntry)) {
            return;
        }
        closeFullscreenFullPopupWindow();
        if (isShownDetail()) {
            this.mIsContentScroll = true;
            PopupWindow popupWindow = this.sendButtonPopupWindow;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
        }
        SubscreenNotificationReplyActivity subscreenNotificationReplyActivity = this.mController.replyActivity;
        if (subscreenNotificationReplyActivity != null) {
            subscreenNotificationReplyActivity.finish();
        }
        boolean isKeyguardStats = isKeyguardStats();
        KeyguardActionInfo keyguardActionInfo = this.mKeyguardActionInfo;
        Context context = this.mContext;
        if (isKeyguardStats) {
            Intrinsics.checkNotNull(notificationEntry);
            if (notificationEntry.row.needsRedaction() || isLaunchApp(notificationEntry)) {
                showBouncer(context, notificationEntry);
                if (keyguardActionInfo != null) {
                    keyguardActionInfo.mAction = 4;
                    keyguardActionInfo.mEntry = notificationEntry;
                    return;
                }
                return;
            }
        }
        if (isKeyguardUnlockShowing()) {
            ((KeyguardManager) context.getSystemService("keyguard")).semDismissKeyguard();
            this.mIsClickedPopupKeyguardUnlockShowing = true;
            if (keyguardActionInfo != null) {
                keyguardActionInfo.mAction = 4;
                keyguardActionInfo.mEntry = notificationEntry;
            }
        } else if (clickKnoxItem(notificationEntry)) {
            Log.d("S.S.N.", " detailClicked - clickKnoxItem is true");
        } else {
            if (this.mIsClickedPopupKeyguardUnlockShowing) {
                this.mIsClickedPopupKeyguardUnlockShowing = false;
            }
            super.detailClicked(notificationEntry);
        }
        if (notificationEntry != null) {
            str2 = notificationEntry.mKey;
        } else {
            str2 = null;
        }
        NotificationEntry notificationEntry2 = this.currentPopupViewEntry;
        if (notificationEntry2 != null) {
            str3 = notificationEntry2.mKey;
        }
        if (StringsKt__StringsJVMKt.equals(str2, str3, false) || isCoverBriefAllowed(notificationEntry)) {
            ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).closeSubscreenPanel();
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        SubscreenRecyclerView subscreenRecyclerView;
        SubscreenSubRoomNotification subscreenSubRoomNotification;
        SubscreenRecyclerView subscreenRecyclerView2;
        View findFocus;
        boolean z2 = true;
        if (keyEvent.getKeyCode() != 20 && keyEvent.getKeyCode() != 19 && keyEvent.getKeyCode() != 61) {
            z = false;
        } else {
            z = true;
        }
        int action = keyEvent.getAction();
        int i = 2;
        if (action != 0) {
            if (action != 1) {
                return false;
            }
            if (keyEvent.getKeyCode() == 4 && this.mIsNaviBarBackButtonClicked) {
                return performBackClick();
            }
            if (!z) {
                return false;
            }
            keyEvent.getKeyCode();
            if (!isShownDetail() || (subscreenSubRoomNotification = this.mSubRoomNotification) == null || (subscreenRecyclerView2 = subscreenSubRoomNotification.mNotificationRecyclerView) == null || (findFocus = subscreenRecyclerView2.findFocus()) == null) {
                return false;
            }
            int[] iArr = new int[2];
            findFocus.getLocationOnScreen(iArr);
            int measuredHeight = findFocus.getMeasuredHeight() + iArr[1];
            int dimensionPixelSize = 720 - getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.subscreen_noti_cut_out_size_b5);
            if (measuredHeight > dimensionPixelSize) {
                subscreenRecyclerView2.smoothScrollBy(0, measuredHeight - dimensionPixelSize, false);
                return false;
            }
            int mainHeaderViewHeight = getMainHeaderViewHeight();
            int i2 = iArr[1];
            if (i2 >= mainHeaderViewHeight) {
                return false;
            }
            subscreenRecyclerView2.smoothScrollBy(0, i2 - mainHeaderViewHeight, false);
            return false;
        }
        if (keyEvent.getKeyCode() == 4) {
            this.mIsNaviBarBackButtonClicked = true;
            if (!isShownDetail() && !isShownGroup()) {
                z2 = false;
            }
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("dispatchKeyEvent() - navi back click, ret: ", z2, "S.S.N.");
            return z2;
        }
        if (!z) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (isShownDetail()) {
            return false;
        }
        if (keyCode != 20 && keyCode != 61) {
            z2 = false;
        }
        SubscreenSubRoomNotification subscreenSubRoomNotification2 = this.mSubRoomNotification;
        if (subscreenSubRoomNotification2 == null || (subscreenRecyclerView = subscreenSubRoomNotification2.mNotificationRecyclerView) == null) {
            return false;
        }
        int childAdapterPosition = RecyclerView.getChildAdapterPosition(subscreenRecyclerView.getFocusedChild());
        if (!z2) {
            i = -2;
        }
        subscreenRecyclerView.scrollToPosition(childAdapterPosition + i);
        return false;
    }

    public final void enableSmartReplyTriggerBtn(String str, boolean z) {
        final float f;
        boolean z2;
        float f2;
        final ImageView imageView = this.smartReplyTriggerBtn;
        float f3 = 1.0f;
        if (imageView != null) {
            float alpha = imageView.getAlpha();
            if (z) {
                f = 1.0f;
            } else {
                f = 0.4f;
            }
            boolean z3 = true;
            if (alpha == f) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                ViewPropertyAnimator animate = imageView.animate();
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.4f;
                }
                ViewPropertyAnimator duration = animate.alpha(f2).setDuration(200L);
                duration.withEndAction(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        imageView.setAlpha(f);
                    }
                });
                duration.start();
            }
            if (!Intrinsics.areEqual(str, "unsupportedLanguage") && !Intrinsics.areEqual(str, "emptyMessage")) {
                z3 = z;
            } else if (this.smartReplyStatus == 2) {
                z3 = false;
            }
            imageView.setEnabled(z3);
        }
        TextView textView = this.smartReplyTriggerBtnText;
        if (textView != null) {
            if (!z) {
                f3 = 0.4f;
            }
            textView.setAlpha(f3);
            textView.setEnabled(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r2 == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        r1 = r6.mSubRoomNotification;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r1 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
    
        r2 = r6.mNotificationActivityStarter;
        r1 = r1.mNotificationDetailAdapter;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
    
        if (r1 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
    
        if (r2 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0041, code lost:
    
        android.util.Log.e("SubscreenNotificationDetailAdapter", "notificationActivityStarter is null");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        if (r1.mSelectNotificationInfo == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
    
        android.util.Log.e("SubscreenNotificationDetailAdapter", "startNotificationActivity  mSelectNotificationInfo : " + r1.mSelectNotificationInfo.mKey);
        r3 = r1.mSelectNotificationInfo.mRow;
        ((com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter) r2).onNotificationClicked(r3.mEntry, r3);
        ((com.android.systemui.shade.ShadeControllerImpl) ((com.android.systemui.statusbar.phone.CentralSurfacesImpl) ((com.android.systemui.statusbar.phone.CentralSurfaces) com.android.systemui.Dependency.get(com.android.systemui.statusbar.phone.CentralSurfaces.class))).mShadeController).makeExpandedInvisible();
        r1.cleanAdapter();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0081, code lost:
    
        android.util.Log.e("SubscreenNotificationDetailAdapter", "startNotificationActivity no select holder...");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0087, code lost:
    
        r1 = r6.mSubRoomNotification;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0089, code lost:
    
        if (r1 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008d, code lost:
    
        if (r1.mIsShownDetail == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008f, code lost:
    
        r1 = r1.mNotificationDetailAdapter;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
    
        if (r1 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0093, code lost:
    
        r1 = r1.mSelectNotificationInfo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
    
        if (r1 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0097, code lost:
    
        r0 = r1.mPkg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
    
        com.android.systemui.util.SystemUIAnalytics.sendEventCDLog("QPN102", "QPNE0212", "app", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0031, code lost:
    
        if (r1 != false) goto L21;
     */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon, com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void foldStateChanged(boolean r7) {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            if (r7 != 0) goto La3
            java.lang.String r2 = r6.getTopActivityName()
            java.lang.String r3 = "com.android.systemui.subscreen.SubHomeActivity"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            r3 = 1
            if (r2 == 0) goto L24
            com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter$ItemViewHolder r2 = r6.detailViewHolder
            if (r2 == 0) goto L21
            android.view.View r2 = r2.itemView
            if (r2 == 0) goto L21
            boolean r2 = r2.hasWindowFocus()
            if (r2 != r3) goto L21
            r2 = r3
            goto L22
        L21:
            r2 = r1
        L22:
            if (r2 != 0) goto L33
        L24:
            com.android.systemui.statusbar.notification.SubscreenNotificationController r2 = r6.mController
            com.android.systemui.statusbar.notification.SubscreenNotificationReplyActivity r2 = r2.replyActivity
            if (r2 == 0) goto L31
            boolean r2 = r2.hasWindowFocus()
            if (r2 != r3) goto L31
            r1 = r3
        L31:
            if (r1 == 0) goto Lb4
        L33:
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r1 = r6.mSubRoomNotification
            if (r1 == 0) goto L87
            com.android.systemui.statusbar.notification.NotificationActivityStarter r2 = r6.mNotificationActivityStarter
            com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter r1 = r1.mNotificationDetailAdapter
            if (r1 == 0) goto L87
            java.lang.String r3 = "SubscreenNotificationDetailAdapter"
            if (r2 != 0) goto L47
            java.lang.String r1 = "notificationActivityStarter is null"
            android.util.Log.e(r3, r1)
            goto L87
        L47:
            com.android.systemui.statusbar.notification.SubscreenNotificationInfo r4 = r1.mSelectNotificationInfo
            if (r4 == 0) goto L81
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "startNotificationActivity  mSelectNotificationInfo : "
            r4.<init>(r5)
            com.android.systemui.statusbar.notification.SubscreenNotificationInfo r5 = r1.mSelectNotificationInfo
            java.lang.String r5 = r5.mKey
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            android.util.Log.e(r3, r4)
            com.android.systemui.statusbar.notification.SubscreenNotificationInfo r3 = r1.mSelectNotificationInfo
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r3 = r3.mRow
            com.android.systemui.statusbar.notification.collection.NotificationEntry r4 = r3.mEntry
            com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter r2 = (com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter) r2
            r2.onNotificationClicked(r4, r3)
            java.lang.Class<com.android.systemui.statusbar.phone.CentralSurfaces> r2 = com.android.systemui.statusbar.phone.CentralSurfaces.class
            java.lang.Object r2 = com.android.systemui.Dependency.get(r2)
            com.android.systemui.statusbar.phone.CentralSurfaces r2 = (com.android.systemui.statusbar.phone.CentralSurfaces) r2
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r2 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r2
            com.android.systemui.shade.ShadeController r2 = r2.mShadeController
            com.android.systemui.shade.ShadeControllerImpl r2 = (com.android.systemui.shade.ShadeControllerImpl) r2
            r2.makeExpandedInvisible()
            r1.cleanAdapter()
            goto L87
        L81:
            java.lang.String r1 = "startNotificationActivity no select holder..."
            android.util.Log.e(r3, r1)
        L87:
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r1 = r6.mSubRoomNotification
            if (r1 == 0) goto Lb4
            boolean r2 = r1.mIsShownDetail
            if (r2 == 0) goto Lb4
            com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter r1 = r1.mNotificationDetailAdapter
            if (r1 == 0) goto L99
            com.android.systemui.statusbar.notification.SubscreenNotificationInfo r1 = r1.mSelectNotificationInfo
            if (r1 == 0) goto L99
            java.lang.String r0 = r1.mPkg
        L99:
            java.lang.String r1 = "QPNE0212"
            java.lang.String r2 = "app"
            java.lang.String r3 = "QPN102"
            com.android.systemui.util.SystemUIAnalytics.sendEventCDLog(r3, r1, r2, r0)
            goto Lb4
        La3:
            r6.mIsClickedPopupKeyguardUnlockShowing = r1
            com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$KeyguardActionInfo r2 = r6.mKeyguardActionInfo
            if (r2 == 0) goto Laf
            r2.mAction = r1
            r2.mSubscreenParentItemViewHolder = r0
            r2.mContext = r0
        Laf:
            r6.mUnlockNotificationPendingIntentItemKey = r0
            r6.updateSmartReplyVariables()
        Lb4:
            super.foldStateChanged(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.foldStateChanged(boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ea, code lost:
    
        if (r9 == null) goto L80;
     */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getDetailAdapterAutoScrollCurrentPositionByReceive(android.view.View r9) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.getDetailAdapterAutoScrollCurrentPositionByReceive(android.view.View):int");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getDetailAdapterContentViewResource() {
        return R.layout.subscreen_notification_detail_adapter_content_layout_item_b5;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getDetailAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        int i2;
        if (i != 0) {
            if (i != 1) {
                i2 = -1;
            } else {
                i2 = R.layout.subscreen_notification_detail_adapter_text_item_b5;
            }
        } else {
            i2 = R.layout.subscreen_notification_detail_adapter_item_b5;
        }
        return LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getDetailAdapterReplyWordResource() {
        return R.layout.subscreen_notification_detail_adapter_content_layout_item_reply_word_b5;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getDispalyHeight() {
        return 720;
    }

    public final String getDisplayName(String str) {
        boolean z;
        if (str.length() == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return "";
        }
        String str2 = this.DISPLAY_LANG_CODE_DELIMITER;
        if (StringsKt__StringsKt.contains(str, str2, false)) {
            List split$default = StringsKt__StringsKt.split$default(str, new String[]{str2}, 0, 6);
            return new Locale((String) split$default.get(0), (String) split$default.get(1)).getDisplayName();
        }
        return new Locale(str).getDisplayName();
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getFullPopupWindowType() {
        if (this.mFullScreenIntentEntries.isEmpty()) {
            return 2026;
        }
        return 2040;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getGroupAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        int i2;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i != 5) {
                            i2 = -1;
                        } else {
                            i2 = R.layout.subscreen_notification_group_adapter_custom_view_b5;
                        }
                    } else {
                        i2 = R.layout.subscreen_notification_group_adapter_hide_content_b5;
                    }
                } else {
                    i2 = R.layout.subscreen_notification_adapter_header_b5;
                }
            } else {
                i2 = R.layout.subscreen_notification_adapter_clear_all_footer_b5;
            }
        } else {
            i2 = R.layout.subscreen_notification_group_adapter_item_b5;
        }
        View inflate = LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
        if (i != 1) {
            inflate.setBackground(getMDisplayContext().getDrawable(R.drawable.subscreen_notification_list_item_bg_selecter_b5));
        }
        return inflate;
    }

    public final String getHistoryInfo(SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        int size;
        boolean z;
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = itemViewHolder.mInfo.mMessageingStyleInfoArray;
        int size2 = arrayList.size();
        if ((!arrayList.isEmpty()) && ((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(size2 - 1)).mIsReply) {
            Log.d("S.S.N.", "getHistoryInfo() - this is reply notification. so do not call AI");
            return null;
        }
        StringBuilder sb2 = this.mPromptSBForLog;
        sb2.setLength(0);
        if (arrayList.size() - 7 < 0) {
            size = 0;
        } else {
            size = arrayList.size() - 7;
        }
        int size3 = arrayList.size();
        Date date = new Date(System.currentTimeMillis());
        while (size < size3) {
            SubscreenNotificationInfo.MessagingStyleInfo messagingStyleInfo = (SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(size);
            long j = messagingStyleInfo.mPostedTime;
            if (j <= 0) {
                j = messagingStyleInfo.mTimeStamp;
            }
            Date date2 = new Date(j);
            if (size >= size3 - 1 || (date.getYear() <= date2.getYear() && date.getMonth() <= date2.getMonth() && date.getDay() <= date2.getDay() && date.getHours() - date2.getHours() <= 1)) {
                if (NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA) {
                    boolean z2 = messagingStyleInfo.mIsReply;
                    Context context = this.mContext;
                    if (z2) {
                        sb.append(context.getString(R.string.subscreen_notification_smart_reply_user_for_chn));
                        sb2.append(context.getString(R.string.subscreen_notification_smart_reply_user_for_chn));
                    } else {
                        sb.append(context.getString(R.string.subscreen_notification_smart_reply_participant_for_chn));
                        sb2.append(context.getString(R.string.subscreen_notification_smart_reply_participant_for_chn));
                    }
                } else {
                    String obj = StringsKt__StringsKt.trim(messagingStyleInfo.mContentText).toString();
                    if (obj != null && obj.length() != 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (!z) {
                        if (messagingStyleInfo.mIsReply) {
                            sb.append("User: ");
                            sb2.append("User: ");
                        } else {
                            sb.append("Others: ");
                            sb2.append("Others: ");
                        }
                    }
                }
                sb.append(messagingStyleInfo.mContentText);
                sb.append("\n");
                sb2.append((String) TextUtils.trimToLengthWithEllipsis(messagingStyleInfo.mContentText, 2));
                sb2.append("\n");
            }
            size++;
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f A[Catch: Exception -> 0x0038, TryCatch #0 {Exception -> 0x0038, blocks: (B:2:0x0000, B:4:0x0013, B:9:0x001f, B:10:0x0023), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getIsoCountryCode() {
        /*
            r4 = this;
            android.content.Context r4 = r4.mContext     // Catch: java.lang.Exception -> L38
            java.lang.String r0 = "phone"
            java.lang.Object r4 = r4.getSystemService(r0)     // Catch: java.lang.Exception -> L38
            android.telephony.TelephonyManager r4 = (android.telephony.TelephonyManager) r4     // Catch: java.lang.Exception -> L38
            java.lang.String r0 = r4.getSimCountryIso()     // Catch: java.lang.Exception -> L38
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1c
            int r3 = r0.length()     // Catch: java.lang.Exception -> L38
            if (r3 != 0) goto L1a
            goto L1c
        L1a:
            r3 = r1
            goto L1d
        L1c:
            r3 = r2
        L1d:
            if (r3 == 0) goto L23
            java.lang.String r0 = r4.getNetworkCountryIso()     // Catch: java.lang.Exception -> L38
        L23:
            java.util.Locale r4 = new java.util.Locale     // Catch: java.lang.Exception -> L38
            java.lang.String r3 = ""
            r4.<init>(r3, r0)     // Catch: java.lang.Exception -> L38
            java.lang.String r4 = r4.getISO3Country()     // Catch: java.lang.Exception -> L38
            int r0 = r4.length()     // Catch: java.lang.Exception -> L38
            if (r0 <= 0) goto L35
            r1 = r2
        L35:
            if (r1 == 0) goto L40
            return r4
        L38:
            r4 = move-exception
            java.lang.String r0 = "getIsoCountryCode: "
            java.lang.String r1 = "S.S.N."
            com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0.m(r0, r4, r1)
        L40:
            java.util.Locale r4 = java.util.Locale.getDefault()
            java.lang.String r4 = r4.getISO3Country()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.getIsoCountryCode():java.lang.String");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getLayoutInDisplayCutoutMode() {
        return 3;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getListAdapterGroupItemResource() {
        return R.layout.subscreen_notification_list_adapter_group_summary_layout_item_b5;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getListAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        int i2;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                i2 = -1;
                            } else {
                                i2 = R.layout.subscreen_notification_list_adapter_group_summary_layout_b5;
                            }
                        } else {
                            i2 = R.layout.subscreen_notification_list_adapter_hide_content_b5;
                        }
                    } else {
                        i2 = R.layout.subscreen_notification_adapter_no_notification_b5;
                    }
                } else {
                    i2 = R.layout.subscreen_notification_list_adapter_custom_view_b5;
                }
            } else {
                i2 = R.layout.subscreen_notification_adapter_clear_all_footer_b5;
            }
        } else {
            i2 = R.layout.subscreen_notification_list_adapter_item_b5;
        }
        View inflate = LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
        if (i != 1 && i != 3) {
            inflate.setBackground(getMDisplayContext().getDrawable(R.drawable.subscreen_notification_list_item_bg_selecter_b5));
        }
        return inflate;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getMainHeaderViewHeight() {
        View view = this.mHeaderViewLayout;
        if (view != null) {
            return view.getHeight();
        }
        return 0;
    }

    public final String getOnDeviceMetaData() {
        String str = this.SR_LLM_PACKAGE_NAME;
        String str2 = this.metaData;
        if (str2 != null) {
            return str2;
        }
        try {
            Bundle bundle = this.mContext.getPackageManager().getApplicationInfo(str, 128).metaData;
            if (bundle != null) {
                String string = bundle.getString(str + ".FUNCTION_INFO");
                this.metaData = string;
                Log.d("S.S.N.", "On-Device LLM MetaData : " + string);
                String str3 = this.metaData;
                if (str3 == null) {
                    return "";
                }
                return str3;
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("S.S.N.", "On-Device LLM Not Found " + e);
        }
        return "";
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final Animator getPopUpViewDismissAnimator(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, 0.0f, -71.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.95f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(200L);
        if (this.popupViewShowing) {
            animatorSet.addListener(this.topPopupAnimationListener);
        }
        return animatorSet;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final Animator getPopUpViewShowAnimator(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, -71.0f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f, 0.95f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(200L);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$getPopUpViewShowAnimator$lambda$3$$inlined$doOnStart$1
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        return animatorSet;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getReplyButtonView() {
        SubScreenManager subScreenManager;
        SubHomeActivity subHomeActivity;
        Lazy lazy = this.mSubScreenManagerLazy;
        if (lazy != null && (subScreenManager = (SubScreenManager) lazy.get()) != null && (subHomeActivity = subScreenManager.mActivity) != null) {
            View inflate = LayoutInflater.from(subHomeActivity).inflate(R.layout.subscreen_notification_detail_adapter_content_layout_item_reply_button_b5, (ViewGroup) null);
            View findViewById = inflate.findViewById(R.id.send);
            if (this.mIsReplySendButtonLoading) {
                findViewById.setEnabled(false);
                findViewById.setAlpha(0.5f);
            } else {
                findViewById.setEnabled(true);
                findViewById.setAlpha(1.0f);
            }
            return inflate;
        }
        Log.e("S.S.N.", "can't inflate ReplyButtonView.");
        return null;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getSelectedReplyBGColor() {
        return R.color.subscreen_notification_select_reply_background_color_b5;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean getSubIconVisible(boolean z, boolean z2) {
        if (z2 && z) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getSubscreenNotificationTipResource() {
        return R.layout.subscreen_notification_tip_b5;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final Animator getTopPresentationDismissAnimator(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, 0.0f, -71.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.95f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(200L);
        return animatorSet;
    }

    public final void handleProgressLayout(boolean z) {
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("handleProgressLayout() - show : ", z, "S.S.N.");
        if (z) {
            Runnable runnable = new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$handleProgressLayout$runnable$1
                @Override // java.lang.Runnable
                public final void run() {
                    SubscreenDeviceModelB5 subscreenDeviceModelB5 = SubscreenDeviceModelB5.this;
                    int i = SubscreenDeviceModelB5.$r8$clinit;
                    subscreenDeviceModelB5.updateVisibilityForSmartReplyLayout(8);
                    LinearLayout linearLayout = SubscreenDeviceModelB5.this.progressLayout;
                    if (linearLayout != null) {
                        linearLayout.setVisibility(0);
                    }
                    LottieAnimationView lottieAnimationView = SubscreenDeviceModelB5.this.progressingVi;
                    if (lottieAnimationView != null) {
                        lottieAnimationView.playAnimation();
                    }
                }
            };
            LinearLayout linearLayout = this.progressLayout;
            if (linearLayout != null) {
                startProgressSpringAnimation(linearLayout, true, runnable);
                return;
            }
            return;
        }
        Runnable runnable2 = new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$handleProgressLayout$runnable$2
            @Override // java.lang.Runnable
            public final void run() {
                LinearLayout linearLayout2 = SubscreenDeviceModelB5.this.progressLayout;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                LottieAnimationView lottieAnimationView = SubscreenDeviceModelB5.this.progressingVi;
                if (lottieAnimationView != null) {
                    lottieAnimationView.cancelAnimation();
                }
            }
        };
        LinearLayout linearLayout2 = this.progressLayout;
        if (linearLayout2 != null) {
            startProgressSpringAnimation(linearLayout2, false, runnable2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0191  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void inflateSmartReplyAI(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.inflateSmartReplyAI(java.lang.String):void");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon, com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initDetailAdapterItemViewHolder(final Context context, SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, final SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        super.initDetailAdapterItemViewHolder(context, subscreenNotificationDetailAdapter, itemViewHolder);
        Log.d("S.S.N.", "initDetailAdapterItemViewHolder() - B5");
        View view = itemViewHolder.itemView;
        this.detailButtonContainer = (LinearLayout) view.findViewById(R.id.detail_button_layout);
        ImageView imageView = (ImageView) view.findViewById(R.id.keyboard_reply_button);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                if (SubscreenDeviceModelB5.this.isKeyguardStats()) {
                    SubscreenDeviceModelB5.this.showBouncer(context, itemViewHolder.mInfo.mRow.mEntry);
                    SubscreenDeviceModelB5.KeyguardActionInfo keyguardActionInfo = SubscreenDeviceModelB5.this.mKeyguardActionInfo;
                    if (keyguardActionInfo != null) {
                        Context context2 = context;
                        SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder2 = itemViewHolder;
                        keyguardActionInfo.mAction = 3;
                        keyguardActionInfo.mDetailAdapterItemViewHolder = itemViewHolder2;
                        keyguardActionInfo.mContext = context2;
                        return;
                    }
                    return;
                }
                SubscreenDeviceModelB5.access$showReplyActivity(SubscreenDeviceModelB5.this, context, itemViewHolder);
            }
        });
        this.keyboardReplyButton = imageView;
        this.callBackButtonText = (TextView) view.findViewById(R.id.call_back_button_text);
        this.replyButtonText = (TextView) view.findViewById(R.id.keyboard_reply_button_text);
        this.openAppButtonText = (TextView) view.findViewById(R.id.app_open_button_text);
        this.clearButtonText = (TextView) view.findViewById(R.id.clear_button_text);
        this.smartReplyTriggerBtnText = (TextView) view.findViewById(R.id.smart_reply_trigger_text);
        boolean z = false;
        this.mSmartReplyClickedByUser = false;
        final ImageView imageView2 = (ImageView) view.findViewById(R.id.smart_reply_trigger_button);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1
            /* JADX WARN: Removed duplicated region for block: B:10:0x028c  */
            /* JADX WARN: Removed duplicated region for block: B:12:0x0291  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0294  */
            /* JADX WARN: Removed duplicated region for block: B:17:0x028e  */
            /* JADX WARN: Type inference failed for: r4v0 */
            /* JADX WARN: Type inference failed for: r4v10 */
            /* JADX WARN: Type inference failed for: r4v8, types: [int, boolean] */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onClick(android.view.View r18) {
                /*
                    Method dump skipped, instructions count: 673
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1.onClick(android.view.View):void");
            }
        });
        this.smartReplyTriggerBtn = imageView2;
        this.smartReplyErrorMessageView = (TextView) view.findViewById(R.id.smart_reply_error_message);
        this.suggestResponsesBtn = (LinearLayout) view.findViewById(R.id.smart_reply_suggest_responses_layout);
        ImageView imageView3 = (ImageView) view.findViewById(R.id.smart_reply_ai_disclaimer);
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                boolean z2;
                SubscreenNotificationDialog subscreenNotificationDialog;
                SubscreenNotificationDialog subscreenNotificationDialog2 = SubscreenDeviceModelB5.this.mDialog;
                if (subscreenNotificationDialog2 != null) {
                    if (subscreenNotificationDialog2.mDialog.isShowing()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2 && (subscreenNotificationDialog = SubscreenDeviceModelB5.this.mDialog) != null) {
                        subscreenNotificationDialog.dismiss();
                    }
                    SubscreenDeviceModelB5.this.mDialog = null;
                }
                String string = context.getResources().getString(R.string.subscreen_notification_smart_reply_ai_disclaimer_dialog_content);
                String substringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringAfter$default(string, "%1$s"), "%2$s");
                final SubscreenDeviceModelB5 subscreenDeviceModelB5 = SubscreenDeviceModelB5.this;
                ClickableSpan clickableSpan = new ClickableSpan() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1$clickableSpan$1
                    @Override // android.text.style.ClickableSpan
                    public final void onClick(View view3) {
                        SubRoom.StateChangeListener stateChangeListener;
                        SubscreenNotificationDialog subscreenNotificationDialog3 = SubscreenDeviceModelB5.this.mDialog;
                        if (subscreenNotificationDialog3 != null) {
                            subscreenNotificationDialog3.dismiss();
                        }
                        Intent intent = new Intent();
                        SubscreenDeviceModelB5 subscreenDeviceModelB52 = SubscreenDeviceModelB5.this;
                        intent.setAction("android.intent.action.VIEW");
                        Context context2 = subscreenDeviceModelB52.mContext;
                        intent.setData(Uri.parse("https://policies.account.samsung.com/terms?appKey=j5p7ll8g33" + "&applicationRegion=".concat(subscreenDeviceModelB52.getIsoCountryCode()) + KeyAttributes$$ExternalSyntheticOutline0.m("&language=", Locale.getDefault().getLanguage()) + "&region=".concat(subscreenDeviceModelB52.getIsoCountryCode()) + "&type=TC"));
                        intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                        PendingIntent activityAsUser = PendingIntent.getActivityAsUser(SubscreenDeviceModelB5.this.mContext, 0, intent, 201326592, null, UserHandle.CURRENT);
                        Intent intent2 = new Intent();
                        intent2.putExtra("runOnCover", false);
                        intent2.putExtra("ignoreKeyguardState", true);
                        intent2.putExtra("showCoverToast", true);
                        SubscreenSubRoomNotification subscreenSubRoomNotification = SubscreenDeviceModelB5.this.mSubRoomNotification;
                        if (subscreenSubRoomNotification != null && (stateChangeListener = subscreenSubRoomNotification.mStateChangeListener) != null) {
                            stateChangeListener.requestCoverPopup(activityAsUser, intent2);
                        }
                    }
                };
                int i = StringCompanionObject.$r8$clinit;
                SpannableString spannableString = new SpannableString(String.format(string, Arrays.copyOf(new Object[]{"", ""}, 2)));
                int indexOf$default = StringsKt__StringsKt.indexOf$default(spannableString, substringBefore$default, 0, false, 6);
                int length = substringBefore$default.length() + indexOf$default;
                spannableString.setSpan(new StyleSpan(1), indexOf$default, length, 33);
                spannableString.setSpan(clickableSpan, indexOf$default, length, 33);
                View inflate = LayoutInflater.from(new ContextThemeWrapper(SubscreenDeviceModelB5.this.getMDisplayContext(), 2132018527)).inflate(R.layout.subscreen_notification_smart_reply_disclaimer_info, (ViewGroup) null);
                TextView textView = (TextView) inflate.findViewById(R.id.smart_reply_ai_disclaimer_text);
                textView.setText(spannableString);
                textView.setMovementMethod(LinkMovementMethod.getInstance());
                SubscreenDeviceModelB5 subscreenDeviceModelB52 = SubscreenDeviceModelB5.this;
                subscreenDeviceModelB52.mDialog = new SubscreenNotificationDialog(subscreenDeviceModelB52.getMDisplayContext(), inflate);
                SubscreenNotificationDialog subscreenNotificationDialog3 = SubscreenDeviceModelB5.this.mDialog;
                if (subscreenNotificationDialog3 != null) {
                    subscreenNotificationDialog3.show();
                }
                Log.d("S.S.N.", "show smart reply ai disclaimer dialog");
            }
        });
        this.aiDisclaimerBtn = imageView3;
        this.smartReplyAiLogoText = (TextView) view.findViewById(R.id.smart_reply_ai_logo);
        SettingsHelper settingsHelper = this.mSettingsHelper;
        settingsHelper.getClass();
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH && settingsHelper.mItemLists.get("ai_info_confirmed").getIntValue() != 0) {
            z = true;
        }
        this.isAiInfoConfirmed = z;
        this.isSuggestResponsesEnabled = settingsHelper.isSuggestResponsesEnabled();
        this.isUnusableAccount = isSmartReplyUnusable();
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initDetailAdapterTextViewHolder(SubscreenNotificationDetailAdapter.TextViewHolder textViewHolder) {
        View view = textViewHolder.itemView;
        this.openAppButtonText = (TextView) view.findViewById(R.id.app_open_button_text);
        this.clearButtonText = (TextView) view.findViewById(R.id.clear_button_text);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initKeyguardActioninfo() {
        KeyguardActionInfo keyguardActionInfo = this.mKeyguardActionInfo;
        if (keyguardActionInfo != null) {
            keyguardActionInfo.mAction = 0;
            keyguardActionInfo.mSubscreenParentItemViewHolder = null;
            keyguardActionInfo.mContext = null;
            keyguardActionInfo.isShowBouncer = false;
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initMainHeaderView(LinearLayout linearLayout) {
        if (((LinearLayout) linearLayout.findViewById(R.id.header_layout)) != null) {
            linearLayout.removeViewAt(0);
        }
        View inflate = LayoutInflater.from(getMDisplayContext()).inflate(R.layout.subscreen_notification_adapter_header_b5, (ViewGroup) null);
        this.mHeaderViewLayout = inflate;
        linearLayout.addView(inflate, 0);
        View view = this.mHeaderViewLayout;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initMainHeaderViewItems(Context context, SubscreenNotificationInfo subscreenNotificationInfo, boolean z) {
        FrameLayout frameLayout;
        final LinearLayout linearLayout;
        TextView textView;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        ImageView imageView4;
        ImageView imageView5;
        ImageView imageView6;
        Icon icon;
        Icon icon2;
        Boolean bool;
        boolean z2;
        boolean z3;
        boolean z4;
        Drawable drawable;
        NotificationEntry notificationEntry;
        ExpandableNotificationRow expandableNotificationRow;
        boolean z5;
        Drawable drawable2;
        NotificationEntry notificationEntry2;
        ExpandableNotificationRow expandableNotificationRow2;
        boolean z6;
        Drawable drawable3;
        boolean z7;
        boolean z8;
        boolean z9;
        ExpandableNotificationRow expandableNotificationRow3;
        NotificationEntry notificationEntry3;
        NotificationChannel channel;
        NotificationEntry notificationEntry4;
        ExpandableNotificationRow expandableNotificationRow4;
        Drawable drawable4;
        Drawable drawable5;
        CharSequence charSequence;
        CharSequence charSequence2;
        ExpandableNotificationRow expandableNotificationRow5;
        View view = this.mHeaderViewLayout;
        if (view != null) {
            frameLayout = (FrameLayout) view.findViewById(R.id.header_app_icon_layout);
        } else {
            frameLayout = null;
        }
        View view2 = this.mHeaderViewLayout;
        if (view2 != null) {
            linearLayout = (LinearLayout) view2.findViewById(R.id.back_key);
        } else {
            linearLayout = null;
        }
        View view3 = this.mHeaderViewLayout;
        if (view3 != null) {
            textView = (TextView) view3.findViewById(R.id.subscreen_header_app_name);
        } else {
            textView = null;
        }
        View view4 = this.mHeaderViewLayout;
        if (view4 != null) {
            imageView = (ImageView) view4.findViewById(R.id.secure_icon);
        } else {
            imageView = null;
        }
        View view5 = this.mHeaderViewLayout;
        if (view5 != null) {
            imageView2 = (ImageView) view5.findViewById(R.id.two_phone_icon);
        } else {
            imageView2 = null;
        }
        View view6 = this.mHeaderViewLayout;
        if (view6 != null && (imageView3 = (ImageView) view6.findViewById(R.id.subscreen_header_app_icon)) != null) {
            imageView3.setImageDrawable(null);
            imageView3.setVisibility(8);
        } else {
            imageView3 = null;
        }
        View view7 = this.mHeaderViewLayout;
        if (view7 != null && (imageView4 = (ImageView) view7.findViewById(R.id.subscreen_header_icon)) != null) {
            imageView4.setImageDrawable(null);
            imageView4.setBackground(null);
            imageView4.setPadding(0, 0, 0, 0);
            imageView4.clearColorFilter();
            imageView4.setVisibility(8);
        } else {
            imageView4 = null;
        }
        View view8 = this.mHeaderViewLayout;
        if (view8 != null && (imageView5 = (ImageView) view8.findViewById(R.id.subscreen_notification_header_icon_conversation)) != null) {
            imageView5.setImageIcon(null);
            imageView5.setVisibility(8);
        } else {
            imageView5 = null;
        }
        View view9 = this.mHeaderViewLayout;
        if (view9 != null && (imageView6 = (ImageView) view9.findViewById(R.id.subscreen_notification_sub_icon)) != null) {
            imageView6.setImageDrawable(null);
            imageView6.setBackground(null);
            imageView6.setPadding(0, 0, 0, 0);
            imageView6.clearColorFilter();
            imageView6.setVisibility(8);
        } else {
            imageView6 = null;
        }
        if (subscreenNotificationInfo != null) {
            icon = subscreenNotificationInfo.mConversationIcon;
        } else {
            icon = null;
        }
        if (subscreenNotificationInfo != null) {
            icon2 = subscreenNotificationInfo.mLargeIcon;
        } else {
            icon2 = null;
        }
        if (subscreenNotificationInfo != null) {
            bool = Boolean.valueOf(subscreenNotificationInfo.mIsMessagingStyle);
        } else {
            bool = null;
        }
        if (isKeyguardStats() && subscreenNotificationInfo != null && (expandableNotificationRow5 = subscreenNotificationInfo.mRow) != null) {
            z2 = expandableNotificationRow5.needsRedaction();
        } else {
            z2 = false;
        }
        ImageView imageView7 = imageView2;
        String string = context.getResources().getString(R.string.subscreen_back_button_content_description);
        if (linearLayout != null) {
            linearLayout.setContentDescription(string);
        }
        if (!z) {
            if (linearLayout != null) {
                linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$setBackKeyClickListener$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view10) {
                        SubscreenDeviceModelB5 subscreenDeviceModelB5 = SubscreenDeviceModelB5.this;
                        int i = SubscreenDeviceModelB5.$r8$clinit;
                        subscreenDeviceModelB5.performBackClick();
                    }
                });
            }
            if (linearLayout != null) {
                linearLayout.addOnUnhandledKeyEventListener(new View.OnUnhandledKeyEventListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$setBackKeyClickListener$2
                    @Override // android.view.View.OnUnhandledKeyEventListener
                    public final boolean onUnhandledKeyEvent(View view10, KeyEvent keyEvent) {
                        if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 4) {
                            linearLayout.callOnClick();
                            return false;
                        }
                        return false;
                    }
                });
            }
            if (frameLayout != null) {
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$initMainHeaderViewItems$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view10) {
                        SubscreenDeviceModelB5 subscreenDeviceModelB5 = SubscreenDeviceModelB5.this;
                        int i = SubscreenDeviceModelB5.$r8$clinit;
                        subscreenDeviceModelB5.performBackClick();
                    }
                });
            }
        }
        if (linearLayout != null) {
            linearLayout.setTooltipText(string);
        }
        if (subscreenNotificationInfo != null && subscreenNotificationInfo.mIsMessagingStyle) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3 && subscreenNotificationInfo.mRemoteinput) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (textView != null) {
            if (isShownDetail() && z4) {
                charSequence2 = this.titleText;
            } else if (subscreenNotificationInfo != null) {
                charSequence2 = subscreenNotificationInfo.mAppName;
            } else {
                charSequence2 = null;
            }
            textView.setText(charSequence2);
        }
        View view10 = this.mHeaderViewLayout;
        if (view10 != null) {
            if (textView != null) {
                charSequence = textView.getText();
            } else {
                charSequence = null;
            }
            view10.setContentDescription(charSequence);
        }
        if (imageView3 != null) {
            imageView3.clearColorFilter();
        }
        if (!z2 && Intrinsics.areEqual(bool, Boolean.TRUE) && (icon != null || icon2 != null)) {
            if (imageView5 != null) {
                imageView5.setVisibility(0);
            }
            if (icon != null) {
                if (imageView5 != null) {
                    imageView5.setImageIcon(icon);
                }
            } else if (imageView5 != null) {
                imageView5.setImageIcon(icon2);
            }
            z5 = true;
        } else {
            if (isShowNotificationAppIcon()) {
                if (imageView3 != null) {
                    if (subscreenNotificationInfo != null && !subscreenNotificationInfo.useSmallIcon()) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        if (subscreenNotificationInfo != null) {
                            drawable3 = subscreenNotificationInfo.mAppIcon;
                        } else {
                            drawable3 = null;
                        }
                        imageView3.setImageDrawable(drawable3);
                        imageView3.setVisibility(0);
                    }
                }
                if (imageView4 != null) {
                    imageView4.setVisibility(0);
                }
                if (imageView4 != null) {
                    if (subscreenNotificationInfo != null) {
                        drawable2 = subscreenNotificationInfo.mIcon;
                    } else {
                        drawable2 = null;
                    }
                    imageView4.setImageDrawable(drawable2);
                    updateSmallIconSquircleBg(imageView4, true, false);
                    if (subscreenNotificationInfo != null && (expandableNotificationRow2 = subscreenNotificationInfo.mRow) != null) {
                        notificationEntry2 = expandableNotificationRow2.mEntry;
                    } else {
                        notificationEntry2 = null;
                    }
                    updateIconColor(imageView4, notificationEntry2);
                }
            } else if (imageView4 != null) {
                imageView4.setVisibility(0);
                updateSmallIconBg(imageView4, true, false, false);
                if (subscreenNotificationInfo != null) {
                    drawable = subscreenNotificationInfo.mIcon;
                } else {
                    drawable = null;
                }
                imageView4.setImageDrawable(drawable);
                if (subscreenNotificationInfo != null && (expandableNotificationRow = subscreenNotificationInfo.mRow) != null) {
                    notificationEntry = expandableNotificationRow.mEntry;
                } else {
                    notificationEntry = null;
                }
                updateIconColor(imageView4, notificationEntry);
            }
            z5 = false;
        }
        if (z5) {
            if (isShowNotificationAppIcon()) {
                if (imageView6 != null) {
                    if (subscreenNotificationInfo != null) {
                        drawable5 = subscreenNotificationInfo.mAppIcon;
                    } else {
                        drawable5 = null;
                    }
                    imageView6.setImageDrawable(drawable5);
                }
            } else {
                updateSmallIconBg(imageView6, false, false, true);
                if (imageView6 != null) {
                    if (subscreenNotificationInfo != null) {
                        drawable4 = subscreenNotificationInfo.mIcon;
                    } else {
                        drawable4 = null;
                    }
                    imageView6.setImageDrawable(drawable4);
                }
                if (subscreenNotificationInfo != null && (expandableNotificationRow4 = subscreenNotificationInfo.mRow) != null) {
                    notificationEntry4 = expandableNotificationRow4.mEntry;
                } else {
                    notificationEntry4 = null;
                }
                updateIconColor(imageView6, notificationEntry4);
            }
            if (imageView6 == null) {
                z7 = false;
            } else {
                z7 = false;
                imageView6.setVisibility(0);
            }
        } else {
            z7 = false;
            if (imageView6 != null) {
                imageView6.setVisibility(8);
            }
        }
        if (z5) {
            if (subscreenNotificationInfo != null && (expandableNotificationRow3 = subscreenNotificationInfo.mRow) != null && (notificationEntry3 = expandableNotificationRow3.mEntry) != null && (channel = notificationEntry3.getChannel()) != null && channel.isImportantConversation()) {
                z9 = true;
            } else {
                z9 = z7;
            }
            if (z9) {
                z8 = true;
                updateImportBadgeIconRing(this.mHeaderViewLayout, z8);
                SubscreenDeviceModelParent.updateKnoxIcon(imageView, subscreenNotificationInfo);
                SubscreenDeviceModelParent.updateTwoPhoneIcon(imageView7, subscreenNotificationInfo);
            }
        }
        z8 = z7;
        updateImportBadgeIconRing(this.mHeaderViewLayout, z8);
        SubscreenDeviceModelParent.updateKnoxIcon(imageView, subscreenNotificationInfo);
        SubscreenDeviceModelParent.updateTwoPhoneIcon(imageView7, subscreenNotificationInfo);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initSmartReplyStatus() {
        this.smartReplyStatus = 0;
        this.mSmartReplyResult = -1;
        this.mSmartReplyResultCompleteMsg = null;
        this.mSmartReplyResultFailureMsg = null;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isCoverBriefAllowed(NotificationEntry notificationEntry) {
        boolean z;
        String str;
        if (this.mSettingsHelper.mItemLists.get("edge_lighting").getIntValue() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        LinkedHashMap linkedHashMap = this.mFullScreenIntentEntries;
        if (notificationEntry != null) {
            str = notificationEntry.mKey;
        } else {
            str = null;
        }
        if (linkedHashMap.containsKey(str)) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isDismissiblePopup() {
        LinkedHashMap linkedHashMap = this.mFullScreenIntentEntries;
        if (!linkedHashMap.isEmpty() && (linkedHashMap.isEmpty() || !useTopPresentation())) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isKeyguardStats() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        if (keyguardStateController != null && ((KeyguardStateControllerImpl) keyguardStateController).mSecure) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (keyguardStateController != null && !keyguardStateController.isUnlocked()) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z4) {
                return true;
            }
        }
        KeyguardStateController keyguardStateController2 = this.mKeyguardStateController;
        if (keyguardStateController2 != null && !((KeyguardStateControllerImpl) keyguardStateController2).mSecure) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (keyguardStateController2 != null && ((KeyguardStateControllerImpl) keyguardStateController2).mShowing) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                return true;
            }
        }
        return false;
    }

    public final boolean isKeyguardUnlockShowing() {
        boolean z;
        boolean z2;
        boolean z3;
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        if (keyguardStateController != null && ((KeyguardStateControllerImpl) keyguardStateController).mSecure) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (keyguardStateController != null && keyguardStateController.isUnlocked()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                KeyguardStateController keyguardStateController2 = this.mKeyguardStateController;
                if (keyguardStateController2 != null && ((KeyguardStateControllerImpl) keyguardStateController2).mShowing) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isKnoxSecurity(NotificationEntry notificationEntry) {
        NotificationLockscreenUserManager notificationLockscreenUserManager = (NotificationLockscreenUserManager) Dependency.get(NotificationLockscreenUserManager.class);
        return ((NotificationLockscreenUserManagerImpl) notificationLockscreenUserManager).mUsersWithSeparateWorkChallenge.get(notificationEntry.mSbn.getUserId(), false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isLaunchApp(NotificationEntry notificationEntry) {
        boolean z;
        if (notificationEntry.mSbn.getPackageName() != null && ActivityTaskManager.getService().isPackageEnabledForCoverLauncher(notificationEntry.mSbn.getPackageName(), notificationEntry.mSbn.getUser().getIdentifier())) {
            z = true;
        } else {
            z = false;
        }
        if (notificationEntry.mSbn.getNotification().contentIntent != null && (z || isCallNotification(notificationEntry))) {
            SettingsHelper settingsHelper = this.mSettingsHelper;
            if (!settingsHelper.isUltraPowerSavingMode() && !settingsHelper.isEmergencyMode() && !this.mKeyguardUpdateMonitor.isKidsModeRunning()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isNotShwonNotificationState(NotificationEntry notificationEntry) {
        if (!isKeyguardStats() && (!isKnoxSecurity(notificationEntry) || !notificationEntry.mUserPublic)) {
            return false;
        }
        return true;
    }

    public final boolean isPreventOnlineProcessing() {
        if (Settings.System.getInt(this.mContext.getContentResolver(), "prevent_online_processing", 0) != 1) {
            return false;
        }
        return true;
    }

    public final boolean isReplyLayoutShowing() {
        Integer num;
        boolean z;
        SubscreenRecyclerView subscreenRecyclerView;
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null && (subscreenRecyclerView = subscreenSubRoomNotification.mNotificationRecyclerView) != null) {
            num = Integer.valueOf(subscreenRecyclerView.computeVerticalScrollOffset());
        } else {
            num = null;
        }
        Intrinsics.checkNotNull(num);
        int mainHeaderViewHeight = ((720 - getMainHeaderViewHeight()) - getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.subscreen_noti_cut_out_size_b5)) + num.intValue();
        SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder = this.detailViewHolder;
        float f = 0.0f;
        if (itemViewHolder != null) {
            LinearLayout linearLayout = itemViewHolder.mSmartReplyLayout;
            if (linearLayout != null && linearLayout.getVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                linearLayout = itemViewHolder.mReplylayout;
            }
            if (linearLayout != null) {
                float y = linearLayout.getY();
                LinearLayout linearLayout2 = itemViewHolder.mReplyContainer;
                if (linearLayout2 != null) {
                    f = linearLayout2.getY();
                }
                f = y + f;
            }
        }
        if (mainHeaderViewHeight > f) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isSamsungAccountLoggedIn() {
        return this.isSALoggedIn;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isShowNotificationAppIcon() {
        return this.mSettingsHelper.isShowNotificationAppIconEnabled();
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isShowingRemoteView(String str) {
        if (ArraysKt___ArraysKt.contains(new String[]{"com.skt.prod.dialer", "com.samsung.android.incallui", "com.sec.android.app.clockpackage", "com.sec.android.app.voicenote", "com.sec.android.app.voicerecorder", "com.samsung.android.app.interpreter"}, str)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isSkipFullscreenIntentClicked(NotificationEntry notificationEntry) {
        if ((this.mFullScreenIntentEntries.get(notificationEntry.mKey) != null || this.mIsFullscreenFullPopupWindowClosing) && !useTopPresentation()) {
            return true;
        }
        return false;
    }

    public final boolean isSmartReplyUnusable() {
        if (this.isRDUMode) {
            return false;
        }
        if (this.isSALoggedIn && !this.isChildAccount && this.isAiInfoConfirmed && this.isSuggestResponsesEnabled && (!NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA || !isPreventOnlineProcessing())) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isUpdatedRemoteView(String str) {
        if (ArraysKt___ArraysKt.contains(new String[]{"com.skt.prod.dialer", "com.samsung.android.incallui", "com.sec.android.app.clockpackage"}, str)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean launchApp(NotificationEntry notificationEntry) {
        try {
            if (isLaunchApp(notificationEntry)) {
                int startNotificationIntent = startNotificationIntent(notificationEntry.mSbn.getNotification().contentIntent);
                Log.d("S.S.N.", "launchApp B5 -  Run App : " + notificationEntry.mSbn.getPackageName() + ", result: " + startNotificationIntent);
                return true;
            }
            return false;
        } catch (RemoteException e) {
            Log.w("S.S.N.", "unable to get isPackageEnabledForCoverLauncher()", e);
            return false;
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean launchFullscreenIntent(NotificationEntry notificationEntry) {
        try {
            if (notificationEntry.mSbn.getPackageName() != null && ActivityTaskManager.getService().isPackageEnabledForCoverLauncher(notificationEntry.mSbn.getPackageName(), notificationEntry.mSbn.getUser().getIdentifier())) {
                int startNotificationIntent = startNotificationIntent(notificationEntry.mSbn.getNotification().fullScreenIntent);
                Log.d("S.S.N.", "launchFullscreenIntent B5 -  Run FullscreenIntent : " + notificationEntry.mKey + ", result: " + startNotificationIntent);
                return true;
            }
            return false;
        } catch (RemoteException e) {
            Log.w("S.S.N.", "unable to get isPackageEnabledForCoverLauncher()", e);
            return false;
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void loadOnDeviceMetaData() {
        boolean z;
        int i;
        String str;
        boolean z2;
        boolean z3;
        boolean z4;
        try {
            ArrayList arrayList = (ArrayList) this.onDeviceLanguageList;
            arrayList.clear();
            String replace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(new Regex("\\s+").replace("{ \"list\" : " + getOnDeviceMetaData() + "}"), ",}", "}"), ",]", "]");
            if (replace$default.length() > 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                new JsonParser();
                JsonElement jsonElement = JsonParser.parseString(replace$default).getAsJsonObject().get("list");
                if (jsonElement != null) {
                    if (jsonElement instanceof JsonArray) {
                        Iterator it = ((JsonArray) jsonElement).iterator();
                        while (it.hasNext()) {
                            JsonObject asJsonObject = ((JsonElement) it.next()).getAsJsonObject();
                            LlmLanguage llmLanguage = new LlmLanguage(0, null, null, false, false, false, 63, null);
                            JsonElement jsonElement2 = asJsonObject.get("order");
                            if (jsonElement2 != null) {
                                i = jsonElement2.getAsInt();
                            } else {
                                i = -1;
                            }
                            llmLanguage.order = i;
                            JsonElement jsonElement3 = asJsonObject.get("language");
                            if (jsonElement3 != null) {
                                str = jsonElement3.getAsString();
                            } else {
                                str = null;
                            }
                            if (str == null) {
                                str = "";
                            }
                            llmLanguage.language = str;
                            llmLanguage.languageDisplayName = getDisplayName(str);
                            JsonElement jsonElement4 = asJsonObject.get("supportToneConversion");
                            if (jsonElement4 != null) {
                                z2 = jsonElement4.getAsBoolean();
                            } else {
                                z2 = true;
                            }
                            llmLanguage.supportToneConversion = z2;
                            JsonElement jsonElement5 = asJsonObject.get("supportCorrection");
                            if (jsonElement5 != null) {
                                z3 = jsonElement5.getAsBoolean();
                            } else {
                                z3 = true;
                            }
                            llmLanguage.supportCorrection = z3;
                            JsonElement jsonElement6 = asJsonObject.get("supportReply");
                            if (jsonElement6 != null) {
                                z4 = jsonElement6.getAsBoolean();
                            } else {
                                z4 = true;
                            }
                            llmLanguage.supportReply = z4;
                            if (llmLanguage.order >= 0 && z4) {
                                arrayList.add(llmLanguage);
                            }
                        }
                    } else {
                        throw new IllegalStateException("Not a JSON Array: " + jsonElement);
                    }
                }
            }
            Log.d("S.S.N.", "loadOnDeviceMetaData : " + arrayList.size());
        } catch (Exception e) {
            AbsAdapter$1$$ExternalSyntheticOutline0.m("loadOnDeviceMetaData e: ", e, "S.S.N.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x015d, code lost:
    
        if (r13 == null) goto L95;
     */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void moveDetailAdapterContentScroll(android.view.View r17, boolean r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 838
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.moveDetailAdapterContentScroll(android.view.View, boolean, boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x00a4, code lost:
    
        if (r12 != false) goto L51;
     */
    /* JADX WARN: Type inference failed for: r12v47, types: [T, java.lang.String] */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon, com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onBindDetailAdapterItemViewHolder(com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter r12, com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter.ItemViewHolder r13) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.onBindDetailAdapterItemViewHolder(com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter, com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter$ItemViewHolder):void");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void onBindDetailAdapterTextViewHolder(SubscreenNotificationDetailAdapter.TextViewHolder textViewHolder) {
        View view = textViewHolder.mOpenAppButton;
        view.setVisibility(8);
        TextView textView = this.openAppButtonText;
        TextView textView2 = null;
        if (textView == null) {
            textView = null;
        }
        textView.setVisibility(view.getVisibility());
        TextView textView3 = this.clearButtonText;
        if (textView3 != null) {
            textView2 = textView3;
        }
        textView2.setVisibility(textViewHolder.mClearButton.getVisibility());
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void onStateChangedInDeviceStateCallback(int i) {
        boolean z;
        SubscreenSubRoomNotification subscreenSubRoomNotification;
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter;
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mIsFlexMode = z;
        if (isShownDetail() && (subscreenSubRoomNotification = this.mSubRoomNotification) != null && (subscreenNotificationDetailAdapter = subscreenSubRoomNotification.mNotificationDetailAdapter) != null) {
            subscreenNotificationDetailAdapter.dismissReplyButtons(true);
        }
    }

    public final void openPhonePopupForIntelligenceSettings(String str) {
        SubRoom.StateChangeListener stateChangeListener;
        try {
            Intent intent = new Intent();
            intent.setAction(str);
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 335544320);
            Intent intent2 = new Intent();
            intent2.putExtra("runOnCover", false);
            intent2.putExtra("ignoreKeyguardState", true);
            intent2.putExtra("showCoverToast", true);
            SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
            if (subscreenSubRoomNotification != null && (stateChangeListener = subscreenSubRoomNotification.mStateChangeListener) != null) {
                stateChangeListener.requestCoverPopup(broadcast, intent2);
            }
        } catch (Exception e) {
            AbsAdapter$1$$ExternalSyntheticOutline0.m("exception on openPhonePopupForIntelligenceSettings: ", e, "S.S.N.");
        }
    }

    public final boolean performBackClick() {
        String str;
        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter;
        SubscreenNotificationInfo subscreenNotificationInfo;
        boolean z = false;
        if (isShownDetail()) {
            if (this.mMainViewAnimator == null) {
                hideDetailNotificationAnimated(300, false);
            }
            SystemUIAnalytics.sendEventLog("QPN102", "QPNE0214");
        } else {
            if (isShownGroup()) {
                SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
                if (subscreenSubRoomNotification != null && (subscreenNotificationGroupAdapter = subscreenSubRoomNotification.mNotificationGroupAdapter) != null && (subscreenNotificationInfo = subscreenNotificationGroupAdapter.mSummaryInfo) != null) {
                    str = subscreenNotificationInfo.mKey;
                } else {
                    str = null;
                }
                if (subscreenSubRoomNotification != null) {
                    subscreenSubRoomNotification.mRecyclerViewItemSelectKey = str;
                }
                if (this.mMainViewAnimator == null) {
                    hideGroupNotification();
                }
            }
            this.mSrPromptProcessor.setNotificationKey(null);
            Log.d("S.S.N.", "performBackClick() - ret: " + z);
            return z;
        }
        z = true;
        this.mSrPromptProcessor.setNotificationKey(null);
        Log.d("S.S.N.", "performBackClick() - ret: " + z);
        return z;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void registerAODTspReceiver() {
        this.mContext.registerReceiver(this.aodTspUpdateReceiver, AppCompatDelegateImpl$$ExternalSyntheticOutline0.m("com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"), "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER", null);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void removeSmartReplyHashMap(String str) {
        this.mSmartReplyHashMap.remove(str);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void replyActivityFinished(boolean z) {
        SubscreenNotificationInfo subscreenNotificationInfo;
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null) {
            subscreenSubRoomNotification.mNotificationRecyclerView.requestFocus();
            updateMainHeaderView(subscreenSubRoomNotification.mSubscreenMainLayout);
            int i = 8;
            if (z) {
                updateMainHeaderViewVisibility(8);
                subscreenSubRoomNotification.mSubscreenMainLayout.setAlpha(1.0f);
                Log.d("S.S.N.", "replyActivityFinished() - forcedFinish");
                return;
            }
            if (subscreenSubRoomNotification.mIsShownDetail) {
                subscreenNotificationInfo = subscreenSubRoomNotification.mNotificationDetailAdapter.mSelectNotificationInfo;
            } else if (subscreenSubRoomNotification.mIsShownGroup) {
                subscreenNotificationInfo = subscreenSubRoomNotification.mNotificationGroupAdapter.mSummaryInfo;
            } else {
                subscreenNotificationInfo = null;
            }
            if (subscreenNotificationInfo != null) {
                initMainHeaderViewItems(this.mContext, subscreenNotificationInfo, false);
            }
            if (subscreenSubRoomNotification.mIsShownGroup || subscreenSubRoomNotification.mIsShownDetail) {
                i = 0;
            }
            updateMainHeaderViewVisibility(i);
            if (subscreenSubRoomNotification.mIsShownDetail) {
                subscreenSubRoomNotification.mSubscreenMainLayout.animate().alpha(1.0f).setDuration(300L);
            }
            ListPopupWindow$$ExternalSyntheticOutline0.m("replyActivityFinished() - header visibility: ", i, "S.S.N.");
        }
    }

    public final void resetProgressScaleAnimation() {
        SpringAnimation springAnimation = this.mProgressScaleAnimationX;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        SpringAnimation springAnimation2 = this.mProgressScaleAnimationY;
        if (springAnimation2 != null) {
            springAnimation2.cancel();
        }
        this.mProgressScaleAnimationX = null;
        this.mProgressScaleAnimationY = null;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void runSmartReplyUncompletedOperation() {
        LinearLayout linearLayout;
        ListPopupWindow$$ExternalSyntheticOutline0.m("runSmartReplyUncompletedOperation() - ", this.mSmartReplyResult, "S.S.N.");
        int i = this.mSmartReplyResult;
        boolean z = true;
        if (i == 0) {
            StringBuilder sb = this.mSmartReplyResultCompleteMsg;
            if (sb != null) {
                showSmartReplyResultComplete(sb);
            }
        } else if (i == 1) {
            showSmartReplyResultFailure(this.mSmartReplyResultFailureMsg);
        }
        LinearLayout linearLayout2 = this.progressLayout;
        if (linearLayout2 == null || linearLayout2.getVisibility() != 0) {
            z = false;
        }
        if (z && (linearLayout = this.progressLayout) != null) {
            linearLayout.setVisibility(8);
        }
        this.mSmartReplyResult = -1;
        this.mSmartReplyResultCompleteMsg = null;
        this.mSmartReplyResultFailureMsg = null;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setClock(SubscreenNotificationInfo subscreenNotificationInfo, View view) {
        DateTimeView dateTimeView;
        NotificationChildrenContainer notificationChildrenContainer;
        if (view != null) {
            dateTimeView = (DateTimeView) view.findViewById(R.id.subscreen_notification_clock);
        } else {
            dateTimeView = null;
        }
        if (dateTimeView != null && subscreenNotificationInfo != null) {
            if (subscreenNotificationInfo.mShowWhen && subscreenNotificationInfo.mWhen > 0) {
                if (subscreenNotificationInfo.mIsMessagingStyle && subscreenNotificationInfo.mMessageingStyleInfoArray.size() > 0) {
                    long j = ((SubscreenNotificationInfo.MessagingStyleInfo) subscreenNotificationInfo.mMessageingStyleInfoArray.get(r8.size() - 1)).mPostedTime;
                    long j2 = ((SubscreenNotificationInfo.MessagingStyleInfo) subscreenNotificationInfo.mMessageingStyleInfoArray.get(r7.size() - 1)).mTimeStamp;
                    if (j <= 0) {
                        j = j2;
                    }
                    dateTimeView.setTime(j);
                    dateTimeView.setVisibility(0);
                    return;
                }
                long j3 = subscreenNotificationInfo.mWhen;
                if (subscreenNotificationInfo.mSbn.getNotification().isGroupSummary() && (notificationChildrenContainer = subscreenNotificationInfo.mRow.mChildrenContainer) != null) {
                    j3 = notificationChildrenContainer.mWhenMillis;
                }
                dateTimeView.setTime(j3);
                dateTimeView.setVisibility(0);
                return;
            }
            dateTimeView.setVisibility(8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0159  */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setContentViewItem(android.content.Context r24, com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter.ItemViewHolder r25) {
        /*
            Method dump skipped, instructions count: 824
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.setContentViewItem(android.content.Context, com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter$ItemViewHolder):void");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setDimOnMainBackground(View view) {
        view.setBackgroundResource(R.drawable.subscreen_notification_main_layout_background_b5);
        view.setClipToOutline(true);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setFullPopupWindowKeyEventListener(FrameLayout frameLayout) {
        if (frameLayout != null) {
            frameLayout.addOnUnhandledKeyEventListener(new View.OnUnhandledKeyEventListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$setFullPopupWindowKeyEventListener$1
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent) {
                    if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 4) {
                        SubscreenDeviceModelB5.this.closeFullscreenFullPopupWindow();
                        return false;
                    }
                    return false;
                }
            });
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setGroupAdapterFooterMargin(Context context, RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_group_footer_top_margin_b5);
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = 0;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setGroupAdapterIcon(Context context, SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter, SubscreenNotificationGroupAdapter.NotificationGroupItemViewHolder notificationGroupItemViewHolder) {
        boolean z = true;
        if (isNotShwonNotificationState(notificationGroupItemViewHolder.mInfo.mRow.mEntry)) {
            if (isKnoxSecurity(notificationGroupItemViewHolder.mInfo.mRow.mEntry) && notificationGroupItemViewHolder.mInfo.mRow.mEntry.mUserPublic) {
                z = false;
            } else if (isKeyguardStats()) {
                z = true ^ notificationGroupItemViewHolder.mInfo.mRow.needsRedaction();
            }
        }
        notificationGroupItemViewHolder.setIconView(subscreenNotificationGroupAdapter, z);
        setRightIcon(context, notificationGroupItemViewHolder.mInfo, notificationGroupItemViewHolder.itemView);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setIsReplySendButtonLoading() {
        View view;
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter;
        this.mIsReplySendButtonLoading = false;
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null && (subscreenNotificationDetailAdapter = subscreenSubRoomNotification.mNotificationDetailAdapter) != null) {
            view = subscreenNotificationDetailAdapter.mReplyButtonView;
        } else {
            view = null;
        }
        if (view != null) {
            view.findViewById(R.id.send).setEnabled(true);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setItemDecoration(final SubscreenRecyclerView subscreenRecyclerView) {
        final int dimensionPixelSize = getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.subscreen_noti_list_recyclerview_top_margin_b5);
        subscreenRecyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$setItemDecoration$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                SubscreenNotificationListAdapter subscreenNotificationListAdapter;
                boolean z;
                RecyclerView.Adapter adapter = RecyclerView.this.mAdapter;
                SubscreenDeviceModelB5 subscreenDeviceModelB5 = this;
                SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelB5.mSubRoomNotification;
                if (subscreenSubRoomNotification != null) {
                    subscreenNotificationListAdapter = subscreenSubRoomNotification.mNotificationListAdapter;
                } else {
                    subscreenNotificationListAdapter = null;
                }
                if (!Intrinsics.areEqual(adapter, subscreenNotificationListAdapter)) {
                    return;
                }
                SubscreenSubRoomNotification subscreenSubRoomNotification2 = subscreenDeviceModelB5.mSubRoomNotification;
                if (subscreenSubRoomNotification2 != null && subscreenSubRoomNotification2.mNotificationInfoManager != null && SubscreenNotificationInfoManager.getNotificationInfoArraySize() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
                recyclerView.getClass();
                if (RecyclerView.getChildAdapterPosition(view) == 0) {
                    rect.top = dimensionPixelSize;
                }
            }
        });
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setListItemTextLayout(Context context, View view) {
        boolean z;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.subscreen_notification_text_layout);
        TextView textView = (TextView) view.findViewById(R.id.subscreen_notification_title_text);
        DateTimeView findViewById = view.findViewById(R.id.subscreen_notification_clock);
        ImageView imageView = (ImageView) view.findViewById(R.id.subscreen_right_icon);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.two_phone_icon);
        ImageView imageView3 = (ImageView) view.findViewById(R.id.secure_icon);
        TextView textView2 = (TextView) view.findViewById(R.id.unread_message_count);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_top_popup_text_layout_max_width_b5);
        if (findViewById != null) {
            if (findViewById.getVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                dimensionPixelSize = (dimensionPixelSize - context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_clock_start_margin_b5)) - context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_top_popup_clock_width_b5);
            }
        }
        if (linearLayout != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
            if (imageView != null && imageView.getVisibility() == 0) {
                layoutParams.setMarginEnd(0);
                dimensionPixelSize -= context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_icon_size_b5);
                context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_extra_icon_margin_b5);
            } else {
                layoutParams.setMarginEnd(context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_list_end_margin_b5));
            }
            linearLayout.setLayoutParams(layoutParams);
        }
        if (imageView2 != null && imageView2.getVisibility() == 0) {
            dimensionPixelSize -= context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_two_phone_icon_width_b5);
            context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_extra_icon_margin_b5);
        }
        if (imageView3 != null && imageView3.getVisibility() == 0) {
            dimensionPixelSize -= context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_secure_icon_size_b5);
            context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_extra_icon_margin_b5);
        }
        if (textView2 != null && textView2.getVisibility() == 0) {
            dimensionPixelSize -= context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_count_text_width_b5);
            context.getResources().getDimensionPixelSize(R.dimen.subscreen_noti_count_start_margin_b5);
        }
        if (textView != null) {
            textView.setMaxWidth(dimensionPixelSize);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon
    public final void setPopupItemInfo(Context context, NotificationEntry notificationEntry, boolean z, boolean z2) {
        boolean z3;
        View view;
        TextView textView;
        SubscreenNotificationInfo subscreenNotificationInfo;
        ArrayList arrayList;
        Object obj;
        String str;
        boolean z4;
        super.setPopupItemInfo(context, notificationEntry, z, z2);
        SubscreenNotificationInfo subscreenNotificationInfo2 = this.popupInfo;
        if (subscreenNotificationInfo2 != null) {
            z3 = subscreenNotificationInfo2.mIsGroupConversation;
        } else {
            z3 = false;
        }
        if (!z && !this.needsRedaction && z3 && (view = this.mPopUpViewLayout) != null && (textView = (TextView) view.findViewById(R.id.subscreen_notification_sender_text)) != null && (subscreenNotificationInfo = this.popupInfo) != null && (arrayList = subscreenNotificationInfo.mMessageingStyleInfoArray) != null) {
            String str2 = null;
            if (arrayList.isEmpty()) {
                obj = null;
            } else {
                obj = arrayList.get(arrayList.size() - 1);
            }
            SubscreenNotificationInfo.MessagingStyleInfo messagingStyleInfo = (SubscreenNotificationInfo.MessagingStyleInfo) obj;
            if (messagingStyleInfo != null && (str = messagingStyleInfo.mSender) != null) {
                SubscreenNotificationInfo subscreenNotificationInfo3 = this.popupInfo;
                if (subscreenNotificationInfo3 != null) {
                    str2 = subscreenNotificationInfo3.getTitle();
                }
                if (str.length() > 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4 && !Intrinsics.areEqual(str, str2)) {
                    textView.setText(str);
                    textView.setVisibility(0);
                }
            }
        }
        if (z || useTopPresentation()) {
            setClock(this.popupInfo, this.mPopUpViewLayout);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon
    public final void setPopupViewLayout(Context context, boolean z, FrameLayout frameLayout) {
        View inflate;
        if (!z && !useTopPresentation()) {
            inflate = LayoutInflater.from(context).inflate(R.layout.subscreen_notification_detail_popup_full_b5, frameLayout);
        } else {
            inflate = LayoutInflater.from(context).inflate(R.layout.subscreen_notification_detail_popup_top_b5, frameLayout);
        }
        this.mPopUpViewLayout = inflate;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setQuickReplyFocusBackground(View view) {
        view.setBackground(getMDisplayContext().getDrawable(R.drawable.subscreen_notification_reply_item_bg_selecter_b5));
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setSmartReplyResultValue(int i, StringBuilder sb, String str) {
        LinearLayout linearLayout = this.progressLayout;
        boolean z = false;
        if (linearLayout != null && linearLayout.getVisibility() == 0) {
            z = true;
        }
        if (z) {
            this.mSmartReplyResult = i;
            this.mSmartReplyResultCompleteMsg = sb;
            this.mSmartReplyResultFailureMsg = str;
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setStartedReplyActivity() {
        this.mIsStartedReplyActivity = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void showAIReply() {
        /*
            Method dump skipped, instructions count: 349
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.showAIReply():void");
    }

    public final void showBouncer(Context context, final NotificationEntry notificationEntry) {
        Boolean bool;
        boolean z;
        long j;
        SubRoom.StateChangeListener stateChangeListener;
        boolean isKeyguardStats = isKeyguardStats();
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        String str = null;
        if (keyguardStateController != null) {
            bool = Boolean.valueOf(((KeyguardStateControllerImpl) keyguardStateController).mSecure);
        } else {
            bool = null;
        }
        Log.d("S.S.N.", "showBouncer B5 -isMethodSecure : " + bool + ", isUnlocked : " + isKeyguardStats);
        KeyguardStateController keyguardStateController2 = this.mKeyguardStateController;
        if (keyguardStateController2 != null && ((KeyguardStateControllerImpl) keyguardStateController2).mSecure) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (isKeyguardStats) {
                Intent intent = new Intent();
                intent.setAction("com.samsung.android.action.UNLOCK_NOTIFICATION_PENDING_INTENT");
                intent.putExtra("key", notificationEntry.mKey);
                PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 335544320);
                Intent intent2 = new Intent();
                intent2.putExtra("runOnCover", true);
                intent2.putExtra("ignoreKeyguardState", true);
                intent2.putExtra("showCoverToast", true);
                SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
                if (subscreenSubRoomNotification != null && (stateChangeListener = subscreenSubRoomNotification.mStateChangeListener) != null) {
                    stateChangeListener.requestCoverPopup(broadcast, intent2);
                }
                KeyguardActionInfo keyguardActionInfo = this.mKeyguardActionInfo;
                if (keyguardActionInfo != null) {
                    keyguardActionInfo.isShowBouncer = true;
                }
                Handler handler = this.mHandler;
                Runnable runnable = new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$showBouncer$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubscreenDeviceModelB5.this.dismissImmediately(notificationEntry);
                    }
                };
                NotificationEntry notificationEntry2 = this.currentPresentationEntry;
                if (notificationEntry2 != null) {
                    str = notificationEntry2.mKey;
                }
                if (notificationEntry.mKey.equals(str)) {
                    j = 300;
                } else {
                    j = 0;
                }
                handler.postDelayed(runnable, j);
                return;
            }
            return;
        }
        ((KeyguardManager) context.getSystemService("keyguard")).semDismissKeyguard();
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final PopupWindow showReplyButtonViewPopupWindow(final View view, View view2) {
        Integer num;
        LinearLayout linearLayout;
        PopupWindow popupWindow = new PopupWindow(view, -2, -2);
        this.sendButtonPopupWindow = popupWindow;
        popupWindow.setOutsideTouchable(true);
        PopupWindow popupWindow2 = this.sendButtonPopupWindow;
        if (popupWindow2 != null) {
            popupWindow2.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$1
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    SubscreenDeviceModelB5.this.sendButtonPopupWindow = null;
                }
            });
        }
        int dimensionPixelSize = getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.subscreen_noti_detail_reply_button_margin_b5) + view2.getHeight() + (getMainHeaderViewHeight() / 2);
        if (this.mIsFlexMode) {
            SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
            if (subscreenSubRoomNotification != null && (linearLayout = subscreenSubRoomNotification.mSubscreenMainLayout) != null) {
                num = Integer.valueOf(linearLayout.getHeight());
            } else {
                num = null;
            }
            Intrinsics.checkNotNull(num);
            dimensionPixelSize += (720 - num.intValue()) / 2;
        }
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.subscreen_noti_detail_icon_button_bg_size_b5);
        PopupWindow popupWindow3 = this.sendButtonPopupWindow;
        if (popupWindow3 != null) {
            popupWindow3.setTouchInterceptor(new View.OnTouchListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2
                public Boolean downHit = Boolean.FALSE;

                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view3, MotionEvent motionEvent) {
                    boolean z = false;
                    if (motionEvent == null) {
                        return false;
                    }
                    if (motionEvent.getAction() == 0) {
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        if (x > 0.0f) {
                            int i = Ref$IntRef.this.element;
                            if (x < i && y > 0.0f && y < i) {
                                z = true;
                            }
                        }
                        this.downHit = Boolean.valueOf(z);
                    } else if (motionEvent.getAction() == 1) {
                        Boolean bool = this.downHit;
                        Boolean bool2 = Boolean.FALSE;
                        if (Intrinsics.areEqual(bool, bool2)) {
                            PopupWindow popupWindow4 = this.sendButtonPopupWindow;
                            if (popupWindow4 != null) {
                                popupWindow4.dismiss();
                            }
                            return true;
                        }
                        float x2 = motionEvent.getX();
                        float y2 = motionEvent.getY();
                        if (x2 >= 0.0f) {
                            int i2 = Ref$IntRef.this.element;
                            if (x2 <= i2 && y2 >= 0.0f && y2 <= i2) {
                                if (Intrinsics.areEqual(this.downHit, Boolean.TRUE)) {
                                    ((ImageView) view.findViewById(R.id.send)).performClick();
                                    this.downHit = bool2;
                                }
                            }
                        }
                        PopupWindow popupWindow5 = this.sendButtonPopupWindow;
                        if (popupWindow5 != null) {
                            popupWindow5.dismiss();
                        }
                    }
                    return true;
                }
            });
        }
        PopupWindow popupWindow4 = this.sendButtonPopupWindow;
        if (popupWindow4 != null) {
            popupWindow4.showAtLocation(view, 1, 0, dimensionPixelSize);
        }
        this.mSmartReplyClickedByUser = false;
        return this.sendButtonPopupWindow;
    }

    public final void showSmartReplyResultComplete(StringBuilder sb) {
        Object failure;
        boolean z;
        String str;
        SubscreenNotificationInfo subscreenNotificationInfo;
        StringBuilder sb2 = this.mPromptSB;
        this.isPossibleAiReply = false;
        try {
            int i = Result.$r8$clinit;
            String sb3 = sb.toString();
            if (sb3.length() > 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder = this.detailViewHolder;
                if (itemViewHolder != null && (subscreenNotificationInfo = itemViewHolder.mInfo) != null) {
                    str = subscreenNotificationInfo.mKey;
                } else {
                    str = null;
                }
                SmartReplyData smartReplyData = new SmartReplyData();
                smartReplyData.prevPrompt = sb2.toString();
                smartReplyData.replyText = sb3;
                if (str != null) {
                    this.mSmartReplyHashMap.put(str, smartReplyData);
                }
                inflateSmartReplyAI(sb3);
                sb2.setLength(0);
            }
            failure = Unit.INSTANCE;
        } catch (Throwable th) {
            int i2 = Result.$r8$clinit;
            failure = new Result.Failure(th);
        }
        Result.m2571exceptionOrNullimpl(failure);
    }

    public final void showSmartReplyResultFailure(String str) {
        String str2;
        String string;
        boolean z = false;
        enableSmartReplyTriggerBtn("", false);
        resetProgressScaleAnimation();
        LinearLayout linearLayout = this.progressLayout;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LottieAnimationView lottieAnimationView = this.progressingVi;
        if (lottieAnimationView != null) {
            lottieAnimationView.cancelAnimation();
        }
        this.isPossibleAiReply = false;
        this.mPromptSB.setLength(0);
        if (NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA) {
            if (str == null || str.length() == 0) {
                z = true;
            }
            if (!z) {
                TextView textView = this.smartReplyErrorMessageView;
                if (textView != null) {
                    textView.setText(str);
                }
                showErrorMessageWithAnim(this.smartReplyErrorMessageView);
                return;
            }
            return;
        }
        if (str != null) {
            str2 = StringsKt__StringsKt.trim(str).toString();
        } else {
            str2 = null;
        }
        boolean areEqual = Intrinsics.areEqual(str2, "Blocked by input safety filter");
        Context context = this.mContext;
        if (areEqual) {
            string = context.getString(R.string.subscreen_notification_smart_reply_error_safety_filter);
        } else if (Intrinsics.areEqual(str2, "Input is too long")) {
            string = context.getString(R.string.subscreen_notification_smart_reply_error_input_is_too_long);
        } else {
            string = context.getString(R.string.subscreen_notification_smart_reply_error_other);
        }
        TextView textView2 = this.smartReplyErrorMessageView;
        if (textView2 != null) {
            textView2.setText(string);
        }
        showErrorMessageWithAnim(this.smartReplyErrorMessageView);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon
    public final void showUnlockIconAnim() {
        boolean z;
        boolean z2;
        SubScreenManager subScreenManager;
        SubHomeActivity subHomeActivity;
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null) {
            z = subscreenSubRoomNotification.mIsInNotiRoom;
        } else {
            z = false;
        }
        KeyguardActionInfo keyguardActionInfo = this.mKeyguardActionInfo;
        if (keyguardActionInfo != null) {
            z2 = keyguardActionInfo.isShowBouncer;
        } else {
            z2 = false;
        }
        if (!z) {
            Log.d("S.S.N.", "showUnlockIconAnim() return - not in notiRoom");
            return;
        }
        if (z2) {
            Log.d("S.S.N.", "showUnlockIconAnim() return - show bouncer");
            return;
        }
        Lazy lazy = this.mSubScreenManagerLazy;
        if (lazy != null && (subScreenManager = (SubScreenManager) lazy.get()) != null && (subHomeActivity = subScreenManager.mActivity) != null) {
            View inflate = LayoutInflater.from(subHomeActivity).inflate(R.layout.subscreen_notification_unlock_icon_view_b5, (ViewGroup) null);
            AnimationDrawable animationDrawable = (AnimationDrawable) ((ImageView) inflate.findViewById(R.id.unlock_icon_view)).getDrawable();
            final PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
            popupWindow.showAtLocation(inflate, 49, 0, getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.subscreen_noti_unlock_icon_view_top_margin_b5));
            animationDrawable.start();
            inflate.animate().alpha(0.0f).setStartDelay(500L).setDuration(500L).withEndAction(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$showUnlockIconAnim$1$1
                @Override // java.lang.Runnable
                public final void run() {
                    popupWindow.dismiss();
                }
            });
            return;
        }
        Log.e("S.S.N.", "can't inflate unlock icon");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int smallIconPadding(boolean z, boolean z2, boolean z3) {
        int i;
        Resources resources = getMDisplayContext().getResources();
        if (z) {
            i = R.dimen.subscreen_noti_header_icon_circle_padding_b5;
        } else if (z2) {
            i = R.dimen.subscreen_noti_full_popup_icon_circle_padding_b5;
        } else if (z3) {
            i = R.dimen.subscreen_noti_sub_icon_circle_padding_b5;
        } else {
            i = R.dimen.subscreen_noti_icon_circle_padding_b5;
        }
        return resources.getDimensionPixelSize(i);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int squircleRadius(boolean z, boolean z2) {
        int i;
        Resources resources = getMDisplayContext().getResources();
        if (z) {
            i = R.dimen.subscreen_noti_header_small_icon_bg_radius_b5;
        } else if (z2) {
            i = R.dimen.subscreen_noti_popup_small_icon_bg_radius_b5;
        } else {
            i = R.dimen.subscreen_noti_list_small_icon_bg_radius_b5;
        }
        return resources.getDimensionPixelSize(i);
    }

    public final int startNotificationIntent(PendingIntent pendingIntent) {
        Display display = this.mSubDisplay;
        if (display != null) {
            return pendingIntent.sendAndReturnResult(getMDisplayContext(), 0, null, null, null, null, CentralSurfaces.getActivityOptions(display.getDisplayId(), null));
        }
        return -1;
    }

    public final void startProgressSpringAnimation(View view, final boolean z, final Runnable runnable) {
        float f;
        LinearLayout linearLayout;
        float f2 = 0.0f;
        float f3 = 1.0f;
        if (z) {
            if (view.getVisibility() == 0) {
                return;
            }
            runnable.run();
            SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder = this.detailViewHolder;
            LinearLayout linearLayout2 = null;
            if (itemViewHolder != null) {
                linearLayout = itemViewHolder.mReplylayout;
            } else {
                linearLayout = null;
            }
            if (linearLayout != null) {
                linearLayout.setTranslationY(this.mReplyLayoutCurrentPostionY - 304);
            }
            SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder2 = this.detailViewHolder;
            if (itemViewHolder2 != null) {
                linearLayout2 = itemViewHolder2.mReplylayout;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(linearLayout2, (Property<LinearLayout, Float>) View.TRANSLATION_Y, 0.0f);
            ofFloat.setInterpolator(Interpolators.FAST_OUT_LINEAR_IN);
            ofFloat.setDuration(200L);
            ofFloat.start();
            f = 0.85f;
        } else {
            f = 1.0f;
            f3 = 0.0f;
            f2 = 1.0f;
        }
        view.setScaleX(f);
        view.setScaleY(f);
        view.setAlpha(f2);
        resetProgressScaleAnimation();
        view.animate().alpha(f3).setDuration(200L).setListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$startProgressSpringAnimation$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        SpringForce springForce = new SpringForce(f3);
        springForce.setStiffness(200.0f);
        springForce.setDampingRatio(0.75f);
        SpringAnimation springAnimation = new SpringAnimation(view, DynamicAnimation.SCALE_X);
        this.mProgressScaleAnimationX = springAnimation;
        springAnimation.mSpring = springForce;
        springAnimation.start();
        SpringAnimation springAnimation2 = new SpringAnimation(view, DynamicAnimation.SCALE_Y);
        this.mProgressScaleAnimationY = springAnimation2;
        springAnimation2.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$startProgressSpringAnimation$2
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f4, float f5) {
                Runnable runnable2;
                if (!z && (runnable2 = runnable) != null) {
                    runnable2.run();
                }
                SubscreenDeviceModelB5 subscreenDeviceModelB5 = this;
                subscreenDeviceModelB5.mProgressScaleAnimationX = null;
                subscreenDeviceModelB5.mProgressScaleAnimationY = null;
            }
        });
        SpringAnimation springAnimation3 = this.mProgressScaleAnimationY;
        if (springAnimation3 != null) {
            springAnimation3.mSpring = springForce;
            springAnimation3.start();
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void unregisterAODTspReceiver() {
        try {
            this.mContext.unregisterReceiver(this.aodTspUpdateReceiver);
        } catch (IllegalArgumentException e) {
            Log.e("S.S.N.", " unregisterAODTspReceiver IllegalArgumentException: " + e.getMessage());
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateContentScroll() {
        this.mIsContentScroll = true;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateIconContainer(View view, boolean z) {
        int i;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.icon_container);
        View findViewById = view.findViewById(R.id.spacer);
        int i2 = 0;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        frameLayout.setVisibility(i);
        if (z) {
            i2 = 8;
        }
        findViewById.setVisibility(i2);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateImportBadgeIconRing(View view, boolean z) {
        ImageView imageView;
        if (view != null) {
            imageView = (ImageView) view.findViewById(R.id.subscreen_notification_important_badge_ring);
        } else {
            imageView = null;
        }
        if (imageView == null) {
            return;
        }
        if (z) {
            int color = getMDisplayContext().getColor(android.R.color.search_url_text);
            if (isShowNotificationAppIcon()) {
                imageView.setImageDrawable((VectorDrawable) getMDisplayContext().getDrawable(R.drawable.squircle_tray_stroke_small));
                imageView.setColorFilter(color);
            } else {
                imageView.setColorFilter((ColorFilter) null);
                imageView.setLayerType(1, null);
                imageView.setImageDrawable(getMDisplayContext().getDrawable(R.drawable.subscreen_notification_conversation_badge_ring_b5));
            }
            imageView.setVisibility(0);
            return;
        }
        imageView.setVisibility(8);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateMainHeaderView(LinearLayout linearLayout) {
        this.mHeaderViewLayout = linearLayout.findViewById(R.id.header_layout);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateMainHeaderViewVisibility(int i) {
        View view = this.mHeaderViewLayout;
        if (view != null) {
            view.setVisibility(i);
        }
        View view2 = this.mHeaderViewLayout;
        if (view2 != null) {
            view2.setAlpha(1.0f);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateSamsungAccount() {
        Account[] accountArr;
        boolean z;
        Account account = null;
        try {
            accountArr = AccountManager.get(this.mContext).getAccountsByTypeAsUser("com.osp.app.signin", UserHandle.of(this.currentUserId));
        } catch (SecurityException e) {
            String message = e.getMessage();
            if (message != null) {
                Log.e("S.S.N.", message);
            }
            accountArr = null;
        }
        boolean z2 = false;
        if (accountArr != null && accountArr.length > 0) {
            account = accountArr[0];
        }
        Account account2 = this.currentAccount;
        if (account2 != null && account != null) {
            z = !account2.name.equals(account.name);
        } else if (account2 == null && account == null) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            Log.d("S.S.N.", "updateSamsungAccount() : No Change");
            return;
        }
        this.currentAccount = account;
        if (account != null) {
            z2 = true;
        }
        this.isSALoggedIn = z2;
        ThreadUtils.postOnBackgroundThread(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$getChildAccount$1
            /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void run() {
                /*
                    r13 = this;
                    java.lang.String r0 = ""
                    java.lang.String r1 = "result_message"
                    java.lang.String r2 = "result_code"
                    java.lang.String r3 = "i5to7wq0er"
                    java.lang.String r4 = "content://com.samsung.android.samsungaccount.accountmanagerprovider"
                    java.lang.String r5 = "S.S.N."
                    com.android.systemui.statusbar.notification.SubscreenDeviceModelB5 r6 = com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.this
                    int r7 = com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.$r8$clinit
                    android.content.Context r7 = r6.mContext
                    android.content.ContentResolver r7 = r7.getContentResolver()
                    r8 = 0
                    r9 = 0
                    r10 = 1
                    android.net.Uri r11 = android.net.Uri.parse(r4)     // Catch: java.lang.Exception -> L53
                    java.lang.String r12 = "isChildAccount"
                    android.os.Bundle r7 = r7.call(r11, r12, r3, r8)     // Catch: java.lang.Exception -> L53
                    if (r7 == 0) goto L4d
                    int r11 = r7.getInt(r2, r10)
                    java.lang.String r7 = r7.getString(r1, r0)
                    if (r11 != 0) goto L47
                    java.lang.String r11 = "true"
                    boolean r7 = r11.equals(r7)
                    if (r7 == 0) goto L41
                    java.lang.String r7 = "This account is a child account."
                    android.util.Log.d(r5, r7)
                    r7 = r10
                    goto L5e
                L41:
                    java.lang.String r7 = "This account is not a child account."
                    android.util.Log.d(r5, r7)
                    goto L5d
                L47:
                    java.lang.String r11 = "isChildAccount Fail : resultMessage = "
                    android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r11, r7, r5)
                    goto L5d
                L4d:
                    java.lang.String r7 = "Result bundle is null"
                    android.util.Log.d(r5, r7)
                    goto L5d
                L53:
                    r7 = move-exception
                    java.lang.String r7 = r7.getMessage()
                    java.lang.String r11 = "Exception Error isChildAccount : "
                    android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r11, r7, r5)
                L5d:
                    r7 = r9
                L5e:
                    if (r7 == 0) goto L65
                    boolean r7 = com.android.systemui.edgelighting.effect.utils.SalesCode.isKor
                    if (r7 != 0) goto L65
                    r9 = r10
                L65:
                    r6.isChildAccount = r9
                    com.android.systemui.statusbar.notification.SubscreenDeviceModelB5 r6 = com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.this
                    boolean r7 = r6.isChildAccount
                    if (r7 == 0) goto Lac
                    android.content.Context r7 = r6.mContext
                    android.content.ContentResolver r7 = r7.getContentResolver()
                    android.net.Uri r4 = android.net.Uri.parse(r4)     // Catch: java.lang.Exception -> L9f
                    java.lang.String r9 = "getFamilyServiceInfo"
                    android.os.Bundle r3 = r7.call(r4, r9, r3, r8)     // Catch: java.lang.Exception -> L9f
                    if (r3 == 0) goto La9
                    int r2 = r3.getInt(r2, r10)
                    if (r2 != 0) goto L95
                    java.lang.String r0 = "result_bundle"
                    android.os.Bundle r0 = r3.getBundle(r0)
                    if (r0 == 0) goto La9
                    java.lang.String r1 = "childGraduateAge"
                    int r0 = r0.getInt(r1)
                    goto Laa
                L95:
                    java.lang.String r0 = r3.getString(r1, r0)
                    java.lang.String r1 = "getChildGraduateAge() Fail : resultMessage = "
                    android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r1, r0, r5)
                    goto La9
                L9f:
                    r0 = move-exception
                    java.lang.String r0 = r0.getMessage()
                    java.lang.String r1 = "Exception Error getFamilyServiceInfo : "
                    android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r1, r0, r5)
                La9:
                    r0 = -1
                Laa:
                    r6.childGraduateAge = r0
                Lac:
                    com.android.systemui.statusbar.notification.SubscreenDeviceModelB5 r13 = com.android.systemui.statusbar.notification.SubscreenDeviceModelB5.this
                    boolean r13 = r13.isChildAccount
                    java.lang.String r0 = "getChildAccount() : isChildAccount "
                    com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(r0, r13, r5)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$getChildAccount$1.run():void");
            }
        });
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("updateSamsungAccount() : isSALoggedIn ", this.isSALoggedIn, "S.S.N.");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateShadowIconColor(View view, NotificationEntry notificationEntry) {
        int i;
        Drawable drawable;
        ExpandableNotificationRow expandableNotificationRow;
        if (view == null) {
            return;
        }
        if (notificationEntry != null && (expandableNotificationRow = notificationEntry.row) != null) {
            i = ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).getAppPrimaryColor(expandableNotificationRow);
        } else {
            i = 0;
        }
        boolean isGrayScaleIcon = isGrayScaleIcon(notificationEntry);
        ImageView imageView = (ImageView) view.findViewById(R.id.group_icon_shadow);
        if (imageView != null) {
            imageView.setVisibility(0);
            if (isShowNotificationAppIcon()) {
                imageView.clearColorFilter();
                Drawable.ConstantState constantState = ((ImageView) view.findViewById(R.id.app_icon)).getDrawable().getConstantState();
                if (constantState != null && (drawable = constantState.newDrawable()) != null) {
                    drawable.mutate().setAlpha(76);
                } else {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                return;
            }
            if (isGrayScaleIcon) {
                imageView.setColorFilter(Color.argb((Color.alpha(i) * 3) / 10, Color.red(i), Color.green(i), Color.blue(i)), PorterDuff.Mode.SRC_IN);
                return;
            }
            Context context = this.mContext;
            int color = context.getColor(R.color.notification_non_grayscale_border_color);
            int color2 = context.getColor(R.color.notification_non_grayscale_fill_color);
            GradientDrawable gradientDrawable = (GradientDrawable) imageView.getDrawable().mutate();
            gradientDrawable.setColor(Color.argb((Color.alpha(color2) * 3) / 10, Color.red(color2), Color.green(color2), Color.blue(color2)));
            gradientDrawable.setStroke(context.getResources().getDimensionPixelSize(R.dimen.notification_icon_border_width), Color.argb((Color.alpha(color) * 3) / 10, Color.red(color), Color.green(color), Color.blue(color)));
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateSmallIconBg(ImageView imageView, boolean z, boolean z2, boolean z3) {
        int smallIconPadding = smallIconPadding(z, z2, z3);
        if (imageView != null) {
            imageView.setBackground(getMDisplayContext().getResources().getDrawable(R.drawable.notification_icon_circle, null));
            imageView.setPadding(smallIconPadding, smallIconPadding, smallIconPadding, smallIconPadding);
        }
    }

    public final void updateSmartReplyVariables() {
        boolean z;
        boolean z2;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        settingsHelper.getClass();
        boolean z3 = true;
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH && settingsHelper.mItemLists.get("ai_info_confirmed").getIntValue() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.isAiInfoConfirmed = z;
        this.isSuggestResponsesEnabled = settingsHelper.isSuggestResponsesEnabled();
        if (Settings.Secure.getInt(this.mContext.getContentResolver(), "shopdemo", 0) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.isRDUMode = z2;
        updateSamsungAccount();
        boolean z4 = this.isRDUMode;
        boolean z5 = this.isSALoggedIn;
        boolean z6 = this.isChildAccount;
        boolean z7 = this.isAiInfoConfirmed;
        boolean z8 = this.isSuggestResponsesEnabled;
        if (!NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA || !isPreventOnlineProcessing()) {
            z3 = false;
        }
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("isRDUMode: ", z4, " isSALoggedIn: ", z5, " isChildAccount: ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, z6, " isAiInfoConfirmed: ", z7, " isSuggestionResponsesEnabled: ");
        KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(m, z8, " isPreventOnlineProcessing: ", z3, "S.S.N.");
    }

    public final void updateVisibilityForSmartReplyLayout(int i) {
        LinearLayout linearLayout;
        TextView textView;
        SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder = this.detailViewHolder;
        ImageView imageView = null;
        if (itemViewHolder != null) {
            linearLayout = itemViewHolder.mSmartReplyLayout;
        } else {
            linearLayout = null;
        }
        if (linearLayout != null) {
            linearLayout.setVisibility(i);
        }
        ImageView imageView2 = this.aiDisclaimerBtn;
        if (imageView2 != null) {
            imageView = imageView2;
        }
        imageView.setVisibility(i);
        if (NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA && (textView = this.smartReplyAiLogoText) != null) {
            textView.setVisibility(i);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean useTopPresentation() {
        StatusBarNotification statusBarNotification;
        Notification notification2;
        NotificationEntry notificationEntry = this.currentPresentationEntry;
        boolean z = false;
        if (notificationEntry != null && (statusBarNotification = notificationEntry.mSbn) != null && (notification2 = statusBarNotification.getNotification()) != null && Intrinsics.areEqual("call", notification2.category) && notification2.isStyle(Notification.CallStyle.class)) {
            z = true;
        }
        return !z;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void enableGoToTopButton() {
    }
}
