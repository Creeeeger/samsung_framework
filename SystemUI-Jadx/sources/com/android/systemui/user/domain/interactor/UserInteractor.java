package com.android.systemui.user.domain.interactor;

import android.R;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.UserInfo;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.animation.Expandable;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl;
import com.android.systemui.keyguard.domain.interactor.KeyguardInteractor;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.qs.user.UserSwitchDialogController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.telephony.domain.interactor.TelephonyInteractor;
import com.android.systemui.user.CreateUserActivity;
import com.android.systemui.user.data.repository.UserRepository;
import com.android.systemui.user.data.repository.UserRepositoryImpl;
import com.android.systemui.user.domain.model.ShowDialogRequestModel;
import com.android.systemui.user.shared.model.UserActionModel;
import com.android.systemui.user.ui.dialog.DialogShowerImpl;
import com.android.systemui.user.utils.MultiUserActionsEvent;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.kotlin.WithPrev;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedEagerly;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UserInteractor {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final StateFlowImpl _dialogDismissRequests;
    public final StateFlowImpl _dialogShowRequests;
    public final ActivityManager activityManager;
    public final ActivityStarter activityStarter;
    public final Context applicationContext;
    public final CoroutineScope applicationScope;
    public final CoroutineDispatcher backgroundDispatcher;
    public final MutexImpl callbackMutex;
    public final Set callbacks;
    public final ReadonlyStateFlow dialogDismissRequests;
    public final ReadonlyStateFlow dialogShowRequests;
    public final FeatureFlags featureFlags;
    public final GuestUserInteractor guestUserInteractor;
    public final HeadlessSystemUserMode headlessSystemUserMode;
    public final boolean isGuestUserAutoCreated;
    public final boolean isGuestUserResetting;
    public final boolean isStatusBarUserChipEnabled;
    public final KeyguardInteractor keyguardInteractor;
    public final KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback;
    public final UserManager manager;
    public final RefreshUsersScheduler refreshUsersScheduler;
    public final UserRepository repository;
    public final ReadonlyStateFlow selectedUserRecord;
    public final SettingsHelper settingsHelper;
    public final UiEventLogger uiEventLogger;
    public final UserInteractor$special$$inlined$map$1 userInfos;
    public final ReadonlyStateFlow userRecords;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$1", f = "UserInteractor.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create(Integer.valueOf(((Number) obj).intValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                UserInteractor.this.refreshUsersScheduler.refreshIfNotPaused();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$4", f = "UserInteractor.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass4 extends SuspendLambda implements Function3 {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        public AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4((Continuation) obj3);
            anonymousClass4.L$0 = (Intent) obj;
            anonymousClass4.L$1 = (WithPrev) obj2;
            return anonymousClass4.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                return new Pair((Intent) this.L$0, ((WithPrev) this.L$1).previousValue);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$5", f = "UserInteractor.kt", l = {340}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass5 extends SuspendLambda implements Function2 {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass5 anonymousClass5 = new AnonymousClass5(continuation);
            anonymousClass5.L$0 = obj;
            return anonymousClass5;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass5) create((Pair) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
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
                Pair pair = (Pair) this.L$0;
                Intent intent = (Intent) pair.component1();
                UserInfo userInfo = (UserInfo) pair.component2();
                UserInteractor userInteractor = UserInteractor.this;
                this.label = 1;
                if (UserInteractor.access$onBroadcastReceived(userInteractor, intent, userInfo, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.INSTANCE;
        }
    }

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
    public interface UserCallback {
        boolean isEvictable();

        void onUserStateChanged();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UserActionModel.values().length];
            try {
                iArr[UserActionModel.ENTER_GUEST_MODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UserActionModel.ADD_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UserActionModel.ADD_SUPERVISED_USER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UserActionModel.NAVIGATE_TO_USER_MANAGEMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [kotlinx.coroutines.flow.Flow, com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1] */
    public UserInteractor(Context context, UserRepository userRepository, ActivityStarter activityStarter, KeyguardInteractor keyguardInteractor, FeatureFlags featureFlags, UserManager userManager, HeadlessSystemUserMode headlessSystemUserMode, CoroutineScope coroutineScope, TelephonyInteractor telephonyInteractor, BroadcastDispatcher broadcastDispatcher, KeyguardUpdateMonitor keyguardUpdateMonitor, CoroutineDispatcher coroutineDispatcher, ActivityManager activityManager, RefreshUsersScheduler refreshUsersScheduler, GuestUserInteractor guestUserInteractor, UiEventLogger uiEventLogger, SettingsHelper settingsHelper) {
        this.applicationContext = context;
        this.repository = userRepository;
        this.activityStarter = activityStarter;
        this.keyguardInteractor = keyguardInteractor;
        this.featureFlags = featureFlags;
        this.manager = userManager;
        this.headlessSystemUserMode = headlessSystemUserMode;
        this.applicationScope = coroutineScope;
        this.backgroundDispatcher = coroutineDispatcher;
        this.activityManager = activityManager;
        this.refreshUsersScheduler = refreshUsersScheduler;
        this.guestUserInteractor = guestUserInteractor;
        this.uiEventLogger = uiEventLogger;
        this.settingsHelper = settingsHelper;
        Symbol symbol = MutexKt.UNLOCK_FAIL;
        this.callbackMutex = new MutexImpl(false);
        this.callbacks = new LinkedHashSet();
        UserRepositoryImpl userRepositoryImpl = (UserRepositoryImpl) userRepository;
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = userRepositoryImpl.userInfos;
        ?? r6 = new Flow() { // from class: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1$2", f = "UserInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: classes2.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1$2$1 r0 = (com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1$2$1 r0 = new com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L5f
                    L27:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r7)
                        java.util.List r6 = (java.util.List) r6
                        java.util.ArrayList r7 = new java.util.ArrayList
                        r7.<init>()
                        java.util.Iterator r6 = r6.iterator()
                    L3d:
                        boolean r2 = r6.hasNext()
                        if (r2 == 0) goto L54
                        java.lang.Object r2 = r6.next()
                        r4 = r2
                        android.content.pm.UserInfo r4 = (android.content.pm.UserInfo) r4
                        boolean r4 = r4.isFull()
                        if (r4 == 0) goto L3d
                        r7.add(r2)
                        goto L3d
                    L54:
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r5 = r5.$this_unsafeFlow
                        java.lang.Object r5 = r5.emit(r7, r0)
                        if (r5 != r1) goto L5f
                        return r1
                    L5f:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
        this.userInfos = r6;
        FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(FlowKt.combine(r6, userRepositoryImpl.selectedUserInfo, getActions(), userRepositoryImpl.userSwitcherSettings, new UserInteractor$userRecords$1(this, null)), new UserInteractor$userRecords$2(this, null));
        SharingStarted.Companion.getClass();
        StartedEagerly startedEagerly = SharingStarted.Companion.Eagerly;
        this.userRecords = FlowKt.stateIn(flowKt__TransformKt$onEach$$inlined$unsafeTransform$1, coroutineScope, startedEagerly, new ArrayList());
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$12 = userRepositoryImpl.selectedUserInfo;
        this.selectedUserRecord = FlowKt.stateIn(new Flow() { // from class: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ UserInteractor this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2$2", f = "UserInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_setUsbConnectionType, IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2$2$1, reason: invalid class name */
                /* loaded from: classes2.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, UserInteractor userInteractor) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = userInteractor;
                }

                /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2$2$1 r0 = (com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2$2$1 r0 = new com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L3a
                        if (r2 == r4) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L5d
                    L2a:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L32:
                        java.lang.Object r5 = r0.L$0
                        kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L51
                    L3a:
                        kotlin.ResultKt.throwOnFailure(r7)
                        android.content.pm.UserInfo r6 = (android.content.pm.UserInfo) r6
                        int r7 = r6.id
                        kotlinx.coroutines.flow.FlowCollector r2 = r5.$this_unsafeFlow
                        r0.L$0 = r2
                        r0.label = r4
                        com.android.systemui.user.domain.interactor.UserInteractor r5 = r5.this$0
                        java.lang.Object r7 = com.android.systemui.user.domain.interactor.UserInteractor.access$toRecord(r5, r6, r7, r0)
                        if (r7 != r1) goto L50
                        return r1
                    L50:
                        r5 = r2
                    L51:
                        r6 = 0
                        r0.L$0 = r6
                        r0.label = r3
                        java.lang.Object r5 = r5.emit(r7, r0)
                        if (r5 != r1) goto L5d
                        return r1
                    L5d:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, this), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }, coroutineScope, startedEagerly, null);
        this.isGuestUserAutoCreated = guestUserInteractor.isGuestUserAutoCreated;
        this.isGuestUserResetting = guestUserInteractor.isGuestUserResetting;
        this.isStatusBarUserChipEnabled = userRepositoryImpl.isStatusBarUserChipEnabled;
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._dialogShowRequests = MutableStateFlow;
        this.dialogShowRequests = FlowKt.asStateFlow(MutableStateFlow);
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(null);
        this._dialogDismissRequests = MutableStateFlow2;
        this.dialogDismissRequests = FlowKt.asStateFlow(MutableStateFlow2);
        KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.user.domain.interactor.UserInteractor$keyguardUpdateMonitorCallback$1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardGoingAway() {
                UserInteractor.this.dismissDialog();
            }
        };
        this.keyguardUpdateMonitorCallback = keyguardUpdateMonitorCallback;
        refreshUsersScheduler.refreshIfNotPaused();
        FlowKt.launchIn(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(FlowKt.distinctUntilChanged(telephonyInteractor.callState), new AnonymousClass1(null)), coroutineScope);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_ADDED");
        intentFilter.addAction("android.intent.action.USER_REMOVED");
        intentFilter.addAction("android.intent.action.USER_INFO_CHANGED");
        intentFilter.addAction("android.intent.action.USER_SWITCHED");
        intentFilter.addAction("android.intent.action.USER_STOPPED");
        intentFilter.addAction("android.intent.action.USER_UNLOCKED");
        FlowKt.launchIn(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(BroadcastDispatcher.broadcastFlow$default(broadcastDispatcher, intentFilter, UserHandle.SYSTEM, new Function2() { // from class: com.android.systemui.user.domain.interactor.UserInteractor.3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return (Intent) obj;
            }
        }, 12), com.android.systemui.util.kotlin.FlowKt.pairwise(userRepositoryImpl.selectedUserInfo, null), new AnonymousClass4(null)), new AnonymousClass5(null)), coroutineScope);
        keyguardUpdateMonitor.registerCallback(keyguardUpdateMonitorCallback);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$onBroadcastReceived(com.android.systemui.user.domain.interactor.UserInteractor r9, android.content.Intent r10, android.content.pm.UserInfo r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor.access$onBroadcastReceived(com.android.systemui.user.domain.interactor.UserInteractor, android.content.Intent, android.content.pm.UserInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$toRecord(com.android.systemui.user.domain.interactor.UserInteractor r24, android.content.pm.UserInfo r25, int r26, kotlin.coroutines.Continuation r27) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor.access$toRecord(com.android.systemui.user.domain.interactor.UserInteractor, android.content.pm.UserInfo, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x015a -> B:11:0x015c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$toUserModels(com.android.systemui.user.domain.interactor.UserInteractor r19, java.util.List r20, int r21, boolean r22, kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor.access$toUserModels(com.android.systemui.user.domain.interactor.UserInteractor, java.util.List, int, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void addCallback(UserCallback userCallback) {
        BuildersKt.launch$default(this.applicationScope, null, null, new UserInteractor$addCallback$1(this, userCallback, null), 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object canSwitchUsers(int r10, kotlin.coroutines.Continuation r11, boolean r12) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$1
            if (r0 == 0) goto L13
            r0 = r11
            com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$1 r0 = (com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$1 r0 = new com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 0
            r7 = 1
            if (r2 == 0) goto L4e
            if (r2 == r7) goto L42
            if (r2 == r5) goto L38
            if (r2 != r4) goto L30
            kotlin.ResultKt.throwOnFailure(r11)
            goto La7
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L38:
            int r9 = r0.I$0
            java.lang.Object r10 = r0.L$0
            com.android.systemui.user.domain.interactor.UserInteractor r10 = (com.android.systemui.user.domain.interactor.UserInteractor) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto L81
        L42:
            boolean r12 = r0.Z$0
            int r10 = r0.I$0
            java.lang.Object r9 = r0.L$0
            com.android.systemui.user.domain.interactor.UserInteractor r9 = (com.android.systemui.user.domain.interactor.UserInteractor) r9
            kotlin.ResultKt.throwOnFailure(r11)
            goto L67
        L4e:
            kotlin.ResultKt.throwOnFailure(r11)
            com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$isHeadlessSystemUserMode$1 r11 = new com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$isHeadlessSystemUserMode$1
            r11.<init>(r9, r6)
            r0.L$0 = r9
            r0.I$0 = r10
            r0.Z$0 = r12
            r0.label = r7
            kotlinx.coroutines.CoroutineDispatcher r2 = r9.backgroundDispatcher
            java.lang.Object r11 = kotlinx.coroutines.BuildersKt.withContext(r2, r11, r0)
            if (r11 != r1) goto L67
            return r1
        L67:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r12 == 0) goto L8f
            if (r11 == 0) goto L8f
            r0.L$0 = r9
            r0.I$0 = r10
            r0.label = r5
            java.lang.Object r11 = r9.isAnyUserUnlocked(r0)
            if (r11 != r1) goto L7e
            return r1
        L7e:
            r8 = r10
            r10 = r9
            r9 = r8
        L81:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto L8d
            r8 = r10
            r10 = r9
            r9 = r8
            goto L8f
        L8d:
            r11 = r3
            goto L93
        L8f:
            r11 = r7
            r8 = r10
            r10 = r9
            r9 = r8
        L93:
            if (r11 == 0) goto Lb0
            kotlinx.coroutines.CoroutineDispatcher r11 = r10.backgroundDispatcher
            com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$2 r12 = new com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$2
            r12.<init>(r10, r9, r6)
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r11 = kotlinx.coroutines.BuildersKt.withContext(r11, r12, r0)
            if (r11 != r1) goto La7
            return r1
        La7:
            java.lang.Number r11 = (java.lang.Number) r11
            int r9 = r11.intValue()
            if (r9 != 0) goto Lb0
            r3 = r7
        Lb0:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor.canSwitchUsers(int, kotlin.coroutines.Continuation, boolean):java.lang.Object");
    }

    public final void dismissDialog() {
        this._dialogDismissRequests.setValue(Unit.INSTANCE);
    }

    public final void executeAction(UserActionModel userActionModel, final UserSwitchDialogController.DialogShower dialogShower) {
        int i = WhenMappings.$EnumSwitchMapping$0[userActionModel.ordinal()];
        UiEventLogger uiEventLogger = this.uiEventLogger;
        if (i != 1) {
            Context context = this.applicationContext;
            if (i != 2) {
                ActivityStarter activityStarter = this.activityStarter;
                if (i != 3) {
                    if (i == 4) {
                        activityStarter.startActivity(new Intent("android.settings.USER_SETTINGS"), true);
                        return;
                    }
                    return;
                } else {
                    uiEventLogger.log(MultiUserActionsEvent.CREATE_RESTRICTED_USER_FROM_USER_SWITCHER);
                    dismissDialog();
                    activityStarter.startActivity(new Intent().setAction("android.os.action.CREATE_SUPERVISED_USER").setPackage(context.getString(R.string.hour)).addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE), true);
                    return;
                }
            }
            uiEventLogger.log(MultiUserActionsEvent.CREATE_USER_FROM_USER_SWITCHER);
            UserInfo selectedUserInfo = ((UserRepositoryImpl) this.repository).getSelectedUserInfo();
            dismissDialog();
            ActivityStarter activityStarter2 = this.activityStarter;
            boolean z = ((KeyguardStateControllerImpl) ((KeyguardRepositoryImpl) this.keyguardInteractor.repository).keyguardStateController).mShowing;
            int i2 = CreateUserActivity.$r8$clinit;
            Intent intent = new Intent(context, (Class<?>) CreateUserActivity.class);
            intent.addFlags(335544320);
            intent.putExtra("extra_is_keyguard_showing", z);
            activityStarter2.startActivity(intent, true, null, true, selectedUserInfo.getUserHandle());
            return;
        }
        uiEventLogger.log(MultiUserActionsEvent.CREATE_GUEST_FROM_USER_SWITCHER);
        UserInteractor$executeAction$1 userInteractor$executeAction$1 = new UserInteractor$executeAction$1(this);
        UserInteractor$executeAction$2 userInteractor$executeAction$2 = new UserInteractor$executeAction$2(this);
        Function1 function1 = new Function1() { // from class: com.android.systemui.user.domain.interactor.UserInteractor$executeAction$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                UserInteractor.this.selectUser(((Number) obj).intValue(), dialogShower);
                return Unit.INSTANCE;
            }
        };
        GuestUserInteractor guestUserInteractor = this.guestUserInteractor;
        BuildersKt.launch$default(guestUserInteractor.applicationScope, null, null, new GuestUserInteractor$createAndSwitchTo$1(guestUserInteractor, userInteractor$executeAction$1, userInteractor$executeAction$2, function1, null), 3);
    }

    public final void exitGuestUser(int i, int i2, boolean z) {
        UserInteractor$exitGuestUser$1 userInteractor$exitGuestUser$1 = new UserInteractor$exitGuestUser$1(this);
        UserInteractor$exitGuestUser$2 userInteractor$exitGuestUser$2 = new UserInteractor$exitGuestUser$2(this);
        UserInteractor$exitGuestUser$3 userInteractor$exitGuestUser$3 = new UserInteractor$exitGuestUser$3(this);
        GuestUserInteractor guestUserInteractor = this.guestUserInteractor;
        UserInfo selectedUserInfo = ((UserRepositoryImpl) guestUserInteractor.repository).getSelectedUserInfo();
        int i3 = selectedUserInfo.id;
        if (i3 != i) {
            Log.w("GuestUserInteractor", SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("User requesting to start a new session (", i, ") is not current user (", i3, ")"));
            return;
        }
        if (!selectedUserInfo.isGuest()) {
            Log.w("GuestUserInteractor", "User requesting to start a new session (" + i + ") is not a guest");
            return;
        }
        BuildersKt.launch$default(guestUserInteractor.applicationScope, null, null, new GuestUserInteractor$exit$1(guestUserInteractor, i2, selectedUserInfo, z, userInteractor$exitGuestUser$1, userInteractor$exitGuestUser$2, userInteractor$exitGuestUser$3, null), 3);
    }

    public final FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2 getActions() {
        UserRepositoryImpl userRepositoryImpl = (UserRepositoryImpl) this.repository;
        return FlowKt.combine(userRepositoryImpl.selectedUserInfo, this.userInfos, userRepositoryImpl.userSwitcherSettings, this.keyguardInteractor.isKeyguardShowing, new UserInteractor$actions$1(this, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getUserImage(int r5, kotlin.coroutines.Continuation r6, boolean r7) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.android.systemui.user.domain.interactor.UserInteractor$getUserImage$1
            if (r0 == 0) goto L13
            r0 = r6
            com.android.systemui.user.domain.interactor.UserInteractor$getUserImage$1 r0 = (com.android.systemui.user.domain.interactor.UserInteractor$getUserImage$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.android.systemui.user.domain.interactor.UserInteractor$getUserImage$1 r0 = new com.android.systemui.user.domain.interactor.UserInteractor$getUserImage$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            int r5 = r0.I$0
            java.lang.Object r4 = r0.L$0
            com.android.systemui.user.domain.interactor.UserInteractor r4 = (com.android.systemui.user.domain.interactor.UserInteractor) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L67
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            if (r7 == 0) goto L52
            android.content.Context r4 = r4.applicationContext
            r5 = 2131232737(0x7f0807e1, float:1.8081592E38)
            android.graphics.drawable.Drawable r4 = r4.getDrawable(r5)
            if (r4 == 0) goto L46
            return r4
        L46:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "Required value was null."
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L52:
            com.android.systemui.user.domain.interactor.UserInteractor$getUserImage$userIcon$1 r6 = new com.android.systemui.user.domain.interactor.UserInteractor$getUserImage$userIcon$1
            r7 = 0
            r6.<init>(r4, r5, r7)
            r0.L$0 = r4
            r0.I$0 = r5
            r0.label = r3
            kotlinx.coroutines.CoroutineDispatcher r7 = r4.backgroundDispatcher
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r7, r6, r0)
            if (r6 != r1) goto L67
            return r1
        L67:
            android.graphics.Bitmap r6 = (android.graphics.Bitmap) r6
            if (r6 == 0) goto L71
            android.graphics.drawable.BitmapDrawable r4 = new android.graphics.drawable.BitmapDrawable
            r4.<init>(r6)
            return r4
        L71:
            android.content.Context r4 = r4.applicationContext
            android.content.res.Resources r4 = r4.getResources()
            r6 = 0
            android.graphics.drawable.Drawable r4 = com.android.internal.util.UserIcons.getDefaultUserIcon(r4, r5, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor.getUserImage(int, kotlin.coroutines.Continuation, boolean):java.lang.Object");
    }

    public final FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1 getUsers() {
        UserRepositoryImpl userRepositoryImpl = (UserRepositoryImpl) this.repository;
        return FlowKt.combine(this.userInfos, userRepositoryImpl.selectedUserInfo, userRepositoryImpl.userSwitcherSettings, new UserInteractor$users$1(this, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0074 -> B:10:0x0077). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object isAnyUserUnlocked(kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.android.systemui.user.domain.interactor.UserInteractor$isAnyUserUnlocked$1
            if (r0 == 0) goto L13
            r0 = r10
            com.android.systemui.user.domain.interactor.UserInteractor$isAnyUserUnlocked$1 r0 = (com.android.systemui.user.domain.interactor.UserInteractor$isAnyUserUnlocked$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.android.systemui.user.domain.interactor.UserInteractor$isAnyUserUnlocked$1 r0 = new com.android.systemui.user.domain.interactor.UserInteractor$isAnyUserUnlocked$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            java.lang.Object r9 = r0.L$1
            java.util.Iterator r9 = (java.util.Iterator) r9
            java.lang.Object r2 = r0.L$0
            com.android.systemui.user.domain.interactor.UserInteractor r2 = (com.android.systemui.user.domain.interactor.UserInteractor) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L77
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L38:
            kotlin.ResultKt.throwOnFailure(r10)
            android.os.UserManager r10 = r9.manager
            java.util.List r10 = r10.getUsers(r4, r4, r4)
            boolean r2 = r10.isEmpty()
            if (r2 == 0) goto L48
            goto L87
        L48:
            java.util.Iterator r10 = r10.iterator()
            r8 = r10
            r10 = r9
            r9 = r8
        L4f:
            boolean r2 = r9.hasNext()
            if (r2 == 0) goto L87
            java.lang.Object r2 = r9.next()
            android.content.pm.UserInfo r2 = (android.content.pm.UserInfo) r2
            int r5 = r2.id
            if (r5 == 0) goto L83
            kotlinx.coroutines.CoroutineDispatcher r5 = r10.backgroundDispatcher
            com.android.systemui.user.domain.interactor.UserInteractor$isAnyUserUnlocked$2$1 r6 = new com.android.systemui.user.domain.interactor.UserInteractor$isAnyUserUnlocked$2$1
            r7 = 0
            r6.<init>(r10, r2, r7)
            r0.L$0 = r10
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r2 = kotlinx.coroutines.BuildersKt.withContext(r5, r6, r0)
            if (r2 != r1) goto L74
            return r1
        L74:
            r8 = r2
            r2 = r10
            r10 = r8
        L77:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L82
            r10 = r2
            r2 = r4
            goto L84
        L82:
            r10 = r2
        L83:
            r2 = r3
        L84:
            if (r2 == 0) goto L4f
            r3 = r4
        L87:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor.isAnyUserUnlocked(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void removeCallback(UserCallback userCallback) {
        BuildersKt.launch$default(this.applicationScope, null, null, new UserInteractor$removeCallback$1(this, userCallback, null), 3);
    }

    public final void removeGuestUser(int i) {
        BuildersKt.launch$default(this.applicationScope, null, null, new UserInteractor$removeGuestUser$1(this, i, -10000, null), 3);
    }

    public final void selectUser(int i, UserSwitchDialogController.DialogShower dialogShower) {
        UserRepositoryImpl userRepositoryImpl = (UserRepositoryImpl) this.repository;
        UserInfo selectedUserInfo = userRepositoryImpl.getSelectedUserInfo();
        int i2 = selectedUserInfo.id;
        KeyguardInteractor keyguardInteractor = this.keyguardInteractor;
        if (i == i2 && selectedUserInfo.isGuest()) {
            showDialog(new ShowDialogRequestModel.ShowExitGuestDialog(selectedUserInfo.id, userRepositoryImpl.lastSelectedNonGuestUserId, selectedUserInfo.isEphemeral(), ((KeyguardStateControllerImpl) ((KeyguardRepositoryImpl) keyguardInteractor.repository).keyguardStateController).mShowing, new UserInteractor$selectUser$1(this), dialogShower));
        } else {
            if (selectedUserInfo.isGuest()) {
                showDialog(new ShowDialogRequestModel.ShowExitGuestDialog(selectedUserInfo.id, i, selectedUserInfo.isEphemeral(), ((KeyguardStateControllerImpl) ((KeyguardRepositoryImpl) keyguardInteractor.repository).keyguardStateController).mShowing, new UserInteractor$selectUser$2(this), dialogShower));
                return;
            }
            if (dialogShower != null) {
                ((DialogShowerImpl) dialogShower).dismiss();
            }
            switchUser(i);
        }
    }

    public final void showDialog(ShowDialogRequestModel showDialogRequestModel) {
        this._dialogShowRequests.setValue(showDialogRequestModel);
    }

    public final void showUserSwitcher(Expandable expandable) {
        if (((FeatureFlagsRelease) this.featureFlags).isEnabled(Flags.FULL_SCREEN_USER_SWITCHER)) {
            showDialog(new ShowDialogRequestModel.ShowUserSwitcherFullscreenDialog(expandable));
        } else {
            showDialog(new ShowDialogRequestModel.ShowUserSwitcherDialog(expandable));
        }
    }

    public final void switchUser(int i) {
        RefreshUsersScheduler refreshUsersScheduler = this.refreshUsersScheduler;
        BuildersKt.launch$default(refreshUsersScheduler.applicationScope, refreshUsersScheduler.mainDispatcher, null, new RefreshUsersScheduler$pause$1(refreshUsersScheduler, null), 2);
        try {
            this.activityManager.switchUser(i);
        } catch (RemoteException e) {
            Log.e("UserInteractor", "Couldn't switch user.", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.android.systemui.user.domain.interactor.UserInteractor] */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.android.systemui.common.shared.model.Text] */
    /* JADX WARN: Type inference failed for: r4v6, types: [com.android.systemui.common.shared.model.Text] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object toUserModel(android.content.pm.UserInfo r18, int r19, boolean r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor.toUserModel(android.content.pm.UserInfo, int, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$toRecord(com.android.systemui.user.domain.interactor.UserInteractor r20, com.android.systemui.user.shared.model.UserActionModel r21, int r22, boolean r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor.access$toRecord(com.android.systemui.user.domain.interactor.UserInteractor, com.android.systemui.user.shared.model.UserActionModel, int, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
