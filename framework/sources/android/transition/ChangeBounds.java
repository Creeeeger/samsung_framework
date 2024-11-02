package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.RectEvaluator;
import android.animation.TypeConverter;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;
import java.util.Map;

/* loaded from: classes4.dex */
public class ChangeBounds extends Transition {
    private static final String LOG_TAG = "ChangeBounds";
    boolean mReparent;
    boolean mResizeClip;
    int[] tempLocation;
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_CLIP = "android:changeBounds:clip";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_CLIP, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static final Property<Drawable, PointF> DRAWABLE_ORIGIN_PROPERTY = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: android.transition.ChangeBounds.1
        private Rect mBounds = new Rect();

        AnonymousClass1(Class cls, String name) {
            super(cls, name);
            this.mBounds = new Rect();
        }

        @Override // android.util.Property
        public void set(Drawable object, PointF value) {
            object.copyBounds(this.mBounds);
            this.mBounds.offsetTo(Math.round(value.x), Math.round(value.y));
            object.setBounds(this.mBounds);
        }

        @Override // android.util.Property
        public PointF get(Drawable object) {
            object.copyBounds(this.mBounds);
            return new PointF(this.mBounds.left, this.mBounds.top);
        }
    };
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, "topLeft") { // from class: android.transition.ChangeBounds.2
        AnonymousClass2(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF topLeft) {
            viewBounds.setTopLeft(topLeft);
        }

        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }
    };
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, "bottomRight") { // from class: android.transition.ChangeBounds.3
        AnonymousClass3(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF bottomRight) {
            viewBounds.setBottomRight(bottomRight);
        }

        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }
    };
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: android.transition.ChangeBounds.4
        AnonymousClass4(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(View view, PointF bottomRight) {
            int left = view.getLeft();
            int top = view.getTop();
            int right = Math.round(bottomRight.x);
            int bottom = Math.round(bottomRight.y);
            view.setLeftTopRightBottom(left, top, right, bottom);
        }

        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }
    };
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, "topLeft") { // from class: android.transition.ChangeBounds.5
        AnonymousClass5(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(View view, PointF topLeft) {
            int left = Math.round(topLeft.x);
            int top = Math.round(topLeft.y);
            int right = view.getRight();
            int bottom = view.getBottom();
            view.setLeftTopRightBottom(left, top, right, bottom);
        }

        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }
    };
    private static final Property<View, PointF> POSITION_PROPERTY = new Property<View, PointF>(PointF.class, "position") { // from class: android.transition.ChangeBounds.6
        AnonymousClass6(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(View view, PointF topLeft) {
            int left = Math.round(topLeft.x);
            int top = Math.round(topLeft.y);
            int right = view.getWidth() + left;
            int bottom = view.getHeight() + top;
            view.setLeftTopRightBottom(left, top, right, bottom);
        }

        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }
    };
    private static RectEvaluator sRectEvaluator = new RectEvaluator();

    /* renamed from: android.transition.ChangeBounds$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends Property<Drawable, PointF> {
        private Rect mBounds = new Rect();

        AnonymousClass1(Class cls, String name) {
            super(cls, name);
            this.mBounds = new Rect();
        }

        @Override // android.util.Property
        public void set(Drawable object, PointF value) {
            object.copyBounds(this.mBounds);
            this.mBounds.offsetTo(Math.round(value.x), Math.round(value.y));
            object.setBounds(this.mBounds);
        }

        @Override // android.util.Property
        public PointF get(Drawable object) {
            object.copyBounds(this.mBounds);
            return new PointF(this.mBounds.left, this.mBounds.top);
        }
    }

    /* renamed from: android.transition.ChangeBounds$2 */
    /* loaded from: classes4.dex */
    class AnonymousClass2 extends Property<ViewBounds, PointF> {
        AnonymousClass2(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF topLeft) {
            viewBounds.setTopLeft(topLeft);
        }

        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }
    }

    /* renamed from: android.transition.ChangeBounds$3 */
    /* loaded from: classes4.dex */
    class AnonymousClass3 extends Property<ViewBounds, PointF> {
        AnonymousClass3(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF bottomRight) {
            viewBounds.setBottomRight(bottomRight);
        }

        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }
    }

    /* renamed from: android.transition.ChangeBounds$4 */
    /* loaded from: classes4.dex */
    class AnonymousClass4 extends Property<View, PointF> {
        AnonymousClass4(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(View view, PointF bottomRight) {
            int left = view.getLeft();
            int top = view.getTop();
            int right = Math.round(bottomRight.x);
            int bottom = Math.round(bottomRight.y);
            view.setLeftTopRightBottom(left, top, right, bottom);
        }

        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }
    }

    /* renamed from: android.transition.ChangeBounds$5 */
    /* loaded from: classes4.dex */
    class AnonymousClass5 extends Property<View, PointF> {
        AnonymousClass5(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(View view, PointF topLeft) {
            int left = Math.round(topLeft.x);
            int top = Math.round(topLeft.y);
            int right = view.getRight();
            int bottom = view.getBottom();
            view.setLeftTopRightBottom(left, top, right, bottom);
        }

        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }
    }

    /* renamed from: android.transition.ChangeBounds$6 */
    /* loaded from: classes4.dex */
    class AnonymousClass6 extends Property<View, PointF> {
        AnonymousClass6(Class cls, String name) {
            super(cls, name);
        }

        @Override // android.util.Property
        public void set(View view, PointF topLeft) {
            int left = Math.round(topLeft.x);
            int top = Math.round(topLeft.y);
            int right = view.getWidth() + left;
            int bottom = view.getHeight() + top;
            view.setLeftTopRightBottom(left, top, right, bottom);
        }

        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }
    }

    public ChangeBounds() {
        this.tempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
    }

    public ChangeBounds(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.tempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ChangeBounds);
        boolean resizeClip = a.getBoolean(0, false);
        a.recycle();
        setResizeClip(resizeClip);
    }

    @Override // android.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setResizeClip(boolean resizeClip) {
        this.mResizeClip = resizeClip;
    }

    public boolean getResizeClip() {
        return this.mResizeClip;
    }

    @Deprecated
    public void setReparent(boolean reparent) {
        this.mReparent = reparent;
    }

    private void captureValues(TransitionValues values) {
        View view = values.view;
        if (view.isLaidOut() || view.getWidth() != 0 || view.getHeight() != 0) {
            values.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            values.values.put(PROPNAME_PARENT, values.view.getParent());
            if (this.mReparent) {
                values.view.getLocationInWindow(this.tempLocation);
                values.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.tempLocation[0]));
                values.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.tempLocation[1]));
            }
            if (this.mResizeClip) {
                values.values.put(PROPNAME_CLIP, view.getClipBounds());
            }
        }
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    private boolean parentMatches(View startParent, View endParent) {
        if (!this.mReparent) {
            return true;
        }
        boolean z = true;
        TransitionValues endValues = getMatchedTransitionValues(startParent, true);
        if (endValues == null) {
            if (startParent != endParent) {
                z = false;
            }
            boolean parentMatches = z;
            return parentMatches;
        }
        if (endParent != endValues.view) {
            z = false;
        }
        boolean parentMatches2 = z;
        return parentMatches2;
    }

    @Override // android.transition.Transition
    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        Rect startClip;
        Rect endClip;
        ChangeBounds changeBounds;
        int startTop;
        int endLeft;
        ObjectAnimator positionAnimator;
        int i;
        Rect startClip2;
        Rect endClip2;
        ObjectAnimator positionAnimator2;
        View view;
        if (startValues != null && endValues != null) {
            Map<String, Object> startParentVals = startValues.values;
            Map<String, Object> endParentVals = endValues.values;
            ViewGroup startParent = (ViewGroup) startParentVals.get(PROPNAME_PARENT);
            ViewGroup endParent = (ViewGroup) endParentVals.get(PROPNAME_PARENT);
            if (startParent != null && endParent != null) {
                View view2 = endValues.view;
                if (parentMatches(startParent, endParent)) {
                    Rect startBounds = (Rect) startValues.values.get(PROPNAME_BOUNDS);
                    Rect endBounds = (Rect) endValues.values.get(PROPNAME_BOUNDS);
                    int startLeft = startBounds.left;
                    int endLeft2 = endBounds.left;
                    int startTop2 = startBounds.top;
                    int endTop = endBounds.top;
                    int startRight = startBounds.right;
                    int endRight = endBounds.right;
                    int startBottom = startBounds.bottom;
                    int endBottom = endBounds.bottom;
                    int startWidth = startRight - startLeft;
                    int startHeight = startBottom - startTop2;
                    int endWidth = endRight - endLeft2;
                    int endHeight = endBottom - endTop;
                    Rect startClip3 = (Rect) startValues.values.get(PROPNAME_CLIP);
                    Rect endClip3 = (Rect) endValues.values.get(PROPNAME_CLIP);
                    if ((startWidth != 0 && startHeight != 0) || (endWidth != 0 && endHeight != 0)) {
                        numChanges = (startLeft == endLeft2 && startTop2 == endTop) ? 0 : 0 + 1;
                        if (startRight != endRight || startBottom != endBottom) {
                            numChanges++;
                        }
                    }
                    if ((startClip3 != null && !startClip3.equals(endClip3)) || (startClip3 == null && endClip3 != null)) {
                        numChanges++;
                    }
                    if (numChanges > 0) {
                        if (!(view2.getParent() instanceof ViewGroup)) {
                            startClip = startClip3;
                            endClip = endClip3;
                            changeBounds = this;
                        } else {
                            ViewGroup parent = (ViewGroup) view2.getParent();
                            startClip = startClip3;
                            parent.suppressLayout(true);
                            endClip = endClip3;
                            changeBounds = this;
                            Transition.TransitionListener transitionListener = new TransitionListenerAdapter() { // from class: android.transition.ChangeBounds.7
                                boolean mCanceled = false;
                                final /* synthetic */ ViewGroup val$parent;

                                AnonymousClass7(ViewGroup parent2) {
                                    parent = parent2;
                                }

                                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                                public void onTransitionCancel(Transition transition) {
                                    parent.suppressLayout(false);
                                    this.mCanceled = true;
                                }

                                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                                public void onTransitionEnd(Transition transition) {
                                    if (!this.mCanceled) {
                                        parent.suppressLayout(false);
                                    }
                                    transition.removeListener(this);
                                }

                                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                                public void onTransitionPause(Transition transition) {
                                    parent.suppressLayout(false);
                                }

                                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                                public void onTransitionResume(Transition transition) {
                                    parent.suppressLayout(true);
                                }
                            };
                            changeBounds.addListener(transitionListener);
                        }
                        if (changeBounds.mResizeClip) {
                            int maxWidth = Math.max(startWidth, endWidth);
                            int maxHeight = Math.max(startHeight, endHeight);
                            view2.setLeftTopRightBottom(startLeft, startTop2, startLeft + maxWidth, startTop2 + maxHeight);
                            if (startLeft == endLeft2 && startTop2 == endTop) {
                                endLeft = endLeft2;
                                startTop = startTop2;
                                positionAnimator = null;
                            } else {
                                startTop = startTop2;
                                endLeft = endLeft2;
                                Path topLeftPath = getPathMotion().getPath(startLeft, startTop2, endLeft2, endTop);
                                positionAnimator = ObjectAnimator.ofObject(view2, (Property<View, V>) POSITION_PROPERTY, (TypeConverter) null, topLeftPath);
                            }
                            Rect finalClip = endClip;
                            if (startClip != null) {
                                i = 0;
                                startClip2 = startClip;
                            } else {
                                i = 0;
                                startClip2 = new Rect(0, 0, startWidth, startHeight);
                            }
                            if (endClip != null) {
                                endClip2 = endClip;
                            } else {
                                endClip2 = new Rect(i, i, endWidth, endHeight);
                            }
                            ObjectAnimator clipAnimator = null;
                            if (startClip2.equals(endClip2)) {
                                positionAnimator2 = positionAnimator;
                            } else {
                                view2.setClipBounds(startClip2);
                                ObjectAnimator clipAnimator2 = ObjectAnimator.ofObject(view2, "clipBounds", sRectEvaluator, startClip2, endClip2);
                                positionAnimator2 = positionAnimator;
                                clipAnimator2.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeBounds.9
                                    private boolean mIsCanceled;
                                    final /* synthetic */ int val$endBottom;
                                    final /* synthetic */ int val$endLeft;
                                    final /* synthetic */ int val$endRight;
                                    final /* synthetic */ int val$endTop;
                                    final /* synthetic */ Rect val$finalClip;
                                    final /* synthetic */ View val$view;

                                    AnonymousClass9(View view22, Rect finalClip2, int endLeft3, int endTop2, int endRight2, int endBottom2) {
                                        view2 = view22;
                                        finalClip = finalClip2;
                                        endLeft3 = endLeft3;
                                        endTop = endTop2;
                                        endRight = endRight2;
                                        endBottom = endBottom2;
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationCancel(Animator animation) {
                                        this.mIsCanceled = true;
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animation) {
                                        if (!this.mIsCanceled) {
                                            view2.setClipBounds(finalClip);
                                            view2.setLeftTopRightBottom(endLeft3, endTop, endRight, endBottom);
                                        }
                                    }
                                });
                                clipAnimator = clipAnimator2;
                            }
                            return TransitionUtils.mergeAnimators(positionAnimator2, clipAnimator);
                        }
                        view22.setLeftTopRightBottom(startLeft, startTop2, startRight, startBottom);
                        if (numChanges == 2) {
                            if (startWidth != endWidth || startHeight != endHeight) {
                                ViewBounds viewBounds = new ViewBounds(view22);
                                Path topLeftPath2 = getPathMotion().getPath(startLeft, startTop2, endLeft2, endTop2);
                                ObjectAnimator topLeftAnimator = ObjectAnimator.ofObject(viewBounds, (Property<ViewBounds, V>) TOP_LEFT_PROPERTY, (TypeConverter) null, topLeftPath2);
                                Path bottomRightPath = getPathMotion().getPath(startRight, startBottom, endRight2, endBottom2);
                                ObjectAnimator bottomRightAnimator = ObjectAnimator.ofObject(viewBounds, (Property<ViewBounds, V>) BOTTOM_RIGHT_PROPERTY, (TypeConverter) null, bottomRightPath);
                                AnimatorSet set = new AnimatorSet();
                                set.playTogether(topLeftAnimator, bottomRightAnimator);
                                set.addListener(new AnimatorListenerAdapter(viewBounds) { // from class: android.transition.ChangeBounds.8
                                    private ViewBounds mViewBounds;
                                    final /* synthetic */ ViewBounds val$viewBounds;

                                    AnonymousClass8(ViewBounds viewBounds2) {
                                        this.val$viewBounds = viewBounds2;
                                        this.mViewBounds = viewBounds2;
                                    }
                                });
                                return set;
                            }
                            Path topLeftPath3 = getPathMotion().getPath(startLeft, startTop2, endLeft2, endTop2);
                            return ObjectAnimator.ofObject(view22, (Property<View, V>) POSITION_PROPERTY, (TypeConverter) null, topLeftPath3);
                        }
                        if (startLeft != endLeft2) {
                            view = view22;
                        } else if (startTop2 != endTop2) {
                            view = view22;
                        } else {
                            Path bottomRight = getPathMotion().getPath(startRight, startBottom, endRight2, endBottom2);
                            return ObjectAnimator.ofObject(view22, (Property<View, V>) BOTTOM_RIGHT_ONLY_PROPERTY, (TypeConverter) null, bottomRight);
                        }
                        Path topLeftPath4 = getPathMotion().getPath(startLeft, startTop2, endLeft2, endTop2);
                        return ObjectAnimator.ofObject(view, (Property<View, V>) TOP_LEFT_ONLY_PROPERTY, (TypeConverter) null, topLeftPath4);
                    }
                    return null;
                }
                sceneRoot.getLocationInWindow(this.tempLocation);
                int startX = ((Integer) startValues.values.get(PROPNAME_WINDOW_X)).intValue() - this.tempLocation[0];
                int startY = ((Integer) startValues.values.get(PROPNAME_WINDOW_Y)).intValue() - this.tempLocation[1];
                int endX = ((Integer) endValues.values.get(PROPNAME_WINDOW_X)).intValue() - this.tempLocation[0];
                int endY = ((Integer) endValues.values.get(PROPNAME_WINDOW_Y)).intValue() - this.tempLocation[1];
                if (startX != endX || startY != endY) {
                    int width = view22.getWidth();
                    int height = view22.getHeight();
                    Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmap);
                    view22.draw(canvas);
                    BitmapDrawable drawable = new BitmapDrawable(bitmap);
                    drawable.setBounds(startX, startY, startX + width, startY + height);
                    float transitionAlpha = view22.getTransitionAlpha();
                    view22.setTransitionAlpha(0.0f);
                    sceneRoot.getOverlay().add(drawable);
                    Path topLeftPath5 = getPathMotion().getPath(startX, startY, endX, endY);
                    PropertyValuesHolder origin = PropertyValuesHolder.ofObject(DRAWABLE_ORIGIN_PROPERTY, (TypeConverter) null, topLeftPath5);
                    ObjectAnimator anim = ObjectAnimator.ofPropertyValuesHolder(drawable, origin);
                    anim.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeBounds.10
                        final /* synthetic */ BitmapDrawable val$drawable;
                        final /* synthetic */ ViewGroup val$sceneRoot;
                        final /* synthetic */ float val$transitionAlpha;
                        final /* synthetic */ View val$view;

                        AnonymousClass10(ViewGroup sceneRoot2, BitmapDrawable drawable2, View view22, float transitionAlpha2) {
                            sceneRoot = sceneRoot2;
                            drawable = drawable2;
                            view2 = view22;
                            transitionAlpha = transitionAlpha2;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animation) {
                            sceneRoot.getOverlay().remove(drawable);
                            view2.setTransitionAlpha(transitionAlpha);
                        }
                    });
                    return anim;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    /* renamed from: android.transition.ChangeBounds$7 */
    /* loaded from: classes4.dex */
    class AnonymousClass7 extends TransitionListenerAdapter {
        boolean mCanceled = false;
        final /* synthetic */ ViewGroup val$parent;

        AnonymousClass7(ViewGroup parent2) {
            parent = parent2;
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
            parent.suppressLayout(false);
            this.mCanceled = true;
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            if (!this.mCanceled) {
                parent.suppressLayout(false);
            }
            transition.removeListener(this);
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionPause(Transition transition) {
            parent.suppressLayout(false);
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionResume(Transition transition) {
            parent.suppressLayout(true);
        }
    }

    /* renamed from: android.transition.ChangeBounds$8 */
    /* loaded from: classes4.dex */
    class AnonymousClass8 extends AnimatorListenerAdapter {
        private ViewBounds mViewBounds;
        final /* synthetic */ ViewBounds val$viewBounds;

        AnonymousClass8(ViewBounds viewBounds2) {
            this.val$viewBounds = viewBounds2;
            this.mViewBounds = viewBounds2;
        }
    }

    /* renamed from: android.transition.ChangeBounds$9 */
    /* loaded from: classes4.dex */
    class AnonymousClass9 extends AnimatorListenerAdapter {
        private boolean mIsCanceled;
        final /* synthetic */ int val$endBottom;
        final /* synthetic */ int val$endLeft;
        final /* synthetic */ int val$endRight;
        final /* synthetic */ int val$endTop;
        final /* synthetic */ Rect val$finalClip;
        final /* synthetic */ View val$view;

        AnonymousClass9(View view22, Rect finalClip2, int endLeft3, int endTop2, int endRight2, int endBottom2) {
            view2 = view22;
            finalClip = finalClip2;
            endLeft3 = endLeft3;
            endTop = endTop2;
            endRight = endRight2;
            endBottom = endBottom2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            this.mIsCanceled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            if (!this.mIsCanceled) {
                view2.setClipBounds(finalClip);
                view2.setLeftTopRightBottom(endLeft3, endTop, endRight, endBottom);
            }
        }
    }

    /* renamed from: android.transition.ChangeBounds$10 */
    /* loaded from: classes4.dex */
    class AnonymousClass10 extends AnimatorListenerAdapter {
        final /* synthetic */ BitmapDrawable val$drawable;
        final /* synthetic */ ViewGroup val$sceneRoot;
        final /* synthetic */ float val$transitionAlpha;
        final /* synthetic */ View val$view;

        AnonymousClass10(ViewGroup sceneRoot2, BitmapDrawable drawable2, View view22, float transitionAlpha2) {
            sceneRoot = sceneRoot2;
            drawable = drawable2;
            view2 = view22;
            transitionAlpha = transitionAlpha2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            sceneRoot.getOverlay().remove(drawable);
            view2.setTransitionAlpha(transitionAlpha);
        }
    }

    /* loaded from: classes4.dex */
    public static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private View mView;

        public ViewBounds(View view) {
            this.mView = view;
        }

        public void setTopLeft(PointF topLeft) {
            this.mLeft = Math.round(topLeft.x);
            this.mTop = Math.round(topLeft.y);
            int i = this.mTopLeftCalls + 1;
            this.mTopLeftCalls = i;
            if (i == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }

        public void setBottomRight(PointF bottomRight) {
            this.mRight = Math.round(bottomRight.x);
            this.mBottom = Math.round(bottomRight.y);
            int i = this.mBottomRightCalls + 1;
            this.mBottomRightCalls = i;
            if (this.mTopLeftCalls == i) {
                setLeftTopRightBottom();
            }
        }

        private void setLeftTopRightBottom() {
            this.mView.setLeftTopRightBottom(this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }
    }
}
