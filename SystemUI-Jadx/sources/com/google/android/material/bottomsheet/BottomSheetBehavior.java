package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.android.systemui.R;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public int activePointerId;
    public final ColorStateList backgroundTint;
    public final ArrayList callbacks;
    public int childHeight;
    public int collapsedOffset;
    public final AnonymousClass4 dragCallback;
    public boolean draggable;
    public final float elevation;
    public int expandHalfwayActionId;
    public int expandedOffset;
    public boolean fitToContents;
    public int fitToContentsOffset;
    public int gestureInsetBottom;
    public boolean gestureInsetBottomIgnored;
    public int halfExpandedOffset;
    public float halfExpandedRatio;
    public final float hideFriction;
    public boolean hideable;
    public boolean ignoreEvents;
    public Map importantForAccessibilityMap;
    public int initialY;
    public int insetBottom;
    public int insetTop;
    public ValueAnimator interpolatorAnimator;
    public boolean isShapeExpanded;
    public int lastNestedScrollDy;
    public final boolean marginLeftSystemWindowInsets;
    public final boolean marginRightSystemWindowInsets;
    public final boolean marginTopSystemWindowInsets;
    public MaterialShapeDrawable materialShapeDrawable;
    public int maxHeight;
    public int maxWidth;
    public final float maximumVelocity;
    public boolean nestedScrolled;
    public WeakReference nestedScrollingChildRef;
    public final boolean paddingBottomSystemWindowInsets;
    public final boolean paddingLeftSystemWindowInsets;
    public final boolean paddingRightSystemWindowInsets;
    public final boolean paddingTopSystemWindowInsets;
    public int parentHeight;
    public int parentWidth;
    public int peekHeight;
    public boolean peekHeightAuto;
    public final int peekHeightGestureInsetBuffer;
    public int peekHeightMin;
    public int saveFlags;
    public final ShapeAppearanceModel shapeAppearanceModelDefault;
    public boolean skipCollapsed;
    public int state;
    public final StateSettlingTracker stateSettlingTracker;
    public boolean touchingScrollingChild;
    public VelocityTracker velocityTracker;
    public ViewDragHelper viewDragHelper;
    public WeakReference viewRef;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.SavedState.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }
        };
        public final boolean fitToContents;
        public final boolean hideable;
        public final int peekHeight;
        public final boolean skipCollapsed;
        public final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mSuperState, i);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.state = bottomSheetBehavior.state;
            this.peekHeight = bottomSheetBehavior.peekHeight;
            this.fitToContents = bottomSheetBehavior.fitToContents;
            this.hideable = bottomSheetBehavior.hideable;
            this.skipCollapsed = bottomSheetBehavior.skipCollapsed;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class StateSettlingTracker {
        public final AnonymousClass1 continueSettlingRunnable;
        public boolean isContinueSettlingRunnablePosted;
        public int targetState;

        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.material.bottomsheet.BottomSheetBehavior$StateSettlingTracker$1] */
        private StateSettlingTracker() {
            this.continueSettlingRunnable = new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.StateSettlingTracker.1
                @Override // java.lang.Runnable
                public final void run() {
                    StateSettlingTracker stateSettlingTracker = StateSettlingTracker.this;
                    stateSettlingTracker.isContinueSettlingRunnablePosted = false;
                    ViewDragHelper viewDragHelper = BottomSheetBehavior.this.viewDragHelper;
                    if (viewDragHelper != null && viewDragHelper.continueSettling()) {
                        StateSettlingTracker stateSettlingTracker2 = StateSettlingTracker.this;
                        stateSettlingTracker2.continueSettlingToState(stateSettlingTracker2.targetState);
                        return;
                    }
                    StateSettlingTracker stateSettlingTracker3 = StateSettlingTracker.this;
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.state == 2) {
                        bottomSheetBehavior.setStateInternal(stateSettlingTracker3.targetState);
                    }
                }
            };
        }

        public final void continueSettlingToState(int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            WeakReference weakReference = bottomSheetBehavior.viewRef;
            if (weakReference != null && weakReference.get() != null) {
                this.targetState = i;
                if (!this.isContinueSettlingRunnablePosted) {
                    View view = (View) bottomSheetBehavior.viewRef.get();
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api16Impl.postOnAnimation(view, this.continueSettlingRunnable);
                    this.isContinueSettlingRunnablePosted = true;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.material.bottomsheet.BottomSheetBehavior$4] */
    public BottomSheetBehavior() {
        this.saveFlags = 0;
        this.fitToContents = true;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new StateSettlingTracker();
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.hideFriction = 0.1f;
        this.callbacks = new ArrayList();
        this.expandHalfwayActionId = -1;
        this.dragCallback = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int clampViewPositionHorizontal(View view, int i) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int clampViewPositionVertical(View view, int i) {
                int i2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int expandedOffset = bottomSheetBehavior.getExpandedOffset();
                if (bottomSheetBehavior.hideable) {
                    i2 = bottomSheetBehavior.parentHeight;
                } else {
                    i2 = bottomSheetBehavior.collapsedOffset;
                }
                return MathUtils.clamp(i, expandedOffset, i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int getViewVerticalDragRange() {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.hideable) {
                    return bottomSheetBehavior.parentHeight;
                }
                return bottomSheetBehavior.collapsedOffset;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void onViewDragStateChanged(int i) {
                if (i == 1) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.draggable) {
                        bottomSheetBehavior.setStateInternal(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void onViewPositionChanged(View view, int i, int i2, int i3) {
                BottomSheetBehavior.this.dispatchOnSlide(i2);
            }

            /* JADX WARN: Code restructure failed: missing block: B:28:0x006c, code lost:
            
                if (java.lang.Math.abs(r4.getTop() - r3.getExpandedOffset()) < java.lang.Math.abs(r4.getTop() - r3.halfExpandedOffset)) goto L50;
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x0098, code lost:
            
                if (java.lang.Math.abs(r5 - r3.halfExpandedOffset) < java.lang.Math.abs(r5 - r3.collapsedOffset)) goto L53;
             */
            /* JADX WARN: Code restructure failed: missing block: B:42:0x00b2, code lost:
            
                if (java.lang.Math.abs(r5 - r3.fitToContentsOffset) < java.lang.Math.abs(r5 - r3.collapsedOffset)) goto L50;
             */
            /* JADX WARN: Code restructure failed: missing block: B:46:0x00c1, code lost:
            
                if (r5 < java.lang.Math.abs(r5 - r3.collapsedOffset)) goto L50;
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x00d2, code lost:
            
                if (java.lang.Math.abs(r5 - r6) < java.lang.Math.abs(r5 - r3.collapsedOffset)) goto L53;
             */
            /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
            
                if (r5 > r3.halfExpandedOffset) goto L53;
             */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onViewReleased(android.view.View r4, float r5, float r6) {
                /*
                    r3 = this;
                    r0 = 0
                    int r1 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
                    r2 = 1
                    com.google.android.material.bottomsheet.BottomSheetBehavior r3 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    if (r1 >= 0) goto L1b
                    boolean r5 = r3.fitToContents
                    if (r5 == 0) goto Le
                    goto Lc3
                Le:
                    int r5 = r4.getTop()
                    java.lang.System.currentTimeMillis()
                    int r6 = r3.halfExpandedOffset
                    if (r5 <= r6) goto Lc3
                    goto Ld4
                L1b:
                    boolean r1 = r3.hideable
                    if (r1 == 0) goto L6f
                    boolean r1 = r3.shouldHide(r4, r6)
                    if (r1 == 0) goto L6f
                    float r5 = java.lang.Math.abs(r5)
                    float r0 = java.lang.Math.abs(r6)
                    int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                    if (r5 >= 0) goto L37
                    r5 = 1140457472(0x43fa0000, float:500.0)
                    int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
                    if (r5 > 0) goto L4b
                L37:
                    int r5 = r4.getTop()
                    int r6 = r3.parentHeight
                    int r0 = r3.getExpandedOffset()
                    int r0 = r0 + r6
                    int r0 = r0 / 2
                    if (r5 <= r0) goto L48
                    r5 = r2
                    goto L49
                L48:
                    r5 = 0
                L49:
                    if (r5 == 0) goto L4e
                L4b:
                    r5 = 5
                    goto Ld7
                L4e:
                    boolean r5 = r3.fitToContents
                    if (r5 == 0) goto L54
                    goto Lc3
                L54:
                    int r5 = r4.getTop()
                    int r6 = r3.getExpandedOffset()
                    int r5 = r5 - r6
                    int r5 = java.lang.Math.abs(r5)
                    int r6 = r4.getTop()
                    int r0 = r3.halfExpandedOffset
                    int r6 = r6 - r0
                    int r6 = java.lang.Math.abs(r6)
                    if (r5 >= r6) goto Ld4
                    goto Lc3
                L6f:
                    int r0 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
                    if (r0 == 0) goto L9b
                    float r5 = java.lang.Math.abs(r5)
                    float r6 = java.lang.Math.abs(r6)
                    int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                    if (r5 <= 0) goto L80
                    goto L9b
                L80:
                    boolean r5 = r3.fitToContents
                    if (r5 == 0) goto L85
                    goto Ld6
                L85:
                    int r5 = r4.getTop()
                    int r6 = r3.halfExpandedOffset
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    int r0 = r3.collapsedOffset
                    int r5 = r5 - r0
                    int r5 = java.lang.Math.abs(r5)
                    if (r6 >= r5) goto Ld6
                    goto Ld4
                L9b:
                    int r5 = r4.getTop()
                    boolean r6 = r3.fitToContents
                    if (r6 == 0) goto Lb5
                    int r6 = r3.fitToContentsOffset
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    int r0 = r3.collapsedOffset
                    int r5 = r5 - r0
                    int r5 = java.lang.Math.abs(r5)
                    if (r6 >= r5) goto Ld6
                    goto Lc3
                Lb5:
                    int r6 = r3.halfExpandedOffset
                    if (r5 >= r6) goto Lc5
                    int r6 = r3.collapsedOffset
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    if (r5 >= r6) goto Ld4
                Lc3:
                    r5 = 3
                    goto Ld7
                Lc5:
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    int r0 = r3.collapsedOffset
                    int r5 = r5 - r0
                    int r5 = java.lang.Math.abs(r5)
                    if (r6 >= r5) goto Ld6
                Ld4:
                    r5 = 6
                    goto Ld7
                Ld6:
                    r5 = 4
                Ld7:
                    r3.getClass()
                    r3.startSettling(r4, r5, r2)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass4.onViewReleased(android.view.View, float, float):void");
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean tryCaptureView(View view, int i) {
                View view2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i2 = bottomSheetBehavior.state;
                if (i2 == 1 || bottomSheetBehavior.touchingScrollingChild) {
                    return false;
                }
                if (i2 == 3 && bottomSheetBehavior.activePointerId == i) {
                    WeakReference weakReference = bottomSheetBehavior.nestedScrollingChildRef;
                    if (weakReference != null) {
                        view2 = (View) weakReference.get();
                    } else {
                        view2 = null;
                    }
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                System.currentTimeMillis();
                WeakReference weakReference2 = bottomSheetBehavior.viewRef;
                if (weakReference2 == null || weakReference2.get() != view) {
                    return false;
                }
                return true;
            }
        };
    }

    public static int getChildMeasureSpec(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode != 1073741824) {
            if (size != 0) {
                i3 = Math.min(size, i3);
            }
            return View.MeasureSpec.makeMeasureSpec(i3, VideoPlayer.MEDIA_ERROR_SYSTEM);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
    }

    public final void calculateCollapsedOffset() {
        int calculatePeekHeight = calculatePeekHeight();
        if (this.fitToContents) {
            this.collapsedOffset = Math.max(this.parentHeight - calculatePeekHeight, this.fitToContentsOffset);
        } else {
            this.collapsedOffset = this.parentHeight - calculatePeekHeight;
        }
    }

    public final int calculatePeekHeight() {
        int i;
        int i2;
        int i3;
        if (this.peekHeightAuto) {
            i = Math.min(Math.max(this.peekHeightMin, this.parentHeight - ((this.parentWidth * 9) / 16)), this.childHeight);
            i2 = this.insetBottom;
        } else {
            if (!this.gestureInsetBottomIgnored && !this.paddingBottomSystemWindowInsets && (i3 = this.gestureInsetBottom) > 0) {
                return Math.max(this.peekHeight, i3 + this.peekHeightGestureInsetBuffer);
            }
            i = this.peekHeight;
            i2 = this.insetBottom;
        }
        return i + i2;
    }

    public void disableShapeAnimations() {
        this.interpolatorAnimator = null;
    }

    public final void dispatchOnSlide(int i) {
        View view = (View) this.viewRef.get();
        if (view != null) {
            ArrayList arrayList = this.callbacks;
            if (!arrayList.isEmpty()) {
                int i2 = this.collapsedOffset;
                if (i <= i2 && i2 != getExpandedOffset()) {
                    getExpandedOffset();
                }
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    ((BottomSheetCallback) arrayList.get(i3)).onSlide(view);
                }
            }
        }
    }

    public View findScrollingChild(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (ViewCompat.Api21Impl.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View findScrollingChild = findScrollingChild(viewGroup.getChildAt(i));
                if (findScrollingChild != null) {
                    return findScrollingChild;
                }
            }
        }
        return null;
    }

    public final int getExpandedOffset() {
        int i;
        if (this.fitToContents) {
            return this.fitToContentsOffset;
        }
        int i2 = this.expandedOffset;
        if (this.paddingTopSystemWindowInsets) {
            i = 0;
        } else {
            i = this.insetTop;
        }
        return Math.max(i2, i);
    }

    public int getPeekHeightMin() {
        return this.peekHeightMin;
    }

    public final int getTopOffsetForState(int i) {
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    if (i == 6) {
                        return this.halfExpandedOffset;
                    }
                    throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Invalid state to get top offset: ", i));
                }
                return this.parentHeight;
            }
            return this.collapsedOffset;
        }
        return getExpandedOffset();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onDetachedFromLayoutParams() {
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        View view2;
        ViewDragHelper viewDragHelper;
        if (view.isShown() && this.draggable) {
            int actionMasked = motionEvent.getActionMasked();
            View view3 = null;
            if (actionMasked == 0) {
                this.activePointerId = -1;
                VelocityTracker velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.velocityTracker = null;
                }
            }
            if (this.velocityTracker == null) {
                this.velocityTracker = VelocityTracker.obtain();
            }
            this.velocityTracker.addMovement(motionEvent);
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.touchingScrollingChild = false;
                    this.activePointerId = -1;
                    if (this.ignoreEvents) {
                        this.ignoreEvents = false;
                        return false;
                    }
                }
            } else {
                int x = (int) motionEvent.getX();
                this.initialY = (int) motionEvent.getY();
                if (this.state != 2) {
                    WeakReference weakReference = this.nestedScrollingChildRef;
                    if (weakReference != null) {
                        view2 = (View) weakReference.get();
                    } else {
                        view2 = null;
                    }
                    if (view2 != null && coordinatorLayout.isPointInChildBounds(view2, x, this.initialY)) {
                        this.activePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.touchingScrollingChild = true;
                    }
                }
                if (this.activePointerId == -1 && !coordinatorLayout.isPointInChildBounds(view, x, this.initialY)) {
                    z = true;
                } else {
                    z = false;
                }
                this.ignoreEvents = z;
            }
            if (!this.ignoreEvents && (viewDragHelper = this.viewDragHelper) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
            WeakReference weakReference2 = this.nestedScrollingChildRef;
            if (weakReference2 != null) {
                view3 = (View) weakReference2.get();
            }
            if (actionMasked != 2 || view3 == null || this.ignoreEvents || this.state == 1 || coordinatorLayout.isPointInChildBounds(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.viewDragHelper == null || Math.abs(this.initialY - motionEvent.getY()) <= this.viewDragHelper.mTouchSlop) {
                return false;
            }
            return true;
        }
        this.ignoreEvents = true;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        final boolean z;
        boolean z2;
        float f;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (ViewCompat.Api16Impl.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.Api16Impl.getFitsSystemWindows(view)) {
            view.setFitsSystemWindows(true);
        }
        int i2 = 0;
        if (this.viewRef == null) {
            this.peekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            if (!this.gestureInsetBottomIgnored && !this.peekHeightAuto) {
                z = true;
            } else {
                z = false;
            }
            if (this.paddingBottomSystemWindowInsets || this.paddingLeftSystemWindowInsets || this.paddingRightSystemWindowInsets || this.marginLeftSystemWindowInsets || this.marginRightSystemWindowInsets || this.marginTopSystemWindowInsets || z) {
                ViewUtils.doOnApplyWindowInsets(view, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
                    /* JADX WARN: Removed duplicated region for block: B:32:0x007a  */
                    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
                    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final androidx.core.view.WindowInsetsCompat onApplyWindowInsets(android.view.View r12, androidx.core.view.WindowInsetsCompat r13, com.google.android.material.internal.ViewUtils.RelativePadding r14) {
                        /*
                            r11 = this;
                            r0 = 7
                            androidx.core.graphics.Insets r0 = r13.getInsets(r0)
                            r1 = 32
                            androidx.core.graphics.Insets r1 = r13.getInsets(r1)
                            int r2 = r0.top
                            com.google.android.material.bottomsheet.BottomSheetBehavior r3 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                            r3.insetTop = r2
                            boolean r2 = com.google.android.material.internal.ViewUtils.isLayoutRtl(r12)
                            int r4 = r12.getPaddingBottom()
                            int r5 = r12.getPaddingLeft()
                            int r6 = r12.getPaddingRight()
                            boolean r7 = r3.paddingBottomSystemWindowInsets
                            if (r7 == 0) goto L2e
                            int r4 = r13.getSystemWindowInsetBottom()
                            r3.insetBottom = r4
                            int r8 = r14.bottom
                            int r4 = r4 + r8
                        L2e:
                            boolean r8 = r3.paddingLeftSystemWindowInsets
                            int r9 = r0.left
                            if (r8 == 0) goto L3c
                            if (r2 == 0) goto L39
                            int r5 = r14.end
                            goto L3b
                        L39:
                            int r5 = r14.start
                        L3b:
                            int r5 = r5 + r9
                        L3c:
                            boolean r8 = r3.paddingRightSystemWindowInsets
                            int r10 = r0.right
                            if (r8 == 0) goto L4b
                            if (r2 == 0) goto L47
                            int r14 = r14.start
                            goto L49
                        L47:
                            int r14 = r14.end
                        L49:
                            int r6 = r14 + r10
                        L4b:
                            android.view.ViewGroup$LayoutParams r14 = r12.getLayoutParams()
                            android.view.ViewGroup$MarginLayoutParams r14 = (android.view.ViewGroup.MarginLayoutParams) r14
                            boolean r2 = r3.marginLeftSystemWindowInsets
                            r8 = 1
                            if (r2 == 0) goto L5e
                            int r2 = r14.leftMargin
                            if (r2 == r9) goto L5e
                            r14.leftMargin = r9
                            r2 = r8
                            goto L5f
                        L5e:
                            r2 = 0
                        L5f:
                            boolean r9 = r3.marginRightSystemWindowInsets
                            if (r9 == 0) goto L6a
                            int r9 = r14.rightMargin
                            if (r9 == r10) goto L6a
                            r14.rightMargin = r10
                            r2 = r8
                        L6a:
                            boolean r9 = r3.marginTopSystemWindowInsets
                            if (r9 == 0) goto L77
                            int r9 = r14.topMargin
                            int r0 = r0.top
                            if (r9 == r0) goto L77
                            r14.topMargin = r0
                            goto L78
                        L77:
                            r8 = r2
                        L78:
                            if (r8 == 0) goto L7d
                            r12.setLayoutParams(r14)
                        L7d:
                            int r14 = r12.getPaddingTop()
                            r12.setPadding(r5, r14, r6, r4)
                            boolean r11 = r2
                            if (r11 == 0) goto L8c
                            int r12 = r1.bottom
                            r3.gestureInsetBottom = r12
                        L8c:
                            if (r7 != 0) goto L90
                            if (r11 == 0) goto L93
                        L90:
                            r3.updatePeekHeight()
                        L93:
                            return r13
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass3.onApplyWindowInsets(android.view.View, androidx.core.view.WindowInsetsCompat, com.google.android.material.internal.ViewUtils$RelativePadding):androidx.core.view.WindowInsetsCompat");
                    }
                });
            }
            this.viewRef = new WeakReference(view);
            MaterialShapeDrawable materialShapeDrawable = this.materialShapeDrawable;
            if (materialShapeDrawable != null) {
                ViewCompat.Api16Impl.setBackground(view, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.materialShapeDrawable;
                float f2 = this.elevation;
                if (f2 == -1.0f) {
                    f2 = ViewCompat.Api21Impl.getElevation(view);
                }
                materialShapeDrawable2.setElevation(f2);
                if (this.state == 3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.isShapeExpanded = z2;
                MaterialShapeDrawable materialShapeDrawable3 = this.materialShapeDrawable;
                if (z2) {
                    f = 0.0f;
                } else {
                    f = 1.0f;
                }
                materialShapeDrawable3.setInterpolation(f);
            } else {
                ColorStateList colorStateList = this.backgroundTint;
                if (colorStateList != null) {
                    ViewCompat.Api21Impl.setBackgroundTintList(view, colorStateList);
                }
            }
            updateAccessibilityActions$1();
            if (ViewCompat.Api16Impl.getImportantForAccessibility(view) == 0) {
                ViewCompat.Api16Impl.setImportantForAccessibility(view, 1);
            }
        }
        if (this.viewDragHelper == null) {
            this.viewDragHelper = ViewDragHelper.create(coordinatorLayout, this.dragCallback);
        }
        int top = view.getTop();
        coordinatorLayout.onLayoutChild(view, i);
        this.parentWidth = coordinatorLayout.getWidth();
        this.parentHeight = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.childHeight = height;
        int i3 = this.parentHeight;
        int i4 = i3 - height;
        int i5 = this.insetTop;
        if (i4 < i5) {
            if (this.paddingTopSystemWindowInsets) {
                this.childHeight = i3;
            } else {
                this.childHeight = i3 - i5;
            }
        }
        this.fitToContentsOffset = Math.max(0, i3 - this.childHeight);
        this.halfExpandedOffset = (int) ((1.0f - this.halfExpandedRatio) * this.parentHeight);
        calculateCollapsedOffset();
        int i6 = this.state;
        if (i6 == 3) {
            view.offsetTopAndBottom(getExpandedOffset());
        } else if (i6 == 6) {
            view.offsetTopAndBottom(this.halfExpandedOffset);
        } else if (this.hideable && i6 == 5) {
            view.offsetTopAndBottom(this.parentHeight);
        } else if (i6 == 4) {
            view.offsetTopAndBottom(this.collapsedOffset);
        } else if (i6 == 1 || i6 == 2) {
            view.offsetTopAndBottom(top - view.getTop());
        }
        this.nestedScrollingChildRef = new WeakReference(findScrollingChild(view));
        while (true) {
            ArrayList arrayList = this.callbacks;
            if (i2 >= arrayList.size()) {
                return true;
            }
            ((BottomSheetCallback) arrayList.get(i2)).onLayout(view);
            i2++;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.maxWidth, marginLayoutParams.width), getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, this.maxHeight, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onNestedPreFling(View view, View view2, float f) {
        WeakReference weakReference = this.nestedScrollingChildRef;
        if (weakReference != null && view2 == weakReference.get() && this.state != 3) {
            return true;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        View view3;
        if (i3 == 1) {
            return;
        }
        WeakReference weakReference = this.nestedScrollingChildRef;
        if (weakReference != null) {
            view3 = (View) weakReference.get();
        } else {
            view3 = null;
        }
        if (view2 != view3) {
            return;
        }
        int top = view.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < getExpandedOffset()) {
                int expandedOffset = top - getExpandedOffset();
                iArr[1] = expandedOffset;
                int i5 = -expandedOffset;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                view.offsetTopAndBottom(i5);
                setStateInternal(3);
            } else {
                if (!this.draggable) {
                    return;
                }
                iArr[1] = i2;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                view.offsetTopAndBottom(-i2);
                setStateInternal(1);
            }
        } else if (i2 < 0 && !view2.canScrollVertically(-1)) {
            int i6 = this.collapsedOffset;
            if (i4 > i6 && !this.hideable) {
                int i7 = top - i6;
                iArr[1] = i7;
                int i8 = -i7;
                WeakHashMap weakHashMap3 = ViewCompat.sViewPropertyAnimatorMap;
                view.offsetTopAndBottom(i8);
                setStateInternal(4);
            } else {
                if (!this.draggable) {
                    return;
                }
                iArr[1] = i2;
                WeakHashMap weakHashMap4 = ViewCompat.sViewPropertyAnimatorMap;
                view.offsetTopAndBottom(-i2);
                setStateInternal(1);
            }
        }
        dispatchOnSlide(view.getTop());
        this.lastNestedScrollDy = i2;
        this.nestedScrolled = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onRestoreInstanceState(View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i = this.saveFlags;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.peekHeight = savedState.peekHeight;
            }
            if (i == -1 || (i & 2) == 2) {
                this.fitToContents = savedState.fitToContents;
            }
            if (i == -1 || (i & 4) == 4) {
                this.hideable = savedState.hideable;
            }
            if (i == -1 || (i & 8) == 8) {
                this.skipCollapsed = savedState.skipCollapsed;
            }
        }
        int i2 = savedState.state;
        if (i2 != 1 && i2 != 2) {
            this.state = i2;
        } else {
            this.state = 4;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable onSaveInstanceState(View view) {
        return new SavedState((Parcelable) View.BaseSavedState.EMPTY_STATE, (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
        this.lastNestedScrollDy = 0;
        this.nestedScrolled = false;
        if ((i & 2) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        if (r3.getTop() <= r1.halfExpandedOffset) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006f, code lost:
    
        if (java.lang.Math.abs(r2 - r1.fitToContentsOffset) < java.lang.Math.abs(r2 - r1.collapsedOffset)) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007e, code lost:
    
        if (r2 < java.lang.Math.abs(r2 - r1.collapsedOffset)) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008e, code lost:
    
        if (java.lang.Math.abs(r2 - r4) < java.lang.Math.abs(r2 - r1.collapsedOffset)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a9, code lost:
    
        if (java.lang.Math.abs(r2 - r1.halfExpandedOffset) < java.lang.Math.abs(r2 - r1.collapsedOffset)) goto L50;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout r2, android.view.View r3, android.view.View r4, int r5) {
        /*
            r1 = this;
            int r2 = r3.getTop()
            int r5 = r1.getExpandedOffset()
            r0 = 3
            if (r2 != r5) goto Lf
            r1.setStateInternal(r0)
            return
        Lf:
            java.lang.ref.WeakReference r2 = r1.nestedScrollingChildRef
            if (r2 == 0) goto Lb4
            java.lang.Object r2 = r2.get()
            if (r4 != r2) goto Lb4
            boolean r2 = r1.nestedScrolled
            if (r2 != 0) goto L1f
            goto Lb4
        L1f:
            int r2 = r1.lastNestedScrollDy
            if (r2 <= 0) goto L33
            boolean r2 = r1.fitToContents
            if (r2 == 0) goto L29
            goto Lae
        L29:
            int r2 = r3.getTop()
            int r4 = r1.halfExpandedOffset
            if (r2 <= r4) goto Lae
            goto Lab
        L33:
            boolean r2 = r1.hideable
            if (r2 == 0) goto L54
            android.view.VelocityTracker r2 = r1.velocityTracker
            if (r2 != 0) goto L3d
            r2 = 0
            goto L4c
        L3d:
            r4 = 1000(0x3e8, float:1.401E-42)
            float r5 = r1.maximumVelocity
            r2.computeCurrentVelocity(r4, r5)
            android.view.VelocityTracker r2 = r1.velocityTracker
            int r4 = r1.activePointerId
            float r2 = r2.getYVelocity(r4)
        L4c:
            boolean r2 = r1.shouldHide(r3, r2)
            if (r2 == 0) goto L54
            r0 = 5
            goto Lae
        L54:
            int r2 = r1.lastNestedScrollDy
            if (r2 != 0) goto L91
            int r2 = r3.getTop()
            boolean r4 = r1.fitToContents
            if (r4 == 0) goto L72
            int r4 = r1.fitToContentsOffset
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.collapsedOffset
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
            goto Lae
        L72:
            int r4 = r1.halfExpandedOffset
            if (r2 >= r4) goto L81
            int r4 = r1.collapsedOffset
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            if (r2 >= r4) goto Lab
            goto Lae
        L81:
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.collapsedOffset
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
            goto Lab
        L91:
            boolean r2 = r1.fitToContents
            if (r2 == 0) goto L96
            goto Lad
        L96:
            int r2 = r3.getTop()
            int r4 = r1.halfExpandedOffset
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.collapsedOffset
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
        Lab:
            r0 = 6
            goto Lae
        Lad:
            r0 = 4
        Lae:
            r2 = 0
            r1.startSettling(r3, r0, r2)
            r1.nestedScrolled = r2
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = false;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.state;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null && (this.draggable || i == 1)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            this.activePointerId = -1;
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.velocityTracker = null;
            }
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (this.viewDragHelper != null && (this.draggable || this.state == 1)) {
            z2 = true;
        }
        if (z2 && actionMasked == 2 && !this.ignoreEvents) {
            float abs = Math.abs(this.initialY - motionEvent.getY());
            ViewDragHelper viewDragHelper2 = this.viewDragHelper;
            if (abs > viewDragHelper2.mTouchSlop) {
                viewDragHelper2.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.ignoreEvents;
    }

    public final void setHideable(boolean z) {
        if (this.hideable != z) {
            this.hideable = z;
            if (!z && this.state == 5) {
                setState(4);
            }
            updateAccessibilityActions$1();
        }
    }

    public final void setPeekHeight(int i) {
        boolean z = false;
        if (i == -1) {
            if (!this.peekHeightAuto) {
                this.peekHeightAuto = true;
                z = true;
            }
        } else if (this.peekHeightAuto || this.peekHeight != i) {
            this.peekHeightAuto = false;
            this.peekHeight = Math.max(0, i);
            z = true;
        }
        if (z) {
            updatePeekHeight();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
    
        if (androidx.core.view.ViewCompat.Api19Impl.isAttachedToWindow(r4) != false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setState(int r4) {
        /*
            r3 = this;
            r0 = 1
            if (r4 == r0) goto L64
            r1 = 2
            if (r4 != r1) goto L7
            goto L64
        L7:
            boolean r1 = r3.hideable
            if (r1 != 0) goto L16
            r1 = 5
            if (r4 != r1) goto L16
            java.lang.String r3 = "Cannot set state: "
            java.lang.String r0 = "BottomSheetBehavior"
            androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0.m(r3, r4, r0)
            return
        L16:
            r1 = 6
            if (r4 != r1) goto L27
            boolean r1 = r3.fitToContents
            if (r1 == 0) goto L27
            int r1 = r3.getTopOffsetForState(r4)
            int r2 = r3.fitToContentsOffset
            if (r1 > r2) goto L27
            r1 = 3
            goto L28
        L27:
            r1 = r4
        L28:
            java.lang.ref.WeakReference r2 = r3.viewRef
            if (r2 == 0) goto L60
            java.lang.Object r2 = r2.get()
            if (r2 != 0) goto L33
            goto L60
        L33:
            java.lang.ref.WeakReference r4 = r3.viewRef
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            com.google.android.material.bottomsheet.BottomSheetBehavior$1 r2 = new com.google.android.material.bottomsheet.BottomSheetBehavior$1
            r2.<init>()
            android.view.ViewParent r3 = r4.getParent()
            if (r3 == 0) goto L55
            boolean r3 = r3.isLayoutRequested()
            if (r3 == 0) goto L55
            java.util.WeakHashMap r3 = androidx.core.view.ViewCompat.sViewPropertyAnimatorMap
            boolean r3 = androidx.core.view.ViewCompat.Api19Impl.isAttachedToWindow(r4)
            if (r3 == 0) goto L55
            goto L56
        L55:
            r0 = 0
        L56:
            if (r0 == 0) goto L5c
            r4.post(r2)
            goto L63
        L5c:
            r2.run()
            goto L63
        L60:
            r3.setStateInternal(r4)
        L63:
            return
        L64:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "STATE_"
            r1.<init>(r2)
            if (r4 != r0) goto L72
            java.lang.String r4 = "DRAGGING"
            goto L74
        L72:
            java.lang.String r4 = "SETTLING"
        L74:
            java.lang.String r0 = " should not be set externally."
            java.lang.String r4 = androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0.m(r1, r4, r0)
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.setState(int):void");
    }

    public final void setStateInternal(int i) {
        View view;
        if (this.state == i) {
            return;
        }
        this.state = i;
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = 0;
        if (i == 3) {
            updateImportantForAccessibility(true);
        } else if (i == 6 || i == 5 || i == 4) {
            updateImportantForAccessibility(false);
        }
        updateDrawableForTargetState(i);
        while (true) {
            ArrayList arrayList = this.callbacks;
            if (i2 < arrayList.size()) {
                ((BottomSheetCallback) arrayList.get(i2)).onStateChanged(view, i);
                i2++;
            } else {
                updateAccessibilityActions$1();
                return;
            }
        }
    }

    public final boolean shouldHide(View view, float f) {
        if (this.skipCollapsed) {
            return true;
        }
        if (view.getTop() < this.collapsedOffset) {
            return false;
        }
        if (Math.abs(((f * this.hideFriction) + view.getTop()) - this.collapsedOffset) / calculatePeekHeight() > 0.5f) {
            return true;
        }
        return false;
    }

    public final void startSettling(View view, int i, boolean z) {
        boolean z2;
        int topOffsetForState = getTopOffsetForState(i);
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null && (!z ? viewDragHelper.smoothSlideViewTo(view, view.getLeft(), topOffsetForState) : viewDragHelper.settleCapturedViewAt(view.getLeft(), topOffsetForState))) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            setStateInternal(2);
            updateDrawableForTargetState(i);
            this.stateSettlingTracker.continueSettlingToState(i);
            return;
        }
        setStateInternal(i);
    }

    public final void updateAccessibilityActions$1() {
        View view;
        int i;
        boolean z;
        AccessibilityDelegateCompat accessibilityDelegateCompat;
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeActionWithId(view, 524288);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        ViewCompat.removeActionWithId(view, 262144);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        ViewCompat.removeActionWithId(view, QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        int i2 = this.expandHalfwayActionId;
        if (i2 != -1) {
            ViewCompat.removeActionWithId(view, i2);
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        }
        final int i3 = 6;
        if (!this.fitToContents && this.state != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            AccessibilityViewCommand accessibilityViewCommand = new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2) {
                    BottomSheetBehavior.this.setState(i3);
                    return true;
                }
            };
            List actionList = ViewCompat.getActionList(view);
            int i4 = 0;
            while (true) {
                if (i4 < actionList.size()) {
                    if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) actionList.get(i4)).mAction).getLabel())) {
                        i = ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) actionList.get(i4)).getId();
                        break;
                    }
                    i4++;
                } else {
                    int i5 = 0;
                    int i6 = -1;
                    while (true) {
                        int[] iArr = ViewCompat.ACCESSIBILITY_ACTIONS_RESOURCE_IDS;
                        if (i5 >= iArr.length || i6 != -1) {
                            break;
                        }
                        int i7 = iArr[i5];
                        boolean z2 = true;
                        for (int i8 = 0; i8 < actionList.size(); i8++) {
                            if (((AccessibilityNodeInfoCompat.AccessibilityActionCompat) actionList.get(i8)).getId() != i7) {
                                z = true;
                            } else {
                                z = false;
                            }
                            z2 &= z;
                        }
                        if (z2) {
                            i6 = i7;
                        }
                        i5++;
                    }
                    i = i6;
                }
            }
            if (i != -1) {
                AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i, string, accessibilityViewCommand);
                View.AccessibilityDelegate accessibilityDelegate = ViewCompat.Api29Impl.getAccessibilityDelegate(view);
                if (accessibilityDelegate == null) {
                    accessibilityDelegateCompat = null;
                } else if (accessibilityDelegate instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter) {
                    accessibilityDelegateCompat = ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) accessibilityDelegate).mCompat;
                } else {
                    accessibilityDelegateCompat = new AccessibilityDelegateCompat(accessibilityDelegate);
                }
                if (accessibilityDelegateCompat == null) {
                    accessibilityDelegateCompat = new AccessibilityDelegateCompat();
                }
                ViewCompat.setAccessibilityDelegate(view, accessibilityDelegateCompat);
                ViewCompat.removeActionWithId(view, accessibilityActionCompat.getId());
                ViewCompat.getActionList(view).add(accessibilityActionCompat);
                ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
            }
            this.expandHalfwayActionId = i;
        }
        if (this.hideable) {
            final int i9 = 5;
            if (this.state != 5) {
                ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean perform(View view2) {
                        BottomSheetBehavior.this.setState(i9);
                        return true;
                    }
                });
            }
        }
        int i10 = this.state;
        final int i11 = 4;
        final int i12 = 3;
        if (i10 != 3) {
            if (i10 != 4) {
                if (i10 == 6) {
                    ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, null, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean perform(View view2) {
                            BottomSheetBehavior.this.setState(i11);
                            return true;
                        }
                    });
                    ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean perform(View view2) {
                            BottomSheetBehavior.this.setState(i12);
                            return true;
                        }
                    });
                    return;
                }
                return;
            }
            if (this.fitToContents) {
                i3 = 3;
            }
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2) {
                    BottomSheetBehavior.this.setState(i3);
                    return true;
                }
            });
            return;
        }
        if (this.fitToContents) {
            i3 = 4;
        }
        ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, null, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view2) {
                BottomSheetBehavior.this.setState(i3);
                return true;
            }
        });
    }

    public final void updateDrawableForTargetState(int i) {
        boolean z;
        ValueAnimator valueAnimator;
        float f;
        if (i == 2) {
            return;
        }
        if (i == 3) {
            z = true;
        } else {
            z = false;
        }
        if (this.isShapeExpanded != z) {
            this.isShapeExpanded = z;
            if (this.materialShapeDrawable != null && (valueAnimator = this.interpolatorAnimator) != null) {
                if (valueAnimator.isRunning()) {
                    this.interpolatorAnimator.reverse();
                    return;
                }
                if (z) {
                    f = 0.0f;
                } else {
                    f = 1.0f;
                }
                this.interpolatorAnimator.setFloatValues(1.0f - f, f);
                this.interpolatorAnimator.start();
            }
        }
    }

    public final void updateImportantForAccessibility(boolean z) {
        WeakReference weakReference = this.viewRef;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (z) {
            if (this.importantForAccessibilityMap == null) {
                this.importantForAccessibilityMap = new HashMap(childCount);
            } else {
                return;
            }
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            if (childAt != this.viewRef.get() && z) {
                ((HashMap) this.importantForAccessibilityMap).put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
            }
        }
        if (!z) {
            this.importantForAccessibilityMap = null;
        }
    }

    public final void updatePeekHeight() {
        View view;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
            if (this.state == 4 && (view = (View) this.viewRef.get()) != null) {
                view.requestLayout();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.material.bottomsheet.BottomSheetBehavior$4] */
    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.saveFlags = 0;
        this.fitToContents = true;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new StateSettlingTracker();
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.hideFriction = 0.1f;
        this.callbacks = new ArrayList();
        this.expandHalfwayActionId = -1;
        this.dragCallback = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int clampViewPositionHorizontal(View view, int i2) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int clampViewPositionVertical(View view, int i2) {
                int i22;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int expandedOffset = bottomSheetBehavior.getExpandedOffset();
                if (bottomSheetBehavior.hideable) {
                    i22 = bottomSheetBehavior.parentHeight;
                } else {
                    i22 = bottomSheetBehavior.collapsedOffset;
                }
                return MathUtils.clamp(i2, expandedOffset, i22);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int getViewVerticalDragRange() {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.hideable) {
                    return bottomSheetBehavior.parentHeight;
                }
                return bottomSheetBehavior.collapsedOffset;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void onViewDragStateChanged(int i2) {
                if (i2 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.draggable) {
                        bottomSheetBehavior.setStateInternal(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void onViewPositionChanged(View view, int i2, int i22, int i3) {
                BottomSheetBehavior.this.dispatchOnSlide(i22);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void onViewReleased(View view, float f, float f2) {
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                    	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    this = this;
                    r0 = 0
                    int r1 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
                    r2 = 1
                    com.google.android.material.bottomsheet.BottomSheetBehavior r3 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    if (r1 >= 0) goto L1b
                    boolean r5 = r3.fitToContents
                    if (r5 == 0) goto Le
                    goto Lc3
                Le:
                    int r5 = r4.getTop()
                    java.lang.System.currentTimeMillis()
                    int r6 = r3.halfExpandedOffset
                    if (r5 <= r6) goto Lc3
                    goto Ld4
                L1b:
                    boolean r1 = r3.hideable
                    if (r1 == 0) goto L6f
                    boolean r1 = r3.shouldHide(r4, r6)
                    if (r1 == 0) goto L6f
                    float r5 = java.lang.Math.abs(r5)
                    float r0 = java.lang.Math.abs(r6)
                    int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                    if (r5 >= 0) goto L37
                    r5 = 1140457472(0x43fa0000, float:500.0)
                    int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
                    if (r5 > 0) goto L4b
                L37:
                    int r5 = r4.getTop()
                    int r6 = r3.parentHeight
                    int r0 = r3.getExpandedOffset()
                    int r0 = r0 + r6
                    int r0 = r0 / 2
                    if (r5 <= r0) goto L48
                    r5 = r2
                    goto L49
                L48:
                    r5 = 0
                L49:
                    if (r5 == 0) goto L4e
                L4b:
                    r5 = 5
                    goto Ld7
                L4e:
                    boolean r5 = r3.fitToContents
                    if (r5 == 0) goto L54
                    goto Lc3
                L54:
                    int r5 = r4.getTop()
                    int r6 = r3.getExpandedOffset()
                    int r5 = r5 - r6
                    int r5 = java.lang.Math.abs(r5)
                    int r6 = r4.getTop()
                    int r0 = r3.halfExpandedOffset
                    int r6 = r6 - r0
                    int r6 = java.lang.Math.abs(r6)
                    if (r5 >= r6) goto Ld4
                    goto Lc3
                L6f:
                    int r0 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
                    if (r0 == 0) goto L9b
                    float r5 = java.lang.Math.abs(r5)
                    float r6 = java.lang.Math.abs(r6)
                    int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                    if (r5 <= 0) goto L80
                    goto L9b
                L80:
                    boolean r5 = r3.fitToContents
                    if (r5 == 0) goto L85
                    goto Ld6
                L85:
                    int r5 = r4.getTop()
                    int r6 = r3.halfExpandedOffset
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    int r0 = r3.collapsedOffset
                    int r5 = r5 - r0
                    int r5 = java.lang.Math.abs(r5)
                    if (r6 >= r5) goto Ld6
                    goto Ld4
                L9b:
                    int r5 = r4.getTop()
                    boolean r6 = r3.fitToContents
                    if (r6 == 0) goto Lb5
                    int r6 = r3.fitToContentsOffset
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    int r0 = r3.collapsedOffset
                    int r5 = r5 - r0
                    int r5 = java.lang.Math.abs(r5)
                    if (r6 >= r5) goto Ld6
                    goto Lc3
                Lb5:
                    int r6 = r3.halfExpandedOffset
                    if (r5 >= r6) goto Lc5
                    int r6 = r3.collapsedOffset
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    if (r5 >= r6) goto Ld4
                Lc3:
                    r5 = 3
                    goto Ld7
                Lc5:
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    int r0 = r3.collapsedOffset
                    int r5 = r5 - r0
                    int r5 = java.lang.Math.abs(r5)
                    if (r6 >= r5) goto Ld6
                Ld4:
                    r5 = 6
                    goto Ld7
                Ld6:
                    r5 = 4
                Ld7:
                    r3.getClass()
                    r3.startSettling(r4, r5, r2)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass4.onViewReleased(android.view.View, float, float):void");
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean tryCaptureView(View view, int i2) {
                View view2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i22 = bottomSheetBehavior.state;
                if (i22 == 1 || bottomSheetBehavior.touchingScrollingChild) {
                    return false;
                }
                if (i22 == 3 && bottomSheetBehavior.activePointerId == i2) {
                    WeakReference weakReference = bottomSheetBehavior.nestedScrollingChildRef;
                    if (weakReference != null) {
                        view2 = (View) weakReference.get();
                    } else {
                        view2 = null;
                    }
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                System.currentTimeMillis();
                WeakReference weakReference2 = bottomSheetBehavior.viewRef;
                if (weakReference2 == null || weakReference2.get() != view) {
                    return false;
                }
                return true;
            }
        };
        this.peekHeightGestureInsetBuffer = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(3)) {
            this.backgroundTint = MaterialResources.getColorStateList(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(20)) {
            this.shapeAppearanceModelDefault = ShapeAppearanceModel.builder(context, attributeSet, R.attr.bottomSheetStyle, 2132018815).build();
        }
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModelDefault;
        if (shapeAppearanceModel != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
            this.materialShapeDrawable = materialShapeDrawable;
            materialShapeDrawable.initializeElevationOverlay(context);
            ColorStateList colorStateList = this.backgroundTint;
            if (colorStateList != null) {
                this.materialShapeDrawable.setFillColor(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.materialShapeDrawable.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.interpolatorAnimator = ofFloat;
        ofFloat.setDuration(500L);
        this.interpolatorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MaterialShapeDrawable materialShapeDrawable2 = BottomSheetBehavior.this.materialShapeDrawable;
                if (materialShapeDrawable2 != null) {
                    materialShapeDrawable2.setInterpolation(floatValue);
                }
            }
        });
        this.elevation = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.maxWidth = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.maxHeight = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue != null && (i = peekValue.data) == -1) {
            setPeekHeight(i);
        } else {
            setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        setHideable(obtainStyledAttributes.getBoolean(8, false));
        this.gestureInsetBottomIgnored = obtainStyledAttributes.getBoolean(12, false);
        boolean z = obtainStyledAttributes.getBoolean(6, true);
        if (this.fitToContents != z) {
            this.fitToContents = z;
            if (this.viewRef != null) {
                calculateCollapsedOffset();
            }
            setStateInternal((this.fitToContents && this.state == 6) ? 3 : this.state);
            updateAccessibilityActions$1();
        }
        this.skipCollapsed = obtainStyledAttributes.getBoolean(11, false);
        this.draggable = obtainStyledAttributes.getBoolean(4, true);
        this.saveFlags = obtainStyledAttributes.getInt(10, 0);
        float f = obtainStyledAttributes.getFloat(7, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.halfExpandedRatio = f;
            if (this.viewRef != null) {
                this.halfExpandedOffset = (int) ((1.0f - f) * this.parentHeight);
            }
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(5);
            if (peekValue2 != null && peekValue2.type == 16) {
                int i2 = peekValue2.data;
                if (i2 >= 0) {
                    this.expandedOffset = i2;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.expandedOffset = dimensionPixelOffset;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.paddingBottomSystemWindowInsets = obtainStyledAttributes.getBoolean(16, false);
            this.paddingLeftSystemWindowInsets = obtainStyledAttributes.getBoolean(17, false);
            this.paddingRightSystemWindowInsets = obtainStyledAttributes.getBoolean(18, false);
            this.paddingTopSystemWindowInsets = obtainStyledAttributes.getBoolean(19, true);
            this.marginLeftSystemWindowInsets = obtainStyledAttributes.getBoolean(13, false);
            this.marginRightSystemWindowInsets = obtainStyledAttributes.getBoolean(14, false);
            this.marginTopSystemWindowInsets = obtainStyledAttributes.getBoolean(15, false);
            obtainStyledAttributes.recycle();
            this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class BottomSheetCallback {
        public abstract void onSlide(View view);

        public abstract void onStateChanged(View view, int i);

        public void onLayout(View view) {
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }
}
