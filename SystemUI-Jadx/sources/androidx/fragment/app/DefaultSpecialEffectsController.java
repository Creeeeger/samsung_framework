package androidx.fragment.app;

import android.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$10, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass10 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;

        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State = iArr;
            try {
                iArr[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$9, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass9 implements Runnable {
        public final /* synthetic */ SpecialEffectsController.Operation val$operation;
        public final /* synthetic */ TransitionInfo val$transitionInfo;

        public AnonymousClass9(DefaultSpecialEffectsController defaultSpecialEffectsController, TransitionInfo transitionInfo, SpecialEffectsController.Operation operation) {
            this.val$transitionInfo = transitionInfo;
            this.val$operation = operation;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.val$transitionInfo.completeSpecialEffect();
            if (FragmentManager.isLoggingEnabled(2)) {
                Objects.toString(this.val$operation);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AnimationInfo extends SpecialEffectsInfo {
        public FragmentAnim.AnimationOrAnimator mAnimation;
        public final boolean mIsPop;
        public boolean mLoadedAnim;

        public AnimationInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z) {
            super(operation, cancellationSignal);
            this.mLoadedAnim = false;
            this.mIsPop = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x010b A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0111  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x015b  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0167  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final androidx.fragment.app.FragmentAnim.AnimationOrAnimator getAnimation(android.content.Context r13) {
            /*
                Method dump skipped, instructions count: 428
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.AnimationInfo.getAnimation(android.content.Context):androidx.fragment.app.FragmentAnim$AnimationOrAnimator");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class SpecialEffectsInfo {
        public final SpecialEffectsController.Operation mOperation;
        public final CancellationSignal mSignal;

        public SpecialEffectsInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal) {
            this.mOperation = operation;
            this.mSignal = cancellationSignal;
        }

        public final void completeSpecialEffect() {
            SpecialEffectsController.Operation operation = this.mOperation;
            HashSet hashSet = operation.mSpecialEffectsSignals;
            if (hashSet.remove(this.mSignal) && hashSet.isEmpty()) {
                operation.complete();
            }
        }

        public final boolean isVisibilityUnchanged() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation operation = this.mOperation;
            SpecialEffectsController.Operation.State from = SpecialEffectsController.Operation.State.from(operation.mFragment.mView);
            SpecialEffectsController.Operation.State state2 = operation.mFinalState;
            if (from != state2 && (from == (state = SpecialEffectsController.Operation.State.VISIBLE) || state2 == state)) {
                return false;
            }
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class TransitionInfo extends SpecialEffectsInfo {
        public final boolean mOverlapAllowed;
        public final Object mSharedElementTransition;
        public final Object mTransition;

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0036, code lost:
        
            if (r5 == androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        
            if (r5 == androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public TransitionInfo(androidx.fragment.app.SpecialEffectsController.Operation r4, androidx.core.os.CancellationSignal r5, boolean r6, boolean r7) {
            /*
                r3 = this;
                r3.<init>(r4, r5)
                androidx.fragment.app.SpecialEffectsController$Operation$State r5 = r4.mFinalState
                androidx.fragment.app.SpecialEffectsController$Operation$State r0 = androidx.fragment.app.SpecialEffectsController.Operation.State.VISIBLE
                r1 = 1
                r2 = 0
                androidx.fragment.app.Fragment r4 = r4.mFragment
                if (r5 != r0) goto L2b
                if (r6 == 0) goto L1b
                androidx.fragment.app.Fragment$AnimationInfo r5 = r4.mAnimationInfo
                if (r5 != 0) goto L14
                goto L1e
            L14:
                java.lang.Object r5 = r5.mReenterTransition
                java.lang.Object r0 = androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION
                if (r5 != r0) goto L1f
                goto L1e
            L1b:
                r4.getClass()
            L1e:
                r5 = r2
            L1f:
                r3.mTransition = r5
                if (r6 == 0) goto L26
                androidx.fragment.app.Fragment$AnimationInfo r5 = r4.mAnimationInfo
                goto L28
            L26:
                androidx.fragment.app.Fragment$AnimationInfo r5 = r4.mAnimationInfo
            L28:
                r3.mOverlapAllowed = r1
                goto L41
            L2b:
                if (r6 == 0) goto L39
                androidx.fragment.app.Fragment$AnimationInfo r5 = r4.mAnimationInfo
                if (r5 != 0) goto L32
                goto L3c
            L32:
                java.lang.Object r5 = r5.mReturnTransition
                java.lang.Object r0 = androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION
                if (r5 != r0) goto L3d
                goto L3c
            L39:
                r4.getClass()
            L3c:
                r5 = r2
            L3d:
                r3.mTransition = r5
                r3.mOverlapAllowed = r1
            L41:
                if (r7 == 0) goto L5b
                if (r6 == 0) goto L55
                androidx.fragment.app.Fragment$AnimationInfo r4 = r4.mAnimationInfo
                if (r4 != 0) goto L4a
                goto L52
            L4a:
                java.lang.Object r4 = r4.mSharedElementReturnTransition
                java.lang.Object r5 = androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION
                if (r4 != r5) goto L51
                goto L52
            L51:
                r2 = r4
            L52:
                r3.mSharedElementTransition = r2
                goto L5d
            L55:
                r4.getClass()
                r3.mSharedElementTransition = r2
                goto L5d
            L5b:
                r3.mSharedElementTransition = r2
            L5d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.TransitionInfo.<init>(androidx.fragment.app.SpecialEffectsController$Operation, androidx.core.os.CancellationSignal, boolean, boolean):void");
        }

        public final FragmentTransitionImpl getHandlingImpl(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionCompat21 fragmentTransitionCompat21 = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionCompat21 != null && (obj instanceof Transition)) {
                return fragmentTransitionCompat21;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(obj)) {
                return fragmentTransitionImpl;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.mOperation.mFragment + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    public DefaultSpecialEffectsController(ViewGroup viewGroup) {
        super(viewGroup);
    }

    public static void captureTransitioningViews(ArrayList arrayList, View view) {
        if (view instanceof ViewGroup) {
            if (!arrayList.contains(view)) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if (ViewCompat.Api21Impl.getTransitionName(view) != null) {
                    arrayList.add(view);
                }
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    captureTransitioningViews(arrayList, childAt);
                }
            }
            return;
        }
        if (!arrayList.contains(view)) {
            arrayList.add(view);
        }
    }

    public static void findNamedViews(ArrayMap arrayMap, View view) {
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        String transitionName = ViewCompat.Api21Impl.getTransitionName(view);
        if (transitionName != null) {
            arrayMap.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    findNamedViews(arrayMap, childAt);
                }
            }
        }
    }

    public static void retainMatchingViews(ArrayMap arrayMap, Collection collection) {
        Iterator it = ((ArrayMap.EntrySet) arrayMap.entrySet()).iterator();
        while (true) {
            ArrayMap.MapIterator mapIterator = (ArrayMap.MapIterator) it;
            if (mapIterator.hasNext()) {
                mapIterator.next();
                View view = (View) mapIterator.getValue();
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if (!collection.contains(ViewCompat.Api21Impl.getTransitionName(view))) {
                    mapIterator.remove();
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x071c  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x07ad A[LOOP:7: B:167:0x07a7->B:169:0x07ad, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x07c7  */
    /* JADX WARN: Removed duplicated region for block: B:175:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:301:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x067d  */
    @Override // androidx.fragment.app.SpecialEffectsController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void executeOperations(java.util.List r39, final boolean r40) {
        /*
            Method dump skipped, instructions count: 1998
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.executeOperations(java.util.List, boolean):void");
    }
}
