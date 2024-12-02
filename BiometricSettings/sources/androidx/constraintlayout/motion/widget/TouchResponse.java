package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
final class TouchResponse {
    private int mAutoCompleteMode;
    private float mDragScale;
    private float mDragThreshold;
    private int mFlags;
    boolean mIsRotateMode;
    private float mLastTouchX;
    private float mLastTouchY;
    private int mLimitBoundsTo;
    private float mMaxAcceleration;
    private float mMaxVelocity;
    private final MotionLayout mMotionLayout;
    private boolean mMoveWhenScrollAtTop;
    private int mOnTouchUp;
    private int mRotationCenterId;
    private int mSpringBoundary;
    private float mSpringDamping;
    private float mSpringMass;
    private float mSpringStiffness;
    private float mSpringStopThreshold;
    private int mTouchAnchorId;
    private int mTouchAnchorSide;
    private float mTouchAnchorX;
    private float mTouchAnchorY;
    private float mTouchDirectionX;
    private float mTouchDirectionY;
    private int mTouchRegionId;
    private int mTouchSide;
    private static final float[][] TOUCH_SIDES = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] TOUCH_DIRECTION = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};
    private boolean mDragStarted = false;
    private float[] mAnchorDpDt = new float[2];
    private int[] mTempLoc = new int[2];

    /* renamed from: androidx.constraintlayout.motion.widget.TouchResponse$1, reason: invalid class name */
    final class AnonymousClass1 implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.TouchResponse$2, reason: invalid class name */
    final class AnonymousClass2 implements NestedScrollView.OnScrollChangeListener {
    }

    TouchResponse(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.mTouchAnchorSide = 0;
        this.mTouchSide = 0;
        this.mOnTouchUp = 0;
        this.mTouchAnchorId = -1;
        this.mTouchRegionId = -1;
        this.mLimitBoundsTo = -1;
        this.mTouchAnchorY = 0.5f;
        this.mTouchAnchorX = 0.5f;
        this.mRotationCenterId = -1;
        this.mIsRotateMode = false;
        this.mTouchDirectionX = 0.0f;
        this.mTouchDirectionY = 1.0f;
        this.mMaxVelocity = 4.0f;
        this.mMaxAcceleration = 1.2f;
        this.mMoveWhenScrollAtTop = true;
        this.mDragScale = 1.0f;
        this.mFlags = 0;
        this.mDragThreshold = 10.0f;
        this.mSpringDamping = 10.0f;
        this.mSpringMass = 1.0f;
        this.mSpringStiffness = Float.NaN;
        this.mSpringStopThreshold = Float.NaN;
        this.mSpringBoundary = 0;
        this.mAutoCompleteMode = 0;
        this.mMotionLayout = motionLayout;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.OnSwipe);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 16) {
                this.mTouchAnchorId = obtainStyledAttributes.getResourceId(index, this.mTouchAnchorId);
            } else if (index == 17) {
                int i2 = obtainStyledAttributes.getInt(index, this.mTouchAnchorSide);
                this.mTouchAnchorSide = i2;
                float[] fArr = TOUCH_SIDES[i2];
                this.mTouchAnchorX = fArr[0];
                this.mTouchAnchorY = fArr[1];
            } else if (index == 1) {
                int i3 = obtainStyledAttributes.getInt(index, this.mTouchSide);
                this.mTouchSide = i3;
                if (i3 < 6) {
                    float[] fArr2 = TOUCH_DIRECTION[i3];
                    this.mTouchDirectionX = fArr2[0];
                    this.mTouchDirectionY = fArr2[1];
                } else {
                    this.mTouchDirectionY = Float.NaN;
                    this.mTouchDirectionX = Float.NaN;
                    this.mIsRotateMode = true;
                }
            } else if (index == 6) {
                this.mMaxVelocity = obtainStyledAttributes.getFloat(index, this.mMaxVelocity);
            } else if (index == 5) {
                this.mMaxAcceleration = obtainStyledAttributes.getFloat(index, this.mMaxAcceleration);
            } else if (index == 7) {
                this.mMoveWhenScrollAtTop = obtainStyledAttributes.getBoolean(index, this.mMoveWhenScrollAtTop);
            } else if (index == 2) {
                this.mDragScale = obtainStyledAttributes.getFloat(index, this.mDragScale);
            } else if (index == 3) {
                this.mDragThreshold = obtainStyledAttributes.getFloat(index, this.mDragThreshold);
            } else if (index == 18) {
                this.mTouchRegionId = obtainStyledAttributes.getResourceId(index, this.mTouchRegionId);
            } else if (index == 9) {
                this.mOnTouchUp = obtainStyledAttributes.getInt(index, this.mOnTouchUp);
            } else if (index == 8) {
                this.mFlags = obtainStyledAttributes.getInteger(index, 0);
            } else if (index == 4) {
                this.mLimitBoundsTo = obtainStyledAttributes.getResourceId(index, 0);
            } else if (index == 10) {
                this.mRotationCenterId = obtainStyledAttributes.getResourceId(index, this.mRotationCenterId);
            } else if (index == 12) {
                this.mSpringDamping = obtainStyledAttributes.getFloat(index, this.mSpringDamping);
            } else if (index == 13) {
                this.mSpringMass = obtainStyledAttributes.getFloat(index, this.mSpringMass);
            } else if (index == 14) {
                this.mSpringStiffness = obtainStyledAttributes.getFloat(index, this.mSpringStiffness);
            } else if (index == 15) {
                this.mSpringStopThreshold = obtainStyledAttributes.getFloat(index, this.mSpringStopThreshold);
            } else if (index == 11) {
                this.mSpringBoundary = obtainStyledAttributes.getInt(index, this.mSpringBoundary);
            } else if (index == 0) {
                this.mAutoCompleteMode = obtainStyledAttributes.getInt(index, this.mAutoCompleteMode);
            }
        }
        obtainStyledAttributes.recycle();
    }

    final float dot(float f, float f2) {
        return (f2 * this.mTouchDirectionY) + (f * this.mTouchDirectionX);
    }

    public final int getAutoCompleteMode() {
        return this.mAutoCompleteMode;
    }

    public final int getFlags() {
        return this.mFlags;
    }

    final RectF getLimitBoundsTo(MotionLayout motionLayout, RectF rectF) {
        View findViewById;
        int i = this.mLimitBoundsTo;
        if (i == -1 || (findViewById = motionLayout.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    final float getMaxAcceleration() {
        return this.mMaxAcceleration;
    }

    public final float getMaxVelocity() {
        return this.mMaxVelocity;
    }

    final boolean getMoveWhenScrollAtTop() {
        return this.mMoveWhenScrollAtTop;
    }

    final float getProgressDirection(float f, float f2) {
        this.mMotionLayout.getAnchorDpDt(this.mTouchAnchorId, this.mMotionLayout.getProgress(), this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
        float f3 = this.mTouchDirectionX;
        if (f3 != 0.0f) {
            float[] fArr = this.mAnchorDpDt;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            return (f * f3) / fArr[0];
        }
        float[] fArr2 = this.mAnchorDpDt;
        if (fArr2[1] == 0.0f) {
            fArr2[1] = 1.0E-7f;
        }
        return (f2 * this.mTouchDirectionY) / fArr2[1];
    }

    public final int getSpringBoundary() {
        return this.mSpringBoundary;
    }

    public final float getSpringDamping() {
        return this.mSpringDamping;
    }

    public final float getSpringMass() {
        return this.mSpringMass;
    }

    public final float getSpringStiffness() {
        return this.mSpringStiffness;
    }

    public final float getSpringStopThreshold() {
        return this.mSpringStopThreshold;
    }

    final RectF getTouchRegion(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.mTouchRegionId;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    final int getTouchRegionId() {
        return this.mTouchRegionId;
    }

    final boolean isDragStarted() {
        return this.mDragStarted;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void processTouchEvent(android.view.MotionEvent r27, androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker r28) {
        /*
            Method dump skipped, instructions count: 1407
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.TouchResponse.processTouchEvent(android.view.MotionEvent, androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker):void");
    }

    final void scrollMove(float f, float f2) {
        MotionLayout motionLayout = this.mMotionLayout;
        float progress = motionLayout.getProgress();
        if (!this.mDragStarted) {
            this.mDragStarted = true;
            motionLayout.setProgress(progress);
        }
        this.mMotionLayout.getAnchorDpDt(this.mTouchAnchorId, progress, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
        float f3 = this.mTouchDirectionX;
        float[] fArr = this.mAnchorDpDt;
        if (Math.abs((this.mTouchDirectionY * fArr[1]) + (f3 * fArr[0])) < 0.01d) {
            float[] fArr2 = this.mAnchorDpDt;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f4 = this.mTouchDirectionX;
        float max = Math.max(Math.min(progress + (f4 != 0.0f ? (f * f4) / this.mAnchorDpDt[0] : (f2 * this.mTouchDirectionY) / this.mAnchorDpDt[1]), 1.0f), 0.0f);
        if (max != motionLayout.getProgress()) {
            motionLayout.setProgress(max);
        }
    }

    final void scrollUp(float f, float f2) {
        int i;
        this.mDragStarted = false;
        MotionLayout motionLayout = this.mMotionLayout;
        float progress = motionLayout.getProgress();
        this.mMotionLayout.getAnchorDpDt(this.mTouchAnchorId, progress, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
        float f3 = this.mTouchDirectionX;
        float[] fArr = this.mAnchorDpDt;
        float f4 = f3 != 0.0f ? (f * f3) / fArr[0] : (f2 * this.mTouchDirectionY) / fArr[1];
        if (!Float.isNaN(f4)) {
            progress += f4 / 3.0f;
        }
        if (progress == 0.0f || progress == 1.0f || (i = this.mOnTouchUp) == 3) {
            return;
        }
        motionLayout.touchAnimateTo(i, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f4);
    }

    final void setDown(float f, float f2) {
        this.mLastTouchX = f;
        this.mLastTouchY = f2;
    }

    public final void setRTL(boolean z) {
        float[][] fArr = TOUCH_SIDES;
        float[][] fArr2 = TOUCH_DIRECTION;
        if (z) {
            fArr2[4] = fArr2[3];
            fArr2[5] = fArr2[2];
            fArr[5] = fArr[2];
            fArr[6] = fArr[1];
        } else {
            fArr2[4] = fArr2[2];
            fArr2[5] = fArr2[3];
            fArr[5] = fArr[1];
            fArr[6] = fArr[2];
        }
        float[] fArr3 = fArr[this.mTouchAnchorSide];
        this.mTouchAnchorX = fArr3[0];
        this.mTouchAnchorY = fArr3[1];
        int i = this.mTouchSide;
        if (i >= 6) {
            return;
        }
        float[] fArr4 = fArr2[i];
        this.mTouchDirectionX = fArr4[0];
        this.mTouchDirectionY = fArr4[1];
    }

    public final void setTouchUpMode() {
        this.mOnTouchUp = 5;
    }

    final void setUpTouchEvent(float f, float f2) {
        this.mLastTouchX = f;
        this.mLastTouchY = f2;
        this.mDragStarted = false;
    }

    final void setupTouch() {
        View view;
        int i = this.mTouchAnchorId;
        if (i != -1) {
            MotionLayout motionLayout = this.mMotionLayout;
            view = motionLayout.findViewById(i);
            if (view == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + Debug.getName(motionLayout.getContext(), this.mTouchAnchorId));
            }
        } else {
            view = null;
        }
        if (view instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            nestedScrollView.setOnTouchListener(new AnonymousClass1());
            nestedScrollView.setOnScrollChangeListener(new AnonymousClass2());
        }
    }

    public final String toString() {
        if (Float.isNaN(this.mTouchDirectionX)) {
            return "rotation";
        }
        return this.mTouchDirectionX + " , " + this.mTouchDirectionY;
    }
}
