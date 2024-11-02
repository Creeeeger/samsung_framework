package com.android.systemui.assist.ui;

import android.content.Context;
import android.graphics.Path;
import android.util.DisplayMetrics;
import android.view.Display;
import com.android.systemui.assist.ui.CornerPathRenderer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CircularCornerPathRenderer extends CornerPathRenderer {
    public final int mCornerRadiusBottom;
    public final int mCornerRadiusTop;
    public final int mHeight;
    public final Path mPath = new Path();
    public final int mWidth;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.assist.ui.CircularCornerPathRenderer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$assist$ui$CornerPathRenderer$Corner;

        static {
            int[] iArr = new int[CornerPathRenderer.Corner.values().length];
            $SwitchMap$com$android$systemui$assist$ui$CornerPathRenderer$Corner = iArr;
            try {
                iArr[CornerPathRenderer.Corner.BOTTOM_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$assist$ui$CornerPathRenderer$Corner[CornerPathRenderer.Corner.BOTTOM_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$assist$ui$CornerPathRenderer$Corner[CornerPathRenderer.Corner.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$assist$ui$CornerPathRenderer$Corner[CornerPathRenderer.Corner.TOP_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public CircularCornerPathRenderer(Context context) {
        int i;
        int i2;
        this.mCornerRadiusBottom = DisplayUtils.getInvocationCornerRadius(context, true);
        this.mCornerRadiusTop = DisplayUtils.getInvocationCornerRadius(context, false);
        Display display = context.getDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getRealMetrics(displayMetrics);
        int rotation = display.getRotation();
        if (rotation != 0 && rotation != 2) {
            i = displayMetrics.widthPixels;
        } else {
            i = displayMetrics.heightPixels;
        }
        this.mHeight = i;
        Display display2 = context.getDisplay();
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        display2.getRealMetrics(displayMetrics2);
        int rotation2 = display2.getRotation();
        if (rotation2 != 0 && rotation2 != 2) {
            i2 = displayMetrics2.heightPixels;
        } else {
            i2 = displayMetrics2.widthPixels;
        }
        this.mWidth = i2;
    }

    @Override // com.android.systemui.assist.ui.CornerPathRenderer
    public final Path getCornerPath(CornerPathRenderer.Corner corner) {
        Path path = this.mPath;
        path.reset();
        int i = AnonymousClass1.$SwitchMap$com$android$systemui$assist$ui$CornerPathRenderer$Corner[corner.ordinal()];
        int i2 = this.mCornerRadiusBottom;
        int i3 = this.mHeight;
        if (i != 1) {
            int i4 = this.mWidth;
            if (i != 2) {
                int i5 = this.mCornerRadiusTop;
                if (i != 3) {
                    if (i == 4) {
                        path.moveTo(i5, 0.0f);
                        path.arcTo(0.0f, 0.0f, i5 * 2, i5 * 2, 270.0f, -90.0f, true);
                    }
                } else {
                    path.moveTo(i4, i5);
                    path.arcTo(i4 - (i5 * 2), 0.0f, i4, i5 * 2, 0.0f, -90.0f, true);
                }
            } else {
                path.moveTo(i4 - i2, i3);
                path.arcTo(i4 - (i2 * 2), i3 - (i2 * 2), i4, i3, 90.0f, -90.0f, true);
            }
        } else {
            path.moveTo(0.0f, i3 - i2);
            path.arcTo(0.0f, i3 - (i2 * 2), i2 * 2, i3, 180.0f, -90.0f, true);
        }
        return path;
    }
}
