package com.android.systemui.keyguard;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.SystemUIAppComponentFactoryBase;
import com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor;
import com.android.systemui.keyguard.ui.preview.KeyguardRemotePreviewManager;
import com.android.systemui.shared.customization.data.content.CustomizationProviderContract;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomizationProvider extends ContentProvider implements SystemUIAppComponentFactoryBase.ContextInitializer {
    public SystemUIAppComponentFactoryBase.ContextAvailableCallback contextAvailableCallback;
    public KeyguardQuickAffordanceInteractor interactor;
    public CoroutineDispatcher mainDispatcher;
    public KeyguardRemotePreviewManager previewManager;
    public final UriMatcher uriMatcher;

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

    public CustomizationProvider() {
        UriMatcher uriMatcher = new UriMatcher(-1);
        CustomizationProviderContract.LockScreenQuickAffordances.INSTANCE.getClass();
        uriMatcher.addURI("com.android.systemui.customization", CustomizationProviderContract.LockScreenQuickAffordances.qualifiedTablePath("slots"), 1);
        uriMatcher.addURI("com.android.systemui.customization", CustomizationProviderContract.LockScreenQuickAffordances.qualifiedTablePath("affordances"), 2);
        uriMatcher.addURI("com.android.systemui.customization", CustomizationProviderContract.LockScreenQuickAffordances.qualifiedTablePath("selections"), 3);
        uriMatcher.addURI("com.android.systemui.customization", "flags", 4);
        this.uriMatcher = uriMatcher;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$deleteSelection(com.android.systemui.keyguard.CustomizationProvider r8, android.net.Uri r9, java.lang.String[] r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.CustomizationProvider.access$deleteSelection(com.android.systemui.keyguard.CustomizationProvider, android.net.Uri, java.lang.String[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$insertSelection(com.android.systemui.keyguard.CustomizationProvider r6, android.content.ContentValues r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.CustomizationProvider.access$insertSelection(com.android.systemui.keyguard.CustomizationProvider, android.content.ContentValues, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$queryAffordances(com.android.systemui.keyguard.CustomizationProvider r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.CustomizationProvider.access$queryAffordances(com.android.systemui.keyguard.CustomizationProvider, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006d A[LOOP:0: B:11:0x0067->B:13:0x006d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$queryFlags(com.android.systemui.keyguard.CustomizationProvider r5, kotlin.coroutines.Continuation r6) {
        /*
            r5.getClass()
            boolean r0 = r6 instanceof com.android.systemui.keyguard.CustomizationProvider$queryFlags$1
            if (r0 == 0) goto L16
            r0 = r6
            com.android.systemui.keyguard.CustomizationProvider$queryFlags$1 r0 = (com.android.systemui.keyguard.CustomizationProvider$queryFlags$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            com.android.systemui.keyguard.CustomizationProvider$queryFlags$1 r0 = new com.android.systemui.keyguard.CustomizationProvider$queryFlags$1
            r0.<init>(r5, r6)
        L1b:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r5 = r0.L$1
            android.database.MatrixCursor r5 = (android.database.MatrixCursor) r5
            java.lang.Object r0 = r0.L$0
            android.database.MatrixCursor r0 = (android.database.MatrixCursor) r0
            kotlin.ResultKt.throwOnFailure(r6)
            r1 = r0
            goto L61
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r6)
            android.database.MatrixCursor r6 = new android.database.MatrixCursor
            java.lang.String r2 = "name"
            java.lang.String r4 = "value"
            java.lang.String[] r2 = new java.lang.String[]{r2, r4}
            r6.<init>(r2)
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r5 = r5.getInteractor()
            r0.L$0 = r6
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r5 = r5.getPickerFlags(r0)
            if (r5 != r1) goto L5e
            goto L84
        L5e:
            r1 = r6
            r6 = r5
            r5 = r1
        L61:
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.Iterator r6 = r6.iterator()
        L67:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L84
            java.lang.Object r0 = r6.next()
            com.android.systemui.keyguard.shared.model.KeyguardPickerFlag r0 = (com.android.systemui.keyguard.shared.model.KeyguardPickerFlag) r0
            java.lang.String r2 = r0.name
            java.lang.Integer r3 = new java.lang.Integer
            boolean r0 = r0.value
            r3.<init>(r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r2, r3}
            r5.addRow(r0)
            goto L67
        L84:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.CustomizationProvider.access$queryFlags(com.android.systemui.keyguard.CustomizationProvider, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$querySelections(com.android.systemui.keyguard.CustomizationProvider r6, kotlin.coroutines.Continuation r7) {
        /*
            r6.getClass()
            boolean r0 = r7 instanceof com.android.systemui.keyguard.CustomizationProvider$querySelections$1
            if (r0 == 0) goto L16
            r0 = r7
            com.android.systemui.keyguard.CustomizationProvider$querySelections$1 r0 = (com.android.systemui.keyguard.CustomizationProvider$querySelections$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            com.android.systemui.keyguard.CustomizationProvider$querySelections$1 r0 = new com.android.systemui.keyguard.CustomizationProvider$querySelections$1
            r0.<init>(r6, r7)
        L1b:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r6 = r0.L$1
            android.database.MatrixCursor r6 = (android.database.MatrixCursor) r6
            java.lang.Object r0 = r0.L$0
            android.database.MatrixCursor r0 = (android.database.MatrixCursor) r0
            kotlin.ResultKt.throwOnFailure(r7)
            r1 = r0
            goto L62
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            kotlin.ResultKt.throwOnFailure(r7)
            android.database.MatrixCursor r7 = new android.database.MatrixCursor
            java.lang.String r2 = "affordance_name"
            java.lang.String r4 = "slot_id"
            java.lang.String r5 = "affordance_id"
            java.lang.String[] r2 = new java.lang.String[]{r4, r5, r2}
            r7.<init>(r2)
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r6 = r6.getInteractor()
            r0.L$0 = r7
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r6 = r6.getSelections(r0)
            if (r6 != r1) goto L5f
            goto La0
        L5f:
            r1 = r7
            r7 = r6
            r6 = r1
        L62:
            java.util.Map r7 = (java.util.Map) r7
            java.util.Set r7 = r7.entrySet()
            java.util.Iterator r7 = r7.iterator()
        L6c:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto La0
            java.lang.Object r0 = r7.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r2 = r0.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            java.util.Iterator r0 = r0.iterator()
        L88:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L6c
            java.lang.Object r3 = r0.next()
            com.android.systemui.keyguard.shared.model.KeyguardQuickAffordancePickerRepresentation r3 = (com.android.systemui.keyguard.shared.model.KeyguardQuickAffordancePickerRepresentation) r3
            java.lang.String r4 = r3.id
            java.lang.String r3 = r3.name
            java.lang.String[] r3 = new java.lang.String[]{r2, r4, r3}
            r6.addRow(r3)
            goto L88
        La0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.CustomizationProvider.access$querySelections(com.android.systemui.keyguard.CustomizationProvider, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006b A[LOOP:0: B:11:0x0065->B:13:0x006b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$querySlots(com.android.systemui.keyguard.CustomizationProvider r5, kotlin.coroutines.Continuation r6) {
        /*
            r5.getClass()
            boolean r0 = r6 instanceof com.android.systemui.keyguard.CustomizationProvider$querySlots$1
            if (r0 == 0) goto L16
            r0 = r6
            com.android.systemui.keyguard.CustomizationProvider$querySlots$1 r0 = (com.android.systemui.keyguard.CustomizationProvider$querySlots$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            com.android.systemui.keyguard.CustomizationProvider$querySlots$1 r0 = new com.android.systemui.keyguard.CustomizationProvider$querySlots$1
            r0.<init>(r5, r6)
        L1b:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r5 = r0.L$1
            android.database.MatrixCursor r5 = (android.database.MatrixCursor) r5
            java.lang.Object r0 = r0.L$0
            android.database.MatrixCursor r0 = (android.database.MatrixCursor) r0
            kotlin.ResultKt.throwOnFailure(r6)
            r1 = r0
            goto L5f
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r6)
            android.database.MatrixCursor r6 = new android.database.MatrixCursor
            java.lang.String r2 = "id"
            java.lang.String r4 = "capacity"
            java.lang.String[] r2 = new java.lang.String[]{r2, r4}
            r6.<init>(r2)
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r5 = r5.getInteractor()
            r0.L$0 = r6
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r5 = r5.getSlotPickerRepresentations(r0)
            if (r5 != r1) goto L5c
            goto L82
        L5c:
            r1 = r6
            r6 = r5
            r5 = r1
        L5f:
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.Iterator r6 = r6.iterator()
        L65:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L82
            java.lang.Object r0 = r6.next()
            com.android.systemui.keyguard.shared.model.KeyguardSlotPickerRepresentation r0 = (com.android.systemui.keyguard.shared.model.KeyguardSlotPickerRepresentation) r0
            java.lang.String r2 = r0.id
            java.lang.Integer r3 = new java.lang.Integer
            int r0 = r0.maxSelectedAffordances
            r3.<init>(r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r2, r3}
            r5.addRow(r0)
            goto L65
        L82:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.CustomizationProvider.access$querySlots(com.android.systemui.keyguard.CustomizationProvider, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        SystemUIAppComponentFactoryBase.ContextAvailableCallback contextAvailableCallback = this.contextAvailableCallback;
        if (contextAvailableCallback == null) {
            contextAvailableCallback = null;
        }
        if (context != null) {
            contextAvailableCallback.onContextAvailable(context);
            super.attachInfo(context, providerInfo);
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        KeyguardRemotePreviewManager keyguardRemotePreviewManager = null;
        if (requireContext().checkPermission("android.permission.BIND_WALLPAPER", Binder.getCallingPid(), Binder.getCallingUid()) != 0) {
            return null;
        }
        KeyguardRemotePreviewManager keyguardRemotePreviewManager2 = this.previewManager;
        if (keyguardRemotePreviewManager2 != null) {
            keyguardRemotePreviewManager = keyguardRemotePreviewManager2;
        }
        return keyguardRemotePreviewManager.preview(bundle);
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        if (this.uriMatcher.match(uri) == 3) {
            CoroutineDispatcher coroutineDispatcher = this.mainDispatcher;
            if (coroutineDispatcher == null) {
                coroutineDispatcher = null;
            }
            return ((Number) BuildersKt.runBlocking(coroutineDispatcher, new CustomizationProvider$delete$1(this, uri, strArr, null))).intValue();
        }
        throw new UnsupportedOperationException();
    }

    public final KeyguardQuickAffordanceInteractor getInteractor() {
        KeyguardQuickAffordanceInteractor keyguardQuickAffordanceInteractor = this.interactor;
        if (keyguardQuickAffordanceInteractor != null) {
            return keyguardQuickAffordanceInteractor;
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        String str;
        String qualifiedTablePath;
        int match = this.uriMatcher.match(uri);
        if (match != 1 && match != 2 && match != 3 && match != 4) {
            str = null;
        } else {
            str = "vnd.android.cursor.dir/vnd.";
        }
        int match2 = this.uriMatcher.match(uri);
        if (match2 != 1) {
            if (match2 != 2) {
                if (match2 != 3) {
                    if (match2 != 4) {
                        qualifiedTablePath = null;
                    } else {
                        qualifiedTablePath = "flags";
                    }
                } else {
                    CustomizationProviderContract.LockScreenQuickAffordances.INSTANCE.getClass();
                    qualifiedTablePath = CustomizationProviderContract.LockScreenQuickAffordances.qualifiedTablePath("selections");
                }
            } else {
                CustomizationProviderContract.LockScreenQuickAffordances.INSTANCE.getClass();
                qualifiedTablePath = CustomizationProviderContract.LockScreenQuickAffordances.qualifiedTablePath("affordances");
            }
        } else {
            CustomizationProviderContract.LockScreenQuickAffordances.INSTANCE.getClass();
            qualifiedTablePath = CustomizationProviderContract.LockScreenQuickAffordances.qualifiedTablePath("slots");
        }
        if (str == null || qualifiedTablePath == null) {
            return null;
        }
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "com.android.systemui.customization.", qualifiedTablePath);
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        if (this.uriMatcher.match(uri) == 3) {
            CoroutineDispatcher coroutineDispatcher = this.mainDispatcher;
            if (coroutineDispatcher == null) {
                coroutineDispatcher = null;
            }
            return (Uri) BuildersKt.runBlocking(coroutineDispatcher, new CustomizationProvider$insert$1(this, contentValues, null));
        }
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        CoroutineDispatcher coroutineDispatcher = this.mainDispatcher;
        if (coroutineDispatcher == null) {
            coroutineDispatcher = null;
        }
        return (Cursor) BuildersKt.runBlocking(coroutineDispatcher, new CustomizationProvider$query$1(this, uri, null));
    }

    @Override // com.android.systemui.SystemUIAppComponentFactoryBase.ContextInitializer
    public final void setContextAvailableCallback(SystemUIAppComponentFactoryBase.ContextAvailableCallback contextAvailableCallback) {
        this.contextAvailableCallback = contextAvailableCallback;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        android.util.Log.e("KeyguardQuickAffordanceProvider", "Update is not supported!");
        return 0;
    }
}
