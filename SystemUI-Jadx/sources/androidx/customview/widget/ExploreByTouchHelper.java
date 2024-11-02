package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.customview.widget.FocusStrategy;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final Rect INVALID_PARENT_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, VideoPlayer.MEDIA_ERROR_SYSTEM, VideoPlayer.MEDIA_ERROR_SYSTEM);
    public static final AnonymousClass1 NODE_ADAPTER = new FocusStrategy.BoundsAdapter() { // from class: androidx.customview.widget.ExploreByTouchHelper.1
    };
    public static final AnonymousClass2 SPARSE_VALUES_ADAPTER = new Object() { // from class: androidx.customview.widget.ExploreByTouchHelper.2
    };
    public final View mHost;
    public final AccessibilityManager mManager;
    public MyNodeProvider mNodeProvider;
    public final Rect mTempScreenRect = new Rect();
    public final Rect mTempParentRect = new Rect();
    public final Rect mTempVisibleRect = new Rect();
    public final int[] mTempGlobalRect = new int[2];
    public int mAccessibilityFocusedVirtualViewId = VideoPlayer.MEDIA_ERROR_SYSTEM;
    public int mKeyboardFocusedVirtualViewId = VideoPlayer.MEDIA_ERROR_SYSTEM;
    public int mHoveredVirtualViewId = VideoPlayer.MEDIA_ERROR_SYSTEM;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MyNodeProvider extends AccessibilityNodeProviderCompat {
        public MyNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
            return AccessibilityNodeInfoCompat.obtain(ExploreByTouchHelper.this.obtainAccessibilityNodeInfo(i));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat findFocus(int i) {
            int i2;
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            if (i == 2) {
                i2 = exploreByTouchHelper.mAccessibilityFocusedVirtualViewId;
            } else {
                i2 = exploreByTouchHelper.mKeyboardFocusedVirtualViewId;
            }
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return createAccessibilityNodeInfo(i2);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final boolean performAction(int i, int i2, Bundle bundle) {
            int i3;
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            View view = exploreByTouchHelper.mHost;
            if (i != -1) {
                boolean z = true;
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 64) {
                            if (i2 != 128) {
                                return exploreByTouchHelper.onPerformActionForVirtualView(i, i2, bundle);
                            }
                            if (exploreByTouchHelper.mAccessibilityFocusedVirtualViewId == i) {
                                exploreByTouchHelper.mAccessibilityFocusedVirtualViewId = VideoPlayer.MEDIA_ERROR_SYSTEM;
                                view.invalidate();
                                exploreByTouchHelper.sendEventForVirtualView(i, 65536);
                            }
                            z = false;
                        } else {
                            AccessibilityManager accessibilityManager = exploreByTouchHelper.mManager;
                            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (i3 = exploreByTouchHelper.mAccessibilityFocusedVirtualViewId) != i) {
                                if (i3 != Integer.MIN_VALUE) {
                                    exploreByTouchHelper.mAccessibilityFocusedVirtualViewId = VideoPlayer.MEDIA_ERROR_SYSTEM;
                                    exploreByTouchHelper.mHost.invalidate();
                                    exploreByTouchHelper.sendEventForVirtualView(i3, 65536);
                                }
                                exploreByTouchHelper.mAccessibilityFocusedVirtualViewId = i;
                                view.invalidate();
                                exploreByTouchHelper.sendEventForVirtualView(i, 32768);
                            }
                            z = false;
                        }
                        return z;
                    }
                    return exploreByTouchHelper.clearKeyboardFocusForVirtualView(i);
                }
                return exploreByTouchHelper.requestKeyboardFocusForVirtualView(i);
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            return ViewCompat.Api16Impl.performAccessibilityAction(view, i2, bundle);
        }
    }

    public ExploreByTouchHelper(View view) {
        if (view != null) {
            this.mHost = view;
            this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api16Impl.getImportantForAccessibility(view) == 0) {
                ViewCompat.Api16Impl.setImportantForAccessibility(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    public final boolean clearKeyboardFocusForVirtualView(int i) {
        if (this.mKeyboardFocusedVirtualViewId != i) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = VideoPlayer.MEDIA_ERROR_SYSTEM;
        onVirtualViewKeyboardFocusChanged(i, false);
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final AccessibilityEvent createEvent(int i, int i2) {
        View view = this.mHost;
        if (i != -1) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            AccessibilityNodeInfoCompat obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i);
            obtain.getText().add(obtainAccessibilityNodeInfo.getText());
            AccessibilityNodeInfo accessibilityNodeInfo = obtainAccessibilityNodeInfo.mInfo;
            obtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            obtain.setScrollable(accessibilityNodeInfo.isScrollable());
            obtain.setPassword(accessibilityNodeInfo.isPassword());
            obtain.setEnabled(accessibilityNodeInfo.isEnabled());
            obtain.setChecked(accessibilityNodeInfo.isChecked());
            onPopulateEventForVirtualView(obtain, i);
            if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            obtain.setClassName(accessibilityNodeInfo.getClassName());
            obtain.setSource(view, i);
            obtain.setPackageName(view.getContext().getPackageName());
            return obtain;
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain(i2);
        view.onInitializeAccessibilityEvent(obtain2);
        return obtain2;
    }

    public final AccessibilityNodeInfoCompat createNodeForChild(int i) {
        boolean z;
        AccessibilityNodeInfo accessibilityNodeInfo;
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        AccessibilityNodeInfo accessibilityNodeInfo2 = obtain.mInfo;
        accessibilityNodeInfo2.setEnabled(true);
        accessibilityNodeInfo2.setFocusable(true);
        obtain.setClassName("android.view.View");
        Rect rect = INVALID_PARENT_BOUNDS;
        obtain.setBoundsInParent(rect);
        accessibilityNodeInfo2.setBoundsInScreen(rect);
        obtain.mParentVirtualDescendantId = -1;
        View view = this.mHost;
        accessibilityNodeInfo2.setParent(view);
        onPopulateNodeForVirtualView(i, obtain);
        if (obtain.getText() == null && accessibilityNodeInfo2.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.mTempParentRect;
        obtain.getBoundsInParent(rect2);
        if (!rect2.equals(rect)) {
            int actions = accessibilityNodeInfo2.getActions();
            if ((actions & 64) == 0) {
                if ((actions & 128) == 0) {
                    accessibilityNodeInfo2.setPackageName(view.getContext().getPackageName());
                    obtain.mVirtualDescendantId = i;
                    accessibilityNodeInfo2.setSource(view, i);
                    boolean z2 = false;
                    if (this.mAccessibilityFocusedVirtualViewId == i) {
                        accessibilityNodeInfo2.setAccessibilityFocused(true);
                        obtain.addAction(128);
                    } else {
                        accessibilityNodeInfo2.setAccessibilityFocused(false);
                        obtain.addAction(64);
                    }
                    if (this.mKeyboardFocusedVirtualViewId == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        obtain.addAction(2);
                    } else if (accessibilityNodeInfo2.isFocusable()) {
                        obtain.addAction(1);
                    }
                    accessibilityNodeInfo2.setFocused(z);
                    int[] iArr = this.mTempGlobalRect;
                    view.getLocationOnScreen(iArr);
                    Rect rect3 = this.mTempScreenRect;
                    accessibilityNodeInfo2.getBoundsInScreen(rect3);
                    if (rect3.equals(rect)) {
                        obtain.getBoundsInParent(rect3);
                        if (obtain.mParentVirtualDescendantId != -1) {
                            AccessibilityNodeInfoCompat obtain2 = AccessibilityNodeInfoCompat.obtain();
                            int i2 = obtain.mParentVirtualDescendantId;
                            while (true) {
                                accessibilityNodeInfo = obtain2.mInfo;
                                if (i2 == -1) {
                                    break;
                                }
                                obtain2.mParentVirtualDescendantId = -1;
                                accessibilityNodeInfo.setParent(view, -1);
                                obtain2.setBoundsInParent(rect);
                                onPopulateNodeForVirtualView(i2, obtain2);
                                obtain2.getBoundsInParent(rect2);
                                rect3.offset(rect2.left, rect2.top);
                                i2 = obtain2.mParentVirtualDescendantId;
                            }
                            accessibilityNodeInfo.recycle();
                        }
                        rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
                    }
                    Rect rect4 = this.mTempVisibleRect;
                    if (view.getLocalVisibleRect(rect4)) {
                        rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
                        if (rect3.intersect(rect4)) {
                            accessibilityNodeInfo2.setBoundsInScreen(rect3);
                            if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                                Object parent = view.getParent();
                                while (true) {
                                    if (parent instanceof View) {
                                        View view2 = (View) parent;
                                        if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                            break;
                                        }
                                        parent = view2.getParent();
                                    } else if (parent != null) {
                                        z2 = true;
                                    }
                                }
                            }
                            if (z2) {
                                accessibilityNodeInfo2.setVisibleToUser(true);
                            }
                        }
                    }
                    return obtain;
                }
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i;
        AccessibilityManager accessibilityManager = this.mManager;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7 && action != 9) {
            if (action != 10 || (i = this.mHoveredVirtualViewId) == Integer.MIN_VALUE) {
                return false;
            }
            if (i != Integer.MIN_VALUE) {
                this.mHoveredVirtualViewId = VideoPlayer.MEDIA_ERROR_SYSTEM;
                sendEventForVirtualView(VideoPlayer.MEDIA_ERROR_SYSTEM, 128);
                sendEventForVirtualView(i, 256);
            }
            return true;
        }
        int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
        int i2 = this.mHoveredVirtualViewId;
        if (i2 != virtualViewAt) {
            this.mHoveredVirtualViewId = virtualViewAt;
            sendEventForVirtualView(virtualViewAt, 128);
            sendEventForVirtualView(i2, 256);
        }
        if (virtualViewAt == Integer.MIN_VALUE) {
            return false;
        }
        return true;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new MyNodeProvider();
        }
        return this.mNodeProvider;
    }

    public abstract int getVirtualViewAt(float f, float f2);

    public abstract void getVisibleVirtualViews(List list);

    public final void invalidateVirtualView(int i) {
        View view;
        ViewParent parent;
        if (i != Integer.MIN_VALUE && this.mManager.isEnabled() && (parent = (view = this.mHost).getParent()) != null) {
            AccessibilityEvent createEvent = createEvent(i, 2048);
            createEvent.setContentChangeTypes(0);
            parent.requestSendAccessibilityEvent(view, createEvent);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0146, code lost:
    
        if (r14 < ((r15 * r15) + ((r13 * 13) * r13))) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0152 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean moveFocus(int r19, android.graphics.Rect r20) {
        /*
            Method dump skipped, instructions count: 501
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.moveFocus(int, android.graphics.Rect):boolean");
    }

    public final AccessibilityNodeInfoCompat obtainAccessibilityNodeInfo(int i) {
        if (i == -1) {
            View view = this.mHost;
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(view);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            AccessibilityNodeInfo accessibilityNodeInfo = obtain.mInfo;
            view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            ArrayList arrayList = new ArrayList();
            getVisibleVirtualViews(arrayList);
            if (accessibilityNodeInfo.getChildCount() > 0 && arrayList.size() > 0) {
                throw new RuntimeException("Views cannot have both real and virtual children");
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                accessibilityNodeInfo.addChild(view, ((Integer) arrayList.get(i2)).intValue());
            }
            return obtain;
        }
        return createNodeForChild(i);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
        onPopulateNodeForHost(accessibilityNodeInfoCompat);
    }

    public abstract boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle);

    public abstract void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public final boolean requestKeyboardFocusForVirtualView(int i) {
        int i2;
        View view = this.mHost;
        if ((!view.isFocused() && !view.requestFocus()) || (i2 = this.mKeyboardFocusedVirtualViewId) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = i;
        onVirtualViewKeyboardFocusChanged(i, true);
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final void sendEventForVirtualView(int i, int i2) {
        View view;
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = (view = this.mHost).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, createEvent(i, i2));
    }

    public void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public void onPopulateEventForVirtualView(AccessibilityEvent accessibilityEvent, int i) {
    }

    public void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
    }
}
