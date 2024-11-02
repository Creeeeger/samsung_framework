package com.google.android.material.internal;

import com.google.android.material.chip.ChipGroup;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CheckableGroup {
    public final Map checkables = new HashMap();
    public final Set checkedIds = new HashSet();
    public ChipGroup.AnonymousClass1 onCheckedStateChangeListener;
    public boolean selectionRequired;
    public boolean singleSelection;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.android.material.internal.CheckableGroup$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 {
        public AnonymousClass1() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean checkInternal(com.google.android.material.internal.MaterialCheckable r7) {
        /*
            r6 = this;
            int r0 = r7.getId()
            java.util.Set r1 = r6.checkedIds
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            r3 = r1
            java.util.HashSet r3 = (java.util.HashSet) r3
            boolean r2 = r3.contains(r2)
            r3 = 0
            if (r2 == 0) goto L15
            return r3
        L15:
            java.util.Map r2 = r6.checkables
            boolean r4 = r6.singleSelection
            if (r4 == 0) goto L33
            r4 = r1
            java.util.HashSet r4 = (java.util.HashSet) r4
            boolean r5 = r4.isEmpty()
            if (r5 != 0) goto L33
            java.util.Iterator r4 = r4.iterator()
            java.lang.Object r4 = r4.next()
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            goto L34
        L33:
            r4 = -1
        L34:
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.util.HashMap r2 = (java.util.HashMap) r2
            java.lang.Object r2 = r2.get(r4)
            com.google.android.material.internal.MaterialCheckable r2 = (com.google.android.material.internal.MaterialCheckable) r2
            if (r2 == 0) goto L45
            r6.uncheckInternal(r2, r3)
        L45:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r0)
            java.util.HashSet r1 = (java.util.HashSet) r1
            boolean r6 = r1.add(r6)
            boolean r0 = r7.isChecked()
            if (r0 != 0) goto L59
            r0 = 1
            r7.setChecked(r0)
        L59:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.internal.CheckableGroup.checkInternal(com.google.android.material.internal.MaterialCheckable):boolean");
    }

    public final void onCheckedStateChanged() {
        ChipGroup.AnonymousClass1 anonymousClass1 = this.onCheckedStateChangeListener;
        if (anonymousClass1 != null) {
            new HashSet(this.checkedIds);
            int i = ChipGroup.$r8$clinit;
            ChipGroup.this.getClass();
        }
    }

    public final boolean uncheckInternal(MaterialCheckable materialCheckable, boolean z) {
        int id = materialCheckable.getId();
        Set set = this.checkedIds;
        if (!((HashSet) set).contains(Integer.valueOf(id))) {
            return false;
        }
        if (z && ((HashSet) set).size() == 1) {
            if (((HashSet) set).contains(Integer.valueOf(id))) {
                materialCheckable.setChecked(true);
                return false;
            }
        }
        boolean remove = ((HashSet) set).remove(Integer.valueOf(id));
        if (materialCheckable.isChecked()) {
            materialCheckable.setChecked(false);
        }
        return remove;
    }
}
