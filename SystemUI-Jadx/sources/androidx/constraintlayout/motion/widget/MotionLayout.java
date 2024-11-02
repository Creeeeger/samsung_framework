package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.core.widgets.WidgetContainer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.helper.widget.MotionEffect;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.widget.NestedScrollView;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static boolean IS_IN_EDIT_MODE;
    public long mAnimationStartTime;
    public int mBeginState;
    public final RectF mBoundsCheck;
    public int mCurrentState;
    public int mDebugPath;
    public final DecelerateInterpolator mDecelerateLogic;
    public ArrayList mDecoratorsHelpers;
    public DevModeDraw mDevModeDraw;
    public int mEndState;
    public int mEndWrapHeight;
    public int mEndWrapWidth;
    public final HashMap mFrameArrayList;
    public int mFrames;
    public int mHeightMeasureMode;
    public boolean mInLayout;
    public boolean mInTransition;
    public final boolean mInteractionEnabled;
    public MotionInterpolator mInterpolator;
    public Matrix mInverseMatrix;
    public boolean mKeepAnimating;
    public final KeyCache mKeyCache;
    public long mLastDrawTime;
    public float mLastFps;
    public int mLastHeightMeasureSpec;
    public int mLastLayoutHeight;
    public int mLastLayoutWidth;
    public float mLastVelocity;
    public int mLastWidthMeasureSpec;
    public float mListenerPosition;
    public int mListenerState;
    public boolean mMeasureDuringTransition;
    public final Model mModel;
    public boolean mNeedsFireTransitionCompleted;
    public Runnable mOnComplete;
    public ArrayList mOnHideHelpers;
    public ArrayList mOnShowHelpers;
    public float mPostInterpolationPosition;
    public final HashMap mPreRotate;
    public Interpolator mProgressInterpolator;
    public View mRegionView;
    public MotionScene mScene;
    public float mScrollTargetDT;
    public float mScrollTargetDX;
    public float mScrollTargetDY;
    public long mScrollTargetTime;
    public int mStartWrapHeight;
    public int mStartWrapWidth;
    public StateCache mStateCache;
    public final StopLogic mStopLogic;
    public final Rect mTempRect;
    public boolean mTemporalInterpolator;
    public final ArrayList mTransitionCompleted;
    public float mTransitionDuration;
    public float mTransitionGoalPosition;
    public boolean mTransitionInstantly;
    public float mTransitionLastPosition;
    public long mTransitionLastTime;
    public CopyOnWriteArrayList mTransitionListeners;
    public float mTransitionPosition;
    public TransitionState mTransitionState;
    public boolean mUndergoingMotion;
    public int mWidthMeasureMode;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass5 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState;

        static {
            int[] iArr = new int[TransitionState.values().length];
            $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DecelerateInterpolator extends MotionInterpolator {
        public float maxA;
        public float initalV = 0.0f;
        public float currentP = 0.0f;

        public DecelerateInterpolator() {
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = this.initalV;
            if (f2 > 0.0f) {
                float f3 = this.maxA;
                if (f2 / f3 < f) {
                    f = f2 / f3;
                }
                MotionLayout.this.mLastVelocity = f2 - (f3 * f);
                return ((f2 * f) - (((f3 * f) * f) / 2.0f)) + this.currentP;
            }
            float f4 = this.maxA;
            if ((-f2) / f4 < f) {
                f = (-f2) / f4;
            }
            MotionLayout.this.mLastVelocity = (f4 * f) + f2;
            return (((f4 * f) * f) / 2.0f) + (f2 * f) + this.currentP;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public final float getVelocity() {
            return MotionLayout.this.mLastVelocity;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DevModeDraw {
        public final Paint mFillPaint;
        public int mKeyFrameCount;
        public final float[] mKeyFramePoints;
        public final Paint mPaint;
        public final Paint mPaintGraph;
        public final Paint mPaintKeyframes;
        public Path mPath;
        public final int[] mPathMode;
        public float[] mPoints;
        public final float[] mRectangle;
        public final Paint mTextPaint;
        public final Rect mBounds = new Rect();
        public final int mShadowTranslate = 1;

        public DevModeDraw() {
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setAntiAlias(true);
            paint.setColor(-21965);
            paint.setStrokeWidth(2.0f);
            paint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.mPaintKeyframes = paint2;
            paint2.setAntiAlias(true);
            paint2.setColor(-2067046);
            paint2.setStrokeWidth(2.0f);
            paint2.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.mPaintGraph = paint3;
            paint3.setAntiAlias(true);
            paint3.setColor(-13391360);
            paint3.setStrokeWidth(2.0f);
            paint3.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.mTextPaint = paint4;
            paint4.setAntiAlias(true);
            paint4.setColor(-13391360);
            paint4.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.mRectangle = new float[8];
            Paint paint5 = new Paint();
            this.mFillPaint = paint5;
            paint5.setAntiAlias(true);
            paint3.setPathEffect(new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f));
            this.mKeyFramePoints = new float[100];
            this.mPathMode = new int[50];
        }

        public final void drawAll(Canvas canvas, int i, int i2, MotionController motionController) {
            int i3;
            int i4;
            Paint paint;
            float f;
            float f2;
            int i5;
            Paint paint2 = this.mPaintGraph;
            int[] iArr = this.mPathMode;
            int i6 = 4;
            if (i == 4) {
                boolean z = false;
                boolean z2 = false;
                for (int i7 = 0; i7 < this.mKeyFrameCount; i7++) {
                    int i8 = iArr[i7];
                    if (i8 == 1) {
                        z = true;
                    }
                    if (i8 == 0) {
                        z2 = true;
                    }
                }
                if (z) {
                    float[] fArr = this.mPoints;
                    canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], paint2);
                }
                if (z2) {
                    drawPathCartesian(canvas);
                }
            }
            if (i == 2) {
                float[] fArr2 = this.mPoints;
                canvas.drawLine(fArr2[0], fArr2[1], fArr2[fArr2.length - 2], fArr2[fArr2.length - 1], paint2);
            }
            if (i == 3) {
                drawPathCartesian(canvas);
            }
            canvas.drawLines(this.mPoints, this.mPaint);
            View view = motionController.mView;
            if (view != null) {
                i3 = view.getWidth();
                i4 = motionController.mView.getHeight();
            } else {
                i3 = 0;
                i4 = 0;
            }
            int i9 = 1;
            while (i9 < i2 - 1) {
                if (i == i6 && iArr[i9 - 1] == 0) {
                    i5 = i9;
                } else {
                    int i10 = i9 * 2;
                    float[] fArr3 = this.mKeyFramePoints;
                    float f3 = fArr3[i10];
                    float f4 = fArr3[i10 + 1];
                    this.mPath.reset();
                    this.mPath.moveTo(f3, f4 + 10.0f);
                    this.mPath.lineTo(f3 + 10.0f, f4);
                    this.mPath.lineTo(f3, f4 - 10.0f);
                    this.mPath.lineTo(f3 - 10.0f, f4);
                    this.mPath.close();
                    int i11 = i9 - 1;
                    Paint paint3 = this.mFillPaint;
                    if (i == i6) {
                        int i12 = iArr[i11];
                        if (i12 == 1) {
                            drawPathRelativeTicks(canvas, f3 - 0.0f, f4 - 0.0f);
                        } else if (i12 == 0) {
                            drawPathCartesianTicks(canvas, f3 - 0.0f, f4 - 0.0f);
                        } else if (i12 == 2) {
                            paint = paint3;
                            f = f4;
                            f2 = f3;
                            i5 = i9;
                            drawPathScreenTicks(canvas, f3 - 0.0f, f4 - 0.0f, i3, i4);
                            canvas.drawPath(this.mPath, paint);
                        }
                        paint = paint3;
                        f = f4;
                        f2 = f3;
                        i5 = i9;
                        canvas.drawPath(this.mPath, paint);
                    } else {
                        paint = paint3;
                        f = f4;
                        f2 = f3;
                        i5 = i9;
                    }
                    if (i == 2) {
                        drawPathRelativeTicks(canvas, f2 - 0.0f, f - 0.0f);
                    }
                    if (i == 3) {
                        drawPathCartesianTicks(canvas, f2 - 0.0f, f - 0.0f);
                    }
                    if (i == 6) {
                        drawPathScreenTicks(canvas, f2 - 0.0f, f - 0.0f, i3, i4);
                    }
                    canvas.drawPath(this.mPath, paint);
                }
                i9 = i5 + 1;
                i6 = 4;
            }
            float[] fArr4 = this.mPoints;
            if (fArr4.length > 1) {
                float f5 = fArr4[0];
                float f6 = fArr4[1];
                Paint paint4 = this.mPaintKeyframes;
                canvas.drawCircle(f5, f6, 8.0f, paint4);
                float[] fArr5 = this.mPoints;
                canvas.drawCircle(fArr5[fArr5.length - 2], fArr5[fArr5.length - 1], 8.0f, paint4);
            }
        }

        public final void drawPathCartesian(Canvas canvas) {
            float[] fArr = this.mPoints;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            float min = Math.min(f, f3);
            float max = Math.max(f2, f4);
            float max2 = Math.max(f, f3);
            float max3 = Math.max(f2, f4);
            Paint paint = this.mPaintGraph;
            canvas.drawLine(min, max, max2, max3, paint);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), paint);
        }

        public final void drawPathCartesianTicks(Canvas canvas, float f, float f2) {
            float[] fArr = this.mPoints;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float min = Math.min(f3, f5);
            float max = Math.max(f4, f6);
            float min2 = f - Math.min(f3, f5);
            float max2 = Math.max(f4, f6) - f2;
            String str = "" + (((int) (((min2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
            Paint paint = this.mTextPaint;
            getTextBounds(paint, str);
            Rect rect = this.mBounds;
            canvas.drawText(str, ((min2 / 2.0f) - (rect.width() / 2)) + min, f2 - 20.0f, paint);
            float min3 = Math.min(f3, f5);
            Paint paint2 = this.mPaintGraph;
            canvas.drawLine(f, f2, min3, f2, paint2);
            String str2 = "" + (((int) (((max2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
            getTextBounds(paint, str2);
            canvas.drawText(str2, f + 5.0f, max - ((max2 / 2.0f) - (rect.height() / 2)), paint);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), paint2);
        }

        public final void drawPathRelativeTicks(Canvas canvas, float f, float f2) {
            float[] fArr = this.mPoints;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float hypot = (float) Math.hypot(f3 - f5, f4 - f6);
            float f7 = f5 - f3;
            float f8 = f6 - f4;
            float f9 = (((f2 - f4) * f8) + ((f - f3) * f7)) / (hypot * hypot);
            float f10 = f3 + (f7 * f9);
            float f11 = f4 + (f9 * f8);
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f10, f11);
            float hypot2 = (float) Math.hypot(f10 - f, f11 - f2);
            String str = "" + (((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            Paint paint = this.mTextPaint;
            getTextBounds(paint, str);
            canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.mBounds.width() / 2), -20.0f, paint);
            canvas.drawLine(f, f2, f10, f11, this.mPaintGraph);
        }

        public final void drawPathScreenTicks(Canvas canvas, float f, float f2, int i, int i2) {
            StringBuilder sb = new StringBuilder("");
            MotionLayout motionLayout = MotionLayout.this;
            sb.append(((int) ((((f - (i / 2)) * 100.0f) / (motionLayout.getWidth() - i)) + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            Paint paint = this.mTextPaint;
            getTextBounds(paint, sb2);
            Rect rect = this.mBounds;
            canvas.drawText(sb2, ((f / 2.0f) - (rect.width() / 2)) + 0.0f, f2 - 20.0f, paint);
            float min = Math.min(0.0f, 1.0f);
            Paint paint2 = this.mPaintGraph;
            canvas.drawLine(f, f2, min, f2, paint2);
            String str = "" + (((int) ((((f2 - (i2 / 2)) * 100.0f) / (motionLayout.getHeight() - i2)) + 0.5d)) / 100.0f);
            getTextBounds(paint, str);
            canvas.drawText(str, f + 5.0f, 0.0f - ((f2 / 2.0f) - (rect.height() / 2)), paint);
            canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), paint2);
        }

        public final void getTextBounds(Paint paint, String str) {
            paint.getTextBounds(str, 0, str.length(), this.mBounds);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Model {
        public int mEndId;
        public int mStartId;
        public ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
        public ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
        public ConstraintSet mStart = null;
        public ConstraintSet mEnd = null;

        public Model() {
        }

        public static void copy(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
            ConstraintWidget constraintWidget;
            ArrayList arrayList = constraintWidgetContainer.mChildren;
            HashMap hashMap = new HashMap();
            hashMap.put(constraintWidgetContainer, constraintWidgetContainer2);
            constraintWidgetContainer2.mChildren.clear();
            constraintWidgetContainer2.copy(constraintWidgetContainer, hashMap);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) it.next();
                if (constraintWidget2 instanceof Barrier) {
                    constraintWidget = new Barrier();
                } else if (constraintWidget2 instanceof Guideline) {
                    constraintWidget = new Guideline();
                } else if (constraintWidget2 instanceof Flow) {
                    constraintWidget = new Flow();
                } else if (constraintWidget2 instanceof Placeholder) {
                    constraintWidget = new Placeholder();
                } else if (constraintWidget2 instanceof Helper) {
                    constraintWidget = new HelperWidget();
                } else {
                    constraintWidget = new ConstraintWidget();
                }
                constraintWidgetContainer2.mChildren.add(constraintWidget);
                ConstraintWidget constraintWidget3 = constraintWidget.mParent;
                if (constraintWidget3 != null) {
                    ((WidgetContainer) constraintWidget3).mChildren.remove(constraintWidget);
                    constraintWidget.reset();
                }
                constraintWidget.mParent = constraintWidgetContainer2;
                hashMap.put(constraintWidget2, constraintWidget);
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ConstraintWidget constraintWidget4 = (ConstraintWidget) it2.next();
                ((ConstraintWidget) hashMap.get(constraintWidget4)).copy(constraintWidget4, hashMap);
            }
        }

        public static ConstraintWidget getWidget(ConstraintWidgetContainer constraintWidgetContainer, View view) {
            if (constraintWidgetContainer.mCompanionWidget == view) {
                return constraintWidgetContainer;
            }
            ArrayList arrayList = constraintWidgetContainer.mChildren;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) arrayList.get(i);
                if (constraintWidget.mCompanionWidget == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        public final void build() {
            int i;
            SparseArray sparseArray;
            int[] iArr;
            int i2;
            Rect rect;
            Rect rect2;
            Interpolator loadInterpolator;
            MotionLayout motionLayout = MotionLayout.this;
            int childCount = motionLayout.getChildCount();
            motionLayout.mFrameArrayList.clear();
            SparseArray sparseArray2 = new SparseArray();
            int[] iArr2 = new int[childCount];
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = motionLayout.getChildAt(i3);
                MotionController motionController = new MotionController(childAt);
                int id = childAt.getId();
                iArr2[i3] = id;
                sparseArray2.put(id, motionController);
                motionLayout.mFrameArrayList.put(childAt, motionController);
            }
            int i4 = 0;
            while (i4 < childCount) {
                View childAt2 = motionLayout.getChildAt(i4);
                MotionController motionController2 = (MotionController) motionLayout.mFrameArrayList.get(childAt2);
                if (motionController2 == null) {
                    i = childCount;
                    sparseArray = sparseArray2;
                    iArr = iArr2;
                    i2 = i4;
                } else {
                    ConstraintSet constraintSet = this.mStart;
                    Rect rect3 = motionController2.mTempRect;
                    if (constraintSet != null) {
                        ConstraintWidget widget = getWidget(this.mLayoutStart, childAt2);
                        if (widget != null) {
                            Rect access$2000 = MotionLayout.access$2000(motionLayout, widget);
                            ConstraintSet constraintSet2 = this.mStart;
                            int width = motionLayout.getWidth();
                            sparseArray = sparseArray2;
                            int height = motionLayout.getHeight();
                            iArr = iArr2;
                            int i5 = constraintSet2.mRotate;
                            if (i5 != 0) {
                                MotionController.rotate(i5, width, height, access$2000, rect3);
                            }
                            MotionPaths motionPaths = motionController2.mStartMotionPath;
                            motionPaths.time = 0.0f;
                            motionPaths.position = 0.0f;
                            motionController2.readView(motionPaths);
                            i = childCount;
                            i2 = i4;
                            rect = rect3;
                            motionPaths.setBounds(access$2000.left, access$2000.top, access$2000.width(), access$2000.height());
                            ConstraintSet.Constraint constraint = constraintSet2.get(motionController2.mId);
                            motionPaths.applyParameters(constraint);
                            ConstraintSet.Motion motion = constraint.motion;
                            motionController2.mMotionStagger = motion.mMotionStagger;
                            motionController2.mStartPoint.setState(access$2000, constraintSet2, i5, motionController2.mId);
                            motionController2.mTransformPivotTarget = constraint.transform.transformPivotTarget;
                            motionController2.mQuantizeMotionSteps = motion.mQuantizeMotionSteps;
                            motionController2.mQuantizeMotionPhase = motion.mQuantizeMotionPhase;
                            Context context = motionController2.mView.getContext();
                            int i6 = motion.mQuantizeInterpolatorType;
                            String str = motion.mQuantizeInterpolatorString;
                            int i7 = motion.mQuantizeInterpolatorID;
                            if (i6 != -2) {
                                if (i6 != -1) {
                                    if (i6 != 0) {
                                        if (i6 != 1) {
                                            if (i6 != 2) {
                                                if (i6 != 4) {
                                                    if (i6 != 5) {
                                                        loadInterpolator = null;
                                                    } else {
                                                        loadInterpolator = new OvershootInterpolator();
                                                    }
                                                } else {
                                                    loadInterpolator = new BounceInterpolator();
                                                }
                                            } else {
                                                loadInterpolator = new android.view.animation.DecelerateInterpolator();
                                            }
                                        } else {
                                            loadInterpolator = new AccelerateInterpolator();
                                        }
                                    } else {
                                        loadInterpolator = new AccelerateDecelerateInterpolator();
                                    }
                                } else {
                                    final Easing interpolator = Easing.getInterpolator(str);
                                    loadInterpolator = new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                                        @Override // android.animation.TimeInterpolator
                                        public final float getInterpolation(float f) {
                                            return (float) Easing.this.get(f);
                                        }
                                    };
                                }
                            } else {
                                loadInterpolator = AnimationUtils.loadInterpolator(context, i7);
                            }
                            motionController2.mQuantizeMotionInterpolator = loadInterpolator;
                        } else {
                            i = childCount;
                            sparseArray = sparseArray2;
                            iArr = iArr2;
                            i2 = i4;
                            rect = rect3;
                            if (motionLayout.mDebugPath != 0) {
                                Log.e("MotionLayout", Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                            }
                        }
                    } else {
                        i = childCount;
                        sparseArray = sparseArray2;
                        iArr = iArr2;
                        i2 = i4;
                        rect = rect3;
                    }
                    if (this.mEnd != null) {
                        ConstraintWidget widget2 = getWidget(this.mLayoutEnd, childAt2);
                        if (widget2 != null) {
                            Rect access$20002 = MotionLayout.access$2000(motionLayout, widget2);
                            ConstraintSet constraintSet3 = this.mEnd;
                            int width2 = motionLayout.getWidth();
                            int height2 = motionLayout.getHeight();
                            int i8 = constraintSet3.mRotate;
                            if (i8 != 0) {
                                Rect rect4 = rect;
                                MotionController.rotate(i8, width2, height2, access$20002, rect4);
                                rect2 = rect4;
                            } else {
                                rect2 = access$20002;
                            }
                            MotionPaths motionPaths2 = motionController2.mEndMotionPath;
                            motionPaths2.time = 1.0f;
                            motionPaths2.position = 1.0f;
                            motionController2.readView(motionPaths2);
                            motionPaths2.setBounds(rect2.left, rect2.top, rect2.width(), rect2.height());
                            motionPaths2.applyParameters(constraintSet3.get(motionController2.mId));
                            motionController2.mEndPoint.setState(rect2, constraintSet3, i8, motionController2.mId);
                        } else if (motionLayout.mDebugPath != 0) {
                            Log.e("MotionLayout", Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
                i4 = i2 + 1;
                sparseArray2 = sparseArray;
                iArr2 = iArr;
                childCount = i;
            }
            SparseArray sparseArray3 = sparseArray2;
            int[] iArr3 = iArr2;
            int i9 = childCount;
            int i10 = 0;
            while (i10 < i9) {
                SparseArray sparseArray4 = sparseArray3;
                MotionController motionController3 = (MotionController) sparseArray4.get(iArr3[i10]);
                int i11 = motionController3.mStartMotionPath.mAnimateRelativeTo;
                if (i11 != -1) {
                    MotionController motionController4 = (MotionController) sparseArray4.get(i11);
                    motionController3.mStartMotionPath.setupRelative(motionController4, motionController4.mStartMotionPath);
                    motionController3.mEndMotionPath.setupRelative(motionController4, motionController4.mEndMotionPath);
                }
                i10++;
                sparseArray3 = sparseArray4;
            }
        }

        public final void computeStartEndSize(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            MotionLayout motionLayout = MotionLayout.this;
            int i9 = motionLayout.mLayoutWidget.mOptimizationLevel;
            if (motionLayout.mCurrentState == motionLayout.mBeginState) {
                ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutEnd;
                ConstraintSet constraintSet = this.mEnd;
                if (constraintSet != null && constraintSet.mRotate != 0) {
                    i6 = i2;
                } else {
                    i6 = i;
                }
                if (constraintSet != null && constraintSet.mRotate != 0) {
                    i7 = i;
                } else {
                    i7 = i2;
                }
                motionLayout.resolveSystem(constraintWidgetContainer, i9, i6, i7);
                ConstraintSet constraintSet2 = this.mStart;
                if (constraintSet2 != null) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    int i10 = constraintSet2.mRotate;
                    if (i10 == 0) {
                        i8 = i;
                    } else {
                        i8 = i2;
                    }
                    if (i10 == 0) {
                        i = i2;
                    }
                    motionLayout.resolveSystem(constraintWidgetContainer2, i9, i8, i);
                    return;
                }
                return;
            }
            ConstraintSet constraintSet3 = this.mStart;
            if (constraintSet3 != null) {
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                int i11 = constraintSet3.mRotate;
                if (i11 == 0) {
                    i4 = i;
                } else {
                    i4 = i2;
                }
                if (i11 == 0) {
                    i5 = i2;
                } else {
                    i5 = i;
                }
                motionLayout.resolveSystem(constraintWidgetContainer3, i9, i4, i5);
            }
            ConstraintWidgetContainer constraintWidgetContainer4 = this.mLayoutEnd;
            ConstraintSet constraintSet4 = this.mEnd;
            if (constraintSet4 != null && constraintSet4.mRotate != 0) {
                i3 = i2;
            } else {
                i3 = i;
            }
            if (constraintSet4 == null || constraintSet4.mRotate == 0) {
                i = i2;
            }
            motionLayout.resolveSystem(constraintWidgetContainer4, i9, i3, i);
        }

        public final void initFrom(ConstraintSet constraintSet, ConstraintSet constraintSet2) {
            this.mStart = constraintSet;
            this.mEnd = constraintSet2;
            this.mLayoutStart = new ConstraintWidgetContainer();
            ConstraintWidgetContainer constraintWidgetContainer = new ConstraintWidgetContainer();
            this.mLayoutEnd = constraintWidgetContainer;
            ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
            boolean z = MotionLayout.IS_IN_EDIT_MODE;
            MotionLayout motionLayout = MotionLayout.this;
            ConstraintWidgetContainer constraintWidgetContainer3 = motionLayout.mLayoutWidget;
            BasicMeasure.Measurer measurer = constraintWidgetContainer3.mMeasurer;
            constraintWidgetContainer2.mMeasurer = measurer;
            constraintWidgetContainer2.mDependencyGraph.mMeasurer = measurer;
            BasicMeasure.Measurer measurer2 = constraintWidgetContainer3.mMeasurer;
            constraintWidgetContainer.mMeasurer = measurer2;
            constraintWidgetContainer.mDependencyGraph.mMeasurer = measurer2;
            constraintWidgetContainer2.mChildren.clear();
            this.mLayoutEnd.mChildren.clear();
            copy(motionLayout.mLayoutWidget, this.mLayoutStart);
            copy(motionLayout.mLayoutWidget, this.mLayoutEnd);
            if (motionLayout.mTransitionLastPosition > 0.5d) {
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
            } else {
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
            }
            this.mLayoutStart.mIsRtl = motionLayout.isRtl();
            ConstraintWidgetContainer constraintWidgetContainer4 = this.mLayoutStart;
            constraintWidgetContainer4.mBasicMeasureSolver.updateHierarchy(constraintWidgetContainer4);
            this.mLayoutEnd.mIsRtl = motionLayout.isRtl();
            ConstraintWidgetContainer constraintWidgetContainer5 = this.mLayoutEnd;
            constraintWidgetContainer5.mBasicMeasureSolver.updateHierarchy(constraintWidgetContainer5);
            ViewGroup.LayoutParams layoutParams = motionLayout.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer6 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer6.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.mLayoutEnd.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer7 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer7.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    this.mLayoutEnd.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            }
        }

        public final void reEvaluateState() {
            boolean z;
            int i;
            boolean z2;
            boolean z3;
            int i2;
            float f;
            boolean z4;
            float f2;
            float f3;
            boolean z5;
            MotionLayout motionLayout = MotionLayout.this;
            int i3 = motionLayout.mLastWidthMeasureSpec;
            int i4 = motionLayout.mLastHeightMeasureSpec;
            int mode = View.MeasureSpec.getMode(i3);
            int mode2 = View.MeasureSpec.getMode(i4);
            motionLayout.mWidthMeasureMode = mode;
            motionLayout.mHeightMeasureMode = mode2;
            int i5 = motionLayout.mLayoutWidget.mOptimizationLevel;
            computeStartEndSize(i3, i4);
            int i6 = 0;
            boolean z6 = true;
            if ((motionLayout.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                computeStartEndSize(i3, i4);
                motionLayout.mStartWrapWidth = this.mLayoutStart.getWidth();
                motionLayout.mStartWrapHeight = this.mLayoutStart.getHeight();
                motionLayout.mEndWrapWidth = this.mLayoutEnd.getWidth();
                int height = this.mLayoutEnd.getHeight();
                motionLayout.mEndWrapHeight = height;
                if (motionLayout.mStartWrapWidth == motionLayout.mEndWrapWidth && motionLayout.mStartWrapHeight == height) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                motionLayout.mMeasureDuringTransition = z5;
            }
            int i7 = motionLayout.mStartWrapWidth;
            int i8 = motionLayout.mStartWrapHeight;
            int i9 = motionLayout.mWidthMeasureMode;
            if (i9 == Integer.MIN_VALUE || i9 == 0) {
                i7 = (int) ((motionLayout.mPostInterpolationPosition * (motionLayout.mEndWrapWidth - i7)) + i7);
            }
            int i10 = i7;
            int i11 = motionLayout.mHeightMeasureMode;
            if (i11 != Integer.MIN_VALUE && i11 != 0) {
                i = i8;
            } else {
                i = (int) ((motionLayout.mPostInterpolationPosition * (motionLayout.mEndWrapHeight - i8)) + i8);
            }
            ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutStart;
            if (!constraintWidgetContainer.mWidthMeasuredTooSmall && !this.mLayoutEnd.mWidthMeasuredTooSmall) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (!constraintWidgetContainer.mHeightMeasuredTooSmall && !this.mLayoutEnd.mHeightMeasuredTooSmall) {
                z3 = false;
            } else {
                z3 = true;
            }
            motionLayout.resolveMeasuredDimension(z2, i3, i4, i10, i, z3);
            int childCount = motionLayout.getChildCount();
            motionLayout.mModel.build();
            motionLayout.mInTransition = true;
            SparseArray sparseArray = new SparseArray();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = motionLayout.getChildAt(i12);
                sparseArray.put(childAt.getId(), (MotionController) motionLayout.mFrameArrayList.get(childAt));
            }
            int width = motionLayout.getWidth();
            int height2 = motionLayout.getHeight();
            MotionScene.Transition transition = motionLayout.mScene.mCurrentTransition;
            if (transition != null) {
                i2 = transition.mPathMotionArc;
            } else {
                i2 = -1;
            }
            if (i2 != -1) {
                for (int i13 = 0; i13 < childCount; i13++) {
                    MotionController motionController = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.getChildAt(i13));
                    if (motionController != null) {
                        motionController.mPathMotionArc = i2;
                    }
                }
            }
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            int[] iArr = new int[motionLayout.mFrameArrayList.size()];
            int i14 = 0;
            for (int i15 = 0; i15 < childCount; i15++) {
                MotionController motionController2 = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.getChildAt(i15));
                int i16 = motionController2.mStartMotionPath.mAnimateRelativeTo;
                if (i16 != -1) {
                    sparseBooleanArray.put(i16, true);
                    iArr[i14] = motionController2.mStartMotionPath.mAnimateRelativeTo;
                    i14++;
                }
            }
            if (motionLayout.mDecoratorsHelpers != null) {
                for (int i17 = 0; i17 < i14; i17++) {
                    MotionController motionController3 = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.findViewById(iArr[i17]));
                    if (motionController3 != null) {
                        motionLayout.mScene.getKeyFrames(motionController3);
                    }
                }
                Iterator it = motionLayout.mDecoratorsHelpers.iterator();
                while (it.hasNext()) {
                    ((MotionHelper) it.next()).onPreSetup(motionLayout, motionLayout.mFrameArrayList);
                }
                for (int i18 = 0; i18 < i14; i18++) {
                    MotionController motionController4 = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.findViewById(iArr[i18]));
                    if (motionController4 != null) {
                        motionController4.setup(width, height2, System.nanoTime());
                    }
                }
            } else {
                for (int i19 = 0; i19 < i14; i19++) {
                    MotionController motionController5 = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.findViewById(iArr[i19]));
                    if (motionController5 != null) {
                        motionLayout.mScene.getKeyFrames(motionController5);
                        motionController5.setup(width, height2, System.nanoTime());
                    }
                }
            }
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt2 = motionLayout.getChildAt(i20);
                MotionController motionController6 = (MotionController) motionLayout.mFrameArrayList.get(childAt2);
                if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                    motionLayout.mScene.getKeyFrames(motionController6);
                    motionController6.setup(width, height2, System.nanoTime());
                }
            }
            MotionScene.Transition transition2 = motionLayout.mScene.mCurrentTransition;
            if (transition2 != null) {
                f = transition2.mStagger;
            } else {
                f = 0.0f;
            }
            if (f != 0.0f) {
                if (f < 0.0d) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                float abs = Math.abs(f);
                float f4 = -3.4028235E38f;
                float f5 = Float.MAX_VALUE;
                float f6 = -3.4028235E38f;
                float f7 = Float.MAX_VALUE;
                int i21 = 0;
                while (true) {
                    if (i21 < childCount) {
                        MotionController motionController7 = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.getChildAt(i21));
                        if (!Float.isNaN(motionController7.mMotionStagger)) {
                            break;
                        }
                        MotionPaths motionPaths = motionController7.mEndMotionPath;
                        float f8 = motionPaths.x;
                        float f9 = motionPaths.y;
                        if (z4) {
                            f3 = f9 - f8;
                        } else {
                            f3 = f9 + f8;
                        }
                        f7 = Math.min(f7, f3);
                        f6 = Math.max(f6, f3);
                        i21++;
                    } else {
                        z6 = false;
                        break;
                    }
                }
                if (z6) {
                    for (int i22 = 0; i22 < childCount; i22++) {
                        MotionController motionController8 = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.getChildAt(i22));
                        if (!Float.isNaN(motionController8.mMotionStagger)) {
                            f5 = Math.min(f5, motionController8.mMotionStagger);
                            f4 = Math.max(f4, motionController8.mMotionStagger);
                        }
                    }
                    while (i6 < childCount) {
                        MotionController motionController9 = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.getChildAt(i6));
                        if (!Float.isNaN(motionController9.mMotionStagger)) {
                            motionController9.mStaggerScale = 1.0f / (1.0f - abs);
                            if (z4) {
                                motionController9.mStaggerOffset = abs - (((f4 - motionController9.mMotionStagger) / (f4 - f5)) * abs);
                            } else {
                                motionController9.mStaggerOffset = abs - (((motionController9.mMotionStagger - f5) * abs) / (f4 - f5));
                            }
                        }
                        i6++;
                    }
                    return;
                }
                while (i6 < childCount) {
                    MotionController motionController10 = (MotionController) motionLayout.mFrameArrayList.get(motionLayout.getChildAt(i6));
                    MotionPaths motionPaths2 = motionController10.mEndMotionPath;
                    float f10 = motionPaths2.x;
                    float f11 = motionPaths2.y;
                    if (z4) {
                        f2 = f11 - f10;
                    } else {
                        f2 = f11 + f10;
                    }
                    motionController10.mStaggerScale = 1.0f / (1.0f - abs);
                    motionController10.mStaggerOffset = abs - (((f2 - f7) * abs) / (f6 - f7));
                    i6++;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void setupConstraintWidget(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
            ConstraintSet.Constraint constraint;
            ConstraintSet.Constraint constraint2;
            SparseArray sparseArray = new SparseArray();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, constraintWidgetContainer);
            MotionLayout motionLayout = MotionLayout.this;
            sparseArray.put(motionLayout.getId(), constraintWidgetContainer);
            if (constraintSet != null && constraintSet.mRotate != 0) {
                ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutEnd;
                int i = motionLayout.mLayoutWidget.mOptimizationLevel;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(motionLayout.getHeight(), VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(motionLayout.getWidth(), VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
                boolean z = MotionLayout.IS_IN_EDIT_MODE;
                motionLayout.resolveSystem(constraintWidgetContainer2, i, makeMeasureSpec, makeMeasureSpec2);
            }
            Iterator it = constraintWidgetContainer.mChildren.iterator();
            while (it.hasNext()) {
                ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
                constraintWidget.mAnimated = true;
                sparseArray.put(((View) constraintWidget.mCompanionWidget).getId(), constraintWidget);
            }
            Iterator it2 = constraintWidgetContainer.mChildren.iterator();
            while (it2.hasNext()) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) it2.next();
                View view = (View) constraintWidget2.mCompanionWidget;
                int id = view.getId();
                HashMap hashMap = constraintSet.mConstraints;
                if (hashMap.containsKey(Integer.valueOf(id)) && (constraint2 = (ConstraintSet.Constraint) hashMap.get(Integer.valueOf(id))) != null) {
                    constraint2.applyTo(layoutParams);
                }
                constraintWidget2.setWidth(constraintSet.get(view.getId()).layout.mWidth);
                constraintWidget2.setHeight(constraintSet.get(view.getId()).layout.mHeight);
                if (view instanceof ConstraintHelper) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) view;
                    int id2 = constraintHelper.getId();
                    HashMap hashMap2 = constraintSet.mConstraints;
                    if (hashMap2.containsKey(Integer.valueOf(id2)) && (constraint = (ConstraintSet.Constraint) hashMap2.get(Integer.valueOf(id2))) != null && (constraintWidget2 instanceof HelperWidget)) {
                        constraintHelper.loadParameters(constraint, (HelperWidget) constraintWidget2, layoutParams, sparseArray);
                    }
                    if (view instanceof androidx.constraintlayout.widget.Barrier) {
                        ((androidx.constraintlayout.widget.Barrier) view).validateParams();
                    }
                }
                layoutParams.resolveLayoutDirection(motionLayout.getLayoutDirection());
                MotionLayout motionLayout2 = MotionLayout.this;
                boolean z2 = MotionLayout.IS_IN_EDIT_MODE;
                motionLayout2.applyConstraintsFromLayoutParams(false, view, constraintWidget2, layoutParams, sparseArray);
                if (constraintSet.get(view.getId()).propertySet.mVisibilityMode == 1) {
                    constraintWidget2.mVisibility = view.getVisibility();
                } else {
                    constraintWidget2.mVisibility = constraintSet.get(view.getId()).propertySet.visibility;
                }
            }
            Iterator it3 = constraintWidgetContainer.mChildren.iterator();
            while (it3.hasNext()) {
                ConstraintWidget constraintWidget3 = (ConstraintWidget) it3.next();
                if (constraintWidget3 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper2 = (ConstraintHelper) constraintWidget3.mCompanionWidget;
                    Helper helper = (Helper) constraintWidget3;
                    constraintHelper2.updatePreLayout(helper, sparseArray);
                    VirtualLayout virtualLayout = (VirtualLayout) helper;
                    for (int i2 = 0; i2 < virtualLayout.mWidgetsCount; i2++) {
                        ConstraintWidget constraintWidget4 = virtualLayout.mWidgets[i2];
                        if (constraintWidget4 != null) {
                            constraintWidget4.mInVirtualLayout = true;
                        }
                    }
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MyTracker {
        public static final MyTracker me = new MyTracker();
        public VelocityTracker tracker;

        private MyTracker() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class StateCache {
        public float mProgress = Float.NaN;
        public float mVelocity = Float.NaN;
        public int startState = -1;
        public int endState = -1;

        public StateCache() {
        }

        public final void apply() {
            int i = this.startState;
            MotionLayout motionLayout = MotionLayout.this;
            if (i != -1 || this.endState != -1) {
                if (i == -1) {
                    int i2 = this.endState;
                    if (!motionLayout.isAttachedToWindow()) {
                        if (motionLayout.mStateCache == null) {
                            motionLayout.mStateCache = new StateCache();
                        }
                        motionLayout.mStateCache.endState = i2;
                    } else {
                        motionLayout.transitionToState$1(i2, -1);
                    }
                } else {
                    int i3 = this.endState;
                    if (i3 == -1) {
                        motionLayout.setState(i);
                    } else {
                        motionLayout.setTransition(i, i3);
                    }
                }
                motionLayout.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.mVelocity)) {
                if (Float.isNaN(this.mProgress)) {
                    return;
                }
                motionLayout.setProgress(this.mProgress);
                return;
            }
            float f = this.mProgress;
            float f2 = this.mVelocity;
            if (!motionLayout.isAttachedToWindow()) {
                if (motionLayout.mStateCache == null) {
                    motionLayout.mStateCache = new StateCache();
                }
                StateCache stateCache = motionLayout.mStateCache;
                stateCache.mProgress = f;
                stateCache.mVelocity = f2;
            } else {
                motionLayout.setProgress(f);
                motionLayout.setState(TransitionState.MOVING);
                motionLayout.mLastVelocity = f2;
                float f3 = 0.0f;
                if (f2 != 0.0f) {
                    if (f2 > 0.0f) {
                        f3 = 1.0f;
                    }
                    motionLayout.animateTo(f3);
                } else if (f != 0.0f && f != 1.0f) {
                    if (f > 0.5f) {
                        f3 = 1.0f;
                    }
                    motionLayout.animateTo(f3);
                }
            }
            this.mProgress = Float.NaN;
            this.mVelocity = Float.NaN;
            this.startState = -1;
            this.endState = -1;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface TransitionListener {
        void onTransitionChange();

        void onTransitionCompleted(int i);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(Context context) {
        super(context);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mPreRotate = new HashMap();
        this.mTempRect = new Rect();
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList();
        init(null);
    }

    public static Rect access$2000(MotionLayout motionLayout, ConstraintWidget constraintWidget) {
        motionLayout.mTempRect.top = constraintWidget.getY();
        motionLayout.mTempRect.left = constraintWidget.getX();
        Rect rect = motionLayout.mTempRect;
        int width = constraintWidget.getWidth();
        Rect rect2 = motionLayout.mTempRect;
        rect.right = width + rect2.left;
        int height = constraintWidget.getHeight();
        Rect rect3 = motionLayout.mTempRect;
        rect2.bottom = height + rect3.top;
        return rect3;
    }

    public final void animateTo(float f) {
        int i;
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        float f2 = this.mTransitionLastPosition;
        float f3 = this.mTransitionPosition;
        if (f2 != f3 && this.mTransitionInstantly) {
            this.mTransitionLastPosition = f3;
        }
        float f4 = this.mTransitionLastPosition;
        if (f4 == f) {
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = f;
        MotionScene.Transition transition = motionScene.mCurrentTransition;
        if (transition != null) {
            i = transition.mDuration;
        } else {
            i = motionScene.mDefaultDuration;
        }
        this.mTransitionDuration = i / 1000.0f;
        setProgress(f);
        Interpolator interpolator = null;
        this.mInterpolator = null;
        final MotionScene motionScene2 = this.mScene;
        MotionScene.Transition transition2 = motionScene2.mCurrentTransition;
        int i2 = transition2.mDefaultInterpolator;
        if (i2 != -2) {
            if (i2 != -1) {
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 4) {
                                if (i2 != 5) {
                                    if (i2 == 6) {
                                        interpolator = new AnticipateInterpolator();
                                    }
                                } else {
                                    interpolator = new OvershootInterpolator();
                                }
                            } else {
                                interpolator = new BounceInterpolator();
                            }
                        } else {
                            interpolator = new android.view.animation.DecelerateInterpolator();
                        }
                    } else {
                        interpolator = new AccelerateInterpolator();
                    }
                } else {
                    interpolator = new AccelerateDecelerateInterpolator();
                }
            } else {
                final Easing interpolator2 = Easing.getInterpolator(transition2.mDefaultInterpolatorString);
                interpolator = new Interpolator(motionScene2, interpolator2) { // from class: androidx.constraintlayout.motion.widget.MotionScene.1
                    public final /* synthetic */ Easing val$easing;

                    {
                        this.val$easing = interpolator2;
                    }

                    @Override // android.animation.TimeInterpolator
                    public final float getInterpolation(float f5) {
                        return (float) this.val$easing.get(f5);
                    }
                };
            }
        } else {
            interpolator = AnimationUtils.loadInterpolator(motionScene2.mMotionLayout.getContext(), motionScene2.mCurrentTransition.mDefaultInterpolatorID);
        }
        this.mProgressInterpolator = interpolator;
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = System.nanoTime();
        this.mInTransition = true;
        this.mTransitionPosition = f4;
        this.mTransitionLastPosition = f4;
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:215:0x051d  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0531 A[ORIG_RETURN, RETURN] */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dispatchDraw(android.graphics.Canvas r34) {
        /*
            Method dump skipped, instructions count: 1330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.dispatchDraw(android.graphics.Canvas):void");
    }

    public final void endTrigger(boolean z) {
        float f;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            MotionController motionController = (MotionController) this.mFrameArrayList.get(getChildAt(i));
            if (motionController != null && "button".equals(Debug.getName(motionController.mView)) && motionController.mKeyTriggers != null) {
                int i2 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = motionController.mKeyTriggers;
                    if (i2 < keyTriggerArr.length) {
                        KeyTrigger keyTrigger = keyTriggerArr[i2];
                        if (z) {
                            f = -100.0f;
                        } else {
                            f = 100.0f;
                        }
                        keyTrigger.conditionallyFire(motionController.mView, f);
                        i2++;
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void evaluate(boolean r23) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.evaluate(boolean):void");
    }

    public final void fireTransitionChange() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        CopyOnWriteArrayList copyOnWriteArrayList2 = this.mTransitionListeners;
        if (copyOnWriteArrayList2 != null && !copyOnWriteArrayList2.isEmpty() && this.mListenerPosition != this.mTransitionPosition) {
            if (this.mListenerState != -1 && (copyOnWriteArrayList = this.mTransitionListeners) != null) {
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    ((TransitionListener) it.next()).getClass();
                }
            }
            this.mListenerState = -1;
            this.mListenerPosition = this.mTransitionPosition;
            CopyOnWriteArrayList copyOnWriteArrayList3 = this.mTransitionListeners;
            if (copyOnWriteArrayList3 != null) {
                Iterator it2 = copyOnWriteArrayList3.iterator();
                while (it2.hasNext()) {
                    ((TransitionListener) it2.next()).onTransitionChange();
                }
            }
        }
    }

    public final void fireTransitionCompleted() {
        int i;
        CopyOnWriteArrayList copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty() && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (!this.mTransitionCompleted.isEmpty()) {
                i = ((Integer) this.mTransitionCompleted.get(r0.size() - 1)).intValue();
            } else {
                i = -1;
            }
            int i2 = this.mCurrentState;
            if (i != i2 && i2 != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i2));
            }
        }
        processTransitionCompleted();
        Runnable runnable = this.mOnComplete;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void getAnchorDpDt(int i, float f, float f2, float f3, float[] fArr) {
        String resourceName;
        HashMap hashMap = this.mFrameArrayList;
        View viewById = getViewById(i);
        MotionController motionController = (MotionController) hashMap.get(viewById);
        if (motionController != null) {
            motionController.getDpDt(f, f2, f3, fArr);
            viewById.getY();
        } else {
            if (viewById == null) {
                resourceName = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("", i);
            } else {
                resourceName = viewById.getContext().getResources().getResourceName(i);
            }
            MotionLayout$$ExternalSyntheticOutline0.m("WARNING could not find view id ", resourceName, "MotionLayout");
        }
    }

    public final ConstraintSet getConstraintSet(int i) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSet(i);
    }

    public final MotionScene.Transition getTransition(int i) {
        Iterator it = this.mScene.mTransitionList.iterator();
        while (it.hasNext()) {
            MotionScene.Transition transition = (MotionScene.Transition) it.next();
            if (transition.mId == i) {
                return transition;
            }
        }
        return null;
    }

    public final boolean handlesTouchEvent(float f, float f2, MotionEvent motionEvent, View view) {
        boolean z;
        boolean onTouchEvent;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (handlesTouchEvent((r3.getLeft() + f) - view.getScrollX(), (r3.getTop() + f2) - view.getScrollY(), motionEvent, viewGroup.getChildAt(childCount))) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (!z) {
            this.mBoundsCheck.set(f, f2, (view.getRight() + f) - view.getLeft(), (view.getBottom() + f2) - view.getTop());
            if (motionEvent.getAction() != 0 || this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY())) {
                float f3 = -f;
                float f4 = -f2;
                Matrix matrix = view.getMatrix();
                if (matrix.isIdentity()) {
                    motionEvent.offsetLocation(f3, f4);
                    onTouchEvent = view.onTouchEvent(motionEvent);
                    motionEvent.offsetLocation(-f3, -f4);
                } else {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(f3, f4);
                    if (this.mInverseMatrix == null) {
                        this.mInverseMatrix = new Matrix();
                    }
                    matrix.invert(this.mInverseMatrix);
                    obtain.transform(this.mInverseMatrix);
                    onTouchEvent = view.onTouchEvent(obtain);
                    obtain.recycle();
                }
                if (onTouchEvent) {
                    return true;
                }
            }
        }
        return z;
    }

    public final void init(AttributeSet attributeSet) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        int i = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            boolean z = true;
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = 2;
                if (index == 2) {
                    this.mScene = new MotionScene(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                } else if (index == 1) {
                    this.mCurrentState = obtainStyledAttributes.getResourceId(index, -1);
                } else if (index == 4) {
                    this.mTransitionGoalPosition = obtainStyledAttributes.getFloat(index, 0.0f);
                    this.mInTransition = true;
                } else if (index == 0) {
                    z = obtainStyledAttributes.getBoolean(index, z);
                } else if (index == 5) {
                    if (this.mDebugPath == 0) {
                        if (!obtainStyledAttributes.getBoolean(index, false)) {
                            i3 = 0;
                        }
                        this.mDebugPath = i3;
                    }
                } else if (index == 3) {
                    this.mDebugPath = obtainStyledAttributes.getInt(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
            if (this.mScene == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z) {
                this.mScene = null;
            }
        }
        if (this.mDebugPath != 0) {
            MotionScene motionScene2 = this.mScene;
            if (motionScene2 == null) {
                Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            } else {
                int startId = motionScene2.getStartId();
                MotionScene motionScene3 = this.mScene;
                ConstraintSet constraintSet = motionScene3.getConstraintSet(motionScene3.getStartId());
                String name = Debug.getName(startId, getContext());
                int childCount = getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    int id = childAt.getId();
                    if (id == -1) {
                        StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("CHECK: ", name, " ALL VIEWS SHOULD HAVE ID's ");
                        m.append(childAt.getClass().getName());
                        m.append(" does not!");
                        Log.w("MotionLayout", m.toString());
                    }
                    if (constraintSet.getConstraint(id) == null) {
                        StringBuilder m2 = ActivityResultRegistry$$ExternalSyntheticOutline0.m("CHECK: ", name, " NO CONSTRAINTS for ");
                        m2.append(Debug.getName(childAt));
                        Log.w("MotionLayout", m2.toString());
                    }
                }
                Integer[] numArr = (Integer[]) constraintSet.mConstraints.keySet().toArray(new Integer[0]);
                int length = numArr.length;
                int[] iArr = new int[length];
                for (int i5 = 0; i5 < length; i5++) {
                    iArr[i5] = numArr[i5].intValue();
                }
                for (int i6 = 0; i6 < length; i6++) {
                    int i7 = iArr[i6];
                    String name2 = Debug.getName(i7, getContext());
                    if (findViewById(iArr[i6]) == null) {
                        Log.w("MotionLayout", "CHECK: " + name + " NO View matches id " + name2);
                    }
                    if (constraintSet.get(i7).layout.mHeight == -1) {
                        Log.w("MotionLayout", MotionLayout$$ExternalSyntheticOutline0.m("CHECK: ", name, "(", name2, ") no LAYOUT_HEIGHT"));
                    }
                    if (constraintSet.get(i7).layout.mWidth == -1) {
                        Log.w("MotionLayout", MotionLayout$$ExternalSyntheticOutline0.m("CHECK: ", name, "(", name2, ") no LAYOUT_HEIGHT"));
                    }
                }
                SparseIntArray sparseIntArray = new SparseIntArray();
                SparseIntArray sparseIntArray2 = new SparseIntArray();
                Iterator it = this.mScene.mTransitionList.iterator();
                while (it.hasNext()) {
                    MotionScene.Transition transition = (MotionScene.Transition) it.next();
                    MotionScene.Transition transition2 = this.mScene.mCurrentTransition;
                    if (transition.mConstraintSetStart == transition.mConstraintSetEnd) {
                        Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
                    }
                    int i8 = transition.mConstraintSetStart;
                    int i9 = transition.mConstraintSetEnd;
                    String name3 = Debug.getName(i8, getContext());
                    String name4 = Debug.getName(i9, getContext());
                    if (sparseIntArray.get(i8) == i9) {
                        Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + name3 + "->" + name4);
                    }
                    if (sparseIntArray2.get(i9) == i8) {
                        Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + name3 + "->" + name4);
                    }
                    sparseIntArray.put(i8, i9);
                    sparseIntArray2.put(i9, i8);
                    if (this.mScene.getConstraintSet(i8) == null) {
                        Log.e("MotionLayout", " no such constraintSetStart " + name3);
                    }
                    if (this.mScene.getConstraintSet(i9) == null) {
                        Log.e("MotionLayout", " no such constraintSetEnd " + name3);
                    }
                }
            }
        }
        if (this.mCurrentState == -1 && (motionScene = this.mScene) != null) {
            this.mCurrentState = motionScene.getStartId();
            this.mBeginState = this.mScene.getStartId();
            MotionScene.Transition transition3 = this.mScene.mCurrentTransition;
            if (transition3 != null) {
                i = transition3.mConstraintSetEnd;
            }
            this.mEndState = i;
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        MotionScene.Transition transition;
        int i;
        boolean z;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            display.getRotation();
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (i = this.mCurrentState) != -1) {
            ConstraintSet constraintSet = motionScene.getConstraintSet(i);
            MotionScene motionScene2 = this.mScene;
            int i2 = 0;
            while (true) {
                SparseArray sparseArray = motionScene2.mConstraintSetMap;
                if (i2 >= sparseArray.size()) {
                    break;
                }
                int keyAt = sparseArray.keyAt(i2);
                SparseIntArray sparseIntArray = motionScene2.mDeriveMap;
                int i3 = sparseIntArray.get(keyAt);
                int size = sparseIntArray.size();
                while (i3 > 0) {
                    if (i3 != keyAt) {
                        int i4 = size - 1;
                        if (size >= 0) {
                            i3 = sparseIntArray.get(i3);
                            size = i4;
                        }
                    }
                    z = true;
                    break;
                }
                z = false;
                if (z) {
                    Log.e("MotionScene", "Cannot be derived from yourself");
                    break;
                } else {
                    motionScene2.readConstraintChain(keyAt, this);
                    i2++;
                }
            }
            ArrayList arrayList = this.mDecoratorsHelpers;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((MotionHelper) it.next()).getClass();
                }
            }
            if (constraintSet != null) {
                constraintSet.applyTo(this);
            }
            this.mBeginState = this.mCurrentState;
        }
        onNewStateAttachHandlers();
        StateCache stateCache = this.mStateCache;
        if (stateCache != null) {
            stateCache.apply();
            return;
        }
        MotionScene motionScene3 = this.mScene;
        if (motionScene3 != null && (transition = motionScene3.mCurrentTransition) != null && transition.mAutoTransition == 4) {
            animateTo(1.0f);
            this.mOnComplete = null;
            setState(TransitionState.SETUP);
            setState(TransitionState.MOVING);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        TouchResponse touchResponse;
        int i;
        RectF touchRegion;
        MotionLayout motionLayout;
        int i2;
        boolean z;
        ViewTransition viewTransition;
        int i3;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled) {
            ViewTransitionController viewTransitionController = motionScene.mViewTransitionController;
            if (viewTransitionController != null && (i2 = (motionLayout = viewTransitionController.mMotionLayout).mCurrentState) != -1) {
                HashSet hashSet = viewTransitionController.mRelatedViews;
                ArrayList arrayList = viewTransitionController.viewTransitions;
                if (hashSet == null) {
                    viewTransitionController.mRelatedViews = new HashSet();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ViewTransition viewTransition2 = (ViewTransition) it.next();
                        int childCount = motionLayout.getChildCount();
                        for (int i4 = 0; i4 < childCount; i4++) {
                            View childAt = motionLayout.getChildAt(i4);
                            if (viewTransition2.matchesView(childAt)) {
                                childAt.getId();
                                viewTransitionController.mRelatedViews.add(childAt);
                            }
                        }
                    }
                }
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                Rect rect = new Rect();
                int action = motionEvent.getAction();
                ArrayList arrayList2 = viewTransitionController.animations;
                int i5 = 2;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    Iterator it2 = viewTransitionController.animations.iterator();
                    while (it2.hasNext()) {
                        ViewTransition.Animate animate = (ViewTransition.Animate) it2.next();
                        if (action != 1) {
                            if (action != 2) {
                                animate.getClass();
                            } else {
                                View view = animate.mMC.mView;
                                Rect rect2 = animate.mTempRec;
                                view.getHitRect(rect2);
                                if (!rect2.contains((int) x, (int) y) && !animate.reverse) {
                                    animate.reverse();
                                }
                            }
                        } else if (!animate.reverse) {
                            animate.reverse();
                        }
                    }
                }
                if (action == 0 || action == 1) {
                    ConstraintSet constraintSet = motionLayout.getConstraintSet(i2);
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        ViewTransition viewTransition3 = (ViewTransition) it3.next();
                        int i6 = viewTransition3.mOnStateTransition;
                        if (i6 != 1 ? !(i6 != i5 ? i6 != 3 || action != 0 : action != 1) : action == 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            Iterator it4 = viewTransitionController.mRelatedViews.iterator();
                            while (it4.hasNext()) {
                                View view2 = (View) it4.next();
                                if (viewTransition3.matchesView(view2)) {
                                    view2.getHitRect(rect);
                                    if (rect.contains((int) x, (int) y)) {
                                        viewTransition = viewTransition3;
                                        i3 = i5;
                                        viewTransition3.applyTransition(viewTransitionController, viewTransitionController.mMotionLayout, i2, constraintSet, view2);
                                    } else {
                                        viewTransition = viewTransition3;
                                        i3 = i5;
                                    }
                                    viewTransition3 = viewTransition;
                                    i5 = i3;
                                }
                            }
                        }
                    }
                }
            }
            MotionScene.Transition transition = this.mScene.mCurrentTransition;
            if (transition != null && (!transition.mDisable) && (touchResponse = transition.mTouchResponse) != null) {
                if ((motionEvent.getAction() != 0 || (touchRegion = touchResponse.getTouchRegion(this, new RectF())) == null || touchRegion.contains(motionEvent.getX(), motionEvent.getY())) && (i = touchResponse.mTouchRegionId) != -1) {
                    View view3 = this.mRegionView;
                    if (view3 == null || view3.getId() != i) {
                        this.mRegionView = findViewById(i);
                    }
                    if (this.mRegionView != null) {
                        this.mBoundsCheck.set(r1.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
                        if (this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY()) && !handlesTouchEvent(this.mRegionView.getLeft(), this.mRegionView.getTop(), motionEvent, this.mRegionView)) {
                            return onTouchEvent(motionEvent);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mInLayout = true;
        try {
            if (this.mScene == null) {
                super.onLayout(z, i, i2, i3, i4);
                return;
            }
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (this.mLastLayoutWidth != i5 || this.mLastLayoutHeight != i6) {
                rebuildScene();
                evaluate(true);
            }
            this.mLastLayoutWidth = i5;
            this.mLastLayoutHeight = i6;
        } finally {
            this.mInLayout = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0053, code lost:
    
        if (r9 != false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f7  */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v5 */
    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedPreScroll(final View view, int i, int i2, int[] iArr, int i3) {
        MotionScene.Transition transition;
        boolean z;
        boolean z2;
        ?? r1;
        TouchResponse touchResponse;
        float f;
        float f2;
        TouchResponse touchResponse2;
        TouchResponse touchResponse3;
        TouchResponse touchResponse4;
        int i4;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (transition = motionScene.mCurrentTransition) != null && (!transition.mDisable)) {
            int i5 = -1;
            if (z && (touchResponse4 = transition.mTouchResponse) != null && (i4 = touchResponse4.mTouchRegionId) != -1 && view.getId() != i4) {
                return;
            }
            MotionScene.Transition transition2 = motionScene.mCurrentTransition;
            if (transition2 != null && (touchResponse3 = transition2.mTouchResponse) != null) {
                z2 = touchResponse3.mMoveWhenScrollAtTop;
            } else {
                z2 = false;
            }
            if (z2) {
                TouchResponse touchResponse5 = transition.mTouchResponse;
                if (touchResponse5 != null && (touchResponse5.mFlags & 4) != 0) {
                    i5 = i2;
                }
                float f3 = this.mTransitionPosition;
                if ((f3 == 1.0f || f3 == 0.0f) && view.canScrollVertically(i5)) {
                    return;
                }
            }
            TouchResponse touchResponse6 = transition.mTouchResponse;
            if (touchResponse6 != null && (touchResponse6.mFlags & 1) != 0) {
                float f4 = i;
                float f5 = i2;
                MotionScene.Transition transition3 = motionScene.mCurrentTransition;
                if (transition3 != null && (touchResponse2 = transition3.mTouchResponse) != null) {
                    MotionLayout motionLayout = touchResponse2.mMotionLayout;
                    motionLayout.getAnchorDpDt(touchResponse2.mTouchAnchorId, motionLayout.mTransitionLastPosition, touchResponse2.mTouchAnchorX, touchResponse2.mTouchAnchorY, touchResponse2.mAnchorDpDt);
                    float f6 = touchResponse2.mTouchDirectionX;
                    float[] fArr = touchResponse2.mAnchorDpDt;
                    if (f6 != 0.0f) {
                        if (fArr[0] == 0.0f) {
                            fArr[0] = 1.0E-7f;
                        }
                        f2 = (f4 * f6) / fArr[0];
                    } else {
                        if (fArr[1] == 0.0f) {
                            fArr[1] = 1.0E-7f;
                        }
                        f2 = (f5 * touchResponse2.mTouchDirectionY) / fArr[1];
                    }
                } else {
                    f2 = 0.0f;
                }
                float f7 = this.mTransitionLastPosition;
                if ((f7 <= 0.0f && f2 < 0.0f) || (f7 >= 1.0f && f2 > 0.0f)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            view.setNestedScrollingEnabled(true);
                        }
                    });
                    return;
                }
            }
            float f8 = this.mTransitionPosition;
            long nanoTime = System.nanoTime();
            float f9 = i;
            this.mScrollTargetDX = f9;
            float f10 = i2;
            this.mScrollTargetDY = f10;
            this.mScrollTargetDT = (float) ((nanoTime - this.mScrollTargetTime) * 1.0E-9d);
            this.mScrollTargetTime = nanoTime;
            MotionScene.Transition transition4 = motionScene.mCurrentTransition;
            if (transition4 != null && (touchResponse = transition4.mTouchResponse) != null) {
                MotionLayout motionLayout2 = touchResponse.mMotionLayout;
                float f11 = motionLayout2.mTransitionLastPosition;
                if (!touchResponse.mDragStarted) {
                    touchResponse.mDragStarted = true;
                    motionLayout2.setProgress(f11);
                }
                touchResponse.mMotionLayout.getAnchorDpDt(touchResponse.mTouchAnchorId, f11, touchResponse.mTouchAnchorX, touchResponse.mTouchAnchorY, touchResponse.mAnchorDpDt);
                float f12 = touchResponse.mTouchDirectionX;
                float[] fArr2 = touchResponse.mAnchorDpDt;
                if (Math.abs((touchResponse.mTouchDirectionY * fArr2[1]) + (f12 * fArr2[0])) < 0.01d) {
                    fArr2[0] = 0.01f;
                    fArr2[1] = 0.01f;
                }
                float f13 = touchResponse.mTouchDirectionX;
                if (f13 != 0.0f) {
                    f = (f9 * f13) / fArr2[0];
                } else {
                    f = (f10 * touchResponse.mTouchDirectionY) / fArr2[1];
                }
                float max = Math.max(Math.min(f11 + f, 1.0f), 0.0f);
                if (max != motionLayout2.mTransitionLastPosition) {
                    motionLayout2.setProgress(max);
                }
            }
            if (f8 != this.mTransitionPosition) {
                iArr[0] = i;
                r1 = 1;
                iArr[1] = i2;
            } else {
                r1 = 1;
            }
            evaluate(false);
            if (iArr[0] != 0 || iArr[r1] != 0) {
                this.mUndergoingMotion = r1;
            }
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        this.mScrollTargetTime = System.nanoTime();
        this.mScrollTargetDT = 0.0f;
        this.mScrollTargetDX = 0.0f;
        this.mScrollTargetDY = 0.0f;
    }

    public final void onNewStateAttachHandlers() {
        MotionScene.Transition transition;
        final TouchResponse touchResponse;
        View view;
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        if (motionScene.autoTransition(this.mCurrentState, this)) {
            requestLayout();
            return;
        }
        int i = this.mCurrentState;
        if (i != -1) {
            MotionScene motionScene2 = this.mScene;
            ArrayList arrayList = motionScene2.mTransitionList;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                MotionScene.Transition transition2 = (MotionScene.Transition) it.next();
                if (transition2.mOnClicks.size() > 0) {
                    Iterator it2 = transition2.mOnClicks.iterator();
                    while (it2.hasNext()) {
                        ((MotionScene.Transition.TransitionOnClick) it2.next()).removeOnClickListeners(this);
                    }
                }
            }
            ArrayList arrayList2 = motionScene2.mAbstractTransitionList;
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                MotionScene.Transition transition3 = (MotionScene.Transition) it3.next();
                if (transition3.mOnClicks.size() > 0) {
                    Iterator it4 = transition3.mOnClicks.iterator();
                    while (it4.hasNext()) {
                        ((MotionScene.Transition.TransitionOnClick) it4.next()).removeOnClickListeners(this);
                    }
                }
            }
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                MotionScene.Transition transition4 = (MotionScene.Transition) it5.next();
                if (transition4.mOnClicks.size() > 0) {
                    Iterator it6 = transition4.mOnClicks.iterator();
                    while (it6.hasNext()) {
                        ((MotionScene.Transition.TransitionOnClick) it6.next()).addOnClickListeners(this, i, transition4);
                    }
                }
            }
            Iterator it7 = arrayList2.iterator();
            while (it7.hasNext()) {
                MotionScene.Transition transition5 = (MotionScene.Transition) it7.next();
                if (transition5.mOnClicks.size() > 0) {
                    Iterator it8 = transition5.mOnClicks.iterator();
                    while (it8.hasNext()) {
                        ((MotionScene.Transition.TransitionOnClick) it8.next()).addOnClickListeners(this, i, transition5);
                    }
                }
            }
        }
        if (this.mScene.supportTouch() && (transition = this.mScene.mCurrentTransition) != null && (touchResponse = transition.mTouchResponse) != null) {
            int i2 = touchResponse.mTouchAnchorId;
            if (i2 != -1) {
                MotionLayout motionLayout = touchResponse.mMotionLayout;
                view = motionLayout.findViewById(i2);
                if (view == null) {
                    Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + Debug.getName(touchResponse.mTouchAnchorId, motionLayout.getContext()));
                }
            } else {
                view = null;
            }
            if (view instanceof NestedScrollView) {
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                nestedScrollView.setOnTouchListener(new View.OnTouchListener(touchResponse) { // from class: androidx.constraintlayout.motion.widget.TouchResponse.1
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return false;
                    }
                });
                nestedScrollView.mOnScrollChangeListener = new NestedScrollView.OnScrollChangeListener(touchResponse) { // from class: androidx.constraintlayout.motion.widget.TouchResponse.2
                    @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
                    public final void onScrollChange(NestedScrollView nestedScrollView2) {
                    }
                };
            }
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        TouchResponse touchResponse;
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            boolean isRtl = isRtl();
            motionScene.mRtl = isRtl;
            MotionScene.Transition transition = motionScene.mCurrentTransition;
            if (transition != null && (touchResponse = transition.mTouchResponse) != null) {
                touchResponse.setRTL(isRtl);
            }
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (transition = motionScene.mCurrentTransition) != null && (touchResponse = transition.mTouchResponse) != null && (touchResponse.mFlags & 2) == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onStopNestedScroll(View view, int i) {
        TouchResponse touchResponse;
        float f;
        boolean z;
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            float f2 = this.mScrollTargetDT;
            float f3 = 0.0f;
            if (f2 != 0.0f) {
                float f4 = this.mScrollTargetDX / f2;
                float f5 = this.mScrollTargetDY / f2;
                MotionScene.Transition transition = motionScene.mCurrentTransition;
                if (transition != null && (touchResponse = transition.mTouchResponse) != null) {
                    boolean z2 = false;
                    touchResponse.mDragStarted = false;
                    MotionLayout motionLayout = touchResponse.mMotionLayout;
                    float f6 = motionLayout.mTransitionLastPosition;
                    motionLayout.getAnchorDpDt(touchResponse.mTouchAnchorId, f6, touchResponse.mTouchAnchorX, touchResponse.mTouchAnchorY, touchResponse.mAnchorDpDt);
                    float f7 = touchResponse.mTouchDirectionX;
                    float[] fArr = touchResponse.mAnchorDpDt;
                    float f8 = fArr[0];
                    float f9 = touchResponse.mTouchDirectionY;
                    float f10 = fArr[1];
                    if (f7 != 0.0f) {
                        f = (f4 * f7) / f8;
                    } else {
                        f = (f5 * f9) / f10;
                    }
                    if (!Float.isNaN(f)) {
                        f6 += f / 3.0f;
                    }
                    if (f6 != 0.0f) {
                        if (f6 != 1.0f) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int i2 = touchResponse.mOnTouchUp;
                        if (i2 != 3) {
                            z2 = true;
                        }
                        if (z2 & z) {
                            if (f6 >= 0.5d) {
                                f3 = 1.0f;
                            }
                            motionLayout.touchAnimateTo(f3, f, i2);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ed, code lost:
    
        if (r8.contains(r14.getX(), r14.getY()) == false) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:174:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x07d6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x07db  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x07e0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x07d8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r34) {
        /*
            Method dump skipped, instructions count: 2024
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new CopyOnWriteArrayList();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.mUseOnShow) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.mUseOnHide) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
            if (motionHelper instanceof MotionEffect) {
                if (this.mDecoratorsHelpers == null) {
                    this.mDecoratorsHelpers = new ArrayList();
                }
                this.mDecoratorsHelpers.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public final void parseLayoutDescription(int i) {
        this.mConstraintLayoutSpec = null;
    }

    public final void processTransitionCompleted() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
            Iterator it = this.mTransitionCompleted.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                CopyOnWriteArrayList copyOnWriteArrayList2 = this.mTransitionListeners;
                if (copyOnWriteArrayList2 != null) {
                    Iterator it2 = copyOnWriteArrayList2.iterator();
                    while (it2.hasNext()) {
                        ((TransitionListener) it2.next()).onTransitionCompleted(num.intValue());
                    }
                }
            }
            this.mTransitionCompleted.clear();
        }
    }

    public final void rebuildScene() {
        this.mModel.reEvaluateState();
        invalidate();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public final void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (!this.mMeasureDuringTransition && this.mCurrentState == -1 && (motionScene = this.mScene) != null && (transition = motionScene.mCurrentTransition) != null) {
            int i = transition.mLayoutDuringTransition;
            if (i == 0) {
                return;
            }
            if (i == 2) {
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    ((MotionController) this.mFrameArrayList.get(getChildAt(i2))).mForceMeasure = true;
                }
                return;
            }
        }
        super.requestLayout();
    }

    public final void setProgress(float f) {
        if (f < 0.0f || f > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.mProgress = f;
            return;
        }
        if (f <= 0.0f) {
            if (this.mTransitionLastPosition == 1.0f && this.mCurrentState == this.mEndState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f >= 1.0f) {
            if (this.mTransitionLastPosition == 0.0f && this.mCurrentState == this.mBeginState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(TransitionState.MOVING);
        }
        if (this.mScene == null) {
            return;
        }
        this.mTransitionInstantly = true;
        this.mTransitionGoalPosition = f;
        this.mTransitionPosition = f;
        this.mTransitionLastTime = -1L;
        this.mAnimationStartTime = -1L;
        this.mInterpolator = null;
        this.mInTransition = true;
        invalidate();
    }

    public final void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.mCurrentState == -1) {
            return;
        }
        TransitionState transitionState3 = this.mTransitionState;
        this.mTransitionState = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            fireTransitionChange();
        }
        int i = AnonymousClass5.$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[transitionState3.ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3 && transitionState == transitionState2) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (transitionState == transitionState4) {
            fireTransitionChange();
        }
        if (transitionState == transitionState2) {
            fireTransitionCompleted();
        }
    }

    public final void setTransition(int i, int i2) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            StateCache stateCache = this.mStateCache;
            stateCache.startState = i;
            stateCache.endState = i2;
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mBeginState = i;
            this.mEndState = i2;
            motionScene.setTransition(i, i2);
            this.mModel.initFrom(this.mScene.getConstraintSet(i), this.mScene.getConstraintSet(i2));
            rebuildScene();
            this.mTransitionLastPosition = 0.0f;
            animateTo(0.0f);
        }
    }

    @Override // android.view.View
    public final String toString() {
        Context context = getContext();
        return Debug.getName(this.mBeginState, context) + "->" + Debug.getName(this.mEndState, context) + " (pos:" + this.mTransitionLastPosition + " Dpos/Dt:" + this.mLastVelocity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        if (r18 != 7) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
    
        if ((((r17 * r5) - (((r3 * r5) * r5) / 2.0f)) + r1) > 1.0f) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0072, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
    
        if (r2 == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0075, code lost:
    
        r1 = r15.mDecelerateLogic;
        r2 = r15.mTransitionLastPosition;
        r3 = r15.mScene.getMaxAcceleration();
        r1.initalV = r17;
        r1.currentP = r2;
        r1.maxA = r3;
        r15.mInterpolator = r15.mDecelerateLogic;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
    
        r1 = r15.mStopLogic;
        r2 = r15.mTransitionLastPosition;
        r5 = r15.mTransitionDuration;
        r6 = r15.mScene.getMaxAcceleration();
        r3 = r15.mScene.mCurrentTransition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009b, code lost:
    
        if (r3 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009d, code lost:
    
        r3 = r3.mTouchResponse;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009f, code lost:
    
        if (r3 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
    
        r7 = r3.mMaxVelocity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a6, code lost:
    
        r1.config(r2, r16, r17, r5, r6, r7);
        r15.mLastVelocity = 0.0f;
        r1 = r15.mCurrentState;
        r15.mTransitionGoalPosition = r8;
        r15.mCurrentState = r1;
        r15.mInterpolator = r15.mStopLogic;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a5, code lost:
    
        r7 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006f, code lost:
    
        if ((((((r3 * r5) * r5) / 2.0f) + (r17 * r5)) + r1) < 0.0f) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void touchAnimateTo(float r16, float r17, int r18) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.touchAnimateTo(float, float, int):void");
    }

    public final void transitionToState$1(int i, int i2) {
        float f;
        int i3;
        int i4;
        StateSet stateSet;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (stateSet = motionScene.mStateSet) != null) {
            int i5 = this.mCurrentState;
            float f2 = -1;
            StateSet.State state = (StateSet.State) stateSet.mStateList.get(i);
            if (state == null) {
                i5 = i;
            } else {
                ArrayList arrayList = state.mVariants;
                int i6 = state.mConstraintID;
                if (f2 != -1.0f && f2 != -1.0f) {
                    Iterator it = arrayList.iterator();
                    StateSet.Variant variant = null;
                    while (true) {
                        if (it.hasNext()) {
                            StateSet.Variant variant2 = (StateSet.Variant) it.next();
                            if (variant2.match(f2, f2)) {
                                if (i5 == variant2.mConstraintID) {
                                    break;
                                } else {
                                    variant = variant2;
                                }
                            }
                        } else if (variant != null) {
                            i5 = variant.mConstraintID;
                        }
                    }
                } else if (i6 != i5) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (i5 == ((StateSet.Variant) it2.next()).mConstraintID) {
                            break;
                        }
                    }
                    i5 = i6;
                }
            }
            if (i5 != -1) {
                i = i5;
            }
        }
        int i7 = this.mCurrentState;
        if (i7 == i) {
            return;
        }
        if (this.mBeginState == i) {
            animateTo(0.0f);
            if (i2 > 0) {
                this.mTransitionDuration = i2 / 1000.0f;
                return;
            }
            return;
        }
        if (this.mEndState == i) {
            animateTo(1.0f);
            if (i2 > 0) {
                this.mTransitionDuration = i2 / 1000.0f;
                return;
            }
            return;
        }
        this.mEndState = i;
        if (i7 != -1) {
            setTransition(i7, i);
            animateTo(1.0f);
            this.mTransitionLastPosition = 0.0f;
            animateTo(1.0f);
            this.mOnComplete = null;
            if (i2 > 0) {
                this.mTransitionDuration = i2 / 1000.0f;
                return;
            }
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionLastTime = System.nanoTime();
        this.mAnimationStartTime = System.nanoTime();
        this.mTransitionInstantly = false;
        this.mInterpolator = null;
        if (i2 == -1) {
            MotionScene motionScene2 = this.mScene;
            MotionScene.Transition transition = motionScene2.mCurrentTransition;
            if (transition != null) {
                i4 = transition.mDuration;
            } else {
                i4 = motionScene2.mDefaultDuration;
            }
            this.mTransitionDuration = i4 / 1000.0f;
        }
        this.mBeginState = -1;
        this.mScene.setTransition(-1, this.mEndState);
        SparseArray sparseArray = new SparseArray();
        if (i2 == 0) {
            MotionScene motionScene3 = this.mScene;
            MotionScene.Transition transition2 = motionScene3.mCurrentTransition;
            if (transition2 != null) {
                i3 = transition2.mDuration;
            } else {
                i3 = motionScene3.mDefaultDuration;
            }
            this.mTransitionDuration = i3 / 1000.0f;
        } else if (i2 > 0) {
            this.mTransitionDuration = i2 / 1000.0f;
        }
        int childCount = getChildCount();
        this.mFrameArrayList.clear();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            this.mFrameArrayList.put(childAt, new MotionController(childAt));
            sparseArray.put(childAt.getId(), (MotionController) this.mFrameArrayList.get(childAt));
        }
        this.mInTransition = true;
        this.mModel.initFrom(null, this.mScene.getConstraintSet(i));
        rebuildScene();
        this.mModel.build();
        int childCount2 = getChildCount();
        for (int i9 = 0; i9 < childCount2; i9++) {
            View childAt2 = getChildAt(i9);
            MotionController motionController = (MotionController) this.mFrameArrayList.get(childAt2);
            if (motionController != null) {
                MotionPaths motionPaths = motionController.mStartMotionPath;
                motionPaths.time = 0.0f;
                motionPaths.position = 0.0f;
                motionPaths.setBounds(childAt2.getX(), childAt2.getY(), childAt2.getWidth(), childAt2.getHeight());
                MotionConstrainedPoint motionConstrainedPoint = motionController.mStartPoint;
                motionConstrainedPoint.getClass();
                childAt2.getX();
                childAt2.getY();
                childAt2.getWidth();
                childAt2.getHeight();
                motionConstrainedPoint.applyParameters(childAt2);
            }
        }
        int width = getWidth();
        int height = getHeight();
        if (this.mDecoratorsHelpers != null) {
            for (int i10 = 0; i10 < childCount; i10++) {
                MotionController motionController2 = (MotionController) this.mFrameArrayList.get(getChildAt(i10));
                if (motionController2 != null) {
                    this.mScene.getKeyFrames(motionController2);
                }
            }
            Iterator it3 = this.mDecoratorsHelpers.iterator();
            while (it3.hasNext()) {
                ((MotionHelper) it3.next()).onPreSetup(this, this.mFrameArrayList);
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                MotionController motionController3 = (MotionController) this.mFrameArrayList.get(getChildAt(i11));
                if (motionController3 != null) {
                    motionController3.setup(width, height, System.nanoTime());
                }
            }
        } else {
            for (int i12 = 0; i12 < childCount; i12++) {
                MotionController motionController4 = (MotionController) this.mFrameArrayList.get(getChildAt(i12));
                if (motionController4 != null) {
                    this.mScene.getKeyFrames(motionController4);
                    motionController4.setup(width, height, System.nanoTime());
                }
            }
        }
        MotionScene.Transition transition3 = this.mScene.mCurrentTransition;
        if (transition3 != null) {
            f = transition3.mStagger;
        } else {
            f = 0.0f;
        }
        if (f != 0.0f) {
            float f3 = Float.MAX_VALUE;
            float f4 = -3.4028235E38f;
            for (int i13 = 0; i13 < childCount; i13++) {
                MotionPaths motionPaths2 = ((MotionController) this.mFrameArrayList.get(getChildAt(i13))).mEndMotionPath;
                float f5 = motionPaths2.y + motionPaths2.x;
                f3 = Math.min(f3, f5);
                f4 = Math.max(f4, f5);
            }
            for (int i14 = 0; i14 < childCount; i14++) {
                MotionController motionController5 = (MotionController) this.mFrameArrayList.get(getChildAt(i14));
                MotionPaths motionPaths3 = motionController5.mEndMotionPath;
                float f6 = motionPaths3.x;
                float f7 = motionPaths3.y;
                motionController5.mStaggerScale = 1.0f / (1.0f - f);
                motionController5.mStaggerOffset = f - ((((f6 + f7) - f3) * f) / (f4 - f3));
            }
        }
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mInTransition = true;
        invalidate();
    }

    public final void updateState(int i, ConstraintSet constraintSet) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.mConstraintSetMap.put(i, constraintSet);
        }
        this.mModel.initFrom(this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        rebuildScene();
        if (this.mCurrentState == i) {
            constraintSet.applyTo(this);
        }
    }

    public final void viewTransition(int i, View... viewArr) {
        String str;
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            ViewTransitionController viewTransitionController = motionScene.mViewTransitionController;
            viewTransitionController.getClass();
            ArrayList arrayList = new ArrayList();
            Iterator it = viewTransitionController.viewTransitions.iterator();
            ViewTransition viewTransition = null;
            while (true) {
                boolean hasNext = it.hasNext();
                str = viewTransitionController.TAG;
                if (!hasNext) {
                    break;
                }
                ViewTransition viewTransition2 = (ViewTransition) it.next();
                if (viewTransition2.mId == i) {
                    for (View view : viewArr) {
                        if (viewTransition2.checkTags(view)) {
                            arrayList.add(view);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        View[] viewArr2 = (View[]) arrayList.toArray(new View[0]);
                        MotionLayout motionLayout = viewTransitionController.mMotionLayout;
                        int i2 = motionLayout.mCurrentState;
                        if (viewTransition2.mViewTransitionMode != 2) {
                            if (i2 == -1) {
                                Log.w(str, "No support for ViewTransition within transition yet. Currently: " + motionLayout.toString());
                            } else {
                                ConstraintSet constraintSet = motionLayout.getConstraintSet(i2);
                                if (constraintSet != null) {
                                    viewTransition2.applyTransition(viewTransitionController, viewTransitionController.mMotionLayout, i2, constraintSet, viewArr2);
                                }
                            }
                        } else {
                            viewTransition2.applyTransition(viewTransitionController, motionLayout, i2, null, viewArr2);
                        }
                        arrayList.clear();
                    }
                    viewTransition = viewTransition2;
                }
            }
            if (viewTransition == null) {
                Log.e(str, " Could not find ViewTransition");
                return;
            }
            return;
        }
        Log.e("MotionLayout", " no motionScene");
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.mUndergoingMotion || i != 0 || i2 != 0) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.mUndergoingMotion = false;
    }

    public final void setState(int i) {
        ConstraintLayoutStates.State state;
        setState(TransitionState.SETUP);
        this.mCurrentState = i;
        this.mBeginState = -1;
        this.mEndState = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            float f = -1;
            int i2 = constraintLayoutStates.mCurrentStateId;
            SparseArray sparseArray = constraintLayoutStates.mStateList;
            int i3 = 0;
            ConstraintLayout constraintLayout = constraintLayoutStates.mConstraintLayout;
            if (i2 == i) {
                if (i == -1) {
                    state = (ConstraintLayoutStates.State) sparseArray.valueAt(0);
                } else {
                    state = (ConstraintLayoutStates.State) sparseArray.get(i2);
                }
                int i4 = constraintLayoutStates.mCurrentConstraintNumber;
                if (i4 == -1 || !((ConstraintLayoutStates.Variant) state.mVariants.get(i4)).match(f, f)) {
                    while (true) {
                        ArrayList arrayList = state.mVariants;
                        if (i3 >= arrayList.size()) {
                            i3 = -1;
                            break;
                        } else if (((ConstraintLayoutStates.Variant) arrayList.get(i3)).match(f, f)) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (constraintLayoutStates.mCurrentConstraintNumber == i3) {
                        return;
                    }
                    ArrayList arrayList2 = state.mVariants;
                    ConstraintSet constraintSet = i3 == -1 ? null : ((ConstraintLayoutStates.Variant) arrayList2.get(i3)).mConstraintSet;
                    if (i3 != -1) {
                        int i5 = ((ConstraintLayoutStates.Variant) arrayList2.get(i3)).mConstraintID;
                    }
                    if (constraintSet == null) {
                        return;
                    }
                    constraintLayoutStates.mCurrentConstraintNumber = i3;
                    constraintSet.applyTo(constraintLayout);
                    return;
                }
                return;
            }
            constraintLayoutStates.mCurrentStateId = i;
            ConstraintLayoutStates.State state2 = (ConstraintLayoutStates.State) sparseArray.get(i);
            while (true) {
                ArrayList arrayList3 = state2.mVariants;
                if (i3 >= arrayList3.size()) {
                    i3 = -1;
                    break;
                } else if (((ConstraintLayoutStates.Variant) arrayList3.get(i3)).match(f, f)) {
                    break;
                } else {
                    i3++;
                }
            }
            ArrayList arrayList4 = state2.mVariants;
            ConstraintSet constraintSet2 = i3 == -1 ? state2.mConstraintSet : ((ConstraintLayoutStates.Variant) arrayList4.get(i3)).mConstraintSet;
            if (i3 != -1) {
                int i6 = ((ConstraintLayoutStates.Variant) arrayList4.get(i3)).mConstraintID;
            }
            if (constraintSet2 == null) {
                return;
            }
            constraintLayoutStates.mCurrentConstraintNumber = i3;
            constraintSet2.applyTo(constraintLayout);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.getConstraintSet(i).applyTo(this);
        }
    }

    public final void setTransition(int i) {
        float f;
        if (this.mScene != null) {
            MotionScene.Transition transition = getTransition(i);
            this.mBeginState = transition.mConstraintSetStart;
            this.mEndState = transition.mConstraintSetEnd;
            if (!isAttachedToWindow()) {
                if (this.mStateCache == null) {
                    this.mStateCache = new StateCache();
                }
                StateCache stateCache = this.mStateCache;
                stateCache.startState = this.mBeginState;
                stateCache.endState = this.mEndState;
                return;
            }
            int i2 = this.mCurrentState;
            if (i2 == this.mBeginState) {
                f = 0.0f;
            } else {
                f = i2 == this.mEndState ? 1.0f : Float.NaN;
            }
            MotionScene motionScene = this.mScene;
            motionScene.mCurrentTransition = transition;
            TouchResponse touchResponse = transition.mTouchResponse;
            if (touchResponse != null) {
                touchResponse.setRTL(motionScene.mRtl);
            }
            this.mModel.initFrom(this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
            rebuildScene();
            if (this.mTransitionLastPosition != f) {
                if (f == 0.0f) {
                    endTrigger(true);
                    this.mScene.getConstraintSet(this.mBeginState).applyTo(this);
                } else if (f == 1.0f) {
                    endTrigger(false);
                    this.mScene.getConstraintSet(this.mEndState).applyTo(this);
                }
            }
            this.mTransitionLastPosition = Float.isNaN(f) ? 0.0f : f;
            if (Float.isNaN(f)) {
                Debug.getLocation();
                animateTo(0.0f);
            } else {
                setProgress(f);
            }
        }
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mPreRotate = new HashMap();
        this.mTempRect = new Rect();
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList();
        init(attributeSet);
    }

    public final void setTransition(MotionScene.Transition transition) {
        TouchResponse touchResponse;
        MotionScene motionScene = this.mScene;
        motionScene.mCurrentTransition = transition;
        if (transition != null && (touchResponse = transition.mTouchResponse) != null) {
            touchResponse.setRTL(motionScene.mRtl);
        }
        setState(TransitionState.SETUP);
        int i = this.mCurrentState;
        MotionScene.Transition transition2 = this.mScene.mCurrentTransition;
        if (i == (transition2 == null ? -1 : transition2.mConstraintSetEnd)) {
            this.mTransitionLastPosition = 1.0f;
            this.mTransitionPosition = 1.0f;
            this.mTransitionGoalPosition = 1.0f;
        } else {
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionGoalPosition = 0.0f;
        }
        this.mTransitionLastTime = (transition.mTransitionFlags & 1) != 0 ? -1L : System.nanoTime();
        int startId = this.mScene.getStartId();
        MotionScene motionScene2 = this.mScene;
        MotionScene.Transition transition3 = motionScene2.mCurrentTransition;
        int i2 = transition3 != null ? transition3.mConstraintSetEnd : -1;
        if (startId == this.mBeginState && i2 == this.mEndState) {
            return;
        }
        this.mBeginState = startId;
        this.mEndState = i2;
        motionScene2.setTransition(startId, i2);
        this.mModel.initFrom(this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        Model model = this.mModel;
        int i3 = this.mBeginState;
        int i4 = this.mEndState;
        model.mStartId = i3;
        model.mEndId = i4;
        model.reEvaluateState();
        rebuildScene();
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mPreRotate = new HashMap();
        this.mTempRect = new Rect();
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList();
        init(attributeSet);
    }
}
