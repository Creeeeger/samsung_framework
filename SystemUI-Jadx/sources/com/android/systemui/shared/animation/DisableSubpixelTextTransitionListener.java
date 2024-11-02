package com.android.systemui.shared.animation;

import android.os.Trace;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.systemui.unfold.UnfoldTransitionProgressProvider;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DisableSubpixelTextTransitionListener implements UnfoldTransitionProgressProvider.TransitionProgressListener {
    public final List childrenTextViews = new ArrayList();
    public boolean isTransitionInProgress;
    public final ViewGroup rootView;

    public DisableSubpixelTextTransitionListener(ViewGroup viewGroup) {
        this.rootView = viewGroup;
    }

    public static void getAllChildTextView(ViewGroup viewGroup, List list) {
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof ViewGroup) {
                    getAllChildTextView((ViewGroup) childAt, list);
                } else if ((childAt instanceof TextView) && (((TextView) childAt).getPaintFlags() & 128) <= 0) {
                    ((ArrayList) list).add(new WeakReference(childAt));
                }
            }
        }
    }

    @Override // com.android.systemui.unfold.UnfoldTransitionProgressProvider.TransitionProgressListener
    public final void onTransitionFinished() {
        if (!this.isTransitionInProgress) {
            return;
        }
        this.isTransitionInProgress = false;
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        List list = this.childrenTextViews;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "subpixelFlagEnableForTextView");
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    TextView textView = (TextView) ((WeakReference) it.next()).get();
                    if (textView != null) {
                        textView.setPaintFlags(textView.getPaintFlags() & (-129));
                    }
                }
                ((ArrayList) list).clear();
                Unit unit = Unit.INSTANCE;
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            TextView textView2 = (TextView) ((WeakReference) it2.next()).get();
            if (textView2 != null) {
                textView2.setPaintFlags(textView2.getPaintFlags() & (-129));
            }
        }
        ((ArrayList) list).clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x009a, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
    
        throw r6;
     */
    @Override // com.android.systemui.unfold.UnfoldTransitionProgressProvider.TransitionProgressListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onTransitionStarted() {
        /*
            Method dump skipped, instructions count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shared.animation.DisableSubpixelTextTransitionListener.onTransitionStarted():void");
    }
}
