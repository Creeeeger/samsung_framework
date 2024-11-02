package com.android.systemui.keyguard.domain.interactor;

import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.AlertDialog;
import android.app.IActivityTaskManager;
import android.app.IApplicationThread;
import android.app.ProfilerInfo;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.StatsEvent;
import android.util.StatsLog;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.internal.widget.LockPatternUtils;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.animation.Expandable;
import com.android.systemui.animation.Expandable$Companion$fromView$1;
import com.android.systemui.animation.LaunchAnimator;
import com.android.systemui.animation.ViewDialogLaunchAnimatorController;
import com.android.systemui.dock.DockManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig;
import com.android.systemui.keyguard.data.repository.BiometricSettingsRepository;
import com.android.systemui.keyguard.domain.model.KeyguardQuickAffordanceModel;
import com.android.systemui.keyguard.domain.quickaffordance.KeyguardQuickAffordanceRegistry;
import com.android.systemui.keyguard.domain.quickaffordance.KeyguardQuickAffordanceRegistryImpl;
import com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition;
import com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancesMetricsLogger;
import com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancesMetricsLoggerImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.KeyguardShortcutManager;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.internal.CombineKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardQuickAffordanceInteractor {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ActivityStarter activityStarter;
    public final Context appContext;
    public final CoroutineDispatcher backgroundDispatcher;
    public final BiometricSettingsRepository biometricSettingsRepository;
    public final DevicePolicyManager devicePolicyManager;
    public final DockManager dockManager;
    public final FeatureFlags featureFlags;
    public final boolean isUsingProperty = true;
    public final KeyguardInteractor keyguardInteractor;
    public final KeyguardShortcutManager keyguardShortcutManager;
    public final KeyguardStateController keyguardStateController;
    public final DialogLaunchAnimator launchAnimator;
    public final KeyguardQuickAffordancesMetricsLogger logger;
    public final KeyguardQuickAffordanceRegistry registry;
    public final Lazy repository;
    public final UserTracker userTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
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

    public KeyguardQuickAffordanceInteractor(KeyguardInteractor keyguardInteractor, KeyguardQuickAffordanceRegistry keyguardQuickAffordanceRegistry, LockPatternUtils lockPatternUtils, KeyguardStateController keyguardStateController, UserTracker userTracker, ActivityStarter activityStarter, FeatureFlags featureFlags, Lazy lazy, DialogLaunchAnimator dialogLaunchAnimator, KeyguardQuickAffordancesMetricsLogger keyguardQuickAffordancesMetricsLogger, DevicePolicyManager devicePolicyManager, DockManager dockManager, BiometricSettingsRepository biometricSettingsRepository, CoroutineDispatcher coroutineDispatcher, Context context, KeyguardShortcutManager keyguardShortcutManager) {
        this.keyguardInteractor = keyguardInteractor;
        this.registry = keyguardQuickAffordanceRegistry;
        this.keyguardStateController = keyguardStateController;
        this.userTracker = userTracker;
        this.activityStarter = activityStarter;
        this.featureFlags = featureFlags;
        this.repository = lazy;
        this.launchAnimator = dialogLaunchAnimator;
        this.logger = keyguardQuickAffordancesMetricsLogger;
        this.devicePolicyManager = devicePolicyManager;
        this.dockManager = dockManager;
        this.biometricSettingsRepository = biometricSettingsRepository;
        this.backgroundDispatcher = coroutineDispatcher;
        this.appContext = context;
        this.keyguardShortcutManager = keyguardShortcutManager;
    }

    public final Flow combinedConfigs(final KeyguardQuickAffordancePosition keyguardQuickAffordancePosition, final List list) {
        if (list.isEmpty()) {
            return new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(KeyguardQuickAffordanceModel.Hidden.INSTANCE);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new KeyguardQuickAffordanceInteractor$combinedConfigs$1$1(null), ((KeyguardQuickAffordanceConfig) it.next()).getLockScreenState()));
        }
        final Flow[] flowArr = (Flow[]) CollectionsKt___CollectionsKt.toList(arrayList).toArray(new Flow[0]);
        return new Flow() { // from class: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3", f = "KeyguardQuickAffordanceInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_startTcpDump}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass3 extends SuspendLambda implements Function3 {
                final /* synthetic */ List $configs$inlined;
                final /* synthetic */ KeyguardQuickAffordancePosition $position$inlined;
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;
                final /* synthetic */ KeyguardQuickAffordanceInteractor this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, List list, KeyguardQuickAffordanceInteractor keyguardQuickAffordanceInteractor, KeyguardQuickAffordancePosition keyguardQuickAffordancePosition) {
                    super(3, continuation);
                    this.$configs$inlined = list;
                    this.this$0 = keyguardQuickAffordanceInteractor;
                    this.$position$inlined = keyguardQuickAffordancePosition;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.$configs$inlined, this.this$0, this.$position$inlined);
                    anonymousClass3.L$0 = (FlowCollector) obj;
                    anonymousClass3.L$1 = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object obj2;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i != 0) {
                        if (i == 1) {
                            ResultKt.throwOnFailure(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        FlowCollector flowCollector = (FlowCollector) this.L$0;
                        KeyguardQuickAffordanceConfig.LockScreenState[] lockScreenStateArr = (KeyguardQuickAffordanceConfig.LockScreenState[]) ((Object[]) this.L$1);
                        int length = lockScreenStateArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length) {
                                if (lockScreenStateArr[i2] instanceof KeyguardQuickAffordanceConfig.LockScreenState.Visible) {
                                    break;
                                }
                                i2++;
                            } else {
                                i2 = -1;
                                break;
                            }
                        }
                        if (i2 != -1) {
                            KeyguardQuickAffordanceConfig.LockScreenState.Visible visible = (KeyguardQuickAffordanceConfig.LockScreenState.Visible) lockScreenStateArr[i2];
                            String key = ((KeyguardQuickAffordanceConfig) this.$configs$inlined.get(i2)).getKey();
                            KeyguardQuickAffordanceInteractor keyguardQuickAffordanceInteractor = this.this$0;
                            int i3 = KeyguardQuickAffordanceInteractor.$r8$clinit;
                            keyguardQuickAffordanceInteractor.getClass();
                            obj2 = new KeyguardQuickAffordanceModel.Visible(key, visible.icon, visible.activationState);
                        } else {
                            obj2 = KeyguardQuickAffordanceModel.Hidden.INSTANCE;
                        }
                        this.label = 1;
                        if (flowCollector.emit(obj2, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object combineInternal = CombineKt.combineInternal(flowArr2, new Function0() { // from class: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return new KeyguardQuickAffordanceConfig.LockScreenState[flowArr2.length];
                    }
                }, new AnonymousClass3(null, list, this, keyguardQuickAffordancePosition), flowCollector, continuation);
                if (combineInternal == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        };
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00a1, code lost:
    
        if (r8.appContext.getResources().getBoolean(com.android.systemui.R.bool.custom_lockscreen_shortcuts_enabled) != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getPickerFlags(kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor.getPickerFlags(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b3 A[LOOP:0: B:15:0x00ad->B:17:0x00b3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getSelections(kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor.getSelections(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getSlotPickerRepresentations(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$getSlotPickerRepresentations$1
            if (r0 == 0) goto L13
            r0 = r5
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$getSlotPickerRepresentations$1 r0 = (com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$getSlotPickerRepresentations$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$getSlotPickerRepresentations$1 r0 = new com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$getSlotPickerRepresentations$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r0.label
            if (r5 == 0) goto L4a
            r1 = 1
            if (r5 != r1) goto L42
            java.lang.Object r5 = r0.L$0
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r5 = (com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor) r5
            kotlin.ResultKt.throwOnFailure(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L35
            kotlin.collections.EmptyList r4 = kotlin.collections.EmptyList.INSTANCE
            return r4
        L35:
            dagger.Lazy r4 = r5.repository
            java.lang.Object r4 = r4.get()
            com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository r4 = (com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository) r4
            java.util.List r4 = r4.getSlotPickerRepresentations()
            return r4
        L42:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L4a:
            kotlin.ResultKt.throwOnFailure(r4)
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "Check failed."
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor.getSlotPickerRepresentations(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void launchQuickAffordance(final Intent intent, boolean z) {
        intent.putExtra("fromLockscreen", true);
        if (((!r0.mCanDismissLockScreen) & ((KeyguardStateControllerImpl) this.keyguardStateController).mSecure & (!r0.mTrusted)) && z) {
            intent.putExtra("isSecure", true);
            AsyncTask.execute(new Runnable() { // from class: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$launchQuickAffordance$1
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityOptions makeBasic = ActivityOptions.makeBasic();
                    makeBasic.setDisallowEnterPictureInPictureWhileLaunching(true);
                    makeBasic.setRotationAnimationHint(3);
                    intent.addFlags(872480768);
                    try {
                        IActivityTaskManager service = ActivityTaskManager.getService();
                        String basePackageName = this.appContext.getBasePackageName();
                        String attributionTag = this.appContext.getAttributionTag();
                        Intent intent2 = intent;
                        service.startActivityAsUser((IApplicationThread) null, basePackageName, attributionTag, intent2, intent2.resolveTypeIfNeeded(this.appContext.getContentResolver()), (IBinder) null, (String) null, 0, QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE, (ProfilerInfo) null, makeBasic.toBundle(), ((UserTrackerImpl) this.userTracker).getUserHandle().getIdentifier());
                    } catch (RemoteException e) {
                        Log.w("KeyguardQuickAffordanceInteractor", "Unable to start activity", e);
                    }
                }
            });
        } else {
            this.activityStarter.startActivity(intent, false);
        }
    }

    public final void onQuickAffordanceTriggered(String str, Expandable expandable, String str2) {
        KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig;
        Object obj;
        if (this.isUsingProperty) {
            Iterator it = ((ArrayList) this.keyguardShortcutManager.getQuickAffordanceConfigList()).iterator();
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
            keyguardQuickAffordanceConfig = (KeyguardQuickAffordanceConfig) obj;
        } else {
            keyguardQuickAffordanceConfig = (KeyguardQuickAffordanceConfig) MapsKt__MapsKt.getValue(((KeyguardQuickAffordanceRegistryImpl) this.registry).configByKey, str);
        }
        if (keyguardQuickAffordanceConfig == null) {
            Log.e("KeyguardQuickAffordanceInteractor", "Affordance config with key of \"" + str + "\" not found!");
            return;
        }
        ((KeyguardQuickAffordancesMetricsLoggerImpl) this.logger).getClass();
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(612);
        newBuilder.writeString(str2);
        newBuilder.writeString(str);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
        KeyguardQuickAffordanceConfig.OnTriggeredResult onTriggered = keyguardQuickAffordanceConfig.onTriggered(expandable);
        if (onTriggered instanceof KeyguardQuickAffordanceConfig.OnTriggeredResult.StartActivity) {
            KeyguardQuickAffordanceConfig.OnTriggeredResult.StartActivity startActivity = (KeyguardQuickAffordanceConfig.OnTriggeredResult.StartActivity) onTriggered;
            launchQuickAffordance(startActivity.intent, startActivity.canShowWhileLocked);
            return;
        }
        if (!(onTriggered instanceof KeyguardQuickAffordanceConfig.OnTriggeredResult.Handled) && (onTriggered instanceof KeyguardQuickAffordanceConfig.OnTriggeredResult.ShowDialog)) {
            KeyguardQuickAffordanceConfig.OnTriggeredResult.ShowDialog showDialog = (KeyguardQuickAffordanceConfig.OnTriggeredResult.ShowDialog) onTriggered;
            AlertDialog alertDialog = showDialog.dialog;
            Expandable expandable2 = showDialog.expandable;
            if (expandable2 != null) {
                Expandable.Companion companion = Expandable.Companion;
                DialogLaunchAnimator.Controller.Companion.getClass();
                ViewDialogLaunchAnimatorController fromView = DialogLaunchAnimator.Controller.Companion.fromView(((Expandable$Companion$fromView$1) expandable2).$view, null);
                if (fromView != null) {
                    SystemUIDialog.applyFlags(alertDialog);
                    SystemUIDialog.setShowForAllUsers(alertDialog);
                    SystemUIDialog.registerDismissListener(alertDialog, null);
                    SystemUIDialog.setDialogSize(alertDialog);
                    LaunchAnimator.Timings timings = DialogLaunchAnimator.TIMINGS;
                    this.launchAnimator.show(alertDialog, fromView, false);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object quickAffordance(com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$quickAffordance$1
            if (r0 == 0) goto L13
            r0 = r8
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$quickAffordance$1 r0 = (com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$quickAffordance$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$quickAffordance$1 r0 = new com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$quickAffordance$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 != r4) goto L31
            java.lang.Object r6 = r0.L$1
            r7 = r6
            com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition r7 = (com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition) r7
            java.lang.Object r6 = r0.L$0
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r6 = (com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor) r6
            kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$isFeatureDisabledByDevicePolicy$2 r8 = new com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$isFeatureDisabledByDevicePolicy$2
            r8.<init>(r6, r3)
            kotlinx.coroutines.CoroutineDispatcher r2 = r6.backgroundDispatcher
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r2, r8, r0)
            if (r8 != r1) goto L50
            return r1
        L50:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L60
            com.android.systemui.keyguard.domain.model.KeyguardQuickAffordanceModel$Hidden r6 = com.android.systemui.keyguard.domain.model.KeyguardQuickAffordanceModel.Hidden.INSTANCE
            kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 r7 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2
            r7.<init>(r6)
            return r7
        L60:
            kotlinx.coroutines.flow.Flow r0 = r6.quickAffordanceAlwaysVisible(r7)
            com.android.systemui.keyguard.domain.interactor.KeyguardInteractor r7 = r6.keyguardInteractor
            kotlinx.coroutines.flow.StateFlow r1 = r7.isDozing
            kotlinx.coroutines.flow.Flow r2 = r7.isKeyguardShowing
            kotlinx.coroutines.flow.Flow r7 = r7.isQuickSettingsVisible
            com.android.systemui.keyguard.data.repository.BiometricSettingsRepository r6 = r6.biometricSettingsRepository
            com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl r6 = (com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl) r6
            com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1 r4 = r6.isCurrentUserInLockdown
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$quickAffordance$2 r5 = new com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$quickAffordance$2
            r5.<init>(r3)
            r3 = r7
            kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3 r6 = kotlinx.coroutines.flow.FlowKt.combine(r0, r1, r2, r3, r4, r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor.quickAffordance(com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Flow quickAffordanceAlwaysVisible(KeyguardQuickAffordancePosition keyguardQuickAffordancePosition) {
        if (this.isUsingProperty) {
            final List singletonList = Collections.singletonList((KeyguardQuickAffordanceConfig) ((ArrayList) this.keyguardShortcutManager.getQuickAffordanceConfigList()).get(keyguardQuickAffordancePosition.ordinal()));
            Log.d("KeyguardQuickAffordanceInteractor", "combinedConfigs: " + singletonList.size());
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(singletonList, 10));
            Iterator it = singletonList.iterator();
            while (it.hasNext()) {
                arrayList.add(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new KeyguardQuickAffordanceInteractor$combinedConfigs$3$1$1(null), ((KeyguardQuickAffordanceConfig) it.next()).getLockScreenState()));
            }
            final Flow[] flowArr = (Flow[]) CollectionsKt___CollectionsKt.toList(arrayList).toArray(new Flow[0]);
            return new Flow() { // from class: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$lambda$15$$inlined$combine$1

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$lambda$15$$inlined$combine$1$3", f = "KeyguardQuickAffordanceInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_startTcpDump}, m = "invokeSuspend")
                /* renamed from: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$lambda$15$$inlined$combine$1$3, reason: invalid class name */
                /* loaded from: classes.dex */
                public final class AnonymousClass3 extends SuspendLambda implements Function3 {
                    final /* synthetic */ List $this_with$inlined;
                    private /* synthetic */ Object L$0;
                    /* synthetic */ Object L$1;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass3(Continuation continuation, List list) {
                        super(3, continuation);
                        this.$this_with$inlined = list;
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.$this_with$inlined);
                        anonymousClass3.L$0 = (FlowCollector) obj;
                        anonymousClass3.L$1 = (Object[]) obj2;
                        return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object obj2;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i = this.label;
                        if (i != 0) {
                            if (i == 1) {
                                ResultKt.throwOnFailure(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            ResultKt.throwOnFailure(obj);
                            FlowCollector flowCollector = (FlowCollector) this.L$0;
                            KeyguardQuickAffordanceConfig.LockScreenState[] lockScreenStateArr = (KeyguardQuickAffordanceConfig.LockScreenState[]) ((Object[]) this.L$1);
                            int length = lockScreenStateArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 < length) {
                                    if (lockScreenStateArr[i2] instanceof KeyguardQuickAffordanceConfig.LockScreenState.Visible) {
                                        break;
                                    }
                                    i2++;
                                } else {
                                    i2 = -1;
                                    break;
                                }
                            }
                            if (i2 != -1) {
                                KeyguardQuickAffordanceConfig.LockScreenState.Visible visible = (KeyguardQuickAffordanceConfig.LockScreenState.Visible) lockScreenStateArr[i2];
                                String key = ((KeyguardQuickAffordanceConfig) this.$this_with$inlined.get(i2)).getKey();
                                Log.d("KeyguardQuickAffordanceInteractor", "combinedConfigs: Visible State was provided " + key);
                                obj2 = new KeyguardQuickAffordanceModel.Visible(key, visible.icon, visible.activationState);
                            } else {
                                ListPopupWindow$$ExternalSyntheticOutline0.m("combinedConfigs: Hidden State was provided ", this.$this_with$inlined.size(), "KeyguardQuickAffordanceInteractor");
                                obj2 = KeyguardQuickAffordanceModel.Hidden.INSTANCE;
                            }
                            this.label = 1;
                            if (flowCollector.emit(obj2, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                    final Flow[] flowArr2 = flowArr;
                    Object combineInternal = CombineKt.combineInternal(flowArr2, new Function0() { // from class: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$lambda$15$$inlined$combine$1.2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return new KeyguardQuickAffordanceConfig.LockScreenState[flowArr2.length];
                        }
                    }, new AnonymousClass3(null, singletonList), flowCollector, continuation);
                    if (combineInternal == CoroutineSingletons.COROUTINE_SUSPENDED) {
                        return combineInternal;
                    }
                    return Unit.INSTANCE;
                }
            };
        }
        return combinedConfigs(keyguardQuickAffordancePosition, (List) MapsKt__MapsKt.getValue(((KeyguardQuickAffordanceRegistryImpl) this.registry).configsByPosition, keyguardQuickAffordancePosition));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object select(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$select$1
            if (r0 == 0) goto L13
            r0 = r7
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$select$1 r0 = (com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$select$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$select$1 r0 = new com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$select$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r7 = r0.label
            if (r7 == 0) goto Lde
            r1 = 1
            if (r7 != r1) goto Ld6
            java.lang.Object r7 = r0.L$2
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r1 = r0.L$1
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.L$0
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r0 = (com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor) r0
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L3d
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        L3d:
            dagger.Lazy r6 = r0.repository
            java.lang.Object r6 = r6.get()
            com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository r6 = (com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository) r6
            java.util.List r6 = r6.getSlotPickerRepresentations()
            java.util.ArrayList r6 = (java.util.ArrayList) r6
            java.util.Iterator r6 = r6.iterator()
        L4f:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L65
            java.lang.Object r2 = r6.next()
            r3 = r2
            com.android.systemui.keyguard.shared.model.KeyguardSlotPickerRepresentation r3 = (com.android.systemui.keyguard.shared.model.KeyguardSlotPickerRepresentation) r3
            java.lang.String r3 = r3.id
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r1)
            if (r3 == 0) goto L4f
            goto L66
        L65:
            r2 = 0
        L66:
            com.android.systemui.keyguard.shared.model.KeyguardSlotPickerRepresentation r2 = (com.android.systemui.keyguard.shared.model.KeyguardSlotPickerRepresentation) r2
            if (r2 != 0) goto L6d
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        L6d:
            dagger.Lazy r6 = r0.repository
            java.lang.Object r3 = r6.get()
            com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository r3 = (com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository) r3
            java.util.Map r3 = r3.getCurrentSelections()
            kotlin.collections.EmptyList r4 = kotlin.collections.EmptyList.INSTANCE
            java.lang.Object r3 = r3.getOrDefault(r1, r4)
            java.util.Collection r3 = (java.util.Collection) r3
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r3)
            boolean r3 = r4.remove(r7)
            if (r3 != 0) goto L9f
        L8c:
            int r3 = r4.size()
            if (r3 <= 0) goto L9f
            int r3 = r4.size()
            int r5 = r2.maxSelectedAffordances
            if (r3 < r5) goto L9f
            r3 = 0
            r4.remove(r3)
            goto L8c
        L9f:
            r4.add(r7)
            java.lang.Object r6 = r6.get()
            com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository r6 = (com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository) r6
            kotlinx.coroutines.flow.ReadonlyStateFlow r6 = r6.selectionManager
            java.lang.Object r6 = r6.getValue()
            com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceSelectionManager r6 = (com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceSelectionManager) r6
            r6.setSelections(r1, r4)
            com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancesMetricsLogger r6 = r0.logger
            com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancesMetricsLoggerImpl r6 = (com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancesMetricsLoggerImpl) r6
            r6.getClass()
            android.util.StatsEvent$Builder r6 = android.util.StatsEvent.newBuilder()
            r0 = 611(0x263, float:8.56E-43)
            r6.setAtomId(r0)
            r6.writeString(r1)
            r6.writeString(r7)
            r6.usePooledBuffer()
            android.util.StatsEvent r6 = r6.build()
            android.util.StatsLog.write(r6)
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            return r6
        Ld6:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        Lde:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Check failed."
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor.select(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object unselect(kotlin.coroutines.Continuation r6) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor.unselect(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
