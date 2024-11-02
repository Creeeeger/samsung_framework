package com.android.systemui.statusbar.notification.row;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.IndentingPrintWriter;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.android.systemui.R;
import com.android.systemui.statusbar.notification.RoundableState;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.android.systemui.util.DumpUtilsKt;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ExpandableOutlineView extends ExpandableView {
    public static final Path EMPTY_PATH = new Path();
    public boolean mAlwaysRoundBothCorners;
    public boolean mCustomOutline;
    public boolean mDismissUsingRowTranslationX;
    public float mDistanceToTopRoundness;
    public float mOutlineAlpha;
    public final Rect mOutlineRect;
    public final AnonymousClass1 mProvider;
    public RoundableState mRoundableState;
    public final float[] mTmpCornerRadii;
    public final Path mTmpPath;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.statusbar.notification.row.ExpandableOutlineView$1, android.view.ViewOutlineProvider] */
    public ExpandableOutlineView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOutlineRect = new Rect();
        this.mOutlineAlpha = -1.0f;
        this.mTmpPath = new Path();
        this.mDismissUsingRowTranslationX = true;
        this.mTmpCornerRadii = new float[8];
        this.mDistanceToTopRoundness = -1.0f;
        ?? r1 = new ViewOutlineProvider() { // from class: com.android.systemui.statusbar.notification.row.ExpandableOutlineView.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                int i;
                ExpandableOutlineView expandableOutlineView = ExpandableOutlineView.this;
                if (!expandableOutlineView.mCustomOutline && !expandableOutlineView.hasRoundedCorner()) {
                    ExpandableOutlineView expandableOutlineView2 = ExpandableOutlineView.this;
                    if (!expandableOutlineView2.mAlwaysRoundBothCorners) {
                        if (!expandableOutlineView2.mDismissUsingRowTranslationX) {
                            i = (int) expandableOutlineView2.getTranslation();
                        } else {
                            i = 0;
                        }
                        int max = Math.max(i, 0);
                        ExpandableOutlineView expandableOutlineView3 = ExpandableOutlineView.this;
                        int i2 = expandableOutlineView3.mClipTopAmount;
                        int min = Math.min(i, 0) + expandableOutlineView3.getWidth();
                        ExpandableOutlineView expandableOutlineView4 = ExpandableOutlineView.this;
                        outline.setRect(max, i2, min, Math.max(expandableOutlineView4.mActualHeight - expandableOutlineView4.mClipBottomAmount, i2));
                        outline.setAlpha(ExpandableOutlineView.this.mOutlineAlpha);
                    }
                }
                Path clipPath = ExpandableOutlineView.this.getClipPath(false);
                if (clipPath != null) {
                    outline.setPath(clipPath);
                }
                outline.setAlpha(ExpandableOutlineView.this.mOutlineAlpha);
            }
        };
        this.mProvider = r1;
        setOutlineProvider(r1);
        initDimens();
    }

    private void initDimens() {
        float dimensionPixelSize;
        boolean z;
        Resources resources = getResources();
        boolean z2 = resources.getBoolean(R.bool.config_clipNotificationsToOutline);
        this.mAlwaysRoundBothCorners = z2;
        if (z2) {
            dimensionPixelSize = resources.getDimension(R.dimen.notification_shadow_radius);
        } else {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_corner_radius);
        }
        RoundableState roundableState = this.mRoundableState;
        if (roundableState == null) {
            this.mRoundableState = new RoundableState(this, this, dimensionPixelSize);
        } else {
            if (roundableState.maxRadius == dimensionPixelSize) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                roundableState.maxRadius = dimensionPixelSize;
                roundableState.roundable.applyRoundnessAndInvalidate();
            }
        }
        setClipToOutline(this.mAlwaysRoundBothCorners);
    }

    public void applyRoundnessAndInvalidate() {
        invalidateOutline();
        super.applyRoundnessAndInvalidate();
    }

    public boolean childNeedsClipping(View view) {
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        Path path;
        canvas.save();
        Path path2 = null;
        if (childNeedsClipping(view)) {
            path = getCustomClipPath(view);
            if (path == null) {
                path = getClipPath(false);
            }
            if (this.mDismissUsingRowTranslationX && (view instanceof NotificationChildrenContainer)) {
                path2 = path;
                path = null;
            }
        } else {
            path = null;
        }
        if (view instanceof NotificationChildrenContainer) {
            NotificationChildrenContainer notificationChildrenContainer = (NotificationChildrenContainer) view;
            notificationChildrenContainer.mChildClipPath = path2;
            notificationChildrenContainer.invalidate();
        }
        if (path != null) {
            canvas.clipPath(path);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return drawChild;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView, com.android.systemui.Dumpable
    public void dump(PrintWriter printWriter, String[] strArr) {
        final IndentingPrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        super.dump(asIndenting, strArr);
        DumpUtilsKt.withIncreasedIndent(asIndenting, new Runnable() { // from class: com.android.systemui.statusbar.notification.row.ExpandableOutlineView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                asIndenting.println(ExpandableOutlineView.this.mRoundableState.debugString());
            }
        });
    }

    public final Path getClipPath(boolean z) {
        float topCornerRadius;
        int i;
        int i2;
        int i3;
        int i4;
        float bottomCornerRadius;
        int i5;
        if (this.mAlwaysRoundBothCorners) {
            topCornerRadius = getMaxRadius();
        } else {
            topCornerRadius = getTopCornerRadius();
        }
        if (!this.mCustomOutline) {
            if (!this.mDismissUsingRowTranslationX && !z) {
                i5 = (int) getTranslation();
            } else {
                i5 = 0;
            }
            int i6 = (int) (this.mExtraWidthForClipping / 2.0f);
            int max = Math.max(i5, 0) - i6;
            i2 = Math.min(i5, 0) + getWidth() + i6;
            i = this.mActualHeight;
            i3 = max;
            i4 = 0;
        } else {
            Rect rect = this.mOutlineRect;
            int i7 = rect.left;
            int i8 = rect.top;
            int i9 = rect.right;
            i = rect.bottom;
            i2 = i9;
            i3 = i7;
            i4 = i8;
        }
        int i10 = i - i4;
        if (i10 == 0) {
            return EMPTY_PATH;
        }
        if (this.mAlwaysRoundBothCorners) {
            bottomCornerRadius = getMaxRadius();
        } else {
            bottomCornerRadius = getBottomCornerRadius();
        }
        if (topCornerRadius + bottomCornerRadius > i10) {
            getTopRoundness();
            getBottomRoundness();
        }
        float maxRadius = getMaxRadius();
        float maxRadius2 = getMaxRadius();
        Path path = this.mTmpPath;
        path.reset();
        float[] fArr = this.mTmpCornerRadii;
        fArr[0] = maxRadius;
        fArr[1] = maxRadius;
        fArr[2] = maxRadius;
        fArr[3] = maxRadius;
        fArr[4] = maxRadius2;
        fArr[5] = maxRadius2;
        fArr[6] = maxRadius2;
        fArr[7] = maxRadius2;
        path.addRoundRect(i3, i4, i2, i, fArr, Path.Direction.CW);
        return this.mTmpPath;
    }

    public Path getCustomClipPath(View view) {
        return null;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final float getOutlineAlpha() {
        return this.mOutlineAlpha;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final int getOutlineTranslation() {
        if (this.mCustomOutline) {
            return this.mOutlineRect.left;
        }
        if (this.mDismissUsingRowTranslationX) {
            return 0;
        }
        return (int) getTranslation();
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView, com.android.systemui.statusbar.notification.Roundable
    public final RoundableState getRoundableState() {
        return this.mRoundableState;
    }

    public final boolean isClippingNeeded() {
        boolean z;
        if (getTranslation() != 0.0f && !this.mDismissUsingRowTranslationX) {
            z = true;
        } else {
            z = false;
        }
        if (this.mAlwaysRoundBothCorners || this.mCustomOutline || z) {
            return true;
        }
        return false;
    }

    public boolean needsOutline() {
        if (isChildInGroup()) {
            if (!isGroupExpanded() || isGroupExpansionChanging()) {
                return false;
            }
            return true;
        }
        if (!isSummaryWithChildren()) {
            return true;
        }
        if (isGroupExpanded() && !isGroupExpansionChanging()) {
            return false;
        }
        return true;
    }

    public void onDensityOrFontScaleChanged() {
        initDimens();
        applyRoundnessAndInvalidate();
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public void setActualHeight(int i, boolean z) {
        int i2 = this.mActualHeight;
        super.setActualHeight(i, z);
        if (i2 != i) {
            applyRoundnessAndInvalidate();
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public void setClipBottomAmount(int i) {
        int i2 = this.mClipBottomAmount;
        super.setClipBottomAmount(i);
        if (i2 != i) {
            applyRoundnessAndInvalidate();
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public void setClipTopAmount(int i) {
        int i2 = this.mClipTopAmount;
        super.setClipTopAmount(i);
        if (i2 != i) {
            applyRoundnessAndInvalidate();
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public void setDistanceToTopRoundness(float f) {
        if (f != this.mDistanceToTopRoundness) {
            this.mDistanceToTopRoundness = f;
            applyRoundnessAndInvalidate();
        }
    }

    public final void setOutlineRect(float f, float f2, float f3, float f4) {
        this.mCustomOutline = true;
        this.mOutlineRect.set((int) f, (int) f2, (int) f3, (int) f4);
        this.mOutlineRect.bottom = (int) Math.max(f2, r6.bottom);
        this.mOutlineRect.right = (int) Math.max(f, r5.right);
        applyRoundnessAndInvalidate();
    }
}
