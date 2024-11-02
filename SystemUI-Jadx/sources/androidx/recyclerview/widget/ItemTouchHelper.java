package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.reflect.view.SeslHapticFeedbackConstantsReflector;
import com.android.systemui.R;
import com.android.systemui.controls.management.FavoritesModel$itemTouchHelperCallback$1;
import com.android.systemui.controls.management.model.ReorderStructureModel$itemTouchHelper$1;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public final Callback mCallback;
    public List mDistances;
    public long mDragScrollStartTimeInMs;
    public float mDx;
    public float mDy;
    public GestureDetectorCompat mGestureDetector;
    public float mInitialTouchX;
    public float mInitialTouchY;
    public ItemTouchHelperGestureListener mItemTouchHelperGestureListener;
    public float mMaxSwipeVelocity;
    public RecyclerView mRecyclerView;
    public int mSelectedFlags;
    public float mSelectedStartX;
    public float mSelectedStartY;
    public int mSlop;
    public List mSwapTargets;
    public float mSwipeEscapeVelocity;
    public Rect mTmpRect;
    public VelocityTracker mVelocityTracker;
    public final List mPendingCleanup = new ArrayList();
    public final float[] mTmpPosition = new float[2];
    public RecyclerView.ViewHolder mSelected = null;
    public int mActivePointerId = -1;
    public int mActionState = 0;
    public final List mRecoverAnimations = new ArrayList();
    public final AnonymousClass1 mScrollRunnable = new AnonymousClass1();
    public View mOverdrawChild = null;
    public int mOverdrawChildPosition = -1;
    public final AnonymousClass2 mOnItemTouchListener = new RecyclerView.OnItemTouchListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.2
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            int findPointerIndex;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            itemTouchHelper.mGestureDetector.mImpl.mDetector.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            RecoverAnimation recoverAnimation = null;
            if (actionMasked == 0) {
                itemTouchHelper.mActivePointerId = motionEvent.getPointerId(0);
                itemTouchHelper.mInitialTouchX = motionEvent.getX();
                Log.i("ItemTouchHelper", "onInterceptTouchEvent: #1 set mInitialTouchX = " + itemTouchHelper.mInitialTouchX);
                itemTouchHelper.mInitialTouchY = motionEvent.getY();
                VelocityTracker velocityTracker = itemTouchHelper.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                itemTouchHelper.mVelocityTracker = VelocityTracker.obtain();
                if (itemTouchHelper.mSelected == null) {
                    ArrayList arrayList = (ArrayList) itemTouchHelper.mRecoverAnimations;
                    if (!arrayList.isEmpty()) {
                        View findChildView = itemTouchHelper.findChildView(motionEvent);
                        int size = arrayList.size() - 1;
                        while (true) {
                            if (size < 0) {
                                break;
                            }
                            RecoverAnimation recoverAnimation2 = (RecoverAnimation) arrayList.get(size);
                            if (recoverAnimation2.mViewHolder.itemView == findChildView) {
                                recoverAnimation = recoverAnimation2;
                                break;
                            }
                            size--;
                        }
                    }
                    if (recoverAnimation != null) {
                        Log.i("ItemTouchHelper", "onInterceptTouchEvent: #2 mInitialTouchX = " + itemTouchHelper.mInitialTouchX + " animation.mX = " + recoverAnimation.mX);
                        itemTouchHelper.mInitialTouchX = itemTouchHelper.mInitialTouchX - recoverAnimation.mX;
                        StringBuilder sb = new StringBuilder("onInterceptTouchEvent: #2 set mInitialTouchX = ");
                        sb.append(itemTouchHelper.mInitialTouchX);
                        Log.i("ItemTouchHelper", sb.toString());
                        itemTouchHelper.mInitialTouchY -= recoverAnimation.mY;
                        itemTouchHelper.endRecoverAnimation(recoverAnimation.mViewHolder, true);
                        if (((ArrayList) itemTouchHelper.mPendingCleanup).remove(recoverAnimation.mViewHolder.itemView)) {
                            itemTouchHelper.mCallback.clearView(itemTouchHelper.mRecyclerView, recoverAnimation.mViewHolder);
                        }
                        itemTouchHelper.select(recoverAnimation.mViewHolder, recoverAnimation.mActionState);
                        itemTouchHelper.updateDxDy(itemTouchHelper.mSelectedFlags, 0, motionEvent);
                    }
                }
            } else if (actionMasked != 3 && actionMasked != 1) {
                int i = itemTouchHelper.mActivePointerId;
                if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                    itemTouchHelper.checkSelectForSwipe(actionMasked, findPointerIndex, motionEvent);
                }
            } else {
                itemTouchHelper.mActivePointerId = -1;
                itemTouchHelper.select(null, 0);
            }
            VelocityTracker velocityTracker2 = itemTouchHelper.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            if (itemTouchHelper.mSelected != null) {
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onRequestDisallowInterceptTouchEvent(boolean z) {
            if (!z) {
                return;
            }
            ItemTouchHelper.this.select(null, 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onTouchEvent(MotionEvent motionEvent) {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            itemTouchHelper.mGestureDetector.mImpl.mDetector.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = itemTouchHelper.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (itemTouchHelper.mActivePointerId == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int findPointerIndex = motionEvent.findPointerIndex(itemTouchHelper.mActivePointerId);
            if (findPointerIndex >= 0) {
                itemTouchHelper.checkSelectForSwipe(actionMasked, findPointerIndex, motionEvent);
            }
            RecyclerView.ViewHolder viewHolder = itemTouchHelper.mSelected;
            if (viewHolder == null) {
                return;
            }
            int i = 1;
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 6) {
                            int actionIndex = motionEvent.getActionIndex();
                            if (motionEvent.getPointerId(actionIndex) == itemTouchHelper.mActivePointerId) {
                                if (actionIndex != 0) {
                                    i = 0;
                                }
                                itemTouchHelper.mActivePointerId = motionEvent.getPointerId(i);
                                itemTouchHelper.updateDxDy(itemTouchHelper.mSelectedFlags, actionIndex, motionEvent);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    VelocityTracker velocityTracker2 = itemTouchHelper.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                } else if (motionEvent.getButtonState() == 32) {
                    itemTouchHelper.select(null, 0);
                    itemTouchHelper.mActivePointerId = -1;
                    return;
                } else {
                    if (findPointerIndex >= 0) {
                        itemTouchHelper.updateDxDy(itemTouchHelper.mSelectedFlags, findPointerIndex, motionEvent);
                        itemTouchHelper.moveIfNecessary(viewHolder);
                        RecyclerView recyclerView = itemTouchHelper.mRecyclerView;
                        AnonymousClass1 anonymousClass1 = itemTouchHelper.mScrollRunnable;
                        recyclerView.removeCallbacks(anonymousClass1);
                        anonymousClass1.run();
                        itemTouchHelper.mRecyclerView.invalidate();
                        return;
                    }
                    return;
                }
            }
            itemTouchHelper.select(null, 0);
            itemTouchHelper.mActivePointerId = -1;
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        
            if (r11 < 0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0075, code lost:
        
            if (r11 > 0) goto L23;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x010f  */
        /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0105  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00f6  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 299
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.AnonymousClass1.run():void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {
        public boolean mShouldReactToLongPress = true;

        public ItemTouchHelperGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            View findChildView;
            RecyclerView.ViewHolder childViewHolder;
            boolean z;
            int i;
            if (this.mShouldReactToLongPress && (findChildView = ItemTouchHelper.this.findChildView(motionEvent)) != null && (childViewHolder = ItemTouchHelper.this.mRecyclerView.getChildViewHolder(findChildView)) != null) {
                ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
                Callback callback = itemTouchHelper.mCallback;
                RecyclerView recyclerView = itemTouchHelper.mRecyclerView;
                int movementFlags = callback.getMovementFlags(childViewHolder);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                int layoutDirection = ViewCompat.Api17Impl.getLayoutDirection(recyclerView);
                int i2 = movementFlags & 3158064;
                if (i2 != 0) {
                    int i3 = movementFlags & (~i2);
                    if (layoutDirection == 0) {
                        i = i2 >> 2;
                    } else {
                        int i4 = i2 >> 1;
                        i3 |= (-3158065) & i4;
                        i = (i4 & 3158064) >> 2;
                    }
                    movementFlags = i3 | i;
                }
                if ((16711680 & movementFlags) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    childViewHolder.itemView.announceForAccessibility(ItemTouchHelper.this.mRecyclerView.getContext().getString(R.string.dragndroplist_item_cannot_be_dragged, Integer.valueOf(childViewHolder.getLayoutPosition() + 1)));
                    return;
                }
                int pointerId = motionEvent.getPointerId(0);
                int i5 = ItemTouchHelper.this.mActivePointerId;
                if (pointerId == i5) {
                    int findPointerIndex = motionEvent.findPointerIndex(i5);
                    float x = motionEvent.getX(findPointerIndex);
                    float y = motionEvent.getY(findPointerIndex);
                    ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                    itemTouchHelper2.mInitialTouchX = x;
                    itemTouchHelper2.mInitialTouchY = y;
                    itemTouchHelper2.mDy = 0.0f;
                    itemTouchHelper2.mDx = 0.0f;
                    if (itemTouchHelper2.mCallback.isLongPressDragEnabled()) {
                        ItemTouchHelper.this.select(childViewHolder, 2);
                    }
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class SimpleCallback extends Callback {
        public final int mDefaultDragDirs;
        public int mDefaultSwipeDirs;

        public SimpleCallback(int i, int i2) {
            this.mDefaultSwipeDirs = i2;
            this.mDefaultDragDirs = i;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView.ViewHolder viewHolder) {
            return Callback.makeMovementFlags(this.mDefaultDragDirs, this.mDefaultSwipeDirs);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ViewDropHandler {
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.ItemTouchHelper$2] */
    public ItemTouchHelper(Callback callback) {
        this.mCallback = callback;
    }

    public static boolean hitTest(View view, float f, float f2, float f3, float f4) {
        if (f >= f3 && f <= f3 + view.getWidth() && f2 >= f4 && f2 <= f4 + view.getHeight()) {
            return true;
        }
        return false;
    }

    public final void attachToRecyclerView(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        AnonymousClass2 anonymousClass2 = this.mOnItemTouchListener;
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            RecyclerView recyclerView3 = this.mRecyclerView;
            recyclerView3.mOnItemTouchListeners.remove(anonymousClass2);
            if (recyclerView3.mInterceptingOnItemTouchListener == anonymousClass2) {
                recyclerView3.mInterceptingOnItemTouchListener = null;
            }
            List list = this.mRecyclerView.mOnChildAttachStateListeners;
            if (list != null) {
                ((ArrayList) list).remove(this);
            }
            ArrayList arrayList = (ArrayList) this.mRecoverAnimations;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(0);
                recoverAnimation.mValueAnimator.cancel();
                this.mCallback.clearView(this.mRecyclerView, recoverAnimation.mViewHolder);
            }
            arrayList.clear();
            this.mOverdrawChild = null;
            this.mOverdrawChildPosition = -1;
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
            ItemTouchHelperGestureListener itemTouchHelperGestureListener = this.mItemTouchHelperGestureListener;
            if (itemTouchHelperGestureListener != null) {
                itemTouchHelperGestureListener.mShouldReactToLongPress = false;
                this.mItemTouchHelperGestureListener = null;
            }
            if (this.mGestureDetector != null) {
                this.mGestureDetector = null;
            }
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.mSwipeEscapeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
            this.mMaxSwipeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
            ViewConfiguration viewConfiguration = ViewConfiguration.get(this.mRecyclerView.getContext());
            this.mSlop = viewConfiguration.getScaledTouchSlop();
            viewConfiguration.getScaledTouchSlop();
            viewConfiguration.getScaledPagingTouchSlop();
            this.mRecyclerView.addItemDecoration(this);
            this.mRecyclerView.mOnItemTouchListeners.add(anonymousClass2);
            RecyclerView recyclerView4 = this.mRecyclerView;
            if (recyclerView4.mOnChildAttachStateListeners == null) {
                recyclerView4.mOnChildAttachStateListeners = new ArrayList();
            }
            ((ArrayList) recyclerView4.mOnChildAttachStateListeners).add(this);
            this.mItemTouchHelperGestureListener = new ItemTouchHelperGestureListener();
            this.mGestureDetector = new GestureDetectorCompat(this.mRecyclerView.getContext(), this.mItemTouchHelperGestureListener);
        }
    }

    public final int checkHorizontalSwipe(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        if ((i & 12) != 0) {
            int i3 = 8;
            if (this.mDx > 0.0f) {
                i2 = 8;
            } else {
                i2 = 4;
            }
            VelocityTracker velocityTracker = this.mVelocityTracker;
            Callback callback = this.mCallback;
            if (velocityTracker != null && this.mActivePointerId > -1) {
                float f = this.mMaxSwipeVelocity;
                callback.getClass();
                velocityTracker.computeCurrentVelocity(1000, f);
                float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
                float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
                if (xVelocity <= 0.0f) {
                    i3 = 4;
                }
                float abs = Math.abs(xVelocity);
                if ((i3 & i) != 0 && i2 == i3 && abs >= callback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && abs > Math.abs(yVelocity)) {
                    return i3;
                }
            }
            float swipeThreshold = callback.getSwipeThreshold() * this.mRecyclerView.getWidth();
            if ((i & i2) != 0 && Math.abs(this.mDx) > swipeThreshold) {
                return i2;
            }
            return 0;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0071 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void checkSelectForSwipe(int r9, int r10, android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.checkSelectForSwipe(int, int, android.view.MotionEvent):void");
    }

    public final int checkVerticalSwipe(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        if ((i & 3) != 0) {
            int i3 = 2;
            if (this.mDy > 0.0f) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            VelocityTracker velocityTracker = this.mVelocityTracker;
            Callback callback = this.mCallback;
            if (velocityTracker != null && this.mActivePointerId > -1) {
                float f = this.mMaxSwipeVelocity;
                callback.getClass();
                velocityTracker.computeCurrentVelocity(1000, f);
                float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
                float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
                if (yVelocity <= 0.0f) {
                    i3 = 1;
                }
                float abs = Math.abs(yVelocity);
                if ((i3 & i) != 0 && i3 == i2 && abs >= callback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && abs > Math.abs(xVelocity)) {
                    return i3;
                }
            }
            float swipeThreshold = callback.getSwipeThreshold() * this.mRecyclerView.getHeight();
            if ((i & i2) != 0 && Math.abs(this.mDy) > swipeThreshold) {
                return i2;
            }
            return 0;
        }
        return 0;
    }

    public final void endRecoverAnimation(RecyclerView.ViewHolder viewHolder, boolean z) {
        RecoverAnimation recoverAnimation;
        ArrayList arrayList = (ArrayList) this.mRecoverAnimations;
        int size = arrayList.size();
        do {
            size--;
            if (size >= 0) {
                recoverAnimation = (RecoverAnimation) arrayList.get(size);
            } else {
                return;
            }
        } while (recoverAnimation.mViewHolder != viewHolder);
        recoverAnimation.mOverridden |= z;
        if (!recoverAnimation.mEnded) {
            recoverAnimation.mValueAnimator.cancel();
        }
        arrayList.remove(size);
    }

    public final View findChildView(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        if (viewHolder != null) {
            View view = viewHolder.itemView;
            if (hitTest(view, x, y, this.mSelectedStartX + this.mDx, this.mSelectedStartY + this.mDy)) {
                return view;
            }
        }
        List list = this.mRecoverAnimations;
        for (int size = ((ArrayList) list).size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) ((ArrayList) list).get(size);
            View view2 = recoverAnimation.mViewHolder.itemView;
            if (hitTest(view2, x, y, recoverAnimation.mX, recoverAnimation.mY)) {
                return view2;
            }
        }
        return this.mRecyclerView.findChildViewUnder(x, y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    public final void getSelectedDxDy(float[] fArr, int i) {
        if ((this.mSelectedFlags & 12) != 0) {
            fArr[0] = (this.mSelectedStartX + this.mDx) - this.mSelected.itemView.getLeft();
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getSelectedDxDy: #1 calledBy = ", i, " outPosition[0] = ");
            m.append(fArr[0]);
            m.append(", mSelectedStartX = ");
            m.append(this.mSelectedStartX);
            m.append(", mDx = ");
            m.append(this.mDx);
            m.append(", mSelected.itemView.getLeft() = ");
            m.append(this.mSelected.itemView.getLeft());
            Log.i("ItemTouchHelper", m.toString());
        } else {
            fArr[0] = this.mSelected.itemView.getTranslationX();
            StringBuilder m2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getSelectedDxDy: #2 calledBy = ", i, " outPosition[0] = ");
            m2.append(this.mSelected.itemView.getTranslationX());
            Log.i("ItemTouchHelper", m2.toString());
        }
        if ((this.mSelectedFlags & 3) != 0) {
            fArr[1] = (this.mSelectedStartY + this.mDy) - this.mSelected.itemView.getTop();
        } else {
            fArr[1] = this.mSelected.itemView.getTranslationY();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void moveIfNecessary(RecyclerView.ViewHolder viewHolder) {
        char c;
        ArrayList arrayList;
        int i;
        int i2;
        int bottom;
        int abs;
        int top;
        int abs2;
        int left;
        int abs3;
        int abs4;
        RecyclerView.LayoutManager layoutManager;
        int i3;
        int i4;
        int i5;
        if (this.mRecyclerView.isLayoutRequested() || this.mActionState != 2) {
            return;
        }
        Callback callback = this.mCallback;
        callback.getClass();
        int i6 = (int) (this.mSelectedStartX + this.mDx);
        int i7 = (int) (this.mSelectedStartY + this.mDy);
        float abs5 = Math.abs(i7 - viewHolder.itemView.getTop());
        View view = viewHolder.itemView;
        if (abs5 < view.getHeight() * 0.5f && Math.abs(i6 - view.getLeft()) < view.getWidth() * 0.5f) {
            return;
        }
        List list = this.mSwapTargets;
        if (list == null) {
            this.mSwapTargets = new ArrayList();
            this.mDistances = new ArrayList();
        } else {
            ((ArrayList) list).clear();
            ((ArrayList) this.mDistances).clear();
        }
        int i8 = 0;
        int round = Math.round(this.mSelectedStartX + this.mDx) - 0;
        int round2 = Math.round(this.mSelectedStartY + this.mDy) - 0;
        int width = view.getWidth() + round + 0;
        int height = view.getHeight() + round2 + 0;
        int i9 = (round + width) / 2;
        int i10 = (round2 + height) / 2;
        RecyclerView.LayoutManager layoutManager2 = this.mRecyclerView.mLayout;
        int childCount = layoutManager2.getChildCount();
        while (i8 < childCount) {
            View childAt = layoutManager2.getChildAt(i8);
            if (childAt == view) {
                i3 = round;
                i4 = round2;
                i5 = width;
                layoutManager = layoutManager2;
            } else {
                layoutManager = layoutManager2;
                if (childAt.getBottom() >= round2 && childAt.getTop() <= height && childAt.getRight() >= round && childAt.getLeft() <= width) {
                    RecyclerView.ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(childAt);
                    i3 = round;
                    if (callback.canDropOver(this.mSelected, childViewHolder)) {
                        int abs6 = Math.abs(i9 - ((childAt.getRight() + childAt.getLeft()) / 2));
                        int abs7 = Math.abs(i10 - ((childAt.getBottom() + childAt.getTop()) / 2));
                        int i11 = (abs7 * abs7) + (abs6 * abs6);
                        int size = ((ArrayList) this.mSwapTargets).size();
                        i4 = round2;
                        i5 = width;
                        int i12 = 0;
                        int i13 = 0;
                        while (i12 < size) {
                            int i14 = size;
                            if (i11 <= ((Integer) ((ArrayList) this.mDistances).get(i12)).intValue()) {
                                break;
                            }
                            i13++;
                            i12++;
                            size = i14;
                        }
                        ((ArrayList) this.mSwapTargets).add(i13, childViewHolder);
                        ((ArrayList) this.mDistances).add(i13, Integer.valueOf(i11));
                    }
                } else {
                    i3 = round;
                }
                i4 = round2;
                i5 = width;
            }
            i8++;
            layoutManager2 = layoutManager;
            round = i3;
            round2 = i4;
            width = i5;
        }
        ArrayList arrayList2 = (ArrayList) this.mSwapTargets;
        if (arrayList2.size() == 0) {
            return;
        }
        int width2 = view.getWidth() + i6;
        int height2 = view.getHeight() + i7;
        int left2 = i6 - view.getLeft();
        int top2 = i7 - view.getTop();
        int size2 = arrayList2.size();
        RecyclerView.ViewHolder viewHolder2 = null;
        int i15 = 0;
        int i16 = -1;
        while (i15 < size2) {
            RecyclerView.ViewHolder viewHolder3 = (RecyclerView.ViewHolder) arrayList2.get(i15);
            if (left2 > 0) {
                arrayList = arrayList2;
                int right = viewHolder3.itemView.getRight() - width2;
                i = width2;
                if (right < 0) {
                    i2 = size2;
                    if (viewHolder3.itemView.getRight() > view.getRight() && (abs4 = Math.abs(right)) > i16) {
                        i16 = abs4;
                        viewHolder2 = viewHolder3;
                    }
                    if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i6) > 0 && viewHolder3.itemView.getLeft() < view.getLeft() && (abs3 = Math.abs(left)) > i16) {
                        i16 = abs3;
                        viewHolder2 = viewHolder3;
                    }
                    if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i7) > 0 && viewHolder3.itemView.getTop() < view.getTop() && (abs2 = Math.abs(top)) > i16) {
                        i16 = abs2;
                        viewHolder2 = viewHolder3;
                    }
                    if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height2) < 0 && viewHolder3.itemView.getBottom() > view.getBottom() && (abs = Math.abs(bottom)) > i16) {
                        i16 = abs;
                        viewHolder2 = viewHolder3;
                    }
                    i15++;
                    arrayList2 = arrayList;
                    width2 = i;
                    size2 = i2;
                }
            } else {
                arrayList = arrayList2;
                i = width2;
            }
            i2 = size2;
            if (left2 < 0) {
                i16 = abs3;
                viewHolder2 = viewHolder3;
            }
            if (top2 < 0) {
                i16 = abs2;
                viewHolder2 = viewHolder3;
            }
            if (top2 > 0) {
                i16 = abs;
                viewHolder2 = viewHolder3;
            }
            i15++;
            arrayList2 = arrayList;
            width2 = i;
            size2 = i2;
        }
        if (viewHolder2 == null) {
            ((ArrayList) this.mSwapTargets).clear();
            ((ArrayList) this.mDistances).clear();
            return;
        }
        int absoluteAdapterPosition = viewHolder2.getAbsoluteAdapterPosition();
        viewHolder.getAbsoluteAdapterPosition();
        if (callback.onMove(viewHolder, viewHolder2)) {
            RecyclerView recyclerView = this.mRecyclerView;
            RecyclerView.LayoutManager layoutManager3 = recyclerView.mLayout;
            boolean z = layoutManager3 instanceof ViewDropHandler;
            View view2 = viewHolder2.itemView;
            if (z) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) ((ViewDropHandler) layoutManager3);
                linearLayoutManager.assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
                linearLayoutManager.ensureLayoutState();
                linearLayoutManager.resolveShouldLayoutReverse();
                int position = RecyclerView.LayoutManager.getPosition(view);
                int position2 = RecyclerView.LayoutManager.getPosition(view2);
                if (position < position2) {
                    c = 1;
                } else {
                    c = 65535;
                }
                if (linearLayoutManager.mShouldReverseLayout) {
                    if (c == 1) {
                        linearLayoutManager.scrollToPositionWithOffset(position2, linearLayoutManager.mOrientationHelper.getEndAfterPadding() - (linearLayoutManager.mOrientationHelper.getDecoratedMeasurement(view) + linearLayoutManager.mOrientationHelper.getDecoratedStart(view2)));
                    } else {
                        linearLayoutManager.scrollToPositionWithOffset(position2, linearLayoutManager.mOrientationHelper.getEndAfterPadding() - linearLayoutManager.mOrientationHelper.getDecoratedEnd(view2));
                    }
                } else if (c == 65535) {
                    linearLayoutManager.scrollToPositionWithOffset(position2, linearLayoutManager.mOrientationHelper.getDecoratedStart(view2));
                } else {
                    linearLayoutManager.scrollToPositionWithOffset(position2, linearLayoutManager.mOrientationHelper.getDecoratedEnd(view2) - linearLayoutManager.mOrientationHelper.getDecoratedMeasurement(view));
                }
            } else {
                if (layoutManager3.canScrollHorizontally()) {
                    if (layoutManager3.getDecoratedLeft(view2) <= recyclerView.getPaddingLeft()) {
                        recyclerView.scrollToPosition(absoluteAdapterPosition);
                    }
                    if (layoutManager3.getDecoratedRight(view2) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                        recyclerView.scrollToPosition(absoluteAdapterPosition);
                    }
                }
                if (layoutManager3.canScrollVertically()) {
                    if (layoutManager3.getDecoratedTop(view2) <= recyclerView.getPaddingTop()) {
                        recyclerView.scrollToPosition(absoluteAdapterPosition);
                    }
                    if (layoutManager3.getDecoratedBottom(view2) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                        recyclerView.scrollToPosition(absoluteAdapterPosition);
                    }
                }
            }
            view.performHapticFeedback(SeslHapticFeedbackConstantsReflector.semGetVibrationIndex(41));
            this.mSelected.itemView.announceForAccessibility(this.mRecyclerView.getContext().getString(R.string.dragndroplist_drag_move, Integer.valueOf(absoluteAdapterPosition + 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void onChildViewDetachedFromWindow(View view) {
        if (view == this.mOverdrawChild) {
            this.mOverdrawChild = null;
        }
        RecyclerView.ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        if (viewHolder != null && childViewHolder == viewHolder) {
            select(null, 0);
            return;
        }
        endRecoverAnimation(childViewHolder, false);
        if (((ArrayList) this.mPendingCleanup).remove(childViewHolder.itemView)) {
            this.mCallback.clearView(this.mRecyclerView, childViewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView) {
        float f;
        float f2;
        this.mOverdrawChildPosition = -1;
        if (this.mSelected != null) {
            float[] fArr = this.mTmpPosition;
            getSelectedDxDy(fArr, 2);
            float f3 = fArr[0];
            f2 = fArr[1];
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        List list = this.mRecoverAnimations;
        int i = this.mActionState;
        Callback callback = this.mCallback;
        callback.getClass();
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(i2);
            float f4 = recoverAnimation.mStartDx;
            float f5 = recoverAnimation.mTargetX;
            if (f4 == f5) {
                recoverAnimation.mX = recoverAnimation.mViewHolder.itemView.getTranslationX();
            } else {
                recoverAnimation.mX = DependencyGraph$$ExternalSyntheticOutline0.m(f5, f4, recoverAnimation.mFraction, f4);
            }
            float f6 = recoverAnimation.mStartDy;
            float f7 = recoverAnimation.mTargetY;
            if (f6 == f7) {
                recoverAnimation.mY = recoverAnimation.mViewHolder.itemView.getTranslationY();
            } else {
                recoverAnimation.mY = DependencyGraph$$ExternalSyntheticOutline0.m(f7, f6, recoverAnimation.mFraction, f6);
            }
            int save = canvas.save();
            callback.onChildDraw(canvas, recyclerView, recoverAnimation.mViewHolder, recoverAnimation.mX, recoverAnimation.mY, recoverAnimation.mActionState, false);
            canvas.restoreToCount(save);
            i2++;
            arrayList = arrayList;
        }
        if (viewHolder != null) {
            int save2 = canvas.save();
            callback.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, true);
            canvas.restoreToCount(save2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        float f;
        float f2;
        if (this.mSelected != null) {
            float[] fArr = this.mTmpPosition;
            getSelectedDxDy(fArr, 1);
            float f3 = fArr[0];
            f2 = fArr[1];
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        List list = this.mRecoverAnimations;
        int i = this.mActionState;
        Callback callback = this.mCallback;
        callback.getClass();
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(i2);
            int save = canvas.save();
            callback.onChildDrawOver(canvas, recyclerView, recoverAnimation.mViewHolder, recoverAnimation.mX, recoverAnimation.mY, recoverAnimation.mActionState, false);
            canvas.restoreToCount(save);
            i2++;
            arrayList = arrayList;
            size = size;
        }
        int i3 = size;
        ArrayList arrayList2 = arrayList;
        if (viewHolder != null) {
            int save2 = canvas.save();
            callback.onChildDrawOver(canvas, recyclerView, viewHolder, f, f2, i, true);
            canvas.restoreToCount(save2);
        }
        boolean z = false;
        for (int i4 = i3 - 1; i4 >= 0; i4--) {
            RecoverAnimation recoverAnimation2 = (RecoverAnimation) arrayList2.get(i4);
            boolean z2 = recoverAnimation2.mEnded;
            if (z2 && !recoverAnimation2.mIsPendingCleanup) {
                arrayList2.remove(i4);
            } else if (!z2) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x00e2, code lost:
    
        if (r0 == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00af, code lost:
    
        if (r0 == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00b1, code lost:
    
        r0 = r1 << 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00bb, code lost:
    
        r2 = r0 | r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00b4, code lost:
    
        r0 = r1 << 1;
        r2 = r2 | (r0 & (-789517));
        r0 = (r0 & 789516) << 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00c2, code lost:
    
        if (r2 > 0) goto L64;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void select(androidx.recyclerview.widget.RecyclerView.ViewHolder r25, int r26) {
        /*
            Method dump skipped, instructions count: 655
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.select(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    public final void updateDxDy(int i, int i2, MotionEvent motionEvent) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        this.mDx = x - this.mInitialTouchX;
        Log.i("ItemTouchHelper", "updateDxDy: mDx = " + this.mDx + " = (x = " + x + " - mInitialTouchX = " + this.mInitialTouchX + ")");
        this.mDy = y - this.mInitialTouchY;
        if ((i & 4) == 0) {
            this.mDx = Math.max(0.0f, this.mDx);
            Log.i("ItemTouchHelper", "updateDxDy: direction LEFT mDx = " + this.mDx);
        }
        if ((i & 8) == 0) {
            this.mDx = Math.min(0.0f, this.mDx);
            Log.i("ItemTouchHelper", "updateDxDy: direction RIGHT mDx = " + this.mDx);
        }
        if ((i & 1) == 0) {
            this.mDy = Math.max(0.0f, this.mDy);
        }
        if ((i & 2) == 0) {
            this.mDy = Math.min(0.0f, this.mDy);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class Callback {
        public static final AnonymousClass1 sDragScrollInterpolator = new Interpolator() { // from class: androidx.recyclerview.widget.ItemTouchHelper.Callback.1
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                return f * f * f * f * f;
            }
        };
        public static final AnonymousClass2 sDragViewScrollCapInterpolator = new AnonymousClass2();
        public int mCachedMaxScrollSpeed = -1;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$Callback$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass2 implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        }

        public static int makeMovementFlags(int i, int i2) {
            int i3 = (i2 | i) << 0;
            return (i << 16) | (i2 << 8) | i3;
        }

        public boolean canDropOver(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            return true;
        }

        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            ItemTouchUIUtilImpl itemTouchUIUtilImpl = ItemTouchUIUtilImpl.INSTANCE;
            View view = viewHolder.itemView;
            itemTouchUIUtilImpl.getClass();
            Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
            if (tag instanceof Float) {
                float floatValue = ((Float) tag).floatValue();
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api21Impl.setElevation(view, floatValue);
            }
            view.setTag(R.id.item_touch_helper_previous_elevation, null);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
        }

        public abstract int getMovementFlags(RecyclerView.ViewHolder viewHolder);

        public float getSwipeThreshold() {
            return 0.5f;
        }

        public final int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i, int i2, long j) {
            if (this.mCachedMaxScrollSpeed == -1) {
                this.mCachedMaxScrollSpeed = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int i3 = this.mCachedMaxScrollSpeed;
            int abs = Math.abs(i2);
            int signum = (int) Math.signum(i2);
            float f = 1.0f;
            int interpolation = (int) (sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (abs * 1.0f) / i)) * signum * i3);
            if (j <= 2000) {
                f = ((float) j) / 2000.0f;
            }
            sDragScrollInterpolator.getClass();
            int i4 = (int) (f * f * f * f * f * interpolation);
            if (i4 == 0) {
                if (i2 <= 0) {
                    return -1;
                }
                return 1;
            }
            return i4;
        }

        public boolean isItemViewSwipeEnabled() {
            return !(this instanceof FavoritesModel$itemTouchHelperCallback$1);
        }

        public boolean isLongPressDragEnabled() {
            return !(this instanceof ReorderStructureModel$itemTouchHelper$1);
        }

        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            ItemTouchUIUtilImpl itemTouchUIUtilImpl = ItemTouchUIUtilImpl.INSTANCE;
            View view = viewHolder.itemView;
            itemTouchUIUtilImpl.getClass();
            if (z && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                Float valueOf = Float.valueOf(ViewCompat.Api21Impl.getElevation(view));
                int childCount = recyclerView.getChildCount();
                float f3 = 0.0f;
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = recyclerView.getChildAt(i2);
                    if (childAt != view) {
                        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                        float elevation = ViewCompat.Api21Impl.getElevation(childAt);
                        if (elevation > f3) {
                            f3 = elevation;
                        }
                    }
                }
                ViewCompat.Api21Impl.setElevation(view, f3 + 1.0f);
                view.setTag(R.id.item_touch_helper_previous_elevation, valueOf);
            }
            view.setTranslationX(f);
            view.setTranslationY(f2);
        }

        public void onChildDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            ItemTouchUIUtilImpl itemTouchUIUtilImpl = ItemTouchUIUtilImpl.INSTANCE;
            View view = viewHolder.itemView;
            itemTouchUIUtilImpl.getClass();
        }

        public abstract boolean onMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2);

        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder != null) {
                ItemTouchUIUtilImpl.INSTANCE.getClass();
            }
        }

        public abstract void onSwiped(RecyclerView.ViewHolder viewHolder);

        public float getSwipeEscapeVelocity(float f) {
            return f;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class RecoverAnimation implements Animator.AnimatorListener {
        public final int mActionState;
        public float mFraction;
        public boolean mIsPendingCleanup;
        public final float mStartDx;
        public final float mStartDy;
        public final float mTargetX;
        public final float mTargetY;
        public final ValueAnimator mValueAnimator;
        public final RecyclerView.ViewHolder mViewHolder;
        public float mX;
        public float mY;
        public boolean mOverridden = false;
        public boolean mEnded = false;

        public RecoverAnimation(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4) {
            PathInterpolator pathInterpolator = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
            this.mActionState = i2;
            this.mViewHolder = viewHolder;
            this.mStartDx = f;
            this.mStartDy = f2;
            this.mTargetX = f3;
            this.mTargetY = f4;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.mValueAnimator = ofFloat;
            ofFloat.setInterpolator(pathInterpolator);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RecoverAnimation.this.mFraction = valueAnimator.getAnimatedFraction();
                }
            });
            ofFloat.setTarget(viewHolder.itemView);
            ofFloat.addListener(this);
            this.mFraction = 0.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.mFraction = 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.mEnded) {
                this.mViewHolder.setIsRecyclable(true);
            }
            this.mEnded = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void onChildViewAttachedToWindow(View view) {
    }
}
