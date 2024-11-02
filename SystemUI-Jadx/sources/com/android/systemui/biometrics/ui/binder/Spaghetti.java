package com.android.systemui.biometrics.ui.binder;

import android.content.Context;
import android.hardware.face.FaceManager;
import android.hardware.face.FaceSensorPropertiesInternal;
import android.os.Bundle;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.android.systemui.biometrics.AuthBiometricView;
import com.android.systemui.biometrics.AuthBiometricViewAdapter;
import com.android.systemui.biometrics.domain.model.BiometricModalities;
import com.android.systemui.biometrics.domain.model.BiometricModality;
import com.android.systemui.biometrics.domain.model.BiometricModalityKt;
import com.android.systemui.biometrics.ui.viewmodel.FingerprintStartMode;
import com.android.systemui.biometrics.ui.viewmodel.PromptViewModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Spaghetti implements AuthBiometricViewAdapter {
    public final Context applicationContext;
    public final CoroutineScope applicationScope;
    public boolean faceFailedAtLeastOnce;
    public AuthBiometricView.Callback legacyCallback;
    public final List lockoutErrorStrings;
    public BiometricModalities modalities = new BiometricModalities(null, null, 3, null);
    public final View view;
    public final PromptViewModel viewModel;

    public Spaghetti(View view, PromptViewModel promptViewModel, Context context, CoroutineScope coroutineScope) {
        this.view = view;
        this.viewModel = promptViewModel;
        this.applicationContext = context;
        this.applicationScope = coroutineScope;
        List listOf = CollectionsKt__CollectionsKt.listOf(7, 9);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10));
        Iterator it = listOf.iterator();
        while (it.hasNext()) {
            arrayList.add(FaceManager.getErrorString(this.applicationContext, ((Number) it.next()).intValue(), 0));
        }
        this.lockoutErrorStrings = arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$getHelpForSuccessfulAuthentication(com.android.systemui.biometrics.ui.binder.Spaghetti r4, com.android.systemui.biometrics.domain.model.BiometricModality r5, kotlin.coroutines.Continuation r6) {
        /*
            r4.getClass()
            boolean r0 = r6 instanceof com.android.systemui.biometrics.ui.binder.Spaghetti$getHelpForSuccessfulAuthentication$1
            if (r0 == 0) goto L16
            r0 = r6
            com.android.systemui.biometrics.ui.binder.Spaghetti$getHelpForSuccessfulAuthentication$1 r0 = (com.android.systemui.biometrics.ui.binder.Spaghetti$getHelpForSuccessfulAuthentication$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            com.android.systemui.biometrics.ui.binder.Spaghetti$getHelpForSuccessfulAuthentication$1 r0 = new com.android.systemui.biometrics.ui.binder.Spaghetti$getHelpForSuccessfulAuthentication$1
            r0.<init>(r4, r6)
        L1b:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.L$0
            r5 = r4
            com.android.systemui.biometrics.domain.model.BiometricModality r5 = (com.android.systemui.biometrics.domain.model.BiometricModality) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.android.systemui.biometrics.domain.model.BiometricModalities r6 = r4.modalities
            boolean r6 = r6.getHasFaceAndFingerprint()
            if (r6 == 0) goto L62
            com.android.systemui.biometrics.ui.viewmodel.PromptViewModel r4 = r4.viewModel
            kotlinx.coroutines.flow.ReadonlyStateFlow r4 = r4.fingerprintStartMode
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.first(r4, r0)
            if (r6 != r1) goto L51
            goto L64
        L51:
            com.android.systemui.biometrics.ui.viewmodel.FingerprintStartMode r4 = com.android.systemui.biometrics.ui.viewmodel.FingerprintStartMode.Pending
            if (r6 == r4) goto L62
            com.android.systemui.biometrics.domain.model.BiometricModality r4 = com.android.systemui.biometrics.domain.model.BiometricModality.Face
            if (r5 != r4) goto L62
            java.lang.Integer r4 = new java.lang.Integer
            r5 = 2131952145(0x7f130211, float:1.9540724E38)
            r4.<init>(r5)
            goto L63
        L62:
            r4 = 0
        L63:
            r1 = r4
        L64:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.ui.binder.Spaghetti.access$getHelpForSuccessfulAuthentication(com.android.systemui.biometrics.ui.binder.Spaghetti, com.android.systemui.biometrics.domain.model.BiometricModality, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final View asView() {
        return this.view;
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void cancelAnimation() {
        ViewPropertyAnimator animate = this.view.animate();
        if (animate != null) {
            animate.cancel();
        }
    }

    public final boolean ignoreUnsuccessfulEventsFrom(BiometricModality biometricModality, String str) {
        boolean z;
        if (!this.modalities.getHasFaceAndFingerprint() || biometricModality != BiometricModality.Face) {
            return false;
        }
        FaceSensorPropertiesInternal faceSensorPropertiesInternal = this.modalities.faceProperties;
        if (faceSensorPropertiesInternal != null && faceSensorPropertiesInternal.sensorStrength == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z && ((ArrayList) this.lockoutErrorStrings).contains(str)) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final boolean isCoex() {
        return this.modalities.getHasFaceAndFingerprint();
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void onAuthenticationFailed(int i, String str) {
        BiometricModality asBiometricModality = BiometricModalityKt.asBiometricModality(i);
        StateFlowImpl stateFlowImpl = this.viewModel._fingerprintStartMode;
        if (stateFlowImpl.getValue() == FingerprintStartMode.Pending) {
            stateFlowImpl.setValue(FingerprintStartMode.Delayed);
        }
        BuildersKt.launch$default(this.applicationScope, null, null, new Spaghetti$onAuthenticationFailed$1(this, asBiometricModality, str, null), 3);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void onAuthenticationSucceeded(int i) {
        BuildersKt.launch$default(this.applicationScope, null, null, new Spaghetti$onAuthenticationSucceeded$1(i, this, null), 3);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void onDialogAnimatedIn(boolean z) {
        PromptViewModel promptViewModel = this.viewModel;
        if (z) {
            StateFlowImpl stateFlowImpl = promptViewModel._fingerprintStartMode;
            if (stateFlowImpl.getValue() == FingerprintStartMode.Pending) {
                stateFlowImpl.setValue(FingerprintStartMode.Normal);
            }
            PromptViewModel.showAuthenticating$default(promptViewModel, BiometricViewBinderKt.access$asDefaultHelpMessage(this.modalities, this.applicationContext), false, 2);
            return;
        }
        PromptViewModel.showAuthenticating$default(promptViewModel, null, false, 3);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void onError(int i, String str) {
        BiometricModality asBiometricModality = BiometricModalityKt.asBiometricModality(i);
        if (ignoreUnsuccessfulEventsFrom(asBiometricModality, str)) {
            return;
        }
        BuildersKt.launch$default(this.applicationScope, null, null, new Spaghetti$onError$1(this, asBiometricModality, str, null), 3);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void onHelp(int i, String str) {
        if (ignoreUnsuccessfulEventsFrom(BiometricModalityKt.asBiometricModality(i), "")) {
            return;
        }
        BuildersKt.launch$default(this.applicationScope, null, null, new Spaghetti$onHelp$1(this, str, null), 3);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void startTransitionToCredentialUI() {
        BuildersKt.launch$default(this.applicationScope, null, null, new Spaghetti$startTransitionToCredentialUI$1(this, null), 3);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void onSaveState(Bundle bundle) {
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void restoreState(Bundle bundle) {
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void onOrientationChanged() {
    }

    @Override // com.android.systemui.biometrics.AuthBiometricViewAdapter
    public final void requestLayout() {
    }
}
