package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class RecyclerViewAccessibilityDelegate extends AccessibilityDelegateCompat {
    private final ItemDelegate mItemDelegate;
    final RecyclerView mRecyclerView;

    public static class ItemDelegate extends AccessibilityDelegateCompat {
        private Map<View, AccessibilityDelegateCompat> mOriginalItemDelegates = new WeakHashMap();
        final RecyclerViewAccessibilityDelegate mRecyclerViewDelegate;

        public ItemDelegate(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
            this.mRecyclerViewDelegate = recyclerViewAccessibilityDelegate;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).get(view);
            return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).get(view);
            return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.getAccessibilityNodeProvider(view) : super.getAccessibilityNodeProvider(view);
        }

        final AccessibilityDelegateCompat getAndRemoveOriginalDelegateForItem() {
            return (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).remove(null);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.onInitializeAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = this.mRecyclerViewDelegate;
            RecyclerView recyclerView = recyclerViewAccessibilityDelegate.mRecyclerView;
            boolean z = true;
            if (recyclerView.mFirstLayoutComplete && !recyclerView.mDataSetHasChangedAfterLayout) {
                if (!(recyclerView.mAdapterHelper.mPendingUpdates.size() > 0)) {
                    z = false;
                }
            }
            if (!z) {
                RecyclerView recyclerView2 = recyclerViewAccessibilityDelegate.mRecyclerView;
                if (recyclerView2.getLayoutManager() != null) {
                    recyclerView2.getLayoutManager().getClass();
                    RecyclerView.getChildViewHolderInt(view);
                    AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).get(view);
                    if (accessibilityDelegateCompat != null) {
                        accessibilityDelegateCompat.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                        return;
                    } else {
                        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                        return;
                    }
                }
            }
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.onPopulateAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).get(viewGroup);
            return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
        @Override // androidx.core.view.AccessibilityDelegateCompat
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean performAccessibilityAction(@android.annotation.SuppressLint({"InvalidNullabilityOverride"}) android.view.View r6, int r7, @android.annotation.SuppressLint({"InvalidNullabilityOverride"}) android.os.Bundle r8) {
            /*
                r5 = this;
                androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate r0 = r5.mRecyclerViewDelegate
                androidx.recyclerview.widget.RecyclerView r1 = r0.mRecyclerView
                boolean r2 = r1.mFirstLayoutComplete
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L20
                boolean r2 = r1.mDataSetHasChangedAfterLayout
                if (r2 != 0) goto L20
                androidx.recyclerview.widget.AdapterHelper r1 = r1.mAdapterHelper
                java.util.ArrayList<androidx.recyclerview.widget.AdapterHelper$UpdateOp> r1 = r1.mPendingUpdates
                int r1 = r1.size()
                if (r1 <= 0) goto L1a
                r1 = r4
                goto L1b
            L1a:
                r1 = r3
            L1b:
                if (r1 == 0) goto L1e
                goto L20
            L1e:
                r1 = r3
                goto L21
            L20:
                r1 = r4
            L21:
                if (r1 != 0) goto L4e
                androidx.recyclerview.widget.RecyclerView r0 = r0.mRecyclerView
                androidx.recyclerview.widget.RecyclerView$LayoutManager r1 = r0.getLayoutManager()
                if (r1 == 0) goto L4e
                java.util.Map<android.view.View, androidx.core.view.AccessibilityDelegateCompat> r1 = r5.mOriginalItemDelegates
                java.util.WeakHashMap r1 = (java.util.WeakHashMap) r1
                java.lang.Object r1 = r1.get(r6)
                androidx.core.view.AccessibilityDelegateCompat r1 = (androidx.core.view.AccessibilityDelegateCompat) r1
                if (r1 == 0) goto L3e
                boolean r5 = r1.performAccessibilityAction(r6, r7, r8)
                if (r5 == 0) goto L45
                return r4
            L3e:
                boolean r5 = super.performAccessibilityAction(r6, r7, r8)
                if (r5 == 0) goto L45
                return r4
            L45:
                androidx.recyclerview.widget.RecyclerView$LayoutManager r5 = r0.getLayoutManager()
                androidx.recyclerview.widget.RecyclerView r5 = r5.mRecyclerView
                androidx.recyclerview.widget.RecyclerView$Recycler r5 = r5.mRecycler
                return r3
            L4e:
                boolean r5 = super.performAccessibilityAction(r6, r7, r8)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate.ItemDelegate.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void sendAccessibilityEvent(View view, int i) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.sendAccessibilityEvent(view, i);
            } else {
                super.sendAccessibilityEvent(view, i);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) ((WeakHashMap) this.mOriginalItemDelegates).get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            } else {
                super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }
    }

    public RecyclerViewAccessibilityDelegate(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        ItemDelegate itemDelegate = this.mItemDelegate;
        if (itemDelegate != null) {
            this.mItemDelegate = itemDelegate;
        } else {
            this.mItemDelegate = new ItemDelegate(this);
        }
    }

    public final ItemDelegate getItemDelegate() {
        return this.mItemDelegate;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityEvent(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (view instanceof RecyclerView) {
            RecyclerView recyclerView = this.mRecyclerView;
            boolean z = true;
            if (recyclerView.mFirstLayoutComplete && !recyclerView.mDataSetHasChangedAfterLayout) {
                if (!(recyclerView.mAdapterHelper.mPendingUpdates.size() > 0)) {
                    z = false;
                }
            }
            if (z) {
                return;
            }
            RecyclerView recyclerView2 = (RecyclerView) view;
            if (recyclerView2.getLayoutManager() != null) {
                recyclerView2.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
            }
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        RecyclerView recyclerView = this.mRecyclerView;
        boolean z = true;
        if (recyclerView.mFirstLayoutComplete && !recyclerView.mDataSetHasChangedAfterLayout) {
            if (!(recyclerView.mAdapterHelper.mPendingUpdates.size() > 0)) {
                z = false;
            }
        }
        if (z || recyclerView.getLayoutManager() == null) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.mRecyclerView;
        layoutManager.onInitializeAccessibilityNodeInfo(recyclerView2.mRecycler, recyclerView2.mState, accessibilityNodeInfoCompat);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean performAccessibilityAction(@SuppressLint({"InvalidNullabilityOverride"}) View view, int i, @SuppressLint({"InvalidNullabilityOverride"}) Bundle bundle) {
        boolean z = true;
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView.mFirstLayoutComplete && !recyclerView.mDataSetHasChangedAfterLayout) {
            if (!(recyclerView.mAdapterHelper.mPendingUpdates.size() > 0)) {
                z = false;
            }
        }
        if (z || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().performAccessibilityAction(i, bundle);
    }
}
