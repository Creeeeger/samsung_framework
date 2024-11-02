package com.android.systemui.keyguard.ui.binder;

import android.view.View;
import android.view.ViewPropertyAnimator;
import com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl;
import com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder;
import com.android.systemui.keyguard.ui.binder.KeyguardSecBottomAreaViewBinder;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel;
import com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSecBottomAreaViewBinder$bind$1 implements KeyguardBottomAreaViewBinder.Binding {
    public final /* synthetic */ View $ambientIndicationArea;
    public final /* synthetic */ MutableStateFlow $configurationBasedDimensions;
    public final /* synthetic */ DisposableHandle $disposableHandle;
    public final /* synthetic */ View $indicationArea;
    public final /* synthetic */ KeyguardSecBottomAreaView $view;
    public final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;

    public KeyguardSecBottomAreaViewBinder$bind$1(View view, View view2, MutableStateFlow mutableStateFlow, KeyguardSecBottomAreaView keyguardSecBottomAreaView, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, DisposableHandle disposableHandle) {
        this.$indicationArea = view;
        this.$ambientIndicationArea = view2;
        this.$configurationBasedDimensions = mutableStateFlow;
        this.$view = keyguardSecBottomAreaView;
        this.$viewModel = keyguardBottomAreaViewModel;
        this.$disposableHandle = disposableHandle;
    }

    @Override // com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.Binding
    public final void destroy() {
        this.$disposableHandle.dispose();
    }

    @Override // com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.Binding
    public final List getIndicationAreaAnimators() {
        ViewPropertyAnimator viewPropertyAnimator;
        List<View> listOf = CollectionsKt__CollectionsKt.listOf(this.$indicationArea, this.$ambientIndicationArea);
        ArrayList arrayList = new ArrayList();
        for (View view : listOf) {
            if (view != null) {
                viewPropertyAnimator = view.animate();
            } else {
                viewPropertyAnimator = null;
            }
            if (viewPropertyAnimator != null) {
                arrayList.add(viewPropertyAnimator);
            }
        }
        return arrayList;
    }

    @Override // com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.Binding
    public final void onConfigurationChanged() {
        StateFlowImpl stateFlowImpl = (StateFlowImpl) this.$configurationBasedDimensions;
        KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions copy$default = KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions.copy$default((KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions) stateFlowImpl.getValue());
        KeyguardSecBottomAreaView keyguardSecBottomAreaView = this.$view;
        keyguardSecBottomAreaView.updateShortcutPosition(copy$default);
        keyguardSecBottomAreaView.updateIndicationPosition(copy$default);
        stateFlowImpl.setValue(copy$default);
    }

    @Override // com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.Binding
    public final boolean shouldConstrainToTopOfLockIcon() {
        return ((KeyguardRepositoryImpl) this.$viewModel.bottomAreaInteractor.repository).keyguardUpdateMonitor.isUdfpsSupported();
    }

    public final void updateIndicationPosition() {
        StateFlowImpl stateFlowImpl = (StateFlowImpl) this.$configurationBasedDimensions;
        KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions copy$default = KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions.copy$default((KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions) stateFlowImpl.getValue());
        this.$view.updateIndicationPosition(copy$default);
        stateFlowImpl.setValue(copy$default);
    }
}
