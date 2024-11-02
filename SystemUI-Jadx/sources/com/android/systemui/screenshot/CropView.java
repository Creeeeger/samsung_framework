package com.android.systemui.screenshot;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.MathUtils;
import android.util.Range;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.widget.SeekBar;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.android.internal.graphics.ColorUtils;
import com.android.systemui.R;
import com.android.systemui.R$styleable;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class CropView extends View {
    public static final /* synthetic */ int $r8$clinit = 0;
    public int mActivePointerId;
    public final Paint mContainerBackgroundPaint;
    public RectF mCrop;
    public CropInteractionListener mCropInteractionListener;
    public final float mCropTouchMargin;
    public CropBoundary mCurrentDraggingBoundary;
    public float mEntranceInterpolation;
    public final AccessibilityHelper mExploreByTouchHelper;
    public int mExtraBottomPadding;
    public int mExtraTopPadding;
    public final Paint mHandlePaint;
    public int mImageWidth;
    public Range mMotionRange;
    public float mMovementStartValue;
    public final Paint mShadePaint;
    public float mStartingX;
    public float mStartingY;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.screenshot.CropView$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary;

        static {
            int[] iArr = new int[CropBoundary.values().length];
            $SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary = iArr;
            try {
                iArr[CropBoundary.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary[CropBoundary.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary[CropBoundary.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary[CropBoundary.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary[CropBoundary.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AccessibilityHelper extends ExploreByTouchHelper {
        public AccessibilityHelper() {
            super(CropView.this);
        }

        public static CropBoundary viewIdToBoundary(int i) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return CropBoundary.NONE;
                        }
                        return CropBoundary.RIGHT;
                    }
                    return CropBoundary.LEFT;
                }
                return CropBoundary.BOTTOM;
            }
            return CropBoundary.TOP;
        }

        public final CharSequence getBoundaryContentDescription(CropBoundary cropBoundary) {
            int i;
            int i2 = AnonymousClass1.$SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary[cropBoundary.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return "";
                        }
                        i = R.string.screenshot_right_boundary_pct;
                    } else {
                        i = R.string.screenshot_left_boundary_pct;
                    }
                } else {
                    i = R.string.screenshot_bottom_boundary_pct;
                }
            } else {
                i = R.string.screenshot_top_boundary_pct;
            }
            CropView cropView = CropView.this;
            Resources resources = cropView.getResources();
            int i3 = CropView.$r8$clinit;
            return resources.getString(i, Integer.valueOf(Math.round(cropView.getBoundaryPosition(cropBoundary) * 100.0f)));
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final int getVirtualViewAt(float f, float f2) {
            CropView cropView = CropView.this;
            if (Math.abs(f2 - cropView.fractionToVerticalPixels(cropView.mCrop.top)) < cropView.mCropTouchMargin) {
                return 1;
            }
            if (Math.abs(f2 - cropView.fractionToVerticalPixels(cropView.mCrop.bottom)) < cropView.mCropTouchMargin) {
                return 2;
            }
            if (f2 > cropView.fractionToVerticalPixels(cropView.mCrop.top) && f2 < cropView.fractionToVerticalPixels(cropView.mCrop.bottom)) {
                if (Math.abs(f - cropView.fractionToHorizontalPixels(cropView.mCrop.left)) < cropView.mCropTouchMargin) {
                    return 3;
                }
                if (Math.abs(f - cropView.fractionToHorizontalPixels(cropView.mCrop.right)) < cropView.mCropTouchMargin) {
                    return 4;
                }
                return -1;
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void getVisibleVirtualViews(List list) {
            ArrayList arrayList = (ArrayList) list;
            arrayList.add(1);
            arrayList.add(3);
            arrayList.add(4);
            arrayList.add(2);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 != 4096 && i2 != 8192) {
                return false;
            }
            CropBoundary viewIdToBoundary = viewIdToBoundary(i);
            CropView cropView = CropView.this;
            float pixelDistanceToFraction = cropView.pixelDistanceToFraction(cropView.mCropTouchMargin, viewIdToBoundary);
            if (i2 == 4096) {
                pixelDistanceToFraction = -pixelDistanceToFraction;
            }
            cropView.setBoundaryPosition(cropView.getBoundaryPosition(viewIdToBoundary) + pixelDistanceToFraction, viewIdToBoundary);
            invalidateVirtualView(i);
            sendEventForVirtualView(i, 4);
            return true;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateEventForVirtualView(AccessibilityEvent accessibilityEvent, int i) {
            accessibilityEvent.setContentDescription(getBoundaryContentDescription(viewIdToBoundary(i)));
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            Rect rect;
            CropBoundary viewIdToBoundary = viewIdToBoundary(i);
            accessibilityNodeInfoCompat.setContentDescription(getBoundaryContentDescription(viewIdToBoundary));
            boolean isVertical = CropView.isVertical(viewIdToBoundary);
            CropView cropView = CropView.this;
            if (isVertical) {
                float fractionToVerticalPixels = cropView.fractionToVerticalPixels(cropView.getBoundaryPosition(viewIdToBoundary));
                rect = new Rect(0, (int) (fractionToVerticalPixels - cropView.mCropTouchMargin), cropView.getWidth(), (int) (fractionToVerticalPixels + cropView.mCropTouchMargin));
                int i2 = rect.top;
                if (i2 < 0) {
                    rect.offset(0, -i2);
                }
            } else {
                float fractionToHorizontalPixels = cropView.fractionToHorizontalPixels(cropView.getBoundaryPosition(viewIdToBoundary));
                int i3 = (int) (fractionToHorizontalPixels - cropView.mCropTouchMargin);
                float fractionToVerticalPixels2 = cropView.fractionToVerticalPixels(cropView.mCrop.top);
                float f = cropView.mCropTouchMargin;
                rect = new Rect(i3, (int) (fractionToVerticalPixels2 + f), (int) (fractionToHorizontalPixels + f), (int) (cropView.fractionToVerticalPixels(cropView.mCrop.bottom) - cropView.mCropTouchMargin));
            }
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            int[] iArr = new int[2];
            cropView.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            accessibilityNodeInfoCompat.mInfo.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            accessibilityNodeInfoCompat.addAction(4096);
            accessibilityNodeInfoCompat.addAction(8192);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum CropBoundary {
        NONE,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface CropInteractionListener {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() { // from class: com.android.systemui.screenshot.CropView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, 0);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public RectF mCrop;

        public /* synthetic */ SavedState(Parcel parcel, int i) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.mCrop, 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mCrop = (RectF) parcel.readParcelable(ClassLoader.getSystemClassLoader());
        }
    }

    public CropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static boolean isVertical(CropBoundary cropBoundary) {
        if (cropBoundary != CropBoundary.TOP && cropBoundary != CropBoundary.BOTTOM) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.mExploreByTouchHelper.dispatchHoverEvent(motionEvent) && !super.dispatchHoverEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        AccessibilityHelper accessibilityHelper = this.mExploreByTouchHelper;
        accessibilityHelper.getClass();
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode != 19) {
                                    if (keyCode != 21) {
                                        if (keyCode != 22) {
                                            i = 130;
                                        }
                                    } else {
                                        i = 17;
                                    }
                                } else {
                                    i = 33;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                int i2 = 0;
                                z = false;
                                while (i2 < repeatCount && accessibilityHelper.moveFocus(i, null)) {
                                    i2++;
                                    z = true;
                                }
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i3 = accessibilityHelper.mKeyboardFocusedVirtualViewId;
                    if (i3 != Integer.MIN_VALUE) {
                        accessibilityHelper.onPerformActionForVirtualView(i3, 16, null);
                    }
                    z = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = accessibilityHelper.moveFocus(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                z = accessibilityHelper.moveFocus(1, null);
            }
            if (z && !super.dispatchKeyEvent(keyEvent)) {
                return false;
            }
            return true;
        }
        z = false;
        if (z) {
        }
        return true;
    }

    public final void drawHorizontalHandle(Canvas canvas, float f, boolean z) {
        float f2;
        float fractionToVerticalPixels = fractionToVerticalPixels(f);
        canvas.drawLine(fractionToHorizontalPixels(this.mCrop.left), fractionToVerticalPixels, fractionToHorizontalPixels(this.mCrop.right), fractionToVerticalPixels, this.mHandlePaint);
        float f3 = getResources().getDisplayMetrics().density * 8.0f;
        float fractionToHorizontalPixels = (fractionToHorizontalPixels(this.mCrop.right) + fractionToHorizontalPixels(this.mCrop.left)) / 2;
        float f4 = fractionToHorizontalPixels - f3;
        float f5 = fractionToVerticalPixels - f3;
        float f6 = fractionToHorizontalPixels + f3;
        float f7 = fractionToVerticalPixels + f3;
        if (z) {
            f2 = 180.0f;
        } else {
            f2 = 0.0f;
        }
        canvas.drawArc(f4, f5, f6, f7, f2, 180.0f, true, this.mHandlePaint);
    }

    public final void drawShade(Canvas canvas, float f, float f2, float f3, float f4) {
        canvas.drawRect(fractionToHorizontalPixels(f), fractionToVerticalPixels(f2), fractionToHorizontalPixels(f3), fractionToVerticalPixels(f4), this.mShadePaint);
    }

    public final void drawVerticalHandle(Canvas canvas, float f, boolean z) {
        float f2;
        float fractionToHorizontalPixels = fractionToHorizontalPixels(f);
        canvas.drawLine(fractionToHorizontalPixels, fractionToVerticalPixels(this.mCrop.top), fractionToHorizontalPixels, fractionToVerticalPixels(this.mCrop.bottom), this.mHandlePaint);
        float f3 = getResources().getDisplayMetrics().density * 8.0f;
        float f4 = fractionToHorizontalPixels - f3;
        float fractionToVerticalPixels = (fractionToVerticalPixels(getBoundaryPosition(CropBoundary.BOTTOM)) + fractionToVerticalPixels(getBoundaryPosition(CropBoundary.TOP))) / 2;
        float f5 = fractionToVerticalPixels - f3;
        float f6 = fractionToHorizontalPixels + f3;
        float f7 = fractionToVerticalPixels + f3;
        if (z) {
            f2 = 90.0f;
        } else {
            f2 = 270.0f;
        }
        canvas.drawArc(f4, f5, f6, f7, f2, 180.0f, true, this.mHandlePaint);
    }

    public final int fractionToHorizontalPixels(float f) {
        int width = getWidth();
        return (int) ((f * this.mImageWidth) + ((width - r1) / 2));
    }

    public final int fractionToVerticalPixels(float f) {
        return (int) ((f * ((getHeight() - this.mExtraTopPadding) - this.mExtraBottomPadding)) + this.mExtraTopPadding);
    }

    public final Range getAllowedValues(CropBoundary cropBoundary) {
        int i = AnonymousClass1.$SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary[cropBoundary.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return null;
                    }
                    return new Range(Float.valueOf(pixelDistanceToFraction(this.mCropTouchMargin, CropBoundary.LEFT) + this.mCrop.left), Float.valueOf(1.0f));
                }
                return new Range(Float.valueOf(0.0f), Float.valueOf(this.mCrop.right - pixelDistanceToFraction(this.mCropTouchMargin, CropBoundary.RIGHT)));
            }
            return new Range(Float.valueOf(pixelDistanceToFraction(this.mCropTouchMargin, CropBoundary.TOP) + this.mCrop.top), Float.valueOf(1.0f));
        }
        return new Range(Float.valueOf(0.0f), Float.valueOf(this.mCrop.bottom - pixelDistanceToFraction(this.mCropTouchMargin, CropBoundary.BOTTOM)));
    }

    public final float getBoundaryPosition(CropBoundary cropBoundary) {
        int i = AnonymousClass1.$SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary[cropBoundary.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return 0.0f;
                    }
                    return this.mCrop.right;
                }
                return this.mCrop.left;
            }
            return this.mCrop.bottom;
        }
        return this.mCrop.top;
    }

    public final Rect getCropBoundaries(int i, int i2) {
        RectF rectF = this.mCrop;
        float f = i;
        float f2 = i2;
        return new Rect((int) (rectF.left * f), (int) (rectF.top * f2), (int) (rectF.right * f), (int) (rectF.bottom * f2));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float lerp = MathUtils.lerp(this.mCrop.top, 0.0f, this.mEntranceInterpolation);
        float lerp2 = MathUtils.lerp(this.mCrop.bottom, 1.0f, this.mEntranceInterpolation);
        drawShade(canvas, 0.0f, lerp, 1.0f, this.mCrop.top);
        drawShade(canvas, 0.0f, this.mCrop.bottom, 1.0f, lerp2);
        RectF rectF = this.mCrop;
        drawShade(canvas, 0.0f, rectF.top, rectF.left, rectF.bottom);
        RectF rectF2 = this.mCrop;
        drawShade(canvas, rectF2.right, rectF2.top, 1.0f, rectF2.bottom);
        canvas.drawRect(fractionToHorizontalPixels(0.0f), fractionToVerticalPixels(0.0f), fractionToHorizontalPixels(1.0f), fractionToVerticalPixels(lerp), this.mContainerBackgroundPaint);
        canvas.drawRect(fractionToHorizontalPixels(0.0f), fractionToVerticalPixels(lerp2), fractionToHorizontalPixels(1.0f), fractionToVerticalPixels(1.0f), this.mContainerBackgroundPaint);
        this.mHandlePaint.setAlpha((int) (this.mEntranceInterpolation * 255.0f));
        drawHorizontalHandle(canvas, this.mCrop.top, true);
        drawHorizontalHandle(canvas, this.mCrop.bottom, false);
        drawVerticalHandle(canvas, this.mCrop.left, true);
        drawVerticalHandle(canvas, this.mCrop.right, false);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        AccessibilityHelper accessibilityHelper = this.mExploreByTouchHelper;
        int i2 = accessibilityHelper.mKeyboardFocusedVirtualViewId;
        if (i2 != Integer.MIN_VALUE) {
            accessibilityHelper.clearKeyboardFocusForVirtualView(i2);
        }
        if (z) {
            accessibilityHelper.moveFocus(i, rect);
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mCrop = savedState.mCrop;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mCrop = this.mCrop;
        return savedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        CropBoundary cropBoundary;
        float x;
        float f;
        int fractionToVerticalPixels = fractionToVerticalPixels(this.mCrop.top);
        int fractionToVerticalPixels2 = fractionToVerticalPixels(this.mCrop.bottom);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6 && this.mActivePointerId == motionEvent.getPointerId(motionEvent.getActionIndex()) && this.mCurrentDraggingBoundary != CropBoundary.NONE) {
                                updateListener(motionEvent.getX(motionEvent.getActionIndex()), 1);
                                return true;
                            }
                        } else if (this.mActivePointerId == motionEvent.getPointerId(motionEvent.getActionIndex()) && this.mCurrentDraggingBoundary != CropBoundary.NONE) {
                            updateListener(motionEvent.getX(motionEvent.getActionIndex()), 0);
                            return true;
                        }
                    }
                } else if (this.mCurrentDraggingBoundary != CropBoundary.NONE) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (findPointerIndex >= 0) {
                        if (isVertical(this.mCurrentDraggingBoundary)) {
                            x = motionEvent.getY(findPointerIndex);
                            f = this.mStartingY;
                        } else {
                            x = motionEvent.getX(findPointerIndex);
                            f = this.mStartingX;
                        }
                        setBoundaryPosition(((Float) this.mMotionRange.clamp(Float.valueOf(this.mMovementStartValue + pixelDistanceToFraction((int) (x - f), this.mCurrentDraggingBoundary)))).floatValue(), this.mCurrentDraggingBoundary);
                        updateListener(motionEvent.getX(findPointerIndex), 2);
                        invalidate();
                    }
                    return true;
                }
                return super.onTouchEvent(motionEvent);
            }
            if (this.mCurrentDraggingBoundary != CropBoundary.NONE) {
                int i = this.mActivePointerId;
                if (i == motionEvent.getPointerId(i)) {
                    updateListener(motionEvent.getX(0), 1);
                    return true;
                }
            }
            return super.onTouchEvent(motionEvent);
        }
        int fractionToHorizontalPixels = fractionToHorizontalPixels(this.mCrop.left);
        int fractionToHorizontalPixels2 = fractionToHorizontalPixels(this.mCrop.right);
        float f2 = fractionToVerticalPixels;
        if (Math.abs(motionEvent.getY() - f2) < this.mCropTouchMargin) {
            cropBoundary = CropBoundary.TOP;
        } else {
            float f3 = fractionToVerticalPixels2;
            if (Math.abs(motionEvent.getY() - f3) < this.mCropTouchMargin) {
                cropBoundary = CropBoundary.BOTTOM;
            } else {
                if (motionEvent.getY() > f2 || motionEvent.getY() < f3) {
                    if (Math.abs(motionEvent.getX() - fractionToHorizontalPixels) < this.mCropTouchMargin) {
                        cropBoundary = CropBoundary.LEFT;
                    } else if (Math.abs(motionEvent.getX() - fractionToHorizontalPixels2) < this.mCropTouchMargin) {
                        cropBoundary = CropBoundary.RIGHT;
                    }
                }
                cropBoundary = CropBoundary.NONE;
            }
        }
        this.mCurrentDraggingBoundary = cropBoundary;
        if (cropBoundary != CropBoundary.NONE) {
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mStartingY = motionEvent.getY();
            this.mStartingX = motionEvent.getX();
            this.mMovementStartValue = getBoundaryPosition(this.mCurrentDraggingBoundary);
            updateListener(motionEvent.getX(), 0);
            this.mMotionRange = getAllowedValues(this.mCurrentDraggingBoundary);
        }
        return true;
    }

    public final float pixelDistanceToFraction(float f, CropBoundary cropBoundary) {
        int i;
        if (isVertical(cropBoundary)) {
            i = (getHeight() - this.mExtraTopPadding) - this.mExtraBottomPadding;
        } else {
            i = this.mImageWidth;
        }
        return f / i;
    }

    public final void setBoundaryPosition(float f, CropBoundary cropBoundary) {
        float floatValue = ((Float) getAllowedValues(cropBoundary).clamp(Float.valueOf(f))).floatValue();
        int i = AnonymousClass1.$SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary[cropBoundary.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            Log.w("CropView", "No boundary selected");
                        }
                    } else {
                        this.mCrop.right = floatValue;
                    }
                } else {
                    this.mCrop.left = floatValue;
                }
            } else {
                this.mCrop.bottom = floatValue;
            }
        } else {
            this.mCrop.top = floatValue;
        }
        invalidate();
    }

    public final void updateListener(float f, int i) {
        float parentWidth;
        boolean z;
        boolean z2;
        if (this.mCropInteractionListener != null && isVertical(this.mCurrentDraggingBoundary)) {
            float boundaryPosition = getBoundaryPosition(this.mCurrentDraggingBoundary);
            boolean z3 = false;
            float f2 = 0.0f;
            boolean z4 = true;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        CropInteractionListener cropInteractionListener = this.mCropInteractionListener;
                        int fractionToVerticalPixels = fractionToVerticalPixels(boundaryPosition);
                        float f3 = this.mCrop.left;
                        MagnifierView magnifierView = (MagnifierView) cropInteractionListener;
                        if (f > magnifierView.getParentWidth() / 2) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            f2 = magnifierView.getParentWidth() - magnifierView.getWidth();
                        }
                        if (Math.abs(f - (magnifierView.getParentWidth() / 2)) < magnifierView.getParentWidth() / 10.0f) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (magnifierView.getTranslationX() < (magnifierView.getParentWidth() - magnifierView.getWidth()) / 2) {
                            z3 = true;
                        }
                        if (!z2 && z3 != z && magnifierView.mTranslationAnimator == null) {
                            ViewPropertyAnimator translationX = magnifierView.animate().translationX(f2);
                            magnifierView.mTranslationAnimator = translationX;
                            translationX.setListener(magnifierView.mTranslationAnimatorListener);
                            magnifierView.mTranslationAnimator.start();
                        }
                        magnifierView.mLastCropPosition = boundaryPosition;
                        magnifierView.setTranslationY(fractionToVerticalPixels - (magnifierView.getHeight() / 2));
                        magnifierView.invalidate();
                        return;
                    }
                    return;
                }
                final MagnifierView magnifierView2 = (MagnifierView) this.mCropInteractionListener;
                magnifierView2.animate().alpha(0.0f).translationX((magnifierView2.getParentWidth() - magnifierView2.getWidth()) / 2).scaleX(0.2f).scaleY(0.2f).withEndAction(new Runnable() { // from class: com.android.systemui.screenshot.MagnifierView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MagnifierView magnifierView3 = MagnifierView.this;
                        int i2 = MagnifierView.$r8$clinit;
                        magnifierView3.setVisibility(4);
                    }
                }).start();
                return;
            }
            CropInteractionListener cropInteractionListener2 = this.mCropInteractionListener;
            CropBoundary cropBoundary = this.mCurrentDraggingBoundary;
            int fractionToVerticalPixels2 = fractionToVerticalPixels(boundaryPosition);
            RectF rectF = this.mCrop;
            float f4 = (rectF.left + rectF.right) / 2.0f;
            MagnifierView magnifierView3 = (MagnifierView) cropInteractionListener2;
            magnifierView3.mCropBoundary = cropBoundary;
            magnifierView3.mLastCenter = f4;
            if (f <= magnifierView3.getParentWidth() / 2) {
                z4 = false;
            }
            if (z4) {
                parentWidth = 0.0f;
            } else {
                parentWidth = magnifierView3.getParentWidth() - magnifierView3.getWidth();
            }
            magnifierView3.mLastCropPosition = boundaryPosition;
            magnifierView3.setTranslationY(fractionToVerticalPixels2 - (magnifierView3.getHeight() / 2));
            magnifierView3.setPivotX(magnifierView3.getWidth() / 2);
            magnifierView3.setPivotY(magnifierView3.getHeight() / 2);
            magnifierView3.setScaleX(0.2f);
            magnifierView3.setScaleY(0.2f);
            magnifierView3.setAlpha(0.0f);
            magnifierView3.setTranslationX((magnifierView3.getParentWidth() - magnifierView3.getWidth()) / 2);
            magnifierView3.setVisibility(0);
            ViewPropertyAnimator scaleY = magnifierView3.animate().alpha(1.0f).translationX(parentWidth).scaleX(1.0f).scaleY(1.0f);
            magnifierView3.mTranslationAnimator = scaleY;
            scaleY.setListener(magnifierView3.mTranslationAnimatorListener);
            magnifierView3.mTranslationAnimator.start();
        }
    }

    public CropView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCrop = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
        this.mCurrentDraggingBoundary = CropBoundary.NONE;
        this.mEntranceInterpolation = 1.0f;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.CropView, 0, 0);
        Paint paint = new Paint();
        this.mShadePaint = paint;
        paint.setColor(ColorUtils.setAlphaComponent(obtainStyledAttributes.getColor(4, 0), obtainStyledAttributes.getInteger(3, 255)));
        Paint paint2 = new Paint();
        this.mContainerBackgroundPaint = paint2;
        paint2.setColor(obtainStyledAttributes.getColor(0, 0));
        Paint paint3 = new Paint();
        this.mHandlePaint = paint3;
        paint3.setColor(obtainStyledAttributes.getColor(1, EmergencyPhoneWidget.BG_COLOR));
        paint3.setStrokeCap(Paint.Cap.ROUND);
        paint3.setStrokeWidth(obtainStyledAttributes.getDimensionPixelSize(2, 20));
        obtainStyledAttributes.recycle();
        this.mCropTouchMargin = getResources().getDisplayMetrics().density * 24.0f;
        AccessibilityHelper accessibilityHelper = new AccessibilityHelper();
        this.mExploreByTouchHelper = accessibilityHelper;
        ViewCompat.setAccessibilityDelegate(this, accessibilityHelper);
    }
}
