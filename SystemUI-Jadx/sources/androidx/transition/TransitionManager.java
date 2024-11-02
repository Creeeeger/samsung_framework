package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import com.android.systemui.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TransitionManager {
    public static final AutoTransition sDefaultTransition = new AutoTransition();
    public static final ThreadLocal sRunningTransitions = new ThreadLocal();
    public static final ArrayList sPendingTransitions = new ArrayList();

    public TransitionManager() {
        new ArrayMap();
        new ArrayMap();
    }

    public static void beginDelayedTransition(Transition transition, ViewGroup viewGroup) {
        ArrayList arrayList = sPendingTransitions;
        if (!arrayList.contains(viewGroup)) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api19Impl.isLaidOut(viewGroup)) {
                arrayList.add(viewGroup);
                if (transition == null) {
                    transition = sDefaultTransition;
                }
                Transition mo48clone = transition.mo48clone();
                ArrayList arrayList2 = (ArrayList) getRunningTransitions().get(viewGroup);
                if (arrayList2 != null && arrayList2.size() > 0) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((Transition) it.next()).pause(viewGroup);
                    }
                }
                if (mo48clone != null) {
                    mo48clone.captureValues(viewGroup, true);
                }
                Scene scene = (Scene) viewGroup.getTag(R.id.transition_current_scene);
                if (scene != null) {
                }
                viewGroup.setTag(R.id.transition_current_scene, null);
                if (mo48clone != null) {
                    MultiListener multiListener = new MultiListener(mo48clone, viewGroup);
                    viewGroup.addOnAttachStateChangeListener(multiListener);
                    viewGroup.getViewTreeObserver().addOnPreDrawListener(multiListener);
                }
            }
        }
    }

    public static ArrayMap getRunningTransitions() {
        ArrayMap arrayMap;
        ThreadLocal threadLocal = sRunningTransitions;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (arrayMap = (ArrayMap) weakReference.get()) != null) {
            return arrayMap;
        }
        ArrayMap arrayMap2 = new ArrayMap();
        threadLocal.set(new WeakReference(arrayMap2));
        return arrayMap2;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MultiListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        public final ViewGroup mSceneRoot;
        public final Transition mTransition;

        public MultiListener(Transition transition, ViewGroup viewGroup) {
            this.mTransition = transition;
            this.mSceneRoot = viewGroup;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x01d2 A[EDGE_INSN: B:121:0x01d2->B:122:0x01d2 BREAK  A[LOOP:1: B:17:0x0099->B:50:0x01cc], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:125:0x01d7  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x01f8  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x0227  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x009e  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 662
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionManager.MultiListener.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            this.mSceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
            this.mSceneRoot.removeOnAttachStateChangeListener(this);
            TransitionManager.sPendingTransitions.remove(this.mSceneRoot);
            ArrayList arrayList = (ArrayList) TransitionManager.getRunningTransitions().get(this.mSceneRoot);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).resume(this.mSceneRoot);
                }
            }
            this.mTransition.clearValues(true);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }
    }
}
