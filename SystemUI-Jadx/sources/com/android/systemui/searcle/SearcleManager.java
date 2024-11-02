package com.android.systemui.searcle;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.model.SysUiState;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.plugins.omni.AssistStateManager;
import com.android.systemui.searcle.OmniAPI;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.app.SemMultiWindowManager;
import com.samsung.android.desktopmode.SemDesktopModeManager;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SearcleManager {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context context;
    public int currentDownCount;
    public final SemDesktopModeManager desktopModeManager;
    public boolean isUnavailableSearchApp;
    public final KeyguardUpdateMonitor keyguradUpdateMonitor;
    public NavigationBarView navigationBarView;
    public final SettingsHelper settingsHelper;
    public final SearcleTipPopup tipPopup;
    public Toast toast;
    public CharSequence toastMsg;
    public String invokedPackageName = "";
    public final SysUiState sysUiState = (SysUiState) Dependency.get(SysUiState.class);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.searcle.SearcleManager$1", f = "SearcleManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.searcle.SearcleManager$1, reason: invalid class name */
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
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Context context = SearcleManager.this.context;
                Intent intent = OmniAPI.INTENT_ACTION_ASSIST;
                OmniAPI.mAssistStateManager = AssistStateManager.INSTANCE.lambda$get$0(context);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OmniAPI.UnexecutableType.values().length];
            try {
                iArr[OmniAPI.UnexecutableType.SERVICE_UNAVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OmniAPI.UnexecutableType.GOOGLE_APP_DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OmniAPI.UnexecutableType.GOOGLE_IS_NOT_DIGITAL_ASSISTANT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public SearcleManager(Context context) {
        SemDesktopModeManager semDesktopModeManager;
        this.context = context;
        new SemMultiWindowManager();
        this.settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.keyguradUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);
        Object systemService = context.getSystemService("desktopmode");
        if (systemService instanceof SemDesktopModeManager) {
            semDesktopModeManager = (SemDesktopModeManager) systemService;
        } else {
            semDesktopModeManager = null;
        }
        this.desktopModeManager = semDesktopModeManager;
        this.tipPopup = new SearcleTipPopup(context);
        BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.IO), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
    
        if (r1 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void invokeSearcle() {
        /*
            r7 = this;
            com.android.systemui.util.SettingsHelper r0 = r7.settingsHelper
            boolean r1 = r0.isNavigationBarGestureWhileHidden()
            android.content.Context r2 = r7.context
            java.lang.String r3 = "SearcleManager"
            r4 = 0
            if (r1 != 0) goto L52
            com.android.systemui.volume.util.SystemServiceExtension r1 = com.android.systemui.volume.util.SystemServiceExtension.INSTANCE     // Catch: java.lang.SecurityException -> L3c
            r1.getClass()     // Catch: java.lang.SecurityException -> L3c
            java.lang.Class<android.app.ActivityManager> r1 = android.app.ActivityManager.class
            java.lang.Object r1 = r2.getSystemService(r1)     // Catch: java.lang.SecurityException -> L3c
            android.app.ActivityManager r1 = (android.app.ActivityManager) r1     // Catch: java.lang.SecurityException -> L3c
            r5 = 1
            java.util.List r1 = r1.getRunningTasks(r5)     // Catch: java.lang.SecurityException -> L3c
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.SecurityException -> L3c
            boolean r5 = r1.hasNext()     // Catch: java.lang.SecurityException -> L3c
            if (r5 == 0) goto L4e
            java.lang.Object r1 = r1.next()     // Catch: java.lang.SecurityException -> L3c
            android.app.ActivityManager$RunningTaskInfo r1 = (android.app.ActivityManager.RunningTaskInfo) r1     // Catch: java.lang.SecurityException -> L3c
            android.content.ComponentName r1 = r1.topActivity     // Catch: java.lang.SecurityException -> L3c
            if (r1 == 0) goto L38
            java.lang.String r1 = r1.getPackageName()     // Catch: java.lang.SecurityException -> L3c
            goto L39
        L38:
            r1 = r4
        L39:
            if (r1 != 0) goto L50
            goto L4e
        L3c:
            r1 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "getTopActivity SecurityException "
            r5.<init>(r6)
            r5.append(r1)
            java.lang.String r1 = r5.toString()
            android.util.Log.w(r3, r1)
        L4e:
            java.lang.String r1 = ""
        L50:
            r7.invokedPackageName = r1
        L52:
            java.lang.String r1 = r7.invokedPackageName
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "invokeSearcle invokedPackageName = "
            r5.<init>(r6)
            r5.append(r1)
            java.lang.String r1 = r5.toString()
            android.util.Log.d(r3, r1)
            android.os.Handler r1 = new android.os.Handler
            android.os.Looper r3 = android.os.Looper.getMainLooper()
            r1.<init>(r3)
            com.android.systemui.searcle.SearcleManager$invokeSearcle$1 r3 = new com.android.systemui.searcle.SearcleManager$invokeSearcle$1
            r3.<init>()
            r1.post(r3)
            kotlinx.coroutines.scheduling.DefaultIoScheduler r1 = kotlinx.coroutines.Dispatchers.IO
            kotlinx.coroutines.internal.ContextScope r3 = kotlinx.coroutines.CoroutineScopeKt.CoroutineScope(r1)
            com.android.systemui.searcle.SearcleManager$invokeSearcle$2 r5 = new com.android.systemui.searcle.SearcleManager$invokeSearcle$2
            r5.<init>(r7, r4)
            r6 = 3
            kotlinx.coroutines.BuildersKt.launch$default(r3, r4, r4, r5, r6)
            boolean r3 = r7.isSupportTouchToSearch()
            if (r3 == 0) goto L8f
            com.android.systemui.plugins.circle2search.BixbyTouchCircle2SearchAPI.invokeCircle2Search(r2)
            goto L9b
        L8f:
            kotlinx.coroutines.internal.ContextScope r1 = kotlinx.coroutines.CoroutineScopeKt.CoroutineScope(r1)
            com.android.systemui.searcle.SearcleManager$invokeSearcle$3 r2 = new com.android.systemui.searcle.SearcleManager$invokeSearcle$3
            r2.<init>(r7, r4)
            kotlinx.coroutines.BuildersKt.launch$default(r1, r4, r4, r2, r6)
        L9b:
            boolean r1 = r7.isUnavailableSearchApp
            if (r1 == 0) goto Lac
            boolean r0 = r0.isNavigationBarGestureWhileHidden()
            if (r0 == 0) goto Lac
            r0 = 0
            r7.isUnavailableSearchApp = r0
            r7.toastMsg = r4
            r7.toast = r4
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.searcle.SearcleManager.invokeSearcle():void");
    }

    public final boolean isSupportTouchToSearch() {
        boolean z;
        boolean z2 = BasicRune.BIXBY_TOUCH_SUPPORT_CIRCLE2SEARCH;
        if (!z2) {
            return false;
        }
        SettingsHelper settingsHelper = this.settingsHelper;
        settingsHelper.getClass();
        if (z2 && settingsHelper.mItemLists.get("cn_support_circe_to_search").getIntValue() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0165, code lost:
    
        if (r0 != false) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isUnavailableSearchAppCheck() {
        /*
            Method dump skipped, instructions count: 567
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.searcle.SearcleManager.isUnavailableSearchAppCheck():boolean");
    }

    public final void showToast() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.systemui.searcle.SearcleManager$showToast$1
            @Override // java.lang.Runnable
            public final void run() {
                SearcleManager searcleManager = SearcleManager.this;
                CharSequence charSequence = searcleManager.toastMsg;
                if (charSequence != null) {
                    Toast toast = searcleManager.toast;
                    if (toast != null) {
                        toast.cancel();
                        toast.setText(charSequence);
                    }
                    Toast makeText = Toast.makeText(searcleManager.context, charSequence, 0);
                    searcleManager.toast = makeText;
                    if (makeText != null) {
                        makeText.show();
                    }
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if (r13 != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startSearcleByHomeKey(boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.searcle.SearcleManager.startSearcleByHomeKey(boolean, boolean):void");
    }
}
