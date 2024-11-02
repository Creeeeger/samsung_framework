package com.android.systemui.qs.tiles.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.text.Annotation;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.settingslib.Utils;
import com.android.settingslib.mobile.MobileMappings;
import com.android.settingslib.wifi.WifiEnterpriseRestrictionUtils;
import com.android.systemui.Prefs;
import com.android.systemui.R;
import com.android.systemui.accessibility.floatingmenu.AnnotationLinkSpan;
import com.android.systemui.accessibility.floatingmenu.AnnotationLinkSpan$$ExternalSyntheticLambda1;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.qs.tiles.dialog.InternetDialogController;
import com.android.systemui.statusbar.connectivity.AccessPointController;
import com.android.systemui.statusbar.connectivity.AccessPointControllerImpl;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.policy.LocationControllerImpl;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.wifitrackerlib.WifiEntry;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class InternetDialog extends SystemUIDialog implements InternetDialogController.InternetDialogCallback, Window.Callback {
    public static final boolean DEBUG = Log.isLoggable("InternetDialog", 3);
    protected InternetAdapter mAdapter;
    public Button mAirplaneModeButton;
    public TextView mAirplaneModeSummaryText;
    public AlertDialog mAlertDialog;
    public final Executor mBackgroundExecutor;
    public Drawable mBackgroundOff;
    public Drawable mBackgroundOn;
    public final boolean mCanChangeWifiState;
    public final boolean mCanConfigMobileData;
    protected boolean mCanConfigWifi;
    public LinearLayout mConnectedWifListLayout;
    protected WifiEntry mConnectedWifiEntry;
    public ImageView mConnectedWifiIcon;
    public TextView mConnectedWifiSummaryText;
    public TextView mConnectedWifiTitleText;
    public final Context mContext;
    public int mDefaultDataSubId;
    public final DialogLaunchAnimator mDialogLaunchAnimator;
    protected View mDialogView;
    public View mDivider;
    public Button mDoneButton;
    public LinearLayout mEthernetLayout;
    public final Handler mHandler;
    protected boolean mHasMoreWifiEntries;
    public final InternetDialog$$ExternalSyntheticLambda0 mHideProgressBarRunnable;
    public final InternetDialog$$ExternalSyntheticLambda0 mHideSearchingRunnable;
    public final InternetDialogController mInternetDialogController;
    public final InternetDialogFactory mInternetDialogFactory;
    public TextView mInternetDialogSubTitle;
    public TextView mInternetDialogTitle;
    public boolean mIsProgressBarVisible;
    public boolean mIsSearchingHidden;
    public final KeyguardStateController mKeyguard;
    public Switch mMobileDataToggle;
    public LinearLayout mMobileNetworkLayout;
    public TextView mMobileSummaryText;
    public TextView mMobileTitleText;
    public View mMobileToggleDivider;
    public ProgressBar mProgressBar;
    public LinearLayout mSecondaryMobileNetworkLayout;
    public TextView mSecondaryMobileSummaryText;
    public TextView mSecondaryMobileTitleText;
    public LinearLayout mSeeAllLayout;
    public ImageView mSignalIcon;
    public TelephonyManager mTelephonyManager;
    public LinearLayout mTurnWifiOnLayout;
    public final UiEventLogger mUiEventLogger;
    public Switch mWiFiToggle;
    protected int mWifiEntriesCount;
    public int mWifiNetworkHeight;
    public RecyclerView mWifiRecyclerView;
    public LinearLayout mWifiScanNotifyLayout;
    public TextView mWifiScanNotifyText;
    public ImageView mWifiSettingsIcon;
    public TextView mWifiToggleTitleText;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum InternetDialogEvent implements UiEventLogger.UiEventEnum {
        INTERNET_DIALOG_SHOW(843);

        private final int mId;

        InternetDialogEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    public InternetDialog(Context context, InternetDialogFactory internetDialogFactory, InternetDialogController internetDialogController, boolean z, boolean z2, boolean z3, UiEventLogger uiEventLogger, DialogLaunchAnimator dialogLaunchAnimator, Handler handler, Executor executor, KeyguardStateController keyguardStateController) {
        super(context);
        boolean z4;
        this.mBackgroundOff = null;
        this.mDefaultDataSubId = -1;
        this.mHideProgressBarRunnable = new InternetDialog$$ExternalSyntheticLambda0(this, 2);
        this.mHideSearchingRunnable = new InternetDialog$$ExternalSyntheticLambda0(this, 3);
        if (DEBUG) {
            Log.d("InternetDialog", "Init InternetDialog");
        }
        this.mContext = getContext();
        this.mHandler = handler;
        this.mBackgroundExecutor = executor;
        this.mInternetDialogFactory = internetDialogFactory;
        this.mInternetDialogController = internetDialogController;
        internetDialogController.getClass();
        this.mDefaultDataSubId = internetDialogController.getDefaultDataSubscriptionId();
        this.mTelephonyManager = internetDialogController.mTelephonyManager;
        this.mCanConfigMobileData = z;
        this.mCanConfigWifi = z2;
        if (!WifiEnterpriseRestrictionUtils.hasUserRestrictionFromT(context, "no_change_wifi_state")) {
            z4 = true;
        } else {
            Log.w("WifiEntResUtils", "WI-FI state isn't allowed to change due to user restriction.");
            z4 = false;
        }
        this.mCanChangeWifiState = z4;
        this.mKeyguard = keyguardStateController;
        this.mUiEventLogger = uiEventLogger;
        this.mDialogLaunchAnimator = dialogLaunchAnimator;
        this.mAdapter = new InternetAdapter(internetDialogController);
        if (!z3) {
            getWindow().setType(2038);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getMobileNetworkSummary(int r8) {
        /*
            r7 = this;
            com.android.systemui.qs.tiles.dialog.InternetDialogController r7 = r7.mInternetDialogController
            com.android.settingslib.mobile.MobileMappings$Config r0 = r7.mConfig
            java.util.Map<java.lang.Integer, android.telephony.TelephonyDisplayInfo> r1 = r7.mSubIdTelephonyDisplayInfoMap
            java.lang.Integer r2 = java.lang.Integer.valueOf(r8)
            android.telephony.TelephonyDisplayInfo r3 = com.android.systemui.qs.tiles.dialog.InternetDialogController.DEFAULT_TELEPHONY_DISPLAY_INFO
            java.lang.Object r1 = r1.getOrDefault(r2, r3)
            android.telephony.TelephonyDisplayInfo r1 = (android.telephony.TelephonyDisplayInfo) r1
            int r2 = r1.getOverrideNetworkType()
            if (r2 != 0) goto L21
            int r1 = r1.getNetworkType()
            java.lang.String r1 = java.lang.Integer.toString(r1)
            goto L29
        L21:
            int r1 = r1.getOverrideNetworkType()
            java.lang.String r1 = com.android.settingslib.mobile.MobileMappings.toDisplayIconKey(r1)
        L29:
            com.android.settingslib.mobile.MobileMappings.mapIconSets(r0)
            java.util.Map r2 = com.android.settingslib.mobile.MobileMappings.mapIconSets(r0)
            java.util.HashMap r2 = (java.util.HashMap) r2
            java.lang.Object r2 = r2.get(r1)
            android.content.Context r3 = r7.mContext
            if (r2 != 0) goto L46
            boolean r0 = com.android.systemui.qs.tiles.dialog.InternetDialogController.DEBUG
            if (r0 == 0) goto L76
            java.lang.String r0 = "InternetDialogController"
            java.lang.String r1 = "The description of network type is empty."
            android.util.Log.d(r0, r1)
            goto L76
        L46:
            java.util.Map r0 = com.android.settingslib.mobile.MobileMappings.mapIconSets(r0)
            java.util.HashMap r0 = (java.util.HashMap) r0
            java.lang.Object r0 = r0.get(r1)
            com.android.settingslib.SignalIcon$MobileIconGroup r0 = (com.android.settingslib.SignalIcon$MobileIconGroup) r0
            java.util.Objects.requireNonNull(r0)
            boolean r1 = r7.isCarrierNetworkActive()
            if (r1 == 0) goto L60
            com.android.settingslib.SignalIcon$MobileIconGroup r0 = com.android.settingslib.mobile.TelephonyIcons.CARRIER_MERGED_WIFI
            int r0 = r0.dataContentDescription
            goto L6b
        L60:
            boolean r1 = r7.mCarrierNetworkChangeMode
            if (r1 == 0) goto L69
            com.android.settingslib.SignalIcon$MobileIconGroup r0 = com.android.settingslib.mobile.TelephonyIcons.CARRIER_NETWORK_CHANGE
            int r0 = r0.dataContentDescription
            goto L6b
        L69:
            int r0 = r0.dataContentDescription
        L6b:
            if (r0 == 0) goto L76
            android.content.res.Resources r1 = android.telephony.SubscriptionManager.getResourcesForSubId(r3, r8)
            java.lang.String r0 = r1.getString(r0)
            goto L78
        L76:
            java.lang.String r0 = ""
        L78:
            boolean r1 = r7.isMobileDataEnabled()
            if (r1 != 0) goto L86
            r7 = 2131954481(0x7f130b31, float:1.9545462E38)
            java.lang.String r7 = r3.getString(r7)
            goto Ld6
        L86:
            int r1 = r7.mDefaultDataSubId
            r2 = 1
            r4 = 0
            if (r8 != r1) goto L8e
            r1 = r2
            goto L8f
        L8e:
            r1 = r4
        L8f:
            int r5 = r7.getActiveAutoSwitchNonDdsSubId()
            r6 = -1
            if (r5 == r6) goto L98
            r5 = r2
            goto L99
        L98:
            r5 = r4
        L99:
            boolean r6 = r7.activeNetworkIsCellular()
            if (r6 != 0) goto Lb4
            boolean r6 = r7.isCarrierNetworkActive()
            if (r6 == 0) goto La6
            goto Lb4
        La6:
            boolean r7 = r7.isDataStateInService(r8)
            if (r7 != 0) goto Ld5
            r7 = 2131954480(0x7f130b30, float:1.954546E38)
            java.lang.String r0 = r3.getString(r7)
            goto Ld5
        Lb4:
            r7 = 2
            java.lang.Object[] r7 = new java.lang.Object[r7]
            if (r1 == 0) goto Lc3
            if (r5 == 0) goto Lbf
            r8 = 2131954482(0x7f130b32, float:1.9545464E38)
            goto Lc6
        Lbf:
            r8 = 2131954476(0x7f130b2c, float:1.9545452E38)
            goto Lc6
        Lc3:
            r8 = 2131954505(0x7f130b49, float:1.9545511E38)
        Lc6:
            java.lang.String r8 = r3.getString(r8)
            r7[r4] = r8
            r7[r2] = r0
            r8 = 2131954897(0x7f130cd1, float:1.9546306E38)
            java.lang.String r0 = r3.getString(r8, r7)
        Ld5:
            r7 = r0
        Ld6:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.dialog.InternetDialog.getMobileNetworkSummary(int):java.lang.String");
    }

    public final CharSequence getMobileNetworkTitle(int i) {
        final InternetDialogController internetDialogController = this.mInternetDialogController;
        internetDialogController.getClass();
        Supplier supplier = new Supplier() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                InternetDialogController internetDialogController2 = InternetDialogController.this;
                return internetDialogController2.mKeyguardUpdateMonitor.getFilteredSubscriptionInfo().stream().filter(new InternetDialogController$$ExternalSyntheticLambda6()).map(new InternetDialogController$$ExternalSyntheticLambda4(internetDialogController2, 1));
            }
        };
        final HashSet hashSet = new HashSet();
        final int i2 = 0;
        final Set set = (Set) ((Stream) supplier.get()).filter(new Predicate() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean add;
                switch (i2) {
                    case 0:
                        add = hashSet.add(((InternetDialogController.C1DisplayInfo) obj).originalName);
                        break;
                    default:
                        add = hashSet.add(((InternetDialogController.C1DisplayInfo) obj).uniqueName);
                        break;
                }
                return !add;
            }
        }).map(new Function() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i2) {
                    case 0:
                        return ((InternetDialogController.C1DisplayInfo) obj).originalName;
                    case 1:
                        return ((InternetDialogController.C1DisplayInfo) obj).uniqueName;
                    case 2:
                        return Integer.valueOf(((InternetDialogController.C1DisplayInfo) obj).subscriptionInfo.getSubscriptionId());
                    default:
                        return ((InternetDialogController.C1DisplayInfo) obj).uniqueName;
                }
            }
        }).collect(Collectors.toSet());
        hashSet.clear();
        Stream stream = (Stream) supplier.get();
        final Context context = internetDialogController.mContext;
        final int i3 = 1;
        Stream map = ((Stream) supplier.get()).map(new Function() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda5
            /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0059  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x005c  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object apply(java.lang.Object r4) {
                /*
                    r3 = this;
                    java.util.Set r0 = r1
                    android.content.Context r3 = r2
                    com.android.systemui.qs.tiles.dialog.InternetDialogController$1DisplayInfo r4 = (com.android.systemui.qs.tiles.dialog.InternetDialogController.C1DisplayInfo) r4
                    java.lang.CharSequence r1 = r4.originalName
                    boolean r0 = r0.contains(r1)
                    java.lang.CharSequence r1 = r4.originalName
                    if (r0 == 0) goto L73
                    android.telephony.SubscriptionInfo r0 = r4.subscriptionInfo
                    if (r0 == 0) goto L33
                    java.lang.Class<android.telephony.TelephonyManager> r2 = android.telephony.TelephonyManager.class
                    java.lang.Object r3 = r3.getSystemService(r2)
                    android.telephony.TelephonyManager r3 = (android.telephony.TelephonyManager) r3
                    int r0 = r0.getSubscriptionId()
                    android.telephony.TelephonyManager r3 = r3.createForSubscriptionId(r0)
                    java.lang.String r3 = r3.getLine1Number()
                    boolean r0 = android.text.TextUtils.isEmpty(r3)
                    if (r0 != 0) goto L33
                    java.lang.String r3 = android.telephony.PhoneNumberUtils.formatNumber(r3)
                    goto L34
                L33:
                    r3 = 0
                L34:
                    android.text.BidiFormatter r0 = android.text.BidiFormatter.getInstance()
                    android.text.TextDirectionHeuristic r2 = android.text.TextDirectionHeuristics.LTR
                    java.lang.String r3 = r0.unicodeWrap(r3, r2)
                    if (r3 == 0) goto L51
                    int r0 = r3.length()
                    r2 = 4
                    if (r0 <= r2) goto L53
                    int r0 = r3.length()
                    int r0 = r0 - r2
                    java.lang.String r3 = r3.substring(r0)
                    goto L53
                L51:
                    java.lang.String r3 = ""
                L53:
                    boolean r0 = android.text.TextUtils.isEmpty(r3)
                    if (r0 == 0) goto L5c
                    r4.uniqueName = r1
                    goto L75
                L5c:
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    r0.append(r1)
                    java.lang.String r1 = " "
                    r0.append(r1)
                    r0.append(r3)
                    java.lang.String r3 = r0.toString()
                    r4.uniqueName = r3
                    goto L75
                L73:
                    r4.uniqueName = r1
                L75:
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda5.apply(java.lang.Object):java.lang.Object");
            }
        }).map(new InternetDialogController$$ExternalSyntheticLambda4((Set) stream.map(new Function() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                    	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    this = this;
                    java.util.Set r0 = r1
                    android.content.Context r3 = r2
                    com.android.systemui.qs.tiles.dialog.InternetDialogController$1DisplayInfo r4 = (com.android.systemui.qs.tiles.dialog.InternetDialogController.C1DisplayInfo) r4
                    java.lang.CharSequence r1 = r4.originalName
                    boolean r0 = r0.contains(r1)
                    java.lang.CharSequence r1 = r4.originalName
                    if (r0 == 0) goto L73
                    android.telephony.SubscriptionInfo r0 = r4.subscriptionInfo
                    if (r0 == 0) goto L33
                    java.lang.Class<android.telephony.TelephonyManager> r2 = android.telephony.TelephonyManager.class
                    java.lang.Object r3 = r3.getSystemService(r2)
                    android.telephony.TelephonyManager r3 = (android.telephony.TelephonyManager) r3
                    int r0 = r0.getSubscriptionId()
                    android.telephony.TelephonyManager r3 = r3.createForSubscriptionId(r0)
                    java.lang.String r3 = r3.getLine1Number()
                    boolean r0 = android.text.TextUtils.isEmpty(r3)
                    if (r0 != 0) goto L33
                    java.lang.String r3 = android.telephony.PhoneNumberUtils.formatNumber(r3)
                    goto L34
                L33:
                    r3 = 0
                L34:
                    android.text.BidiFormatter r0 = android.text.BidiFormatter.getInstance()
                    android.text.TextDirectionHeuristic r2 = android.text.TextDirectionHeuristics.LTR
                    java.lang.String r3 = r0.unicodeWrap(r3, r2)
                    if (r3 == 0) goto L51
                    int r0 = r3.length()
                    r2 = 4
                    if (r0 <= r2) goto L53
                    int r0 = r3.length()
                    int r0 = r0 - r2
                    java.lang.String r3 = r3.substring(r0)
                    goto L53
                L51:
                    java.lang.String r3 = ""
                L53:
                    boolean r0 = android.text.TextUtils.isEmpty(r3)
                    if (r0 == 0) goto L5c
                    r4.uniqueName = r1
                    goto L75
                L5c:
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    r0.append(r1)
                    java.lang.String r1 = " "
                    r0.append(r1)
                    r0.append(r3)
                    java.lang.String r3 = r0.toString()
                    r4.uniqueName = r3
                    goto L75
                L73:
                    r4.uniqueName = r1
                L75:
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda5.apply(java.lang.Object):java.lang.Object");
            }
        }).filter(new Predicate() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean add;
                switch (i3) {
                    case 0:
                        add = hashSet.add(((InternetDialogController.C1DisplayInfo) obj).originalName);
                        break;
                    default:
                        add = hashSet.add(((InternetDialogController.C1DisplayInfo) obj).uniqueName);
                        break;
                }
                return !add;
            }
        }).map(new Function() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i3) {
                    case 0:
                        return ((InternetDialogController.C1DisplayInfo) obj).originalName;
                    case 1:
                        return ((InternetDialogController.C1DisplayInfo) obj).uniqueName;
                    case 2:
                        return Integer.valueOf(((InternetDialogController.C1DisplayInfo) obj).subscriptionInfo.getSubscriptionId());
                    default:
                        return ((InternetDialogController.C1DisplayInfo) obj).uniqueName;
                }
            }
        }).collect(Collectors.toSet()), i2));
        final int i4 = 2;
        final int i5 = 3;
        return (CharSequence) ((Map) map.collect(Collectors.toMap(new Function() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i4) {
                    case 0:
                        return ((InternetDialogController.C1DisplayInfo) obj).originalName;
                    case 1:
                        return ((InternetDialogController.C1DisplayInfo) obj).uniqueName;
                    case 2:
                        return Integer.valueOf(((InternetDialogController.C1DisplayInfo) obj).subscriptionInfo.getSubscriptionId());
                    default:
                        return ((InternetDialogController.C1DisplayInfo) obj).uniqueName;
                }
            }
        }, new Function() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialogController$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i5) {
                    case 0:
                        return ((InternetDialogController.C1DisplayInfo) obj).originalName;
                    case 1:
                        return ((InternetDialogController.C1DisplayInfo) obj).uniqueName;
                    case 2:
                        return Integer.valueOf(((InternetDialogController.C1DisplayInfo) obj).subscriptionInfo.getSubscriptionId());
                    default:
                        return ((InternetDialogController.C1DisplayInfo) obj).uniqueName;
                }
            }
        }))).getOrDefault(Integer.valueOf(i), "");
    }

    public final Drawable getSignalStrengthDrawable(int i) {
        InternetDialogController internetDialogController = this.mInternetDialogController;
        Context context = internetDialogController.mContext;
        Drawable drawable = context.getDrawable(R.drawable.ic_signal_strength_zero_bar_no_internet);
        try {
            if (internetDialogController.mTelephonyManager == null) {
                if (InternetDialogController.DEBUG) {
                    Log.d("InternetDialogController", "TelephonyManager is null");
                }
            } else {
                boolean isCarrierNetworkActive = internetDialogController.isCarrierNetworkActive();
                if (internetDialogController.isDataStateInService(i) || internetDialogController.isVoiceStateInService(i) || isCarrierNetworkActive) {
                    AtomicReference atomicReference = new AtomicReference();
                    atomicReference.set(internetDialogController.getSignalStrengthDrawableWithLevel(i, isCarrierNetworkActive));
                    drawable = (Drawable) atomicReference.get();
                }
                int colorAttrDefaultColor = Utils.getColorAttrDefaultColor(android.R.attr.textColorTertiary, context, 0);
                if (internetDialogController.activeNetworkIsCellular() || isCarrierNetworkActive) {
                    colorAttrDefaultColor = context.getColor(R.color.connected_network_primary_color);
                }
                drawable.setTint(colorAttrDefaultColor);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return drawable;
    }

    public final CharSequence getSubtitleText() {
        boolean z;
        InternetDialogController internetDialogController = this.mInternetDialogController;
        boolean z2 = true;
        if (this.mIsProgressBarVisible && !this.mIsSearchingHidden) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = internetDialogController.mCanConfigWifi;
        boolean z4 = InternetDialogController.DEBUG;
        Context context = internetDialogController.mContext;
        if (z3 && !internetDialogController.isWifiEnabled()) {
            if (z4) {
                Log.d("InternetDialogController", "Wi-Fi off.");
            }
            return context.getText(InternetDialogController.SUBTITLE_TEXT_WIFI_IS_OFF);
        }
        if (!internetDialogController.mKeyguardStateController.isUnlocked()) {
            if (z4) {
                Log.d("InternetDialogController", "The device is locked.");
            }
            return context.getText(InternetDialogController.SUBTITLE_TEXT_UNLOCK_TO_VIEW_NETWORKS);
        }
        if (internetDialogController.mHasWifiEntries) {
            if (internetDialogController.mCanConfigWifi) {
                return context.getText(InternetDialogController.SUBTITLE_TEXT_TAP_A_NETWORK_TO_CONNECT);
            }
        } else {
            if (internetDialogController.mCanConfigWifi && z) {
                return context.getText(InternetDialogController.SUBTITLE_TEXT_SEARCHING_FOR_NETWORKS);
            }
            boolean isCarrierNetworkActive = internetDialogController.isCarrierNetworkActive();
            int i = InternetDialogController.SUBTITLE_TEXT_NON_CARRIER_NETWORK_UNAVAILABLE;
            if (isCarrierNetworkActive) {
                return context.getText(i);
            }
            if (z4) {
                Log.d("InternetDialogController", "No Wi-Fi item.");
            }
            if (internetDialogController.getActiveAutoSwitchNonDdsSubId() == -1) {
                z2 = false;
            }
            boolean hasActiveSubId = internetDialogController.hasActiveSubId();
            int i2 = InternetDialogController.SUBTITLE_TEXT_ALL_CARRIER_NETWORK_UNAVAILABLE;
            if (hasActiveSubId && (internetDialogController.isVoiceStateInService(internetDialogController.mDefaultDataSubId) || internetDialogController.isDataStateInService(internetDialogController.mDefaultDataSubId) || z2)) {
                if (internetDialogController.mCanConfigWifi && !internetDialogController.isMobileDataEnabled()) {
                    if (z4) {
                        Log.d("InternetDialogController", "Mobile data off");
                    }
                    return context.getText(i);
                }
                if (!internetDialogController.activeNetworkIsCellular()) {
                    if (z4) {
                        Log.d("InternetDialogController", "No carrier data.");
                    }
                    return context.getText(i2);
                }
                if (internetDialogController.mCanConfigWifi) {
                    return context.getText(i);
                }
            } else {
                if (z4) {
                    Log.d("InternetDialogController", "No carrier or service is out of service.");
                }
                return context.getText(i2);
            }
        }
        return null;
    }

    public int getWifiListMaxCount() {
        int i;
        int i2 = 3;
        if (this.mEthernetLayout.getVisibility() == 0) {
            i = 3;
        } else {
            i = 4;
        }
        if (this.mMobileNetworkLayout.getVisibility() == 0) {
            i--;
        }
        if (i <= 3) {
            i2 = i;
        }
        if (this.mConnectedWifListLayout.getVisibility() == 0) {
            return i2 - 1;
        }
        return i2;
    }

    public void hideWifiViews() {
        setProgressBarVisible(false);
        this.mTurnWifiOnLayout.setVisibility(8);
        this.mConnectedWifListLayout.setVisibility(8);
        this.mWifiRecyclerView.setVisibility(8);
        this.mSeeAllLayout.setVisibility(8);
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog, android.app.AlertDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        CharSequence text;
        super.onCreate(bundle);
        if (DEBUG) {
            Log.d("InternetDialog", "onCreate");
        }
        this.mUiEventLogger.log(InternetDialogEvent.INTERNET_DIALOG_SHOW);
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.internet_connectivity_dialog, (ViewGroup) null);
        this.mDialogView = inflate;
        inflate.setAccessibilityPaneTitle(this.mContext.getText(R.string.accessibility_desc_quick_settings));
        Window window = getWindow();
        window.setContentView(this.mDialogView);
        window.setWindowAnimations(2132017164);
        this.mWifiNetworkHeight = this.mContext.getResources().getDimensionPixelSize(R.dimen.internet_dialog_wifi_network_height);
        this.mInternetDialogTitle = (TextView) this.mDialogView.requireViewById(R.id.internet_dialog_title);
        this.mInternetDialogSubTitle = (TextView) this.mDialogView.requireViewById(R.id.internet_dialog_subtitle);
        this.mDivider = this.mDialogView.requireViewById(R.id.divider);
        this.mProgressBar = (ProgressBar) this.mDialogView.requireViewById(R.id.wifi_searching_progress);
        this.mEthernetLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.ethernet_layout);
        this.mMobileNetworkLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.mobile_network_layout);
        this.mTurnWifiOnLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.turn_on_wifi_layout);
        this.mWifiToggleTitleText = (TextView) this.mDialogView.requireViewById(R.id.wifi_toggle_title);
        this.mWifiScanNotifyLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.wifi_scan_notify_layout);
        this.mWifiScanNotifyText = (TextView) this.mDialogView.requireViewById(R.id.wifi_scan_notify_text);
        this.mConnectedWifListLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.wifi_connected_layout);
        this.mConnectedWifiIcon = (ImageView) this.mDialogView.requireViewById(R.id.wifi_connected_icon);
        this.mConnectedWifiTitleText = (TextView) this.mDialogView.requireViewById(R.id.wifi_connected_title);
        this.mConnectedWifiSummaryText = (TextView) this.mDialogView.requireViewById(R.id.wifi_connected_summary);
        this.mWifiSettingsIcon = (ImageView) this.mDialogView.requireViewById(R.id.wifi_settings_icon);
        this.mWifiRecyclerView = (RecyclerView) this.mDialogView.requireViewById(R.id.wifi_list_layout);
        this.mSeeAllLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.see_all_layout);
        this.mDoneButton = (Button) this.mDialogView.requireViewById(R.id.done_button);
        this.mAirplaneModeButton = (Button) this.mDialogView.requireViewById(R.id.apm_button);
        this.mSignalIcon = (ImageView) this.mDialogView.requireViewById(R.id.signal_icon);
        this.mMobileTitleText = (TextView) this.mDialogView.requireViewById(R.id.mobile_title);
        this.mMobileSummaryText = (TextView) this.mDialogView.requireViewById(R.id.mobile_summary);
        this.mAirplaneModeSummaryText = (TextView) this.mDialogView.requireViewById(R.id.airplane_mode_summary);
        this.mMobileToggleDivider = this.mDialogView.requireViewById(R.id.mobile_toggle_divider);
        this.mMobileDataToggle = (Switch) this.mDialogView.requireViewById(R.id.mobile_toggle);
        this.mWiFiToggle = (Switch) this.mDialogView.requireViewById(R.id.wifi_toggle);
        this.mBackgroundOn = this.mContext.getDrawable(R.drawable.settingslib_switch_bar_bg_on);
        TextView textView = this.mInternetDialogTitle;
        InternetDialogController internetDialogController = this.mInternetDialogController;
        boolean isAirplaneModeEnabled = internetDialogController.isAirplaneModeEnabled();
        Context context = internetDialogController.mContext;
        if (isAirplaneModeEnabled) {
            text = context.getText(R.string.airplane_mode);
        } else {
            text = context.getText(R.string.quick_settings_internet_label);
        }
        textView.setText(text);
        this.mInternetDialogTitle.setGravity(8388627);
        this.mBackgroundOff = this.mContext.getDrawable(R.drawable.internet_dialog_selected_effect);
        final int i = 0;
        this.mMobileNetworkLayout.setOnClickListener(new InternetDialog$$ExternalSyntheticLambda1(this, i));
        this.mMobileDataToggle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda2
            public final /* synthetic */ InternetDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, final boolean z) {
                boolean z2;
                switch (i) {
                    case 0:
                        final InternetDialog internetDialog = this.f$0;
                        final int i2 = 1;
                        final int i3 = 0;
                        if (!z) {
                            boolean z3 = Prefs.getBoolean(internetDialog.mContext, "QsHasTurnedOffMobileData", false);
                            if (internetDialog.mInternetDialogController.isMobileDataEnabled() && !z3) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                CharSequence mobileNetworkTitle = internetDialog.getMobileNetworkTitle(internetDialog.mDefaultDataSubId);
                                boolean isVoiceStateInService = internetDialog.mInternetDialogController.isVoiceStateInService(internetDialog.mDefaultDataSubId);
                                if (TextUtils.isEmpty(mobileNetworkTitle) || !isVoiceStateInService) {
                                    mobileNetworkTitle = internetDialog.mContext.getString(R.string.mobile_data_disable_message_default_carrier);
                                }
                                AlertDialog create = new AlertDialog.Builder(internetDialog.mContext).setTitle(R.string.mobile_data_disable_title).setMessage(internetDialog.mContext.getString(R.string.mobile_data_disable_message, mobileNetworkTitle)).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda4
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i4) {
                                        switch (i3) {
                                            case 0:
                                                internetDialog.mMobileDataToggle.setChecked(true);
                                                return;
                                            default:
                                                InternetDialog internetDialog2 = internetDialog;
                                                internetDialog2.mInternetDialogController.setMobileDataEnabled(internetDialog2.mDefaultDataSubId, internetDialog2.mContext, false);
                                                internetDialog2.mMobileDataToggle.setChecked(false);
                                                Prefs.putBoolean(internetDialog2.mContext, "QsHasTurnedOffMobileData", true);
                                                return;
                                        }
                                    }
                                }).setPositiveButton(android.R.string.capability_title_canControlMagnification, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda4
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i4) {
                                        switch (i2) {
                                            case 0:
                                                internetDialog.mMobileDataToggle.setChecked(true);
                                                return;
                                            default:
                                                InternetDialog internetDialog2 = internetDialog;
                                                internetDialog2.mInternetDialogController.setMobileDataEnabled(internetDialog2.mDefaultDataSubId, internetDialog2.mContext, false);
                                                internetDialog2.mMobileDataToggle.setChecked(false);
                                                Prefs.putBoolean(internetDialog2.mContext, "QsHasTurnedOffMobileData", true);
                                                return;
                                        }
                                    }
                                }).create();
                                internetDialog.mAlertDialog = create;
                                create.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda5
                                    @Override // android.content.DialogInterface.OnCancelListener
                                    public final void onCancel(DialogInterface dialogInterface) {
                                        InternetDialog.this.mMobileDataToggle.setChecked(true);
                                    }
                                });
                                internetDialog.mAlertDialog.getWindow().setType(2009);
                                SystemUIDialog.setShowForAllUsers(internetDialog.mAlertDialog);
                                SystemUIDialog.registerDismissListener(internetDialog.mAlertDialog, null);
                                SystemUIDialog.setWindowOnTop(internetDialog.mAlertDialog, ((KeyguardStateControllerImpl) internetDialog.mKeyguard).mShowing);
                                internetDialog.mDialogLaunchAnimator.showFromDialog(internetDialog.mAlertDialog, internetDialog, null, false);
                                return;
                            }
                        }
                        boolean z4 = Prefs.getBoolean(internetDialog.mContext, "QsHasTurnedOffMobileData", false);
                        if (!internetDialog.mInternetDialogController.isMobileDataEnabled() || z4) {
                            i2 = 0;
                        }
                        if (i2 == 0 && internetDialog.mInternetDialogController.isMobileDataEnabled() != z) {
                            internetDialog.mInternetDialogController.setMobileDataEnabled(internetDialog.mDefaultDataSubId, internetDialog.mContext, z);
                            return;
                        }
                        return;
                    default:
                        InternetDialog internetDialog2 = this.f$0;
                        if (internetDialog2.mInternetDialogController.isWifiEnabled() != z) {
                            final WifiStateWorker wifiStateWorker = internetDialog2.mInternetDialogController.mWifiStateWorker;
                            ((ExecutorImpl) wifiStateWorker.mBackgroundExecutor).execute(new Runnable() { // from class: com.android.systemui.qs.tiles.dialog.WifiStateWorker$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i4;
                                    WifiStateWorker wifiStateWorker2 = WifiStateWorker.this;
                                    boolean z5 = z;
                                    WifiManager wifiManager = wifiStateWorker2.mWifiManager;
                                    if (wifiManager != null) {
                                        if (z5) {
                                            i4 = 2;
                                        } else {
                                            i4 = 0;
                                        }
                                        wifiStateWorker2.mWifiState = i4;
                                        if (!wifiManager.setWifiEnabled(z5)) {
                                            Log.e("WifiStateWorker", "Failed to WifiManager.setWifiEnabled(" + z5 + ");");
                                        }
                                    }
                                }
                            });
                            return;
                        }
                        return;
                }
            }
        });
        final int i2 = 1;
        this.mConnectedWifListLayout.setOnClickListener(new InternetDialog$$ExternalSyntheticLambda1(this, i2));
        this.mSeeAllLayout.setOnClickListener(new InternetDialog$$ExternalSyntheticLambda1(this, 2));
        this.mWiFiToggle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda2
            public final /* synthetic */ InternetDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, final boolean z) {
                boolean z2;
                switch (i2) {
                    case 0:
                        final InternetDialog internetDialog = this.f$0;
                        final int i22 = 1;
                        final int i3 = 0;
                        if (!z) {
                            boolean z3 = Prefs.getBoolean(internetDialog.mContext, "QsHasTurnedOffMobileData", false);
                            if (internetDialog.mInternetDialogController.isMobileDataEnabled() && !z3) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                CharSequence mobileNetworkTitle = internetDialog.getMobileNetworkTitle(internetDialog.mDefaultDataSubId);
                                boolean isVoiceStateInService = internetDialog.mInternetDialogController.isVoiceStateInService(internetDialog.mDefaultDataSubId);
                                if (TextUtils.isEmpty(mobileNetworkTitle) || !isVoiceStateInService) {
                                    mobileNetworkTitle = internetDialog.mContext.getString(R.string.mobile_data_disable_message_default_carrier);
                                }
                                AlertDialog create = new AlertDialog.Builder(internetDialog.mContext).setTitle(R.string.mobile_data_disable_title).setMessage(internetDialog.mContext.getString(R.string.mobile_data_disable_message, mobileNetworkTitle)).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda4
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i4) {
                                        switch (i3) {
                                            case 0:
                                                internetDialog.mMobileDataToggle.setChecked(true);
                                                return;
                                            default:
                                                InternetDialog internetDialog2 = internetDialog;
                                                internetDialog2.mInternetDialogController.setMobileDataEnabled(internetDialog2.mDefaultDataSubId, internetDialog2.mContext, false);
                                                internetDialog2.mMobileDataToggle.setChecked(false);
                                                Prefs.putBoolean(internetDialog2.mContext, "QsHasTurnedOffMobileData", true);
                                                return;
                                        }
                                    }
                                }).setPositiveButton(android.R.string.capability_title_canControlMagnification, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda4
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i4) {
                                        switch (i22) {
                                            case 0:
                                                internetDialog.mMobileDataToggle.setChecked(true);
                                                return;
                                            default:
                                                InternetDialog internetDialog2 = internetDialog;
                                                internetDialog2.mInternetDialogController.setMobileDataEnabled(internetDialog2.mDefaultDataSubId, internetDialog2.mContext, false);
                                                internetDialog2.mMobileDataToggle.setChecked(false);
                                                Prefs.putBoolean(internetDialog2.mContext, "QsHasTurnedOffMobileData", true);
                                                return;
                                        }
                                    }
                                }).create();
                                internetDialog.mAlertDialog = create;
                                create.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda5
                                    @Override // android.content.DialogInterface.OnCancelListener
                                    public final void onCancel(DialogInterface dialogInterface) {
                                        InternetDialog.this.mMobileDataToggle.setChecked(true);
                                    }
                                });
                                internetDialog.mAlertDialog.getWindow().setType(2009);
                                SystemUIDialog.setShowForAllUsers(internetDialog.mAlertDialog);
                                SystemUIDialog.registerDismissListener(internetDialog.mAlertDialog, null);
                                SystemUIDialog.setWindowOnTop(internetDialog.mAlertDialog, ((KeyguardStateControllerImpl) internetDialog.mKeyguard).mShowing);
                                internetDialog.mDialogLaunchAnimator.showFromDialog(internetDialog.mAlertDialog, internetDialog, null, false);
                                return;
                            }
                        }
                        boolean z4 = Prefs.getBoolean(internetDialog.mContext, "QsHasTurnedOffMobileData", false);
                        if (!internetDialog.mInternetDialogController.isMobileDataEnabled() || z4) {
                            i22 = 0;
                        }
                        if (i22 == 0 && internetDialog.mInternetDialogController.isMobileDataEnabled() != z) {
                            internetDialog.mInternetDialogController.setMobileDataEnabled(internetDialog.mDefaultDataSubId, internetDialog.mContext, z);
                            return;
                        }
                        return;
                    default:
                        InternetDialog internetDialog2 = this.f$0;
                        if (internetDialog2.mInternetDialogController.isWifiEnabled() != z) {
                            final WifiStateWorker wifiStateWorker = internetDialog2.mInternetDialogController.mWifiStateWorker;
                            ((ExecutorImpl) wifiStateWorker.mBackgroundExecutor).execute(new Runnable() { // from class: com.android.systemui.qs.tiles.dialog.WifiStateWorker$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i4;
                                    WifiStateWorker wifiStateWorker2 = WifiStateWorker.this;
                                    boolean z5 = z;
                                    WifiManager wifiManager = wifiStateWorker2.mWifiManager;
                                    if (wifiManager != null) {
                                        if (z5) {
                                            i4 = 2;
                                        } else {
                                            i4 = 0;
                                        }
                                        wifiStateWorker2.mWifiState = i4;
                                        if (!wifiManager.setWifiEnabled(z5)) {
                                            Log.e("WifiStateWorker", "Failed to WifiManager.setWifiEnabled(" + z5 + ");");
                                        }
                                    }
                                }
                            });
                            return;
                        }
                        return;
                }
            }
        });
        this.mDoneButton.setOnClickListener(new InternetDialog$$ExternalSyntheticLambda1(this, 3));
        this.mAirplaneModeButton.setOnClickListener(new InternetDialog$$ExternalSyntheticLambda1(this, 4));
        this.mTurnWifiOnLayout.setBackground(null);
        Button button = this.mAirplaneModeButton;
        if (!this.mInternetDialogController.isAirplaneModeEnabled()) {
            i = 8;
        }
        button.setVisibility(i);
        this.mWifiRecyclerView.setLayoutManager(new LinearLayoutManager(this.mContext));
        this.mWifiRecyclerView.setAdapter(this.mAdapter);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog != null && !alertDialog.isShowing() && !z && isShowing()) {
            dismiss();
        }
    }

    public final void setProgressBarVisible(boolean z) {
        int i;
        if (this.mIsProgressBarVisible == z) {
            return;
        }
        this.mIsProgressBarVisible = z;
        ProgressBar progressBar = this.mProgressBar;
        int i2 = 0;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        progressBar.setVisibility(i);
        this.mProgressBar.setIndeterminate(z);
        View view = this.mDivider;
        if (z) {
            i2 = 8;
        }
        view.setVisibility(i2);
        this.mInternetDialogSubTitle.setText(getSubtitleText());
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public final void start() {
        if (DEBUG) {
            Log.d("InternetDialog", "onStart");
        }
        InternetDialogController internetDialogController = this.mInternetDialogController;
        boolean z = this.mCanConfigWifi;
        boolean z2 = InternetDialogController.DEBUG;
        if (z2) {
            internetDialogController.getClass();
            Log.d("InternetDialogController", "onStart");
        }
        internetDialogController.mCallback = this;
        internetDialogController.mKeyguardUpdateMonitor.registerCallback(internetDialogController.mKeyguardUpdateCallback);
        AccessPointController accessPointController = internetDialogController.mAccessPointController;
        ((AccessPointControllerImpl) accessPointController).addAccessPointCallback(internetDialogController);
        InternetDialogController.AnonymousClass2 anonymousClass2 = internetDialogController.mConnectionStateReceiver;
        IntentFilter intentFilter = internetDialogController.mConnectionStateFilter;
        Executor executor = internetDialogController.mExecutor;
        BroadcastDispatcher broadcastDispatcher = internetDialogController.mBroadcastDispatcher;
        broadcastDispatcher.getClass();
        BroadcastDispatcher.registerReceiver$default(broadcastDispatcher, anonymousClass2, intentFilter, executor, null, 0, null, 56);
        InternetDialogController.InternetOnSubscriptionChangedListener internetOnSubscriptionChangedListener = new InternetDialogController.InternetOnSubscriptionChangedListener();
        internetDialogController.mOnSubscriptionsChangedListener = internetOnSubscriptionChangedListener;
        SubscriptionManager subscriptionManager = internetDialogController.mSubscriptionManager;
        Executor executor2 = internetDialogController.mExecutor;
        subscriptionManager.addOnSubscriptionsChangedListener(executor2, internetOnSubscriptionChangedListener);
        internetDialogController.mDefaultDataSubId = internetDialogController.getDefaultDataSubscriptionId();
        if (z2) {
            RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("Init, SubId: "), internetDialogController.mDefaultDataSubId, "InternetDialogController");
        }
        internetDialogController.mConfig = MobileMappings.Config.readConfig(internetDialogController.mContext);
        internetDialogController.mTelephonyManager = internetDialogController.mTelephonyManager.createForSubscriptionId(internetDialogController.mDefaultDataSubId);
        internetDialogController.mSubIdTelephonyManagerMap.put(Integer.valueOf(internetDialogController.mDefaultDataSubId), internetDialogController.mTelephonyManager);
        InternetDialogController.InternetTelephonyCallback internetTelephonyCallback = new InternetDialogController.InternetTelephonyCallback(internetDialogController, internetDialogController.mDefaultDataSubId, 0);
        internetDialogController.mSubIdTelephonyCallbackMap.put(Integer.valueOf(internetDialogController.mDefaultDataSubId), internetTelephonyCallback);
        internetDialogController.mTelephonyManager.registerTelephonyCallback(executor2, internetTelephonyCallback);
        internetDialogController.mConnectivityManager.registerDefaultNetworkCallback(internetDialogController.mConnectivityManagerNetworkCallback);
        internetDialogController.mCanConfigWifi = z;
        if (z) {
            ((AccessPointControllerImpl) accessPointController).scanForAccessPoints();
        }
        if (!this.mCanConfigWifi) {
            hideWifiViews();
        }
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public final void stop() {
        if (DEBUG) {
            Log.d("InternetDialog", "onStop");
        }
        this.mHandler.removeCallbacks(this.mHideProgressBarRunnable);
        this.mHandler.removeCallbacks(this.mHideSearchingRunnable);
        this.mMobileNetworkLayout.setOnClickListener(null);
        this.mMobileDataToggle.setOnCheckedChangeListener(null);
        this.mConnectedWifListLayout.setOnClickListener(null);
        LinearLayout linearLayout = this.mSecondaryMobileNetworkLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(null);
        }
        this.mSeeAllLayout.setOnClickListener(null);
        this.mWiFiToggle.setOnCheckedChangeListener(null);
        this.mDoneButton.setOnClickListener(null);
        this.mAirplaneModeButton.setOnClickListener(null);
        InternetDialogController internetDialogController = this.mInternetDialogController;
        boolean z = InternetDialogController.DEBUG;
        if (z) {
            internetDialogController.getClass();
            Log.d("InternetDialogController", "onStop");
        }
        internetDialogController.mBroadcastDispatcher.unregisterReceiver(internetDialogController.mConnectionStateReceiver);
        for (TelephonyManager telephonyManager : internetDialogController.mSubIdTelephonyManagerMap.values()) {
            TelephonyCallback telephonyCallback = internetDialogController.mSubIdTelephonyCallbackMap.get(Integer.valueOf(telephonyManager.getSubscriptionId()));
            if (telephonyCallback != null) {
                telephonyManager.unregisterTelephonyCallback(telephonyCallback);
            } else if (z) {
                Log.e("InternetDialogController", "Unexpected null telephony call back for Sub " + telephonyManager.getSubscriptionId());
            }
        }
        internetDialogController.mSubIdTelephonyManagerMap.clear();
        internetDialogController.mSubIdTelephonyCallbackMap.clear();
        internetDialogController.mSubIdTelephonyDisplayInfoMap.clear();
        internetDialogController.mSubscriptionManager.removeOnSubscriptionsChangedListener(internetDialogController.mOnSubscriptionsChangedListener);
        ((AccessPointControllerImpl) internetDialogController.mAccessPointController).removeAccessPointCallback(internetDialogController);
        internetDialogController.mKeyguardUpdateMonitor.removeCallback(internetDialogController.mKeyguardUpdateCallback);
        internetDialogController.mConnectivityManager.unregisterNetworkCallback(internetDialogController.mConnectivityManagerNetworkCallback);
        InternetDialogController.ConnectedWifiInternetMonitor connectedWifiInternetMonitor = internetDialogController.mConnectedWifiInternetMonitor;
        WifiEntry wifiEntry = connectedWifiInternetMonitor.mWifiEntry;
        if (wifiEntry != null) {
            synchronized (wifiEntry) {
                wifiEntry.mListener = null;
            }
            connectedWifiInternetMonitor.mWifiEntry = null;
        }
        this.mInternetDialogFactory.getClass();
        if (InternetDialogFactoryKt.DEBUG) {
            Log.d("InternetDialogFactory", "destroyDialog");
        }
        InternetDialogFactory.internetDialog = null;
    }

    public final void updateDialog(boolean z) {
        CharSequence text;
        int i;
        int i2;
        boolean z2;
        Drawable drawable;
        int i3;
        WifiManager wifiManager;
        boolean z3;
        int i4;
        int i5;
        int i6;
        int i7;
        Drawable drawable2;
        int i8;
        boolean z4 = DEBUG;
        if (z4) {
            Log.d("InternetDialog", "updateDialog");
        }
        TextView textView = this.mInternetDialogTitle;
        InternetDialogController internetDialogController = this.mInternetDialogController;
        boolean isAirplaneModeEnabled = internetDialogController.isAirplaneModeEnabled();
        Context context = internetDialogController.mContext;
        if (isAirplaneModeEnabled) {
            text = context.getText(R.string.airplane_mode);
        } else {
            text = context.getText(R.string.quick_settings_internet_label);
        }
        textView.setText(text);
        this.mInternetDialogSubTitle.setText(getSubtitleText());
        Button button = this.mAirplaneModeButton;
        if (this.mInternetDialogController.isAirplaneModeEnabled()) {
            i = 0;
        } else {
            i = 8;
        }
        button.setVisibility(i);
        LinearLayout linearLayout = this.mEthernetLayout;
        if (this.mInternetDialogController.mHasEthernet) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
        int i9 = 2132018166;
        if (z) {
            boolean activeNetworkIsCellular = this.mInternetDialogController.activeNetworkIsCellular();
            boolean isCarrierNetworkActive = this.mInternetDialogController.isCarrierNetworkActive();
            if (!activeNetworkIsCellular && !isCarrierNetworkActive) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (z4) {
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setMobileDataLayout, isCarrierNetworkActive = ", isCarrierNetworkActive, "InternetDialog");
            }
            boolean isWifiEnabled = this.mInternetDialogController.isWifiEnabled();
            if (!this.mInternetDialogController.hasActiveSubId() && (!isWifiEnabled || !isCarrierNetworkActive)) {
                this.mMobileNetworkLayout.setVisibility(8);
                LinearLayout linearLayout2 = this.mSecondaryMobileNetworkLayout;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
            } else {
                this.mMobileNetworkLayout.setVisibility(0);
                this.mMobileDataToggle.setChecked(this.mInternetDialogController.isMobileDataEnabled());
                this.mMobileTitleText.setText(getMobileNetworkTitle(this.mDefaultDataSubId));
                String mobileNetworkSummary = getMobileNetworkSummary(this.mDefaultDataSubId);
                if (!TextUtils.isEmpty(mobileNetworkSummary)) {
                    this.mMobileSummaryText.setText(Html.fromHtml(mobileNetworkSummary, 0));
                    this.mMobileSummaryText.setBreakStrategy(0);
                    this.mMobileSummaryText.setVisibility(0);
                } else {
                    this.mMobileSummaryText.setVisibility(8);
                }
                this.mBackgroundExecutor.execute(new InternetDialog$$ExternalSyntheticLambda0(this, 7));
                Switch r0 = this.mMobileDataToggle;
                if (this.mCanConfigMobileData) {
                    i4 = 0;
                } else {
                    i4 = 4;
                }
                r0.setVisibility(i4);
                View view = this.mMobileToggleDivider;
                if (this.mCanConfigMobileData) {
                    i5 = 0;
                } else {
                    i5 = 4;
                }
                view.setVisibility(i5);
                final int activeAutoSwitchNonDdsSubId = this.mInternetDialogController.getActiveAutoSwitchNonDdsSubId();
                if (activeAutoSwitchNonDdsSubId != -1) {
                    i6 = 0;
                } else {
                    i6 = 8;
                }
                if (z3) {
                    i7 = 2132018168;
                } else {
                    i7 = 2132018167;
                }
                if (i6 == 0) {
                    ViewStub viewStub = (ViewStub) this.mDialogView.findViewById(R.id.secondary_mobile_network_stub);
                    if (viewStub != null) {
                        viewStub.inflate();
                    }
                    LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.secondary_mobile_network_layout);
                    this.mSecondaryMobileNetworkLayout = linearLayout3;
                    linearLayout3.setOnClickListener(new InternetDialog$$ExternalSyntheticLambda1(this, 5));
                    this.mSecondaryMobileNetworkLayout.setBackground(this.mBackgroundOn);
                    TextView textView2 = (TextView) this.mDialogView.requireViewById(R.id.secondary_mobile_title);
                    this.mSecondaryMobileTitleText = textView2;
                    textView2.setText(getMobileNetworkTitle(activeAutoSwitchNonDdsSubId));
                    this.mSecondaryMobileTitleText.setTextAppearance(2132018166);
                    this.mSecondaryMobileSummaryText = (TextView) this.mDialogView.requireViewById(R.id.secondary_mobile_summary);
                    String mobileNetworkSummary2 = getMobileNetworkSummary(activeAutoSwitchNonDdsSubId);
                    if (!TextUtils.isEmpty(mobileNetworkSummary2)) {
                        this.mSecondaryMobileSummaryText.setText(Html.fromHtml(mobileNetworkSummary2, 0));
                        this.mSecondaryMobileSummaryText.setBreakStrategy(0);
                        this.mSecondaryMobileSummaryText.setTextAppearance(2132018166);
                    }
                    final ImageView imageView = (ImageView) this.mDialogView.requireViewById(R.id.secondary_signal_icon);
                    this.mBackgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.qs.tiles.dialog.InternetDialog$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            InternetDialog internetDialog = InternetDialog.this;
                            int i10 = activeAutoSwitchNonDdsSubId;
                            internetDialog.mHandler.post(new InternetDialog$$ExternalSyntheticLambda9(imageView, internetDialog.getSignalStrengthDrawable(i10), 0));
                        }
                    });
                    ((ImageView) this.mDialogView.requireViewById(R.id.secondary_settings_icon)).setColorFilter(this.mContext.getColor(R.color.connected_network_primary_color));
                    this.mMobileNetworkLayout.setBackground(this.mBackgroundOff);
                    this.mMobileTitleText.setTextAppearance(2132018165);
                    this.mMobileSummaryText.setTextAppearance(2132018167);
                    this.mSignalIcon.setColorFilter(this.mContext.getColor(R.color.connected_network_secondary_color));
                } else {
                    LinearLayout linearLayout4 = this.mMobileNetworkLayout;
                    if (z3) {
                        drawable2 = this.mBackgroundOn;
                    } else {
                        drawable2 = this.mBackgroundOff;
                    }
                    linearLayout4.setBackground(drawable2);
                    TextView textView3 = this.mMobileTitleText;
                    if (z3) {
                        i8 = 2132018166;
                    } else {
                        i8 = 2132018165;
                    }
                    textView3.setTextAppearance(i8);
                    this.mMobileSummaryText.setTextAppearance(i7);
                }
                LinearLayout linearLayout5 = this.mSecondaryMobileNetworkLayout;
                if (linearLayout5 != null) {
                    linearLayout5.setVisibility(i6);
                }
                if (this.mInternetDialogController.isAirplaneModeEnabled()) {
                    this.mAirplaneModeSummaryText.setVisibility(0);
                    this.mAirplaneModeSummaryText.setText(this.mContext.getText(R.string.airplane_mode));
                    this.mAirplaneModeSummaryText.setTextAppearance(i7);
                } else {
                    this.mAirplaneModeSummaryText.setVisibility(8);
                }
            }
        }
        if (!this.mCanConfigWifi) {
            return;
        }
        if (this.mInternetDialogController.isWifiEnabled() && !(!this.mInternetDialogController.mKeyguardStateController.isUnlocked())) {
            setProgressBarVisible(true);
            if (this.mConnectedWifiEntry == null && this.mWifiEntriesCount <= 0) {
                if (!this.mIsSearchingHidden) {
                    this.mHandler.postDelayed(this.mHideSearchingRunnable, 1500L);
                }
            } else {
                this.mHandler.postDelayed(this.mHideProgressBarRunnable, 1500L);
            }
        } else {
            setProgressBarVisible(false);
        }
        boolean z5 = !this.mInternetDialogController.mKeyguardStateController.isUnlocked();
        boolean isWifiEnabled2 = this.mInternetDialogController.isWifiEnabled();
        InternetDialogController internetDialogController2 = this.mInternetDialogController;
        if (((LocationControllerImpl) internetDialogController2.mLocationController).isLocationEnabled() && (wifiManager = internetDialogController2.mWifiManager) != null && wifiManager.isScanAlwaysAvailable()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.mWiFiToggle.isChecked() != isWifiEnabled2) {
            this.mWiFiToggle.setChecked(isWifiEnabled2);
        }
        if (z5) {
            TextView textView4 = this.mWifiToggleTitleText;
            if (this.mConnectedWifiEntry == null) {
                i9 = 2132018165;
            }
            textView4.setTextAppearance(i9);
        }
        LinearLayout linearLayout6 = this.mTurnWifiOnLayout;
        Drawable drawable3 = null;
        if (z5 && this.mConnectedWifiEntry != null) {
            drawable = this.mBackgroundOn;
        } else {
            drawable = null;
        }
        linearLayout6.setBackground(drawable);
        if (!this.mCanChangeWifiState && this.mWiFiToggle.isEnabled()) {
            this.mWiFiToggle.setEnabled(false);
            this.mWifiToggleTitleText.setEnabled(false);
            TextView textView5 = (TextView) this.mDialogView.requireViewById(R.id.wifi_toggle_summary);
            textView5.setEnabled(false);
            textView5.setVisibility(0);
        }
        if (isWifiEnabled2 && this.mConnectedWifiEntry != null && !z5) {
            this.mConnectedWifListLayout.setVisibility(0);
            this.mConnectedWifiTitleText.setText(this.mConnectedWifiEntry.getTitle());
            this.mConnectedWifiSummaryText.setText(this.mConnectedWifiEntry.getSummary(false));
            ImageView imageView2 = this.mConnectedWifiIcon;
            InternetDialogController internetDialogController3 = this.mInternetDialogController;
            WifiEntry wifiEntry = this.mConnectedWifiEntry;
            internetDialogController3.getClass();
            if (wifiEntry.mLevel != -1) {
                Drawable icon = internetDialogController3.mWifiIconInjector.getIcon(wifiEntry.mLevel, wifiEntry.shouldShowXLevelIcon());
                if (icon != null) {
                    icon.setTint(internetDialogController3.mContext.getColor(R.color.connected_network_primary_color));
                    drawable3 = icon;
                }
            }
            imageView2.setImageDrawable(drawable3);
            this.mWifiSettingsIcon.setColorFilter(this.mContext.getColor(R.color.connected_network_primary_color));
            LinearLayout linearLayout7 = this.mSecondaryMobileNetworkLayout;
            if (linearLayout7 != null) {
                linearLayout7.setVisibility(8);
            }
        } else {
            this.mConnectedWifListLayout.setVisibility(8);
        }
        if (isWifiEnabled2 && !z5) {
            int wifiListMaxCount = getWifiListMaxCount();
            InternetAdapter internetAdapter = this.mAdapter;
            int i10 = internetAdapter.mWifiEntriesCount;
            if (i10 > wifiListMaxCount) {
                this.mHasMoreWifiEntries = true;
            }
            if (wifiListMaxCount >= 0 && internetAdapter.mMaxEntriesCount != wifiListMaxCount) {
                internetAdapter.mMaxEntriesCount = wifiListMaxCount;
                if (i10 > wifiListMaxCount) {
                    internetAdapter.mWifiEntriesCount = wifiListMaxCount;
                    internetAdapter.notifyDataSetChanged();
                }
            }
            int i11 = this.mWifiNetworkHeight * wifiListMaxCount;
            if (this.mWifiRecyclerView.getMinimumHeight() != i11) {
                this.mWifiRecyclerView.setMinimumHeight(i11);
            }
            this.mWifiRecyclerView.setVisibility(0);
            LinearLayout linearLayout8 = this.mSeeAllLayout;
            if (this.mHasMoreWifiEntries) {
                i3 = 0;
            } else {
                i3 = 4;
            }
            linearLayout8.setVisibility(i3);
        } else {
            this.mWifiRecyclerView.setVisibility(8);
            this.mSeeAllLayout.setVisibility(8);
        }
        if (!isWifiEnabled2 && z2 && !z5) {
            if (TextUtils.isEmpty(this.mWifiScanNotifyText.getText())) {
                InternetDialogController internetDialogController4 = this.mInternetDialogController;
                Objects.requireNonNull(internetDialogController4);
                AnnotationLinkSpan.LinkInfo linkInfo = new AnnotationLinkSpan.LinkInfo("link", new InternetDialog$$ExternalSyntheticLambda1(internetDialogController4, 6));
                TextView textView6 = this.mWifiScanNotifyText;
                CharSequence text2 = getContext().getText(R.string.wifi_scan_notify_message);
                int i12 = AnnotationLinkSpan.$r8$clinit;
                SpannableString spannableString = new SpannableString(text2);
                Annotation[] annotationArr = (Annotation[]) spannableString.getSpans(0, spannableString.length(), Annotation.class);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannableString);
                Arrays.asList(annotationArr).forEach(new AnnotationLinkSpan$$ExternalSyntheticLambda1(new AnnotationLinkSpan.LinkInfo[]{linkInfo}, spannableStringBuilder, spannableString));
                textView6.setText(spannableStringBuilder);
                this.mWifiScanNotifyText.setMovementMethod(LinkMovementMethod.getInstance());
            }
            this.mWifiScanNotifyLayout.setVisibility(0);
            return;
        }
        this.mWifiScanNotifyLayout.setVisibility(8);
    }
}
