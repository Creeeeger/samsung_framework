package com.android.systemui.qs.pipeline.data.repository;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class InstalledTilesComponentRepositoryImpl implements InstalledTilesComponentRepository {
    public static final PackageManager.ResolveInfoFlags FLAGS;
    public static final Intent INTENT;
    public static final IntentFilter INTENT_FILTER;
    public final Context applicationContext;
    public final CoroutineDispatcher backgroundDispatcher;
    public final PackageManager packageManager;

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
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        INTENT_FILTER = intentFilter;
        INTENT = new Intent("android.service.quicksettings.action.QS_TILE");
        FLAGS = PackageManager.ResolveInfoFlags.of(786436L);
    }

    public InstalledTilesComponentRepositoryImpl(Context context, PackageManager packageManager, CoroutineDispatcher coroutineDispatcher) {
        this.applicationContext = context;
        this.packageManager = packageManager;
        this.backgroundDispatcher = coroutineDispatcher;
    }

    public final Flow getInstalledTilesComponents(final int i) {
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$1 installedTilesComponentRepositoryImpl$getInstalledTilesComponents$1 = new InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$1(this, i, null);
        conflatedCallbackFlow.getClass();
        final FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$2(null), ConflatedCallbackFlow.conflatedCallbackFlow(installedTilesComponentRepositoryImpl$getInstalledTilesComponents$1));
        return FlowKt.flowOn(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ int $userId$inlined;
                public final /* synthetic */ InstalledTilesComponentRepositoryImpl this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1$2", f = "InstalledTilesComponentRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, InstalledTilesComponentRepositoryImpl installedTilesComponentRepositoryImpl, int i) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = installedTilesComponentRepositoryImpl;
                    this.$userId$inlined = i;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1$2$1 r0 = (com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1$2$1 r0 = new com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L30
                        if (r2 != r3) goto L28
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto Ldf
                    L28:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L30:
                        kotlin.ResultKt.throwOnFailure(r9)
                        kotlin.Unit r8 = (kotlin.Unit) r8
                        android.content.Intent r8 = com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl.INTENT
                        com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl r9 = r7.this$0
                        android.content.pm.PackageManager r9 = r9.packageManager
                        android.content.pm.PackageManager$ResolveInfoFlags r2 = com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl.FLAGS
                        int r4 = r7.$userId$inlined
                        java.util.List r8 = r9.queryIntentServicesAsUser(r8, r2, r4)
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r2.<init>()
                        java.util.Iterator r8 = r8.iterator()
                    L4c:
                        boolean r4 = r8.hasNext()
                        if (r4 == 0) goto L60
                        java.lang.Object r4 = r8.next()
                        android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
                        android.content.pm.ServiceInfo r4 = r4.serviceInfo
                        if (r4 == 0) goto L4c
                        r2.add(r4)
                        goto L4c
                    L60:
                        java.util.ArrayList r8 = new java.util.ArrayList
                        r8.<init>()
                        java.util.Iterator r2 = r2.iterator()
                    L69:
                        boolean r4 = r2.hasNext()
                        if (r4 == 0) goto L84
                        java.lang.Object r4 = r2.next()
                        r5 = r4
                        android.content.pm.ServiceInfo r5 = (android.content.pm.ServiceInfo) r5
                        java.lang.String r5 = r5.permission
                        java.lang.String r6 = "android.permission.BIND_QUICK_SETTINGS_TILE"
                        boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
                        if (r5 == 0) goto L69
                        r8.add(r4)
                        goto L69
                    L84:
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r2.<init>()
                        java.util.Iterator r8 = r8.iterator()
                    L8d:
                        boolean r4 = r8.hasNext()
                        if (r4 == 0) goto Lb7
                        java.lang.Object r4 = r8.next()
                        r5 = r4
                        android.content.pm.ServiceInfo r5 = (android.content.pm.ServiceInfo) r5
                        com.android.systemui.util.Assert.isNotMainThread()
                        android.content.ComponentName r6 = r5.getComponentName()
                        int r6 = r9.getComponentEnabledSetting(r6)
                        if (r6 == 0) goto Lad
                        if (r6 == r3) goto Lab
                        r5 = 0
                        goto Lb1
                    Lab:
                        r5 = r3
                        goto Lb1
                    Lad:
                        boolean r5 = r5.isEnabled()
                    Lb1:
                        if (r5 == 0) goto L8d
                        r2.add(r4)
                        goto L8d
                    Lb7:
                        java.util.LinkedHashSet r8 = new java.util.LinkedHashSet
                        r8.<init>()
                        java.util.Iterator r9 = r2.iterator()
                    Lc0:
                        boolean r2 = r9.hasNext()
                        if (r2 == 0) goto Ld4
                        java.lang.Object r2 = r9.next()
                        android.content.pm.ServiceInfo r2 = (android.content.pm.ServiceInfo) r2
                        android.content.ComponentName r2 = r2.getComponentName()
                        r8.add(r2)
                        goto Lc0
                    Ld4:
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r7 = r7.$this_unsafeFlow
                        java.lang.Object r7 = r7.emit(r8, r0)
                        if (r7 != r1) goto Ldf
                        return r1
                    Ldf:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, this, i), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }), this.backgroundDispatcher);
    }
}
