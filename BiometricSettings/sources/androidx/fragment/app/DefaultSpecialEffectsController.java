package androidx.fragment.app;

import android.content.Context;
import android.transition.Transition;
import android.view.ViewGroup;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DefaultSpecialEffectsController.kt */
/* loaded from: classes.dex */
public final class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultSpecialEffectsController.kt */
    static final class AnimationInfo extends SpecialEffectsInfo {
        private FragmentAnim.AnimationOrAnimator animation;
        private boolean isAnimLoaded;
        private final boolean isPop;

        public AnimationInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z) {
            super(operation, cancellationSignal);
            this.isPop = z;
        }

        public final FragmentAnim.AnimationOrAnimator getAnimation(Context context) {
            if (this.isAnimLoaded) {
                return this.animation;
            }
            FragmentAnim.AnimationOrAnimator loadAnimation = FragmentAnim.loadAnimation(context, getOperation().getFragment(), getOperation().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.isPop);
            this.animation = loadAnimation;
            this.isAnimLoaded = true;
            return loadAnimation;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultSpecialEffectsController.kt */
    static class SpecialEffectsInfo {
        private final SpecialEffectsController.Operation operation;
        private final CancellationSignal signal;

        public SpecialEffectsInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal) {
            this.operation = operation;
            this.signal = cancellationSignal;
        }

        public final void completeSpecialEffect() {
            this.operation.completeSpecialEffect(this.signal);
        }

        public final SpecialEffectsController.Operation getOperation() {
            return this.operation;
        }

        public final boolean isVisibilityUnchanged() {
            this.operation.getFragment().getClass();
            Intrinsics.checkNotNullExpressionValue(null, "operation.fragment.mView");
            throw null;
        }
    }

    public static void $r8$lambda$Q6FgD4jZH_jdeVxJxVn553yFXpk(List awaitingContainerChanges, SpecialEffectsController.Operation operation, DefaultSpecialEffectsController this$0) {
        Intrinsics.checkNotNullParameter(awaitingContainerChanges, "$awaitingContainerChanges");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (awaitingContainerChanges.contains(operation)) {
            awaitingContainerChanges.remove(operation);
            operation.getFragment().getClass();
            Intrinsics.checkNotNullExpressionValue(null, "view");
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController(ViewGroup container) {
        super(container);
        Intrinsics.checkNotNullParameter(container, "container");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0435  */
    @Override // androidx.fragment.app.SpecialEffectsController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void executeOperations(java.util.List<? extends androidx.fragment.app.SpecialEffectsController.Operation> r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 1165
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.executeOperations(java.util.List, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultSpecialEffectsController.kt */
    static final class TransitionInfo extends SpecialEffectsInfo {
        private final Object sharedElementTransition;
        private final Object transition;

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0031, code lost:
        
            if (r5 == androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
        
            if (r5 == androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION) goto L22;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public TransitionInfo(androidx.fragment.app.SpecialEffectsController.Operation r4, androidx.core.os.CancellationSignal r5, boolean r6) {
            /*
                r3 = this;
                r3.<init>(r4, r5)
                androidx.fragment.app.SpecialEffectsController$Operation$State r5 = r4.getFinalState()
                androidx.fragment.app.SpecialEffectsController$Operation$State r0 = androidx.fragment.app.SpecialEffectsController.Operation.State.VISIBLE
                r1 = 0
                if (r5 != r0) goto L22
                androidx.fragment.app.Fragment r5 = r4.getFragment()
                if (r6 == 0) goto L1e
                androidx.fragment.app.Fragment$AnimationInfo r5 = r5.mAnimationInfo
                if (r5 != 0) goto L17
                goto L37
            L17:
                java.lang.Object r5 = r5.mReenterTransition
                java.lang.Object r2 = androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION
                if (r5 != r2) goto L38
                goto L37
            L1e:
                r5.getClass()
                goto L37
            L22:
                androidx.fragment.app.Fragment r5 = r4.getFragment()
                if (r6 == 0) goto L34
                androidx.fragment.app.Fragment$AnimationInfo r5 = r5.mAnimationInfo
                if (r5 != 0) goto L2d
                goto L37
            L2d:
                java.lang.Object r5 = r5.mReturnTransition
                java.lang.Object r2 = androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION
                if (r5 != r2) goto L38
                goto L37
            L34:
                r5.getClass()
            L37:
                r5 = r1
            L38:
                r3.transition = r5
                androidx.fragment.app.SpecialEffectsController$Operation$State r5 = r4.getFinalState()
                if (r5 != r0) goto L4f
                if (r6 == 0) goto L49
                androidx.fragment.app.Fragment r4 = r4.getFragment()
                androidx.fragment.app.Fragment$AnimationInfo r4 = r4.mAnimationInfo
                goto L4f
            L49:
                androidx.fragment.app.Fragment r4 = r4.getFragment()
                androidx.fragment.app.Fragment$AnimationInfo r4 = r4.mAnimationInfo
            L4f:
                r3.sharedElementTransition = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.TransitionInfo.<init>(androidx.fragment.app.SpecialEffectsController$Operation, androidx.core.os.CancellationSignal, boolean):void");
        }

        public final FragmentTransitionImpl getHandlingImpl() {
            Object obj = this.transition;
            FragmentTransitionImpl handlingImpl = getHandlingImpl(obj);
            Object obj2 = this.sharedElementTransition;
            FragmentTransitionImpl handlingImpl2 = getHandlingImpl(obj2);
            if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
                return handlingImpl == null ? handlingImpl2 : handlingImpl;
            }
            throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + getOperation().getFragment() + " returned Transition " + obj + " which uses a different Transition  type than its shared element transition " + obj2).toString());
        }

        public final Object getTransition() {
            return this.transition;
        }

        private final FragmentTransitionImpl getHandlingImpl(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionImpl != null) {
                ((FragmentTransitionCompat21) fragmentTransitionImpl).getClass();
                if (obj instanceof Transition) {
                    return fragmentTransitionImpl;
                }
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.canHandle(obj)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + getOperation().getFragment() + " is not a valid framework Transition or AndroidX Transition");
        }
    }
}
