package com.android.systemui.navigationbar.remoteview;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.vectordrawable.graphics.drawable.ArgbEvaluator;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.navigationbar.buttons.KeyButtonRipple;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.util.SettingsHelper;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarRemoteViewManager {
    public int adaptivePosition;
    public final NavBarRemoteViewManager$comparator$1 comparator;
    public final Context context;
    public float darkIntensity;
    public LinearLayout leftContainer;
    public final PriorityQueue leftViewList;
    public NavBarStore navBarStore;
    public LinearLayout rightContainer;
    public final PriorityQueue rightViewList;
    public final SettingsHelper settingsHelper;
    public boolean showInGestureMode;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public NavBarRemoteViewManager(Context context, SettingsHelper settingsHelper) {
        this.context = context;
        this.settingsHelper = settingsHelper;
        NavBarRemoteViewManager$comparator$1 navBarRemoteViewManager$comparator$1 = new Comparator() { // from class: com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager$comparator$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i = ((NavBarRemoteView) obj).priority;
                int i2 = ((NavBarRemoteView) obj2).priority;
                if (i < i2) {
                    return 1;
                }
                if (i > i2) {
                    return -1;
                }
                return 0;
            }
        };
        this.comparator = navBarRemoteViewManager$comparator$1;
        PriorityQueue priorityQueue = new PriorityQueue(navBarRemoteViewManager$comparator$1);
        this.leftViewList = priorityQueue;
        PriorityQueue priorityQueue2 = new PriorityQueue(navBarRemoteViewManager$comparator$1);
        this.rightViewList = priorityQueue2;
        priorityQueue.clear();
        priorityQueue2.clear();
    }

    public static boolean isMultiModalButton(NavBarRemoteView navBarRemoteView) {
        String str = navBarRemoteView.requestClass;
        if (str == null) {
            return false;
        }
        return StringsKt__StringsKt.contains(str, "honeyboard", false);
    }

    public final void applyTint(View view) {
        boolean z;
        boolean z2 = true;
        if (view instanceof ImageView) {
            Context context = this.context;
            ((ImageView) view).setColorFilter(((Integer) ArgbEvaluator.sInstance.evaluate(this.darkIntensity, Integer.valueOf(context.getColor(R.color.navbar_remote_icon_color_light)), Integer.valueOf(context.getColor(R.color.navbar_remote_icon_color_dark)))).intValue());
            z = true;
        } else {
            z = false;
        }
        if (view.getBackground() instanceof KeyButtonRipple) {
            KeyButtonRipple keyButtonRipple = (KeyButtonRipple) view.getBackground();
            if (keyButtonRipple != null) {
                keyButtonRipple.setDarkIntensity(this.darkIntensity);
            }
        } else {
            z2 = z;
        }
        if (z2) {
            view.invalidate();
        }
    }

    public final NavBarStore getNavBarStore() {
        NavBarStore navBarStore = this.navBarStore;
        if (navBarStore != null) {
            return navBarStore;
        }
        return null;
    }

    public final NavBarRemoteView getRemoteView(int i, int i2) {
        NavBarRemoteView navBarRemoteView;
        boolean z = BasicRune.NAVBAR_MULTI_MODAL_ICON_LARGE_COVER;
        PriorityQueue priorityQueue = this.rightViewList;
        PriorityQueue priorityQueue2 = this.leftViewList;
        if (z && i2 == 1) {
            if (i != 0) {
                if (i != 1 || (navBarRemoteView = (NavBarRemoteView) priorityQueue.peek()) == null || !isMultiModalButton(navBarRemoteView)) {
                    return null;
                }
                return navBarRemoteView;
            }
            NavBarRemoteView navBarRemoteView2 = (NavBarRemoteView) priorityQueue2.peek();
            if (navBarRemoteView2 == null || !isMultiModalButton(navBarRemoteView2)) {
                return null;
            }
            return navBarRemoteView2;
        }
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            return (NavBarRemoteView) priorityQueue.peek();
        }
        return (NavBarRemoteView) priorityQueue2.peek();
    }

    public final boolean isExist(int i, String str) {
        if (i != 0) {
            if (i != 1) {
                return false;
            }
            PriorityQueue priorityQueue = this.rightViewList;
            if (!(priorityQueue instanceof Collection) || !priorityQueue.isEmpty()) {
                Iterator it = priorityQueue.iterator();
                while (it.hasNext()) {
                    if (StringsKt__StringsJVMKt.equals(((NavBarRemoteView) it.next()).requestClass, str, false)) {
                        return true;
                    }
                }
            }
            return false;
        }
        PriorityQueue priorityQueue2 = this.leftViewList;
        if (!(priorityQueue2 instanceof Collection) || !priorityQueue2.isEmpty()) {
            Iterator it2 = priorityQueue2.iterator();
            while (it2.hasNext()) {
                if (StringsKt__StringsJVMKt.equals(((NavBarRemoteView) it2.next()).requestClass, str, false)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean isSetMultimodalButton() {
        boolean z;
        boolean z2;
        NavBarRemoteView navBarRemoteView = (NavBarRemoteView) this.leftViewList.peek();
        if (navBarRemoteView != null) {
            z = isMultiModalButton(navBarRemoteView);
        } else {
            z = false;
        }
        if (!z) {
            NavBarRemoteView navBarRemoteView2 = (NavBarRemoteView) this.rightViewList.peek();
            if (navBarRemoteView2 != null) {
                z2 = isMultiModalButton(navBarRemoteView2);
            } else {
                z2 = false;
            }
            if (!z2) {
                return false;
            }
        }
        return true;
    }

    public final void removeRemoteView(int i, String str) {
        boolean z;
        Object obj;
        if (str != null && StringsKt__StringsKt.contains(str, "honeyboard", false)) {
            z = true;
        } else {
            z = false;
        }
        PriorityQueue priorityQueue = this.rightViewList;
        PriorityQueue priorityQueue2 = this.leftViewList;
        Object obj2 = null;
        if (z) {
            Iterator it = priorityQueue2.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(str, ((NavBarRemoteView) obj).requestClass)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            priorityQueue2.remove(obj);
            Iterator it2 = priorityQueue.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (Intrinsics.areEqual(str, ((NavBarRemoteView) next).requestClass)) {
                    obj2 = next;
                    break;
                }
            }
            priorityQueue.remove(obj2);
            this.showInGestureMode = false;
            return;
        }
        if (i == 0) {
            Iterator it3 = priorityQueue2.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object next2 = it3.next();
                if (Intrinsics.areEqual(str, ((NavBarRemoteView) next2).requestClass)) {
                    obj2 = next2;
                    break;
                }
            }
            priorityQueue2.remove(obj2);
            return;
        }
        if (i == 1) {
            Iterator it4 = priorityQueue.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    break;
                }
                Object next3 = it4.next();
                if (Intrinsics.areEqual(str, ((NavBarRemoteView) next3).requestClass)) {
                    obj2 = next3;
                    break;
                }
            }
            priorityQueue.remove(obj2);
        }
    }

    public final void setRemoteViewPadding(View view, int i, int i2, int i3) {
        if (((NavBarStoreImpl) getNavBarStore()).getNavStateManager(i3).states.canMove && i != 0 && i != 2) {
            if (i == 1 || i == 3) {
                view.setPadding(i2, 0, i2, 0);
                return;
            }
            return;
        }
        view.setPadding(0, i2, 0, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateRemoteViewContainer(int r8, android.widget.LinearLayout r9, android.widget.LinearLayout r10, int r11) {
        /*
            r7 = this;
            com.android.systemui.navigationbar.store.NavBarStore r0 = r7.getNavBarStore()
            com.android.systemui.navigationbar.store.NavBarStoreImpl r0 = (com.android.systemui.navigationbar.store.NavBarStoreImpl) r0
            com.android.systemui.navigationbar.store.NavBarStateManager r0 = r0.getNavStateManager(r11)
            if (r9 == 0) goto Ldf
            if (r10 != 0) goto L10
            goto Ldf
        L10:
            r7.leftContainer = r9
            r7.rightContainer = r10
            boolean r9 = r7.isSetMultimodalButton()
            r7.showInGestureMode = r9
            com.android.systemui.navigationbar.store.NavBarStateManager$States r9 = r0.states
            boolean r9 = r9.canMove
            r10 = 1
            r1 = 0
            if (r9 == 0) goto L26
            if (r8 != r10) goto L26
            r9 = r10
            goto L27
        L26:
            r9 = r1
        L27:
            if (r9 == 0) goto L2e
            com.android.systemui.navigationbar.remoteview.NavBarRemoteView r2 = r7.getRemoteView(r10, r11)
            goto L32
        L2e:
            com.android.systemui.navigationbar.remoteview.NavBarRemoteView r2 = r7.getRemoteView(r1, r11)
        L32:
            if (r9 == 0) goto L39
            com.android.systemui.navigationbar.remoteview.NavBarRemoteView r9 = r7.getRemoteView(r1, r11)
            goto L3d
        L39:
            com.android.systemui.navigationbar.remoteview.NavBarRemoteView r9 = r7.getRemoteView(r10, r11)
        L3d:
            android.content.Context r3 = r7.context
            android.content.res.Resources r3 = r3.getResources()
            boolean r4 = com.android.systemui.BasicRune.NAVBAR_MULTI_MODAL_ICON_LARGE_COVER
            if (r4 == 0) goto L4d
            if (r11 != r10) goto L4d
            r4 = 2131168532(0x7f070d14, float:1.7951368E38)
            goto L50
        L4d:
            r4 = 2131168531(0x7f070d13, float:1.7951366E38)
        L50:
            int r3 = r3.getDimensionPixelOffset(r4)
            r4 = 4
            if (r2 == 0) goto L8c
            boolean r5 = r0.isGestureMode()
            if (r5 == 0) goto L6a
            int r5 = r7.adaptivePosition
            if (r5 != 0) goto L68
            boolean r5 = r7.isSetMultimodalButton()
            if (r5 == 0) goto L68
            goto L6a
        L68:
            r5 = r1
            goto L6b
        L6a:
            r5 = r10
        L6b:
            if (r5 == 0) goto L8c
            android.view.View r2 = r2.view
            r7.setRemoteViewPadding(r2, r8, r3, r11)
            android.widget.LinearLayout r5 = r7.leftContainer
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            android.view.ViewParent r6 = r2.getParent()
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            if (r6 == 0) goto L82
            r6.removeView(r2)
        L82:
            r5.setVisibility(r1)
            r5.removeAllViews()
            r5.addView(r2)
            goto L9b
        L8c:
            android.widget.LinearLayout r2 = r7.leftContainer
            if (r2 == 0) goto L93
            r2.removeAllViews()
        L93:
            android.widget.LinearLayout r2 = r7.leftContainer
            if (r2 != 0) goto L98
            goto L9b
        L98:
            r2.setVisibility(r4)
        L9b:
            if (r9 == 0) goto Ld0
            boolean r0 = r0.isGestureMode()
            if (r0 == 0) goto Laf
            int r0 = r7.adaptivePosition
            if (r0 != r10) goto Lae
            boolean r0 = r7.isSetMultimodalButton()
            if (r0 == 0) goto Lae
            goto Laf
        Lae:
            r10 = r1
        Laf:
            if (r10 == 0) goto Ld0
            android.view.View r9 = r9.view
            r7.setRemoteViewPadding(r9, r8, r3, r11)
            android.widget.LinearLayout r7 = r7.rightContainer
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            android.view.ViewParent r8 = r9.getParent()
            android.view.ViewGroup r8 = (android.view.ViewGroup) r8
            if (r8 == 0) goto Lc6
            r8.removeView(r9)
        Lc6:
            r7.setVisibility(r1)
            r7.removeAllViews()
            r7.addView(r9)
            goto Ldf
        Ld0:
            android.widget.LinearLayout r8 = r7.rightContainer
            if (r8 == 0) goto Ld7
            r8.removeAllViews()
        Ld7:
            android.widget.LinearLayout r7 = r7.rightContainer
            if (r7 != 0) goto Ldc
            goto Ldf
        Ldc:
            r7.setVisibility(r4)
        Ldf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager.updateRemoteViewContainer(int, android.widget.LinearLayout, android.widget.LinearLayout, int):void");
    }
}
