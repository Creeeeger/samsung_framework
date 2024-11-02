package com.android.keyguard;

import android.content.Context;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class LockIconView extends FrameLayout implements Dumpable {
    public boolean mAod;
    public int mIconType;
    public ImageView mLockIcon;
    public Point mLockIconCenter;
    public int mLockIconPadding;
    public float mRadius;
    public final RectF mSensorRect;

    public LockIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLockIconCenter = new Point(0, 0);
        this.mSensorRect = new RectF();
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        String str;
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "Lock Icon View Parameters:", "    Center in px (x, y)= (");
        m.append(this.mLockIconCenter.x);
        m.append(", ");
        m.append(this.mLockIconCenter.y);
        m.append(")");
        printWriter.println(m.toString());
        StringBuilder m2 = LockIconView$$ExternalSyntheticOutline0.m(new StringBuilder("    Radius in pixels: "), this.mRadius, printWriter, "    Drawable padding: ");
        m2.append(this.mLockIconPadding);
        printWriter.println(m2.toString());
        int i = this.mIconType;
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        str = "invalid";
                    } else {
                        str = "unlock";
                    }
                } else {
                    str = "fingerprint";
                }
            } else {
                str = "lock";
            }
        } else {
            str = "none";
        }
        printWriter.println("    mIconType=".concat(str));
        printWriter.println("    mAod=" + this.mAod);
        printWriter.println("Lock Icon View actual measurements:");
        printWriter.println("    topLeft= (" + getX() + ", " + getY() + ")");
        StringBuilder sb = new StringBuilder("    width=");
        sb.append(getWidth());
        sb.append(" height=");
        sb.append(getHeight());
        printWriter.println(sb.toString());
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mLockIcon = (ImageView) findViewById(R.id.lock_icon);
    }

    public void setCenterLocation(Point point, float f, int i) {
        this.mLockIconCenter = point;
        this.mRadius = f;
        this.mLockIconPadding = i;
        this.mLockIcon.setPadding(i, i, i, i);
        RectF rectF = this.mSensorRect;
        Point point2 = this.mLockIconCenter;
        int i2 = point2.x;
        float f2 = this.mRadius;
        int i3 = point2.y;
        rectF.set(i2 - f2, i3 - f2, i2 + f2, i3 + f2);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        RectF rectF2 = this.mSensorRect;
        float f3 = rectF2.right;
        float f4 = rectF2.left;
        layoutParams.width = (int) (f3 - f4);
        float f5 = rectF2.bottom;
        float f6 = rectF2.top;
        layoutParams.height = (int) (f5 - f6);
        layoutParams.topMargin = (int) f6;
        layoutParams.setMarginStart((int) f4);
        setLayoutParams(layoutParams);
    }

    public void setImageDrawable(Drawable drawable) {
        this.mLockIcon.setImageDrawable(drawable);
    }

    public final void updateIcon(int i, boolean z) {
        int[] iArr;
        this.mIconType = i;
        this.mAod = z;
        ImageView imageView = this.mLockIcon;
        if (i == -1) {
            iArr = new int[0];
        } else {
            int[] iArr2 = new int[2];
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        iArr2[0] = 16842918;
                    }
                } else {
                    iArr2[0] = 16842917;
                }
            } else {
                iArr2[0] = 16842916;
            }
            if (z) {
                iArr2[1] = 16842915;
            } else {
                iArr2[1] = -16842915;
            }
            iArr = iArr2;
        }
        imageView.setImageState(iArr, true);
    }
}
