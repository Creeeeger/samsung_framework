package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LegacySavedStateHandleController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OnRecreation implements SavedStateRegistry.AutoRecreated {
    }

    private LegacySavedStateHandleController() {
    }

    public static void attachHandleIfNeeded(ViewModel viewModel, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        Object obj;
        boolean z;
        Map map = viewModel.mBagOfTags;
        if (map == null) {
            obj = null;
        } else {
            synchronized (map) {
                obj = ((HashMap) viewModel.mBagOfTags).get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController != null && !(z = savedStateHandleController.mIsAttached)) {
            if (!z) {
                savedStateHandleController.mIsAttached = true;
                lifecycle.addObserver(savedStateHandleController);
                savedStateRegistry.registerSavedStateProvider(savedStateHandleController.mKey, savedStateHandleController.mHandle.savedStateProvider);
                tryToAddRecreator(lifecycle, savedStateRegistry);
                return;
            }
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
    }

    public static void tryToAddRecreator(final Lifecycle lifecycle, final SavedStateRegistry savedStateRegistry) {
        Lifecycle.State currentState = lifecycle.getCurrentState();
        if (currentState != Lifecycle.State.INITIALIZED && !currentState.isAtLeast(Lifecycle.State.STARTED)) {
            lifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.lifecycle.LegacySavedStateHandleController.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        Lifecycle.this.removeObserver(this);
                        savedStateRegistry.runOnNextRecreation();
                    }
                }
            });
        } else {
            savedStateRegistry.runOnNextRecreation();
        }
    }
}
