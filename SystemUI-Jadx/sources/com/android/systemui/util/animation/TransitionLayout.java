package com.android.systemui.util.animation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.animation.LaunchableView;
import com.android.systemui.animation.LaunchableViewDelegate;
import com.android.systemui.statusbar.CrossFadeHelper;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TransitionLayout extends ConstraintLayout implements LaunchableView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Rect boundsRect;
    public final TransitionViewState currentState;
    public final LaunchableViewDelegate delegate;
    public boolean isPreDrawApplicatorRegistered;
    public final Set originalGoneChildrenSet;
    public final Map originalViewAlphas;
    public final TransitionLayout$preDrawApplicator$1 preDrawApplicator;

    public TransitionLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public final void applyCurrentState() {
        Integer num;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        int childCount = getChildCount();
        PointF pointF = this.currentState.contentTranslation;
        int i4 = (int) pointF.x;
        int i5 = (int) pointF.y;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            WidgetState widgetState = (WidgetState) ((LinkedHashMap) this.currentState.widgetStates).get(Integer.valueOf(childAt.getId()));
            if (widgetState != null) {
                boolean z3 = childAt instanceof TextView;
                int i7 = widgetState.width;
                int i8 = widgetState.measureWidth;
                if (z3 && i7 < i8) {
                    if (((TextView) childAt).getLayout().getParagraphDirection(0) == -1) {
                        i3 = i8 - i7;
                    } else {
                        i3 = 0;
                    }
                    num = Integer.valueOf(i3);
                } else {
                    num = null;
                }
                int measuredWidth = childAt.getMeasuredWidth();
                int i9 = widgetState.measureHeight;
                if (measuredWidth != i8 || childAt.getMeasuredHeight() != i9) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i8, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), View.MeasureSpec.makeMeasureSpec(i9, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
                }
                if (num != null) {
                    i = num.intValue();
                } else {
                    i = 0;
                }
                int i10 = (((int) widgetState.x) + i4) - i;
                int i11 = ((int) widgetState.y) + i5;
                if (num != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    i8 = i7;
                }
                int i12 = widgetState.height;
                if (!z) {
                    i9 = i12;
                }
                childAt.setLeftTopRightBottom(i10, i11, i8 + i10, i9 + i11);
                float f = widgetState.scale;
                childAt.setScaleX(f);
                childAt.setScaleY(f);
                Rect clipBounds = childAt.getClipBounds();
                if (clipBounds == null) {
                    clipBounds = new Rect();
                }
                clipBounds.set(i, 0, i7 + i, i12);
                childAt.setClipBounds(clipBounds);
                float f2 = widgetState.alpha;
                CrossFadeHelper.fadeIn(childAt, f2, false);
                if (!widgetState.gone) {
                    if (f2 == 0.0f) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        i2 = 0;
                        childAt.setVisibility(i2);
                    }
                }
                i2 = 4;
                childAt.setVisibility(i2);
            }
        }
        int left = getLeft();
        int top = getTop();
        this.currentState.getClass();
        this.currentState.getClass();
        setLeftTopRightBottom(left, top, left + 0, top + 0);
        this.boundsRect.set(0, 0, getWidth(), getHeight());
        setTranslationX(this.currentState.translation.x);
        setTranslationY(this.currentState.translation.y);
        CrossFadeHelper.fadeIn((View) this, this.currentState.alpha, false);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (canvas != null) {
            canvas.save();
        }
        if (canvas != null) {
            canvas.clipRect(this.boundsRect);
        }
        super.dispatchDraw(canvas);
        if (canvas != null) {
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.isPreDrawApplicatorRegistered) {
            getViewTreeObserver().removeOnPreDrawListener(this.preDrawApplicator);
            this.isPreDrawApplicatorRegistered = false;
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() == -1) {
                childAt.setId(i);
            }
            if (childAt.getVisibility() == 8) {
                this.originalGoneChildrenSet.add(Integer.valueOf(childAt.getId()));
            }
            this.originalViewAlphas.put(Integer.valueOf(childAt.getId()), Float.valueOf(childAt.getAlpha()));
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
        }
        applyCurrentState();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            WidgetState widgetState = (WidgetState) ((LinkedHashMap) this.currentState.widgetStates).get(Integer.valueOf(childAt.getId()));
            if (widgetState != null) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(widgetState.measureWidth, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), View.MeasureSpec.makeMeasureSpec(widgetState.measureHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
            }
        }
        setMeasuredDimension(0, 0);
    }

    @Override // com.android.systemui.animation.LaunchableView
    public final void setShouldBlockVisibilityChanges(boolean z) {
        this.delegate.setShouldBlockVisibilityChanges(z);
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        this.delegate.setVisibility(i);
    }

    public TransitionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ TransitionLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.android.systemui.util.animation.TransitionLayout$preDrawApplicator$1] */
    public TransitionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.boundsRect = new Rect();
        this.originalGoneChildrenSet = new LinkedHashSet();
        this.originalViewAlphas = new LinkedHashMap();
        this.currentState = new TransitionViewState();
        this.delegate = new LaunchableViewDelegate(this, new Function1() { // from class: com.android.systemui.util.animation.TransitionLayout$delegate$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                super/*android.view.ViewGroup*/.setVisibility(((Number) obj).intValue());
                return Unit.INSTANCE;
            }
        });
        new TransitionViewState();
        this.preDrawApplicator = new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.systemui.util.animation.TransitionLayout$preDrawApplicator$1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                TransitionLayout transitionLayout = TransitionLayout.this;
                int i2 = TransitionLayout.$r8$clinit;
                transitionLayout.getClass();
                TransitionLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
                TransitionLayout transitionLayout2 = TransitionLayout.this;
                transitionLayout2.isPreDrawApplicatorRegistered = false;
                transitionLayout2.applyCurrentState();
                return true;
            }
        };
    }
}
