package androidx.transition;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import com.android.systemui.R;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GhostViewPort extends ViewGroup implements GhostView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Matrix mMatrix;
    public final AnonymousClass1 mOnPreDrawListener;
    public int mReferences;
    public ViewGroup mStartParent;
    public View mStartView;
    public final View mView;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.transition.GhostViewPort$1] */
    public GhostViewPort(View view) {
        super(view.getContext());
        this.mOnPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.transition.GhostViewPort.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                View view2;
                GhostViewPort ghostViewPort = GhostViewPort.this;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api16Impl.postInvalidateOnAnimation(ghostViewPort);
                GhostViewPort ghostViewPort2 = GhostViewPort.this;
                ViewGroup viewGroup = ghostViewPort2.mStartParent;
                if (viewGroup != null && (view2 = ghostViewPort2.mStartView) != null) {
                    viewGroup.endViewTransition(view2);
                    ViewCompat.Api16Impl.postInvalidateOnAnimation(GhostViewPort.this.mStartParent);
                    GhostViewPort ghostViewPort3 = GhostViewPort.this;
                    ghostViewPort3.mStartParent = null;
                    ghostViewPort3.mStartView = null;
                    return true;
                }
                return true;
            }
        };
        this.mView = view;
        setWillNotDraw(false);
        setClipChildren(false);
        setLayerType(2, null);
    }

    public static void copySize(View view, View view2) {
        ViewUtils.setLeftTopRightBottom(view2, view2.getLeft(), view2.getTop(), view.getWidth() + view2.getLeft(), view.getHeight() + view2.getTop());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mView.setTag(R.id.ghost_view, this);
        this.mView.getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        ViewUtils.setTransitionVisibility(this.mView, 4);
        if (this.mView.getParent() != null) {
            ((View) this.mView.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.mView.getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        ViewUtils.setTransitionVisibility(this.mView, 0);
        this.mView.setTag(R.id.ghost_view, null);
        if (this.mView.getParent() != null) {
            ((View) this.mView.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.enableZ();
        canvas.setMatrix(this.mMatrix);
        ViewUtils.setTransitionVisibility(this.mView, 0);
        this.mView.invalidate();
        ViewUtils.setTransitionVisibility(this.mView, 4);
        drawChild(canvas, this.mView, getDrawingTime());
        canvas.disableZ();
    }

    @Override // android.view.View, androidx.transition.GhostView
    public final void setVisibility(int i) {
        int i2;
        super.setVisibility(i);
        if (((GhostViewPort) this.mView.getTag(R.id.ghost_view)) == this) {
            if (i == 0) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            ViewUtils.setTransitionVisibility(this.mView, i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
